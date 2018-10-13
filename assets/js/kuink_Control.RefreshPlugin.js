(function( $ ) {
                if (typeof window.interval_ === 'undefined')
                  var interval_;
                $.fn.kuink_refreshControl = function(options) {
                    // This is the easiest way to have default options.
                    var settings = $.extend({
                        // These are the defaults.
                        url: null,
                        interval: null

                    }, options );

                    var getAjaxData = function(obj){
                        $.ajax({
                            dataType: "html",
                            url: settings.url,
                            success: function(data){
                                var html = $(data).find(obj.selector).html();
                                $(obj.selector).html(html);
                            }
                        });
                    }

                    if (settings.url != null){
                        if (settings.interval != null) {
                            var _obj = this;
                            if (typeof window.interval_ !== 'undefined') {
                              clearInterval(window.interval_);
                            }

                            window.interval_ = setInterval(function () {
                                getAjaxData(_obj);

                            }, settings.interval);
                        }
                        else
                        {
                            getAjaxData(this);

                        }
                    }

                    return this;

                };

            }( jQuery ));
