<?php
/* Smarty version 3.1.33, created on 2019-06-19 08:48:00
  from '/opt/moodle/mod/kuink/theme/adminlte/template/Head.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d09f6c032e6b7_55865332',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6f104234d2bcf42af3cbbd292ad8eff5c2555bdd' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/template/Head.tpl',
      1 => 1544544789,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d09f6c032e6b7_55865332 (Smarty_Internal_Template $_smarty_tpl) {
?>				<meta charset="UTF-8">
				<title>KuinK</title>
				<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
				<!-- bootstrap 3.3.5 -->
				<link href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
				<!-- Bootstrap date picker -->
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/bootstrap-datetimepicker.min.css"/>

				<!-- Theme style -->
				<!-- link href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/AdminLTE.min.css" rel="stylesheet" type="text/css" / -->
				<link href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />

				<!-- select2 bootstrap -->
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/select2/select2.css"/>
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/select2/select2-bootstrap.css"/>
				<!-- Font Awesome -->
				<!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"-->
				<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
				<!-- Ionicons -->
				<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
				<!-- Bootstrap Validator -->
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/bootstrapValidator.min.css"/>
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/kuink.css"/>
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/simple-sidebar/simple-sidebar.css">

				<link rel="icon" type="image/png" href="favicon.png" sizes="16x16">


				<style>
					
						.treegrid-indent {width:16px; height: 16px; display: inline-block; position: relative;}

						.treegrid-expander {width:16px; height: 16px; display: inline-block; position: relative; cursor: pointer;}

						.treegrid-expander-expanded{background-image: url(../img/collapse.png); }
						.treegrid-expander-collapsed{background-image: url(../img/expand.png);}

						.badge {
							padding: 1px 9px 2px;
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
					
				</style>

				<!--[if lt IE 9]>
				<?php echo '<script'; ?>
 src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"><?php echo '</script'; ?>
>
				<![endif]-->

				<!-- AdminLTE Skins. Choose a skin from the css/skins
				folder instead of downloading all of them to reduce the load. -->
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/skins/_all-skins.min.css">

				<!-- jQuery 2.0.2 -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/jQuery/jQuery-2.1.4.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<!-- Bootstrap -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/bootstrap.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<!-- Bootstrap Validator -->
				<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/bootstrapValidator.js"><?php echo '</script'; ?>
>
				<!-- Moment JS -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/moment-with-langs.js" type="text/javascript"><?php echo '</script'; ?>
>
				<!-- Bootbox - Dialogs -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/bootbox.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<!-- select2 -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/select2/select2.full.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<!-- highcharts -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/highcharts.js" type="text/javascript"><?php echo '</script'; ?>
>
				<!-- treegrid -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/treegrid.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
>
						$.extend($.fn.treegrid.defaults, {
								expanderTemplate: '<i class="treegrid-expander"></i>',
								expanderExpandedClass: 'fa fa-minus',
								expanderCollapsedClass: 'fa fa-plus'
						});
				<?php echo '</script'; ?>
>
				<!-- AdminLTE App -->
				<!--script src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/app.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/slimScroll/jquery.slimscroll.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/fastclick/fastclick.min.js" type="text/javascript"><?php echo '</script'; ?>
-->

				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/dist/js/adminlte.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/bower_components/fastclick/lib/fastclick.js" type="text/javascript"><?php echo '</script'; ?>
>

				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.css"/>
				<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print"/>

				<!-- script src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/bower_components/moment/moment.js"><?php echo '</script'; ?>
 -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.js"><?php echo '</script'; ?>
>


				<!-- InputMask -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/input-mask/jquery.inputmask.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/input-mask/jquery.inputmask.extensions.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/input-mask/jquery.inputmask.numeric.extensions.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/input-mask/jquery.inputmask.phone.extensions.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/input-mask/jquery.inputmask.regex.extensions.js" type="text/javascript"><?php echo '</script'; ?>
>

				<!-- Snap.svg -->
    		<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/snap/dist/snap.svg-min.js"><?php echo '</script'; ?>
>	
    
				<!-- Bootstrap datepicker -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/bootstrap-datetimepicker.min.js" type="text/javascript"><?php echo '</script'; ?>
>

				<!-- MultiLanguage input support -->
  				<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/js/i18n.js"><?php echo '</script'; ?>
>
  				<!-- /MultiLanguage input support -->

				<!-- Kuink Scripts - Must be the last scripts -->
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/kuink/dist/js/kuink_Core.Manager.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/kuink/dist/js/kuink_Core.Submit.js" type="text/javascript"><?php echo '</script'; ?>
>				
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/kuink/dist/js/kuink_Core.Date.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/kuink/dist/js/kuink_Control.Form.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/kuink/dist/js/kuink_Control.Grid.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/kuink/dist/js/kuink_Control.Diagram.js" type="text/javascript"><?php echo '</script'; ?>
>
				<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/vendor/kuink/dist/js/kuink_Control.RefreshPlugin.js" type="text/javascript"><?php echo '</script'; ?>
>
				
				<?php echo '<script'; ?>
 type="text/javascript">
					var applicationContexts = new Array();
				<?php echo '</script'; ?>
>
				<!-- End Kuink Scripts -->
<?php }
}
