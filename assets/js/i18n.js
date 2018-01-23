(function ( $ ) {
    $.fn.i18n = function(options) {

        var settings = $.extend({
            // default no locales, and therefore the input must remain unchanged
            locales: [],
            // if no attribute option is given, this is the default
            attribute: 'data-field'
        }, options);

        var localesBackup = settings.locales;

        this.each(function(index, obj) {
            var localesData = $(obj).attr('data-i18n');
            var locales = localesData ? localesData.split(',') : settings.locales;
            var type = $(obj).attr('type');

            if (!locales.length || type != "text") {
                return;
            }

            console.log('<object>');
            console.log($(obj));
            console.log('</object>');
            
            $(obj).wrap('<span class="input-prepend input-append">');
            $(obj).before('<button class="btn" type="button">' + locales[0].toUpperCase() + '</button>');

            //console.log(locales);
            //console.log(locales.length);
            //console.log($(obj));
            
            for (i = locales.length - 1; i >= 0; i--) {
            	console.log(locales[i]);
            	var newObj = $(obj).after($(obj).clone());
            	newObj.css('display', 'none');
            	newObj.attr('id', $(obj).attr('id') + '_' + locales[i]);
            	newObj.attr('name', $(obj).attr('name') + '_' + locales[i]);
                //$(obj).after($(obj).clone().css('display', 'none'));
                $(obj).after('<button class="btn" type="button">' + locales[i].toUpperCase() + '</button>');
            }
            //Change the id and name of the field itself

            var $parent = $(obj).parent();
            var attrVal = $(obj).attr(settings.attribute);
            $parent.children('input').each(function(i, object) {
                if (attrVal) {
                    $(object).attr(settings.attribute, attrVal + '.' + settings.locales[i]);
                } else {
                    $(object).attr(settings.attribute, settings.locales[i]);
                }
            });

            var $elems = $parent.children('.btn');
            var width = $(obj).css('width');
            $elems.on('click', function(e) {
                var i = $elems.index(this);
                i+= 1;
                var display = $parent.children('input:nth-of-type(' + i + ')').css('display');
                if(display == 'none'){
                    $parent.children('input').animate({"width": "0"}, 200).promise().done(function () {
                        $parent.children('input').hide();
                        $parent.children('input:nth-of-type(' + i + ')').show().animate({"width": width}, 200).focus();
                    });
                }

            });
        });
        return this;
    };
}( jQuery ));
