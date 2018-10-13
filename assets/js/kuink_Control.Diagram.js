
/*
var kuinkShapesSelected = new Array();
var kuinkShapes = new Array();

function setCurrentShape(id) {
	//unselect all shapes first
	for (var kuinkShape in kuinkShapesSelected) {
		if (kuinkShape != id)
			kuinkShapesSelected[kuinkShape].select();
	}
	kuinkShapesSelected[id] = kuinkShapes[id];
}

function moveAll(item, index, dx, dy) {
	item.move(dx, dy)
}
*/

class KuinkDiagram {
  constructor(board, id) {
		var i;

    this.board = Snap("#"+board);
    this.id = id;
    this.shapes = [];
		this.shapesSelected = [];
		this.keyState = [];
		//Initialize key states
		for (i=1; i<=255; i++)
			this.keyState[i] = 0; //Not pressed
  }

	setKeyDown(keyCode) {
		this.keyState[keyCode] = 1;
	}

	setKeyUp(keyCode) {
		this.keyState[keyCode] = 0;
	}

  uuidv4() { // Public Domain/MIT
    var d = new Date().getTime();
    if (typeof performance !== 'undefined' && typeof performance.now === 'function'){
        d += performance.now(); //use high-precision timer if available
    }
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = (d + Math.random() * 16) % 16 | 0;
        d = Math.floor(d / 16);
        return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);
    });
  }

	setCurrentShape(id) {
		//unselect all shapes first only if ctrl key is not pressed
		var tmpSelected = [];

		for (var kuinkShape in this.shapesSelected) {
			console.log(kuinkShape + ' DRAGGING:' + this.shapesSelected[kuinkShape].dragging);
			if (this.shapesSelected[kuinkShape].dragging == false) {
				//this.shapesSelected[kuinkShape].dragging = false;
				if  (this.keyState[KeyEvent.DOM_VK_CONTROL] == 0) {
					console.log('UNSELECTING: '+ kuinkShape);
					this.shapesSelected[kuinkShape].unselect();
				}
			} else {
					tmpSelected[kuinkShape] = this.shapes[kuinkShape];
					this.shapesSelected[kuinkShape].dragging = false;
			}
		}
		this.shapesSelected = tmpSelected;
		this.shapesSelected[id] = this.shapes[id];
		this.shapesSelected[id].select();
	}

	startSelectedShapes() {
		//Start Selected Shapes
		for (var kuinkShape in this.shapesSelected) {
				this.shapesSelected[kuinkShape].start();
				//Start sub shapes
				for (var kuinkSubShape in this.shapesSelected[kuinkShape].subShapes) {
					this.shapesSelected[kuinkShape].subShapes[kuinkSubShape].start();
				}
		}

	}

	stopSelectedShapes() {
		for (var kuinkSelectedShape in this.shapesSelected) {
			this.shapesSelected[kuinkSelectedShape].stop();
			for (var kuinkShape in this.shapes) {
				if (kuinkShape != kuinkSelectedShape){					
					//Check if the selected shape is inside this shape
					if (this.shapes[kuinkShape].subShapes[kuinkSelectedShape] == undefined && this.shapes[kuinkSelectedShape].subShapes[kuinkShape] == undefined)
						if (this.shapes[kuinkShape].checkInside( this.shapes[kuinkSelectedShape] )) {
							console.log(kuinkSelectedShape + ' INSIDE ' + kuinkShape);
							this.shapes[kuinkShape].addSubShape(this.shapes[kuinkSelectedShape]);
							this.shapes[kuinkSelectedShape].addParent(this.shapes[kuinkShape]);
						}
				}
			}
		}
	}

	moveSelectedShapes(dx, dy) {
		for (var kuinkShape in this.shapesSelected)
				this.shapesSelected[kuinkShape].move(dx, dy);
	}
	
	moveSubShapes(dx, dy, subShapes) {
		for (var kuinkShape in subShapes) {
				console.log('Moving subshape: ' + kuinkShape);
				this.shapes[kuinkShape].move(dx, dy);
		}
	}

  addShape(id, type) {
		if (id == '')
			id = this.uuidv4();
		console.log(id);
		var shape = new KuinkShape(this, id, type);
			this.shapes[id] = shape;
	  }
}


class KuinkShape {
  constructor(diagram, id, type) {
  	console.log(diagram);
  	this.diagram = diagram;
    this.board = diagram.board;
    this.id = id;
    this.type = type;
    this.parent = undefined; //If this is a subshape of someone, this is the parent
    this.shape = this.board.rect(100, 100, 100, 100, 20, 20);
    this.board.attr({
        fill: "rgb(236, 240, 241)",
        stroke: "#1f2c39",
        strokeWidth: 3
    });
    this.selected = false;
    this.dragging = false;
    this.shape.attr({name: id});

    this.subShapes= [];

    var move = function(dx,dy) {
	  	this.attr({
			    transform: this.data('origTransform') + (this.data('origTransform') ? "T" : "t") + [dx, dy]
			});
    };

    var startFx = function() {
			//console.log('%START%');
			var diagram = window[this.paper.node.id]; //Get a reference to the diagram
			diagram.startSelectedShapes();
    };

    var stopFx = function() {
			//console.log('%STOP%');
			var diagram = window[this.paper.node.id]; //Get a reference to the diagram
			diagram.stopSelectedShapes();
    };

    var moveFx = function(dx,dy) {
			//console.log('%MOVE%');
			var diagram = window[this.paper.node.id]; //Get a reference to the diagram
			diagram.moveSelectedShapes(dx,dy);
    };

    var clickFx = function() {
			//console.log('%CLICK%');
			var diagram = window[this.paper.node.id]; //Get a reference to the diagram
			diagram.setCurrentShape(this.attr().name);
    };
    
    var mouseOver = function() {
    	//console.log('OVER: ' + this.attr().name);
    };
    
    this.shape.mouseover(mouseOver);
    this.shape.drag(moveFx, startFx, stopFx);
    this.shape.click(clickFx);
  }

  start() {
		//this.dragging = true;
		this.shape.data('origTransform', this.shape.transform().local );
  }

  stop() {
		//Check to see if the selected shape is inside other shapes
  }

	checkInside( dropedShape ){
		var intersects = Snap.path.isBBoxIntersect(this.shape.getBBox(), dropedShape.shape.getBBox());
		//console.log('...Checking Inside this:'+this.id + ' drop:'+dropedShape.id);
		//console.log(intersects);
		
		return intersects;
	}

  move(dx,dy) {
		this.dragging = true;
		this.shape.attr({
			transform: this.shape.data('origTransform') + (this.shape.data('origTransform') ? "T" : "t") + [dx, dy]
		});
		
		//Tell diagram to move the subshapes of this shape
		this.diagram.moveSubShapes(dx, dy, this.subShapes);
  }


	unselect() {
		this.selected = false;
		this.paint();
	}

  select() {
		this.selected = true;
		this.bringToFront();
		this.paint();
  }

	paint() {
		if (this.selected) {
			this.shape.attr({
				fill: "rgb(236, 0, 0)",
				stroke: "#1f2c39",
				strokeWidth: 3
			});
		}	else {
			this.shape.attr({
				fill: "rgb(236, 240, 241)",
				stroke: "#1f2c39",
				strokeWidth: 3
			});
		}
	}
	
	bringToFront() {
		this.board.paper.append( this.shape );
		//Bring all subshapes to front
		for (var kuinkShape in this.subShapes)
			this.board.paper.append( this.subShapes[kuinkShape].shape );
	}

  addSubShape(subShape) {
		this.subShapes[subShape.id] = subShape;
		
		//Rearrange the two shapes
		//Get the size of the subShape
		var thisShape = this.shape;
		
		this.shape.animate({width:this.shape.getBBox().width + subShape.shape.getBBox().width + 50, height:this.shape.getBBox().height + subShape.shape.getBBox().height + 50}, 1000, mina.elastic);
		
		//Animate the subShape getting to its place
		//this.shape.transform(this.shape.transform().local);
		var padding = 10;
		var tileRow = 2; //Number of elements per row
		
		console.log('Number of Elements ' + this.subShapes.count);
		console.log(this.subShapes);

		
		//Determine the subshape position inside the tile 
		
		var newX = Math.round(this.shape.getBBox().x - this.shape.attr().x) + padding;
		var newY = Math.round(this.shape.getBBox().y - this.shape.attr().x) + padding;
		
		subShape.shape.data('origTransform', subShape.shape.transform().local );
		subShape.shape.animate({transform: 'translate('+newX+' '+newY+')'}, 1000, mina.elastic);
		//subShape.shape.attr({cx:newX,cy:newY});
		
		console.log('Container X '+ this.shape.getBBox().x + ' to ' + this.shape.getBBox().y);
		console.log('SubShape X '+ subShape.shape.getBBox().x + ' to ' + subShape.shape.getBBox().y);
  }

  addParent(parentShape) {
  	//If this had a previous parent, then remove it from its subshapes
  	if (this.parent != undefined)
  		this.parent.removeSubShape(this);
		this.parent = parentShape;
  }  
  
  /**
   * Removes a subShape
   */
  removeSubShape(subShape) {
  	if (this.subShapes[subShape.id] != undefined)
  		delete this.subShapes[subShape.id];
  }

}


if (typeof KeyEvent == "undefined") {
    var KeyEvent = {
        DOM_VK_CANCEL: 3,
        DOM_VK_HELP: 6,
        DOM_VK_BACK_SPACE: 8,
        DOM_VK_TAB: 9,
        DOM_VK_CLEAR: 12,
        DOM_VK_RETURN: 13,
        DOM_VK_ENTER: 14,
        DOM_VK_SHIFT: 16,
        DOM_VK_CONTROL: 17,
        DOM_VK_ALT: 18,
        DOM_VK_PAUSE: 19,
        DOM_VK_CAPS_LOCK: 20,
        DOM_VK_ESCAPE: 27,
        DOM_VK_SPACE: 32,
        DOM_VK_PAGE_UP: 33,
        DOM_VK_PAGE_DOWN: 34,
        DOM_VK_END: 35,
        DOM_VK_HOME: 36,
        DOM_VK_LEFT: 37,
        DOM_VK_UP: 38,
        DOM_VK_RIGHT: 39,
        DOM_VK_DOWN: 40,
        DOM_VK_PRINTSCREEN: 44,
        DOM_VK_INSERT: 45,
        DOM_VK_DELETE: 46,
        DOM_VK_0: 48,
        DOM_VK_1: 49,
        DOM_VK_2: 50,
        DOM_VK_3: 51,
        DOM_VK_4: 52,
        DOM_VK_5: 53,
        DOM_VK_6: 54,
        DOM_VK_7: 55,
        DOM_VK_8: 56,
        DOM_VK_9: 57,
        DOM_VK_SEMICOLON: 59,
        DOM_VK_EQUALS: 61,
        DOM_VK_A: 65,
        DOM_VK_B: 66,
        DOM_VK_C: 67,
        DOM_VK_D: 68,
        DOM_VK_E: 69,
        DOM_VK_F: 70,
        DOM_VK_G: 71,
        DOM_VK_H: 72,
        DOM_VK_I: 73,
        DOM_VK_J: 74,
        DOM_VK_K: 75,
        DOM_VK_L: 76,
        DOM_VK_M: 77,
        DOM_VK_N: 78,
        DOM_VK_O: 79,
        DOM_VK_P: 80,
        DOM_VK_Q: 81,
        DOM_VK_R: 82,
        DOM_VK_S: 83,
        DOM_VK_T: 84,
        DOM_VK_U: 85,
        DOM_VK_V: 86,
        DOM_VK_W: 87,
        DOM_VK_X: 88,
        DOM_VK_Y: 89,
        DOM_VK_Z: 90,
        DOM_VK_CONTEXT_MENU: 93,
        DOM_VK_NUMPAD0: 96,
        DOM_VK_NUMPAD1: 97,
        DOM_VK_NUMPAD2: 98,
        DOM_VK_NUMPAD3: 99,
        DOM_VK_NUMPAD4: 100,
        DOM_VK_NUMPAD5: 101,
        DOM_VK_NUMPAD6: 102,
        DOM_VK_NUMPAD7: 103,
        DOM_VK_NUMPAD8: 104,
        DOM_VK_NUMPAD9: 105,
        DOM_VK_MULTIPLY: 106,
        DOM_VK_ADD: 107,
        DOM_VK_SEPARATOR: 108,
        DOM_VK_SUBTRACT: 109,
        DOM_VK_DECIMAL: 110,
        DOM_VK_DIVIDE: 111,
        DOM_VK_F1: 112,
        DOM_VK_F2: 113,
        DOM_VK_F3: 114,
        DOM_VK_F4: 115,
        DOM_VK_F5: 116,
        DOM_VK_F6: 117,
        DOM_VK_F7: 118,
        DOM_VK_F8: 119,
        DOM_VK_F9: 120,
        DOM_VK_F10: 121,
        DOM_VK_F11: 122,
        DOM_VK_F12: 123,
        DOM_VK_F13: 124,
        DOM_VK_F14: 125,
        DOM_VK_F15: 126,
        DOM_VK_F16: 127,
        DOM_VK_F17: 128,
        DOM_VK_F18: 129,
        DOM_VK_F19: 130,
        DOM_VK_F20: 131,
        DOM_VK_F21: 132,
        DOM_VK_F22: 133,
        DOM_VK_F23: 134,
        DOM_VK_F24: 135,
        DOM_VK_NUM_LOCK: 144,
        DOM_VK_SCROLL_LOCK: 145,
        DOM_VK_COMMA: 188,
        DOM_VK_PERIOD: 190,
        DOM_VK_SLASH: 191,
        DOM_VK_BACK_QUOTE: 192,
        DOM_VK_OPEN_BRACKET: 219,
        DOM_VK_BACK_SLASH: 220,
        DOM_VK_CLOSE_BRACKET: 221,
        DOM_VK_QUOTE: 222,
        DOM_VK_META: 224
    };
}
