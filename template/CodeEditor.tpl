<!--
<div class="controls">
  <textarea class="input-{$inputSize} {$disabledClass}" id="{$fieldID}" name="{$fieldID}" rows="{$fieldAttrs['rows']}" cols="{$fieldAttrs['cols']}" {$disabledAttr}>{$field['value']}</textarea>
</div>
-->

<link rel="stylesheet" href="lib/tools/codemirror/lib/codemirror.css">
<script src="lib/tools/codemirror/lib/codemirror.js"></script>
<script src="lib/tools/codemirror/addon/hint/show-hint.js"></script>
<link rel="stylesheet" href="lib/tools/codemirror/addon/hint/show-hint.css">
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
      var neonInstructions = [
          'Var',
          'Action',
          'RaiseEvent',
          'Param',
          'Params',
          'ForEach'
      ];

      CodeMirror.xmlHints['<'] = neonInstructions;

      CodeMirror.xmlHints['<Var><'] = neonInstructions;
      CodeMirror.xmlHints['<Action><'] = neonInstructions;
      CodeMirror.xmlHints['<RaiseEvent><'] = neonInstructions;
      CodeMirror.xmlHints['<ForEach><'] = neonInstructions;




      //define properties
      CodeMirror.xmlHints['<Var '] = [
          'name'
      ];

      CodeMirror.xmlHints['<Action '] = [
          'name'
      ];


      CodeMirror.xmlHints['<RaiseEvent '] = [
          'name'
      ];

      CodeMirror.xmlHints['<Param '] = [
          'name'
      ];

      CodeMirror.xmlHints['<ForEach '] = [
          'var',
          'item',
          'key'
      ];

      CodeMirror.commands.autocomplete = function(cm) {
        CodeMirror.showHint(cm, CodeMirror.xmlHint);
      }
      function passAndHint(cm) {
        setTimeout(function() { cm.execCommand("autocomplete"); }, 100);
        return CodeMirror.Pass;
      }

      var {$fieldID}_editor = CodeMirror.fromTextArea(document.getElementById("{$fieldID}"), {
            value: '',
            mode: 'xml',
            lineNumbers: true,
            extraKeys: {
                "' '": passAndHint,
                "'<'": passAndHint,
                "Ctrl-Space": "autocomplete"
            },
            autoCloseTags: true,
            viewportMargin: Infinity,
            extraKeys: {
              "Ctrl-Q": function(cm){ cm.foldCode(cm.getCursor()); }
              },
            foldGutter: true,
            gutters: ["CodeMirror-linenumbers", "CodeMirror-foldgutter"]

        });
        {$fieldID}_editor.setOption("theme", "ambiance");
    </script>
