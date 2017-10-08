
<!DOCTYPE html>
<html lang="en">
  <head>
    <META http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{$appName} | {$nodeName}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="{$_themeRoot}theme/{$THEME}/assets/css/bootstrap/select2.css" rel="stylesheet" />
    <link href="{$_themeRoot}theme/{$THEME}/assets/css/bootstrap/select2-bootstrap.css" rel="stylesheet" />
    <link href="{$_themeRoot}theme/{$THEME}/assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="kuink-core/lib/tools/codemirror/theme/ambiance.css"/>
    <link href="kuink-core/lib/tools/bootstrap-3/css/bootstrap.css" rel="stylesheet">
    <link href="kuink-core/lib/tools/bootstrap-3/css/bootstrap-theme.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="lib/tools/bootstrap-gtreetable/dist/bootstrap-gtreetable.min.css" />
    <link rel="stylesheet" href="lib/tools/codemirror/lib/codemirror.css">
    <link rel="stylesheet" href="lib/tools/codemirror/addon/hint/show-hint.css">
    <link href="{$_themeRoot}theme/default/css/simple-sidebar/simple-sidebar.css" rel="stylesheet">

        <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- jQuery 2.0.2 -->
    <script src="{$_themeRoot}theme/{$THEME}/assets/js/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!--script src="{$_themeRoot}theme/{$THEME}/assets/js/jquery-migrate-1.2.1.js"></script-->

    <script src="kuink-core/lib/tools/bootstrap-3/js/bootstrap.min.js"></script>
    <script src="kuink-core/lib/tools/codemirror/lib/codemirror.js"></script>
    <script src="kuink-core/lib/tools/codemirror/addon/edit/closetag.js"></script>
    <script src="kuink-core/lib/tools/codemirror/addon/hint/show-hint.js"></script>
    <script src="kuink-core/lib/tools/codemirror/addon/hint/xml-hint.js"></script>
    <script src="kuink-core/lib/tools/codemirror/mode/xml/xml.js"></script>
    <script type="text/javascript" src="kuink-core/lib/tools/bootstrap-gtreetable/dist/bootstrap-gtreetable.js"></script>
    <script type='text/javascript' src='{$_themeRoot}theme/{$THEME}/assets/js/select2.full.min.js'></script>
    
    <link href="{$_themeRoot}theme/{$THEME}/assets/css/select2.css" rel="stylesheet" />
    <!--link href="{$_themeRoot}theme/{$THEME}/assets/css/select2-bootstrap.css" rel="stylesheet" /-->
    <link href="{$_themeRoot}theme/{$THEME}/assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
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
    {assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}  
    {include $appTemplateSmarty}

  </body>
</html>
