<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				{if $_environment == 'dev'}
					<img src="{$_imageUrl}photo/default.jpg"
				{else}
					<img src="{$_imageUrl}photo/{$_user['publicKey']}.jpg"
				{/if}
					class="img-circle" alt="User Image"/>
			</div>
			<div class="pull-left info">
				<p>{$userDisplayName}</p>
			</div>
		</div>
		
		<ul class="sidebar-menu tree" data-widget="tree">
      <li class="header">&nbsp;</li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>{translate}Gestão{/translate}</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="view.php?idPage=APPS&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}Aplicações{/translate}</a></li>
          <!--li><a href="view.php?idPage=USERS&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}Utilizadores{/translate}</a></li-->
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-laptop"></i></i><span>{translate}Desenvolvimento{/translate}</span>
          <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <!--li><a href="view.php?idPage=UTST&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}Testes Unitários{/translate}</a></li-->
          <li><a href="view.php?idPage=ENTS&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}Gestor de Entidades{/translate}</a></li>
          <li><a href="view.php?idPage=GNRT&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}Gerador de Aplicações{/translate}</a></li>
          <li><a href="view.php?idPage=APIS&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}Explorador de API{/translate}</a></li>
          <li><a href="view.php?idPage=POS&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}Kuink POS{/translate}</a></li>
          <li><a href="view.php?idPage=IDE&modal=widgetContainer"><i class="fa fa-circle-o"></i>{translate}IDE{/translate}</a></li>
        </ul>
      </li>
    </ul>		

	</section>
	<!-- /.sidebar -->
</aside>
