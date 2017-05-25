{$fieldAttrs = $field['attributes']}

<div id="{$fieldAttrs['id']}CG">
    <fieldset>
      <legend class="form_legend">{$fieldAttrs['label']}
          {if $fieldAttrs['collapsible'] == 'true'}
          <script>
              //set initial text for this label
              $(document).ready(function(){
                  var showText = $("#showHide_{$fieldAttrs['id']}").attr("showText");
                  var hideText = $("#showHide_{$fieldAttrs['id']}").attr("hideText");

                  {if $fieldAttrs['collapsed'] == 'true'}
                      $("#showHide_{$fieldAttrs['id']}").html(showText);
                   {else}
                      $("#showHide_{$fieldAttrs['id']}").html(hideText);
                  {/if}
              });

              function showHideHeader_{$fieldAttrs['id']}() {
                  var showText = $("#showHide_{$fieldAttrs['id']}").attr("showText");
                  var hideText = $("#showHide_{$fieldAttrs['id']}").attr("hideText");


                  if( $("#head_{$fieldAttrs['id']}").css("display") == "block") {
                      $("#showHide_{$fieldAttrs['id']}").html(showText);
                      $("#head_{$fieldAttrs['id']}").fadeOut();
                  }
                  else {
                      $("#showHide_{$fieldAttrs['id']}").html(hideText);
                      $("#head_{$fieldAttrs['id']}").fadeIn("slow");
                  }

              }
          </script>
              <a id="showHide_{$fieldAttrs['id']}" showText="{translate app="framework"}show{/translate}" hideText="{translate app="framework"}hide{/translate}" href="javascript:;" onmousedown='showHideHeader_{$fieldAttrs['id']}();'>
              </a>
          {/if}
      </legend>
        {$styleDisplay = 'block'}
        {if $fieldAttrs['collapsed'] == 'true' && $fieldAttrs['collapsible'] == 'true'}
            {$styleDisplay = 'none'}
        {/if}
        <div id="{$fieldGuid}" style="display:{$styleDisplay}"></div>


	<!--div class="box-header">
		<h3 class="box-title" id="{$fieldGuid}">{$field['attributes']['label']}</h3>
		<div class="pull-left box-tools">
	            <button class="btn btn-info btn-flat btn-sm" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="{translate app="framework"}hide{/translate}"><i class="fa fa-minus"></i></button>
	            <button class="btn btn-info btn-flat btn-sm" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="{translate app="framework"}show{/translate}"><i class="fa fa-plus"></i></button>
	        </div>
	</div-->
