
<link rel="stylesheet" href="lib/tools/codemirror/addon/hint/show-hint.css">
<link rel="stylesheet" href="lib/tools/codemirror/theme/ambiance.css">
<link rel="stylesheet" href="lib/tools/codemirror/lib/codemirror.css">
<script src="lib/tools/codemirror/lib/codemirror.js"></script>
<script src="lib/tools/codemirror/addon/hint/show-hint.js"></script>
<script src="lib/tools/codemirror/addon/edit/closetag.js"></script>
<script src="lib/tools/codemirror/addon/hint/xml-hint.js"></script>
<script src="lib/tools/codemirror/mode/xml/xml.js"></script>



<style type="text/css">
  .CodeMirror { border: 1px solid #eee; width: 90%; height: auto }
  .CodeMirror-scroll { overflow-y: hidden; overflow-x: auto; }
</style>

<div class="controls">
	<textarea id="{$fieldID}" name="{$fieldID}" class="{$disabledClass}">{$field['value']}</textarea>
</div>

<script>

      var {$fieldID}_editor = CodeMirror.fromTextArea(document.getElementById("{$fieldID}"), {
            value: '',
            mode: 'application/xml',
            lineNumbers: true,
            autoCloseTags: true,
            viewportMargin: Infinity,
            foldGutter: true,
            gutters: ["CodeMirror-linenumbers", "CodeMirror-foldgutter"]
        });
        {$fieldID}_editor.setOption("theme", "ambiance");

				__kuink_{$_guid}_fieldFunctions.push(() => {
					var codeEditorContent = {$fieldID}_editor.getDoc().getValue();
					$("#{$_guid} textarea#{$fieldID}").val(codeEditorContent);
				});

    </script>
