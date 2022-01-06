{*
    This is a sample control. It will display a box with a title and a content

    The control Sample.php when calling the render method will pass the values in the following variables:
        $title
        $content
        $footer

    The type [default|primary|info|success|warning|error] will be in the variable:
        $type
    The removable button configuration will be on the variable:
        $removable
    The collapsible button configuration will be on the variable:
        $collapsible        
*}

 {* ** DEBUG **
    To debug smarty variables just use {debug} here before html starts
 *}

 {*
    $_guid is the control guid generated in the control.php class. Use this to identify the control
 *}
 <div id="{$_guid}" class="box box-{$type} box-solid">
  <div class="box-header with-border">  
  <h3 class="box-title">{$title}</h3>


    <div class="box-tools pull-right">
      {* Only show the collapsible button if the variable $collapsible is set to the string 'true' *}
      {if $collapsible=='true'}<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>{/if}
      {* Only show the removable button if the variable $removable is set to the string 'true' *}
      {if $removable=='true'}<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>{/if}
    </div>

    <!--To activate the remove and collapse buttons-->
    <script>
      $('#{$_guid}').boxWidget();
    </script>

  <!-- /.box-tools -->
</div>
<!-- /.box-header -->
<div class="box-body">
    {$content}
</div>
<!-- /.box-body -->
{if $footer!=''}
  <div class="box-footer">
    {$footer}
  </div>
{/if}

</div> 

