

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


<!DOCTYPE html>
<html lang="en">
  <head>
    <META http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{$appName} | {$nodeName}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->

	<!-- flags -->
	<link href="theme/{$THEME}/css/flags/flags.css" rel="stylesheet">

    <link href="theme/{$THEME}/css/bootstrap/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 0px;
        padding-bottom: 40px;
      }
      .input-prepend .add-on,
      .input-append .add-on,
      .input-prepend .btn,
      .input-append .btn
      {
        margin-left: -4px;
      }
      .input-prepend .add-on, .input-prepend .btn
      {
        margin-right: -4px;
      }

      #cscmHeader {
        margin-bottom: 10px;
        padding-left: 10px;
      }
        @media print
        {
            .noPrint, .btn-group
            {
                display:none;
            }
            body {
                zoom: 0.9; -moz-transform: scale(0.9); -moz-transform-origin: 0 0}
            }
        }
      .overlay {
        position:absolute;
        top:0;
        left:0;
        width:100%;
        height:100%;
        z-index:1000;

      }
      @media print
	  {
    	.no-print, .no-print *
    	{
        	display: none !important;
    	}
	  }
    </style>
    <link href="theme/{$THEME}/css/bootstrap/bootstrap-responsive.css" rel="stylesheet">
    <link href="theme/{$THEME}/css/bootstrap/prettify.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="theme/{$THEME}/img/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="theme/{$THEME}/img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="theme/{$THEME}/img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="theme/{$THEME}/img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="theme/{$THEME}/img/apple-touch-icon-57-precomposed.png">

    <link href="theme/{$THEME}/css/bootstrap/timepicker.css" type="text/css" rel="stylesheet" />
    <link href="theme/{$THEME}/css/bootstrap/datepicker.css" rel="stylesheet" />
    <link href="theme/{$THEME}/css/bootstrap/select2.css" rel="stylesheet" />
    <link href="theme/{$THEME}/css/bootstrap/select2-bootstrap.css" rel="stylesheet" />
    <link href="theme/{$THEME}/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <!-- Code Mirror Themes -->
    <link rel="stylesheet" href="lib/tools/codemirror/theme/ambiance.css"/>

        <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.4/angular.min.js"></script>
    <script src="theme/{$THEME}/js/master_app.js"></script>
    <script src="theme/{$THEME}/js/master_main.ctrl.js"></script>

    <script src="theme/{$THEME}/js/jquery.js"></script>
    <script src="theme/{$THEME}/js/jquery-migrate-1.2.1.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-transition.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-alert.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-modal.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-dropdown.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-scrollspy.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-tab.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-tooltip.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-popover.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-button.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-collapse.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-carousel.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-typeahead.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-timepicker.js"></script>
    <script src="theme/{$THEME}/js/bootstrap-datepicker.js" ></script>
    <script src="theme/{$THEME}/js/bootstrap-inputmask.js" ></script>
    <script src="theme/{$THEME}/js/moment.min.js" ></script>
		<script src="theme/{$THEME}/js/moment-timezone-with-data.min.js" ></script>
    <script src="theme/{$THEME}/js/treegrid.js" ></script>
    <script>
        $.extend($.fn.treegrid.defaults, {
            expanderTemplate: '<i class="treegrid-expander"></i>',
            expanderExpandedClass: 'fa fa-minus',
            expanderCollapsedClass: 'fa fa-plus'
        });
    </script>

    <script type='text/javascript' src='theme/{$THEME}/js/select2.js'></script>
	<!-- TinyMCE -->
	<script type="text/javascript" src="lib/tools/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
	<!-- /TinyMCE -->

  <!-- MultiLanguage input support -->
	<script type="text/javascript" src="theme/{$THEME}/js/i18n.js"></script>
	<!-- /MultiLanguage input support -->


    <script src="theme/{$THEME}/js/highcharts.js" ></script>

<!--FullCalendar-->
<!-- Full Calendar crashes date picker
  <script type='text/javascript' src='lib/tools/fullcalendar/src/_loader.js'></script>
-->
<!--FullCalendar-->

  <!-- Kuink Custom Plugins -->
  <script src="theme/{$THEME}/js/kuink_ControlRefreshPlugin.js" ></script>

    <style>
        .form_legend {
          font-size: 16px;
          font-weight: bold;
        }
    	.container-fluid {
    		padding-left: 5px;
    		padding-right: 5px;
    	}
    	.form-condensed .control-group {
 			margin-top: 0;
    		margin-bottom: 5px;
		}
		.form-actions {
			padding: 7px 10px 9px;
			padding-bottom: 4px;
			padding-top: 4px;
			margin-bottom: 5px;
			margin-top: 5px;
		}
		.row-highlight {
			background-color: #52A8EC;
		}

		.advanced {
			margin-left: 146px;
		}

                .breadcrumb {
                  margin: 0px;
                }

                .navbar-inner{
                  border-radius: 0px;
                }
                form {
margin: 0 0 0px;
}

.navbar-inner {
  min-height: 40px;
  padding-right: 20px;
  padding-left: 20px;
background-color: #FAFAFA;
background-image: -moz-linear-gradient(top, white, #F2F2F2);
background-image: -webkit-gradient(linear, 0 0, 0 100%, from(white), to(#F2F2F2));
background-image: -webkit-linear-gradient(top, white, #F2F2F2);
background-image: -o-linear-gradient(top, white, #F2F2F2);
background-image: linear-gradient(to bottom, white, #F2F2F2);
background-repeat: repeat-x;
border: 1px solid #D4D4D4;
-webkit-border-radius: 0px;
-moz-border-radius: 0px;
border-radius: 0px;
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff2f2f2', GradientType=0);
-webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
-moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
}

.nav-pills > li > a {
padding-top: 6px;
padding-bottom: 8px;
margin-top: 2px;
margin-bottom: 2px;
-webkit-border-radius: 5px;
-moz-border-radius: 5px;
border-radius: 5px;
}


.btn-group {
       white-space: normal;
      }

        {literal}
        .treegrid-indent {width:16px; height: 16px; display: inline-block; position: relative;}

        .treegrid-expander {width:16px; height: 16px; display: inline-block; position: relative; cursor: pointer;}

        .treegrid-expander-expanded{background-image: url(../img/collapse.png); }
        .treegrid-expander-collapsed{background-image: url(../img/expand.png);}
        {/literal}

    </style>
    {nocache}
    <script>
      function neonModalCenter( ) {
       //to center div on current window size
           $('.modal').css('margin', '0px');
           $('.modal').css('width', '70%');
           $('.modal').css('height', '70%');
           $('.modal').css({
            left: ($(window).width() - $('.modal').outerWidth())/2,
            top: ($(window).height() - $('.modal').outerHeight())/2
          });
          //TODO: This must be changed to work in every condition
           $('.modal-body').css('max-height', $('.modal').outerHeight() - 75 );
      }

      function hideHeader(){
        $('#neonHeader').slideUp();
          localStorage.setItem('hideHeader',1);

      }

      function showHeader(){
        $('#neonHeader').slideDown();
          localStorage.setItem('hideHeader',0);

      }

      $(function(){
          if (localStorage.getItem('hideHeader')==1){
            $('#neonHeader').hide();
          }
      });

      function showLoadingDiv(){
        $('#loadingDiv').show();
      }

      //Prevent enter key on forms
		function stopRKey(evt) {
		  var evt = (evt) ? evt : ((event) ? event : null);
		  var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
		  if ((evt.keyCode == 13) && (node.type=="text"))
		  return false;

		}

		document.onkeypress = stopRKey;


    </script>
  </head>


  <body>



    {include file="Header.tpl"}

<!--
<style>
 .masterAlerts{
 	position: absolute;
	bottom: -1px;
	width: 100%;
	z-index: 999;
 }

 .masterAlerts .alert {

 	margin-bottom: 5px;
 	z-index: 999;
 }
</style>
<div class="masterAlerts">
  <div class="alert fade in alert-error" data-dismiss="alert">
  	<button type="button" class="close" data-dismiss="alert">×</button>
    <h4>Livro de Ponto Digital</h4><img src="http://yoursmiles.org/ismile/exclamation/i35046.gif" width="50" /> Tem sumários por fazer na turma 7.º C</div>
</div>
-->



    <!--
    <ul class="breadcrumb">
		{foreach $breadcrumbEntries as $entry}
	  	  <li>
	  	  	{if $entry['href'] != ''}
	  	  		<a href="{$entry['href']}">{$entry['label']}</a>
	  	  	{else}
	  	  		{$entry['label']}
	  	  	{/if}
	  	  	{if $entry['last'] == false}
	  	  		<span class="divider">»</span>
	  	  	{/if}
	  	  </li>
		{/foreach}
	</ul>
   -->
    <div id="loadingDiv" style="background-color: #000; opacity: 0.5; position: absolute; top:0; right:0; width:100%; height:100%;z-index:999; display:none;">
      <center><img style="margin-top: 25%" src="theme/default/img/loading.gif"/></center>
    </div>

        <div class="row-fluid noPrint">
          <div class="span12 navbar-inner">
            {* define the function *}

              {function name=neonMenu menu=false level=1}
                  {if !is_array($menu['child'])}
                    {if !isset($menu['modal']) || $menu['modal'] == 'false'}
                      <li class="topMenuPill"><a target="{$menu['target']}" href="{$menu['href']}">{$menu['label']}&nbsp;{if $menu["hrefNoContext"] != ''}<i class="icon-share" onclick="window.open('{$menu['hrefNoContext']}');"></i>{/if}</a>
                      </li>
                    {else}
                      <li class="topMenuPill"><a href="#_globalModal" target="{$menu['target']}" role="button" class="link" data-toggle="modal" onclick="javascript: neonModalCenter(); $('#_globalModalBody').load('{$menu['href']}');">{$menu['label']}</a></li>
                  {/if}
                  {else}
                  	{if $level==1}
                    	<li class="dropdown topMenuPill">
                    {else}
                    	<li class="dropdown-submenu">
                    {/if}
                      {* removed dropdown-toggle from class in <a bellow *}
                      <a class="" data-toggle="dropdown" href="#">{$menu['label']} <b class="caret"></b></a>
                      <ul class="dropdown-menu">
                        {foreach from=$menu['child'] item=submenu}
                        {neonMenu menu=$submenu level=$level+1}
                        {/foreach}
                      </ul>
                    </li>
                  {/if}
              {/function}



                <ul class="nav nav-pills" style="margin-bottom: 0px;" >
                  {foreach from=$menuEntries item=menu}
                    {neonMenu menu=$menu}
                  {/foreach}
                  <li class="pull-right">
                    <a onclick="hideHeader();"><i class="icon-chevron-up">&nbsp;</i></a>
                  </li><li class="pull-right">
                    <a onclick="showHeader();"><i class="icon-chevron-down">&nbsp;</i></a>
                  </li>
                  <li class="pull-right disabled">
                      <a href="{$breadcrumbEntries[1]['href']}">{translate app="framework"}backToMoodleCourse{/translate}</a>

                    </li>
                    <li class="pull-right">
                       <a id="reportBugToggle" href="#" class="" data-animation="true" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." title="" data-original-title="Popover on bottom" data-trigger="click">{translate app="framework"}reportBug{/translate} &nbsp;<i style="color="#000" class="fa fa-bug"></i></a>
                       <script>
                         jQuery(document).ready(function(){
                              jQuery('#reportBugToggle').on('click', function(event) {
                                   jQuery('#reportBug').toggle('show');
                              });
                          });
                       </script>

                       <div id="reportBug" style="display:none" ng-app="app" ng-init="main.init('{$_apiCompleteUrl}')" ng-controller="MainController as main">
                        {translate app="framework"}describeProblem{/translate}
                        <br/>
                        <select id="handler_code" ng-model="main.handlerCode" ng-options="value.description for (key, value) in main.handlers"></select>
                        <br/>
                        <textarea maxlength="1024" id="issueDescription" ng-model="main.issueDescription"></textarea>
                        </br>
                        <a href="" class="btn btn-success" ng-click="main.addIssue('{$_apiCompleteUrl}', '{$_idContext}')">{translate app="framework"}send{/translate}&nbsp;<i class="fa fa-bug"></i></a>
                         <div id="ticketSuccess" style="display: none" class="alert alert-success">
                         {translate app="framework"}requestSuccess{/translate}
                         </div>

                         <div id="ticketError" style="display: none" class="alert alert-error">
                         {translate app="framework"}requestError{/translate}
                         </div>
                       </div>


                    </li>
                </ul>


          </div>
        </div>


    <!--/div-->

        <!-- Global Modal - For every action modal="true" -->
  <div class="modal hide fade in" role="dialog" id="_globalModal" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true"  >
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h3 id="myModalLabel">&nbsp;</h3>
    </div>
    <div id="_globalModalBody" class="modal-body">
      <p>loading...</p>
    </div>
  </div>

	<div class="container-fluid">

	  <div class="row-fluid " style="margin-top: 10px;">
	    <div class="span12 noPrint">

	        <ul class="breadcrumb" style="margin-bottom: 10px;">
	        <li class="active" style="font-weight: bold;">{$breadcrumbEntries[2]['label']} <span class="divider">|</span></li>
                <li class="active" style="font-weight: bold;">{$breadcrumbEntries[3]['label']} <span class="divider">|</span></li>
                <li style="font-weight: bold;">{$breadcrumbEntries[4]['label']}</li>
            </ul>


                <!--<h4> | {$breadcrumbEntries[4]['label']}</h4>-->
	    	<div id="debugMessages" class="noPrint">
	    		{hook position='debugMessages'}
	    	</div>
	    	<div id="userMessages" class="noPrint">
	          {foreach $userMessages as $message}
	              {$messageClass = "alert-info"}

	              {if $message['type'] == "error"}
	                {$messageClass = "alert-error"}
	              {elseif $message['type'] == "information" }
	                {$messageClass = "alert-info"}
	              {elseif $message['type'] == "success" }
	                {$messageClass = "alert-success"}
	              {elseif $message['type'] == "warning" }
	                {$messageClass = ""}
	              {elseif $message['type'] == "exception" }
	                {$messageClass = "alert-error"}
	              {/if}

	              <div class="alert {$messageClass}">
	                <button class="close" data-dismiss="alert">×</button>
	                {$message['text']}
	              </div>

	          {/foreach}
	        </div>

	        {* include the template *}
			<!-------->
			{if $_showSource}
			<div id="content">
			    <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
			        <li class="active"><a href="#screen" data-toggle="tab">{translate app="framework"}screen{/translate}</a></li>
			        <li><a href="#source" data-toggle="tab">{translate app="framework"}source{/translate}</a></li>
			    </ul>
			    <div id="my-tab-content" class="tab-content">
			        <div class="tab-pane active" id="screen">
			{/if}

			{*Allways include the app template*}
			{include file=$appTemplate}

			{if $_showSource}
				   	</div>
			        <div class="tab-pane" id="source">
						<h4><i class="fa fa-file-code-o fa-2x"></i>{translate app="framework"}source{/translate}</h4>
			            <pre><xml>{$_screenSource}</xml></pre>

			        </div>
			    </div>
			</div>

			{*Display the actions source*}
			<div id="actionsSource">
				<h4><i class="fa fa-file-code-o fa-2x"></i> {translate app="framework"}actionSources{/translate}</h4>
				<h3></h3>
			    <ul id="tabsActionSources" class="nav nav-tabs" data-tabs="tabs">
					{foreach from=$_actionsSource item=actionSource key=actionName}
					    <li><a href="#actionSource{$actionName}" data-toggle="tab">{$actionName}</a></li>
					{/foreach}
			    </ul>
			    <div id="my-tab-content" class="tab-content">
			    	{foreach from=$_actionsSource item=actionSource key=actionName}
			        	<div class="tab-pane" id="actionSource{$actionName}">
			        		<pre><xml>{$actionSource}</xml></pre>
			        	</div>
			        {/foreach}
			    </div>

			</div>
			<script type="text/javascript">
			    jQuery(document).ready(function ($) {
			        $('#tabs').tab();
			    });

			    jQuery(document).ready(function ($) {
			        $('#tabsActionsSources').tab();
			    });

			</script>

			{/if}


		</div>
	  </div>
	 </div>

    <hr class="noPrint">
    	{if $hasAdminMenu}
    		<div id="context_info">
				{hook position='context'}
    		</id>
    	{/if}

    	<div id="traceMessages" class="noPrint">
    		{hook position='trace'}
    	</div>

      <footer class="noPrint">
        <p align="right">&nbsp;&nbsp;&nbsp;&nbsp;<img src="pix/logo_gecol.png" height="50" style="width: auto; height: 50px;"/>&nbsp;&nbsp;&nbsp;&nbsp;<img src="pix/neonlogo.png" height="50" style="width: auto; height: 50px;"/>&nbsp;&nbsp;&nbsp;&nbsp;<img src="pix/logo_sti.png" height="50" style="width: auto; height: 50px;"/>&nbsp;&nbsp;&nbsp;&nbsp;</p>
      </footer>
    </div> <!-- /container -->

  </body>
</html>
