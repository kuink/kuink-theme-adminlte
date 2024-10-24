				<meta charset="UTF-8">
				<title>{$_userCompanyData.code}</title>
				<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
				<!-- bootstrap 3.3.5 -->
				<link href="{$_themeRoot}theme/{$THEME}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
				<!-- Bootstrap date picker -->
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/bootstrap-datetimepicker.min.css"/>

				<!-- Theme style -->
				<!-- link href="{$_themeRoot}theme/{$THEME}/assets/css/AdminLTE.min.css" rel="stylesheet" type="text/css" / -->
				<link href="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
				<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" type='text/css'>


				<!-- select2 bootstrap -->
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/select2/select2.css"/>
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/select2/select2-bootstrap.css"/>
				<!-- Font Awesome -->
				<!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"-->
				<!--link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"-->
				<!--link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"-->
				<!--link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-0c38nfCMzF8w8DBI+9nTWzApOpr1z0WuyswL4y6x/2ZTtmj/Ki5TedKeUcFusC/k" crossorigin="anonymous"-->
				
				
				{* Temporarily added to solve the fail of script import *}
				{*<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-0c38nfCMzF8w8DBI+9nTWzApOpr1z0WuyswL4y6x/2ZTtmj/Ki5TedKeUcFusC/k" crossorigin="anonymous">
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">*}
				{* Temporarily added to solve the fail of JS import by <script src="https://kit.fontawesome.com/0779454afb.js" /*}
				
				<!-- Ionicons -->
				<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
				<!-- Bootstrap Validator -->
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/bootstrapValidator.min.css"/>
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/kuink.css"/>
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/simple-sidebar/simple-sidebar.css">

				<link rel="icon" type="image/png" href="favicon.png" sizes="16x16">
				<!-- Flags for multilang fields -->
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/flags/flags.css" rel="stylesheet">
				<style>
					{literal}
						.treegrid-indent {width:16px; height: 16px; display: inline-block; position: relative;}

						.treegrid-expander {width:16px; height: 16px; display: inline-block; position: relative; cursor: pointer;}

						.treegrid-expander-expanded{background-image: url(../img/collapse.png); }
						.treegrid-expander-collapsed{background-image: url(../img/expand.png);}

						.badge {
							padding: 4px 9px;
							font-size: 12.025px;
							font-weight: bold;
							white-space: nowrap;
							color: #ffffff;
							background-color: #999999;
							-webkit-border-radius: 9px;
							-moz-border-radius: 9px;
							border-radius: 9px;
						}
						.badge:hover {
							color: #ffffff;
							text-decoration: none;
							cursor: pointer;
						}
						.badge-error {
							background-color: #b94a48;
						}
						.badge-error:hover {
							background-color: #953b39;
						}
						.badge-important {
							background-color: #b94a48;
						}
						.badge-important:hover {
							background-color: #953b39;
						}
						.badge-warning {
							background-color: #f89406;
						}
						.badge-warning:hover {
							background-color: #c67605;
						}
						.badge-success {
							background-color: #468847;
						}
						.badge-success:hover {
							background-color: #356635;
						}
						.badge-info {
							background-color: #3a87ad;
						}
						.badge-info:hover {
							background-color: #2d6987;
						}
						.badge-inverse {
							background-color: #333333;
						}
						.badge-inverse:hover {
							background-color: #1a1a1a;
						}
					{/literal}
				</style>

				<!--[if lt IE 9]>
				<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
				<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
				<![endif]-->

				<!-- AdminLTE Skins. Choose a skin from the css/skins
				folder instead of downloading all of them to reduce the load. -->
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/css/skins/_all-skins.min.css">

				<!-- jQuery 2.0.2 -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
				<!-- jQuery.Cookie 1.4.1 https://www.cdnpkg.com/jquery-cookie/file/jquery.cookie.min.js/-->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/jQuery.cookie/jquery.cookie.min.js" type="text/javascript"></script>

				<!-- Bootstrap -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/bootstrap.min.js" type="text/javascript"></script>
				<!-- Bootstrap Validator -->
				<script type="text/javascript" src="{$_themeRoot}theme/{$THEME}/assets/js/bootstrapValidator.js"></script>
				<!-- Moment JS -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/moment-with-langs.js" type="text/javascript"></script>
				<!-- Bootbox - Dialogs -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/bootbox.min.js" type="text/javascript"></script>
				<!-- select2 -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/select2/select2.full.min.js" type="text/javascript"></script>
				<!-- highcharts -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/highcharts.js" type="text/javascript"></script>
				<!-- treegrid -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/treegrid.js" type="text/javascript"></script>
				<script>
						$.extend($.fn.treegrid.defaults, {
								expanderTemplate: '<i class="treegrid-expander"></i>',
								expanderExpandedClass: 'fa fa-minus',
								expanderCollapsedClass: 'fa fa-plus'
						});
				</script>
				<!-- AdminLTE App -->
				<!-- FullCalendar -->
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.css">
				<link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">

				<!--script src="{$_themeRoot}theme/{$THEME}/assets/js/app.min.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/fastclick/fastclick.min.js" type="text/javascript"></script-->

				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/dist/js/adminlte.min.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fastclick/lib/fastclick.js" type="text/javascript"></script>

				<!-- link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.css"/ -->
				<!-- link rel="stylesheet" href="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print"/ -->

				<!-- script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/moment/moment.js"></script -->
				<!-- script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.js"></script-->


				<!-- InputMask -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/input-mask/jquery.inputmask.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/input-mask/jquery.inputmask.numeric.extensions.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/input-mask/jquery.inputmask.phone.extensions.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/input-mask/jquery.inputmask.regex.extensions.js" type="text/javascript"></script>

				<!-- Snap.svg -->
    		<script type="text/javascript" src="{$_themeRoot}theme/{$THEME}/assets/js/snap/dist/snap.svg-min.js"></script>	
    
				<!-- Bootstrap datepicker -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>

				<!-- MultiLanguage input support -->
  				<script type="text/javascript" src="{$_themeRoot}theme/{$THEME}/assets/js/i18n.js"></script>
  				<!-- /MultiLanguage input support -->

				<!-- Font Awesome -->
				<!--<script src="https://kit.fontawesome.com/0779454afb.js" crossorigin="anonymous"></script>-->
				<script src="https://kit.fontawesome.com/a636427355.js" crossorigin="anonymous"></script>

				<!-- html2canvas -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/js/html2canvas/html2canvas.min.js" type="text/javascript"></script>

				<!-- Kuink Scripts - Must be the last scripts -->
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/kuink/dist/js/kuink_Core.Manager.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/kuink/dist/js/kuink_Core.Submit.js" type="text/javascript"></script>				
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/kuink/dist/js/kuink_Core.Date.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/kuink/dist/js/kuink_Control.Form.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/kuink/dist/js/kuink_Control.Grid.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/kuink/dist/js/kuink_Control.Diagram.js" type="text/javascript"></script>
				<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/kuink/dist/js/kuink_Control.RefreshPlugin.js" type="text/javascript"></script>
				
				<script type="text/javascript">
					var applicationContexts = new Array();
					var __kuink = new KuinkManager();  //Global variable with kuink specific data
					__kuink.apiUrl = '{$_apiCompleteUrl}';
				</script>
				<!-- End Kuink Scripts -->
