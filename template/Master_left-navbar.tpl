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
          <li><a href="../index.html"><i class="fa fa-circle-o"></i>{translate}Aplicações{/translate}</a></li>
          <li><a href="../index.html"><i class="fa fa-circle-o"></i>{translate}Utilizadores{/translate}</a></li>
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
          <li><a href="layout/top-nav.html"><i class="fa fa-circle-o"></i>{translate}Testes Unitários{/translate}</a></li>
          <li><a href="layout/boxed.html"><i class="fa fa-circle-o"></i>{translate}Gestor de Entidades{/translate}</a></li>
          <li><a href="layout/fixed.html"><i class="fa fa-circle-o"></i>{translate}Gerador de Aplicações{/translate}</a></li>
          <li><a href="layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i>{translate}Explorador de API{/translate}</a></li>
          <li><a href="layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i>{translate}Scripting{/translate}</a></li>
        </ul>
      </li>
    </ul>		

	</section>
	<!-- /.sidebar -->
</aside>
