
<!DOCTYPE html>
<html lang="en">
  <head>
    <META http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{$appName} | {$nodeName}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="{$_themeRoot}theme/{$THEME}/css/bootstrap/select2.css" rel="stylesheet" />
    <link href="{$_themeRoot}theme/{$THEME}/css/bootstrap/select2-bootstrap.css" rel="stylesheet" />
    <link href="{$_themeRoot}theme/{$THEME}/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="lib/tools/codemirror/theme/ambiance.css"/>
    <link href="lib/tools/bootstrap-3/css/bootstrap.css" rel="stylesheet">
    <link href="lib/tools/bootstrap-3/css/bootstrap-theme.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="lib/tools/bootstrap-gtreetable/dist/bootstrap-gtreetable.min.css" />
    <link rel="stylesheet" href="lib/tools/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="lib/tools/codemirror/addon/hint/show-hint.css">
    <link href="{$_themeRoot}theme/default/css/simple-sidebar/simple-sidebar.css" rel="stylesheet">

        <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="theme/{$THEME}/js/jquery.js"></script>
    <script src="theme/{$THEME}/js/jquery-migrate-1.2.1.js"></script>

    <script src="lib/tools/bootstrap-3/js/bootstrap.min.js"></script>
    <script src="lib/tools/codemirror/lib/codemirror.js"></script>
    <script src="lib/tools/codemirror/addon/edit/closetag.js"></script>
    <script src="lib/tools/codemirror/addon/hint/show-hint.js"></script>
    <script src="lib/tools/codemirror/addon/hint/xml-hint.js"></script>
    <script src="lib/tools/codemirror/mode/xml/xml.js"></script>
    <script type="text/javascript" src="lib/tools/bootstrap-gtreetable/dist/bootstrap-gtreetable.js"></script>
    <script type='text/javascript' src='{$_themeRoot}theme/{$THEME}/js/select2.js'></script>
    
    <link href="{$_themeRoot}theme/{$THEME}/css/bootstrap/select2.css" rel="stylesheet" />
    <link href="{$_themeRoot}theme/{$THEME}/css/bootstrap/select2-bootstrap.css" rel="stylesheet" />
    <link href="{$_themeRoot}theme/{$THEME}/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  </head>
  <body>
    {* 
    Returns the position hook html
    $position = Position of controls
    *}
    {function hook }          {* short-hand *}
      {foreach $POSITION[ $position ] as $item}
          <div class="row-fluid" style="margin-left: 0px">
              {$item}
          </div>
      {/foreach}
    {/function}
           
    {* include the template *}      
    {include file=$appTemplate}

  </body>
</html>
