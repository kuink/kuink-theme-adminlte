<!--link href="kuink-core/lib/tools/bootstrap-3/css/bootstrap.css" rel="stylesheet"-->
<!--link href="kuink-core/lib/tools/bootstrap-3/css/bootstrap-theme.css" rel="stylesheet"-->

<link rel="stylesheet" type="text/css" href="kuink-core/lib/tools/bootstrap-gtreetable/dist/bootstrap-gtreetable.min.css" />

<link rel="stylesheet" href="kuink-core/lib/tools/codemirror/lib/codemirror.css">
<link rel="stylesheet" href="kuink-core/lib/tools/codemirror/addon/hint/show-hint.css">
<link rel="stylesheet" href="kuink-core/lib/tools/codemirror/theme/ambiance.css">
<script src="kuink-core/lib/tools/codemirror/lib/codemirror.js"></script>
<script src="kuink-core/lib/tools/codemirror/addon/edit/closetag.js"></script>
<script src="kuink-core/lib/tools/codemirror/addon/hint/show-hint.js"></script>
<script src="kuink-core/lib/tools/codemirror/addon/hint/xml-hint.js"></script>
<script src="kuink-core/lib/tools/codemirror/mode/xml/xml.js"></script>

<link href="{$_themeRoot}theme/{$THEME}/assets/css/simple-sidebar/simple-sidebar.css" rel="stylesheet">

<style type="text/css">
  .CodeMirror { border: 1px solid #eee; width: 99%; height: auto }
  .CodeMirror-scroll { overflow-y: hidden; overflow-x: auto; }
</style>


<script type="text/javascript" src="kuink-core/lib/tools/bootstrap-gtreetable/dist/bootstrap-gtreetable.js"></script>

<div id="ss_wrapper">
<!-- Sidebar -->

<div id="ss_sidebar-wrapper">
  <table class="table gtreetable" id="gtreetable"><thead><tr><th>Apps</th></tr></thead></table>
</div>

<div id="ss_page-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-9">
              <form id="codeEditor">
                <a href="#menu-toggle" class="btn btn-default btn-sm" id="menu-toggle"><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span></a>
                <button id="saveButtonTop" type="button" class="btn btn-primary btn-sm" onclick="javascript: saveFile();">
                  <span class="glyphicon glyphicon-save" aria-hidden="true"></span>
                  Save
                </button>
                <!-- Launch modal application -->
                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#kuinkModal" onclick="javascript: launchApplication('ide', 'manageEntity');">Create Entities</button>                
                <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#kuinkModal" onclick="javascript: launchApplication('ide', 'generator');">Generate App</button>                
                <span id="openedFileName"></span>
                <textarea id="code" name="code" style="display: none;">
                </textarea>
                <button id="saveButtonBottom" type="button" class="btn btn-primary btn-sm" onclick="javascript: saveFile();">
                  <span class="glyphicon glyphicon-save" aria-hidden="true"></span>
                  Save
                </button>
                <input id="codeEditorFileName" type="text"/>
                <input id="codeEditorFileType" type="text"/>
                <input id="codeEditorSaved" type="text"/>
                <input id="codeEditorJustLoaded" type="text"/>
              </form>

              <h4>Last opened files:</h4>
              <ul id="openedFiles-">
                  <!-- <li><a href="#">Filename</a></li> -->
              </ul>
              <div class="row">
                <div class="col-lg-4">
                  <h4>Nodes</h4>
                <ul id="openedFiles-node"></ul>

                </div>
                <div class="col-lg-4">
                  <div class="col-lg-4">
                    <h4>Libraries</h4>
                    <ul id="openedFiles-lib"></ul>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="col-lg-4">
                    <h4>Data Access</h4>
                    <ul id="openedFiles-dataaccess"></ul>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-4">
                  <h4>Data Definition</h4>
                  <ul id="openedFiles-dd"></ul>
                </div>
                <div class="col-lg-4">
                  <div class="col-lg-4">
                    <h4>Lang</h4>
                    <ul id="openedFiles-lang"></ul>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="col-lg-4">
                    <h4>Templates</h4>
                    <ul id="openedFiles-template"></ul>
                  </div>
                </div>
              </div> 
              <div class="row">
                <div class="col-lg-4">
                  <h4>Process</h4>
                  <ul id="openedFiles-process"></ul>
                </div>
                <div class="col-lg-4">
                  <div class="col-lg-4">
                    <h4>Application</h4>
                    <ul id="openedFiles-application"></ul>
                  </div>
                </div>
                <div class="col-lg-4">
                  <div class="col-lg-4">
                  </div>
                </div>
              </div>              
            </div>
            <div class="col-lg-3">
              <!-- Library search -->
              <h5><strong>API</strong></h5>
              <input type="hidden" id="libraries" name="libraries" class="select2 select2-offscreen input-large" value="" />
              <!-- Functions list -->
              <ul id="kuinkFunctions">
              </ul>              
              <!-- Library search -->
              <h5><strong>OUTLINE</strong></h5>
              <!-- Functions list -->
              <ul id="kuinkOutline">
              </ul>              

            </div>
        </div>
    </div>
  </div>
</div>

<!-- Kuink Modal - Applications will be launched here...-->
<div class="modal fade" id="kuinkModal" tabindex="-1" role="dialog" aria-labelledby="kuinkModalTitle">
  <div class="modal-dialog" role="document" style="width: 90%">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="__kuink.modalClose();"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="kuinkModalTitle">App Launcher</h4>
      </div>
      <div class="modal-body">
        <div id="kuinkModalContainer">
          //Application will be launched here
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="__kuink.modalClose();">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- /#page-content-wrapper -->


<!-- Test search -->
<script type="text/javascript">
  jQuery(document).ready(function() {
  var kuinkFunctionRaw = "framework,ide,api,searchLibrary";
  var kuinkFunction = kuinkFunctionRaw;

jQuery("#libraries").select2({
  placeholder: "{translate app="framework"}search{/translate}",
  allowClear: true,
  ajax: {
    url: "{$_apiCompleteUrl}"+kuinkFunction,
    dataType: 'json',
    delay: 250,
  quietMillis: 500,
    data: function (term, page) {
      return {
        library: term
      };
    },
    results: function (data, page) {
      // parse the results into the format expected by Select2.
      // since we are using custom formatting functions we do not need to
      // alter the remote JSON data
      var results = [];
       $.each(data, function(index, item){
          results.push({
            id: item.id,
            text: item.name
          });


        });
      return {
        results: results
      };
    },
    cache: true
  },
  minimumInputLength: 3,
  formatResult: formatDatalibraries,
  initSelection: initSelectionlibraries,
  width: 200
});
});

  function launchApplication(process, event) {
    //The target will be the modal from now on
    __kuink.modalOpen();
    var d = new Date();
    var mili = d.getMilliseconds();
    //QuickFix. Launch a new context so it will not interfere with the previous one
    $("#kuink_{$_guid}").kuinkSubmit({
      'url' 			: '{$baseUrl}'+mili+'&startuc='+process+'&event='+event+'&modal=embed',
      'idContext'	: '{$_idContext}'+mili,
      'method' 		: 'get',
      'processData': false,
      'contentType': false,
      'button_id' : null,
      'target' : 'kuinkModalContainer',
      'formGuid'	: 'kuink_{$_guid}'
    });
  }

  function formatDatalibraries (data) {
    var markup = '<div class="clearfix">';

  if (data.image)
    markup += '<div class="col-sm-1">' +
    '<img src="{$_photoUrl}' + data.image + '.jpg" style="max-width: 30%" />' +
    '</div>';

  if (data.results)
  {
      console.log(data.results);
      markup += '<div clas="col-sm-10">' + '<div class="clearfix">';
      var arrayLength = data.results.length;
      for (var i=0; i<arrayLength; i++)
        markup += '<div class="col-sm-6">' + data.results[i] + '</div>';

      markup +='</div></div></div>';
  }
    else
    if (data.text)
      markup +=
      '<div clas="col-sm-10">' +
      '<div class="clearfix">' +
      '<div class="col-sm-6">' + data.text + '</div>' +
      '</div></div></div>';

    return markup;
  }

      function initSelectionlibraries(element, callback)
      {
        var kuinkFunctionRaw = "{$fieldAttrs['datasource-initial']}";
        var kuinkFunction = kuinkFunctionRaw.replace("call:", "");
        var id = element.val();
        if(id !== "") {
        return $.getJSON("{$_apiCompleteUrl}"+kuinkFunction+"&library=" + element.val(), null, function(data) {
            return callback({ id:data.id, text: data.name});
        });
      }
    }

  $('#libraries').on("change", function(e) {
    console.log('Getting functions');

    var kuinkLibrary = $('#libraries').val();
    //$('#kuinkFunctions').clear();
    $('#kuinkFunctions').empty();
    var metadata = $.ajax({
        dataType: "json",
        url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,getFunctionsMetadata',
        data: { 'library': kuinkLibrary},
        success: function(data){
          console.log( data );
           $.each(data, function(index, item){
              $('#kuinkFunctions').append('<li><a href="kuink:call:'+kuinkLibrary+','+item.name+'">'+item.name+'</a></li>');
           });

          },
        error: function(XMLHttpRequest) {
            //alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
            console.log('ERROR');
          }
        });
  });

    </script>


<div class="row">
  <div class="span3">
  </div>
  <div class="span9">

  </div>
</div>


<script>
$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#ss_wrapper").toggleClass("toggled");
});

window.setTimeout("saveFile();", 30000);

</script>


<script>

var editor = CodeMirror.fromTextArea(document.getElementById("code"), {
  mode: "xml",
  styleActiveLine: true,
  lineNumbers: true,
  lineWrapping: true
});

//editor.setOption("theme", "ambiance");
editor.on("change", function() {
  var content = editor.getValue();
  if (document.getElementById("codeEditorJustLoaded").value == 0) {
    document.getElementById("codeEditorSaved").value = 0;
    document.getElementById("saveButtonBottom").disabled = false;
    document.getElementById("saveButtonTop").disabled = false;
  }
  document.getElementById("codeEditorJustLoaded").value = 0;
 });


//Drag and drop functionality to get kuink language
editor.on("drop",function(editor,e){
  console.log(editor);
  var data = e.dataTransfer.getData('text');
  console.log(data);

  var kuinkFunction = data.replace('kuink:call:','');
  var fxMetadata = '';
  console.log('before ajax');
  var metadata = $.ajax({
      dataType: "json",
      url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,getFunctionMetadata',
      data: { 'function': kuinkFunction},
      success: function(data){
        console.log( data );
        fxMetadata = data.call.call;
        },
      error: function(XMLHttpRequest) {
          //alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
          console.log('ERROR');
        }
      });
  console.log('after ajax' + fxMetadata);
  var delay=500; //1 seconds

  setTimeout(function(){
    editor.replaceSelection(fxMetadata);
  }, delay);



  });

document.getElementById("codeEditorSaved").value = 1;
document.getElementById("saveButtonBottom").disabled = true;
document.getElementById("saveButtonTop").disabled = true;
</script>

<script type="text/javascript">
  function saveFile() {
    if (document.getElementById("codeEditorSaved").value == 0) {
      content = editor.getValue();
      fileName = document.getElementById("codeEditorFileName").value;

      var result = $.ajax({
          type: "POST",
          dataType: "json",
          url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,setFileContent',
          data: { 'path': fileName, 'content': content},
          success: function(data){
              document.getElementById("codeEditorSaved").value = 1;
              document.getElementById("saveButtonBottom").disabled = true;
              document.getElementById("saveButtonTop").disabled = true;
              console.log('Saved');
              console.log(data);
          },
          error: function(XMLHttpRequest) {
            //alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
            console.log('ERROR');
          }
          });
      }
        return 0;
  }

  function getFileType( fileName ) {
    
    var fileType = $.ajax({
        dataType: "json",
        url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,getFileType',
        data: { 'path': fileName},
        async: false,
        success: function(data){
          document.getElementById("codeEditorFileType").value = data;
          __kuink.controlAddKey('{$_idContext}', '{$_guid}', 'codeEditorfile', 'type', data);

        },
        error: function(XMLHttpRequest) {
          //alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
          console.log('ERROR');
          __kuink.controlAddKey('{$_idContext}', '{$_guid}', 'codeEditorfile', 'type', 'error');
        }
      });
      return(__kuink.controlGetKey('{$_idContext}', '{$_guid}', 'codeEditorfile', 'type'));
  }


  function getFunctionMetadata( kuinkFunction ) {
    var metadata = $.ajax({
        dataType: "json",
        url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,getFunctionMetadata',
        data: { 'function': kuinkFunction},
        success: function(data){
          console.log( data );
          return(data.doc);
          },
        error: function(XMLHttpRequest) {
          //alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
          console.log('ERROR');
        }
        });
        return(null);
  }


  function outlineRefresh( ) {
    var content = editor.getValue();

    parser = new DOMParser();
    xmlDoc = parser.parseFromString(content,"text/xml");
    actions = xmlDoc.getElementsByTagName("Action");
    outline = $('#kuinkOutline');
    for (i = 0; i < actions.length; i++) {
       var html = '<li><a href="#">' + actions[i].getAttribute('name') + '</a></li>';
       console.log(actions[i].getAttribute('name'));
       outline.append(html);
      
      //console.log(actions[action].getAttribute('name'));
    };
    //alert(xmlDoc.getElementsByTagName("Action")[0].childNodes[0].nodeValue);

  }


  function loadFile( fileName ) {
    saveFile();
    getFileType(fileName);
    var kuinkFileType = __kuink.controlGetKey('{$_idContext}', '{$_guid}', 'codeEditorfile', 'type');
    
    var fileContent = $.ajax({
        dataType: "json",
        url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,getFileContent',
        data: { 'path': fileName},
        success: function(data){
            document.getElementById("codeEditorFileName").value = fileName;
            document.getElementById("codeEditorJustLoaded").value = 1;
            document.getElementById("codeEditorSaved").value = 1;
            document.getElementById("saveButtonBottom").disabled = true;
            document.getElementById("saveButtonTop").disabled = true;
            editor.getDoc().setValue(data);
            
            //Compress the file name for visibilty
            var splitedFileName = fileName.split('/');
            var fileNameCompressed = '::';
            if (kuinkFileType == 'application')
              fileNameCompressed = splitedFileName[2];
            else if(kuinkFileType == 'process' || kuinkFileType == 'lang')
              fileNameCompressed = splitedFileName[2] + '::' + splitedFileName[4];
            else
              fileNameCompressed = splitedFileName[2] + '::' + splitedFileName[6];

            var html = '<li><a href="#" onclick="javascript: loadFile(\''+ fileName +'\');">' + fileNameCompressed + '</a></li>';

            var kuinkOpenedFilesTarget = $('#openedFiles-'+kuinkFileType);

            //Remove duplicates
            kuinkOpenedFilesTarget.find('li').each(function () {
                var value = $(this);

                if (value[0].outerHTML == html) {
                    value[0].remove();
                }
            });

            //Add at top
            kuinkOpenedFilesTarget.prepend(html);
            //$('#openedFiles-'+kuinkFileType+' li:last').fadeIn('slow');
            $('#openedFileName').html('<strong>'+fileName+'</strong>');

            //Refresh the outline
            outlineRefresh();
        },
        error: function(XMLHttpRequest) {
          //alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
          console.log('ERROR');
        }
      });
        return 0;
  }
</script>


<script type="text/javascript">
jQuery(document).ready(function () {
	
  jQuery('#gtreetable').gtreetable({
    'source': function (id) {
        path = String(id);
        path = path.replace('null', '');
        console.log(path);
        return {
          type: 'GET',
          url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,getDirContent',
          data: { 'path': path},
          dataType: 'json',
          error: function(XMLHttpRequest) {
            console.log(XMLHttpRequest);
            alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
          }
        }
      },
      'onSelect': function (id) {
        var fileName = id['parent'] + '/' + id['name'];

        loadFile(fileName);

        console.log('selected');
        console.log(id);
        console.log('File: ' + fileName);
      },
      'onSave': function (oNode) {
        console.log(oNode.getId());
        console.log(oNode.isSaved());
        console.log(oNode.getParent());
        console.log(oNode.getName());
        console.log(oNode.getRelatedNodeId());
        return {
          type: 'GET',
          url: !oNode.isSaved() ? 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,createFileOrDirectory' : 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,renameFileOrDirectory',
          data: { 'path': oNode.getParent(), 'name': oNode.getName(), 'oldName': oNode.getId()},
          dataType: 'json',
          error: function(XMLHttpRequest) {
            alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
          }
        }
      },
      'onDelete': function (oNode) {
        console.log(oNode.getId());
        return {
          type: 'GET',
          url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ide,api,deleteFileOrDirectory',
          data: { 'path': oNode.getId()},
          dataType: 'json',
          error: function(XMLHttpRequest) {
            alert(XMLHttpRequest.status+': '+XMLHttpRequest.responseText);
          }
        }
      }

  });

});
</script>
