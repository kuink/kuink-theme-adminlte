{*

Create a help modal.
$modalData = array("fieldID" => "theFieldID", "helpText" => "theHelpText");

*}

{include './_aux/html.fields.tpl'}

{function helpModal }          {* short-hand *}
	<div class="modal hide" id="helpModal_{$modalData['fieldID']}">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Ajuda</h3>
		</div>
		<div class="modal-body">
			<p>{$modalData['helpText']}</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Fechar</a>
		</div>
	</div>
{/function}


{function addGlobalActionButtons}
	{if $globalActions}
		<div class="form-actions">
			<div class="btn-group">
				{$count = 0}
				{foreach $globalActions as $action_name=>$buttonAttrs}

					{if $buttonAttrs['type'] == '' }
						{$buttonType = "submit"}
					{else}
						{$buttonType = $buttonAttrs['type']}
					{/if}
					{if $count == 0}
						{$count = $count+1}
						<div class="btn-group">
					{/if}

					{$buttonAttrs['id'] = $action_name}
					<script>
						//Handle confirm message
						var confirmMessage = '';
						{$buttonAttrs['confirm'] = $buttonAttrs['confirm']|replace:'"':"'"}
						{if $buttonAttrs['confirm'] != 'false' && $buttonAttrs['confirm'] != ''}			
							{assign var="keywords" value="\n"|explode:$buttonAttrs['confirm']}
							{$firstChunk = 1}
							{foreach from=$keywords item=keyword}
								{if $firstChunk == 1}
									confirmMessage = "{$keyword}";
									{$firstChunk = 0}
								{else}
									confirmMessage = confirmMessage + "\n{$keyword}";
								{/if}
							{/foreach}		
						{else}
								confirmMessage = "{$buttonAttrs['confirm']}";
						{/if}
						
						if (confirmMessage!='' && confirmMessage!='false')
							__kuink.controlAddKey('{$_idContext}','{$_guid}', '{$buttonAttrs['id']}', 'confirm', confirmMessage);
											
						$("#{$_guid} #{$buttonAttrs['id']}").attr("onclick", function() {
							return "javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&action={$action_name}', '{$action_name}');return false;";
						});
					</script>

					{call name="addButton" buttonType=$buttonType buttonAttrs=$buttonAttrs}

				{/foreach}
				{if $count > 0}
					</div>
				{/if}
			</div>
		</div>
	{/if}			
{/function}


{if $freeze == 'true'}
	<div id="properties_{$_guid}" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title"><i class="fa fa-table">&nbsp;</i>{$title}</h4>
				</div>
				<div class="modal-body">
					<ul class="list-group">
						{foreach $columnAttributes as $colAttr}
							{if $colAttr['inline'] != 'true'}
								<li class="list-group-item">
									<input type="checkbox" id="{$colAttr['name']}" class="{$name}_hidden" {if $colAttr['hidden'] != 'true'}checked{/if}>
										{$colAttr['label']}
									</input>
								</li>
							{/if}
						{/foreach}
					</ul>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">{translate}back{/translate}</button>
					<button type="button" class="btn btn-primary" onclick=" var hidden=''; $('.{$name}_hidden').each(function(){ if (!this.checked) hidden=hidden+this.id+';'; }); window.location = '{$baseUrl}&{$name}_hidden='+hidden;">{translate}save{/translate}</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
{/if}

<div class="box">
	<form class="form-horizontal" id="{$_guid}" action="" method="post" enctype="multipart/form-data">
		<div class="box-header">
			<div class="pull-right box-tools">

				{if $freeze != 'true'}
					{call name="addGlobalActionButtons"}
				{/if}

				<!-- Hide/Show grid not editable columns -->
				{if ($freeze == 'true') && ($showColumns == 'true')}
					{*<a href="#properties_{$_guid}" class="btn btn-default" data-toggle="modal" data-target="#properties_{$_guid}"><i class="fa fa-bars"></i></a>*}
				{/if}
			</div>
			{if ($title != '')}
				<i class="fa fa-table">&nbsp;</i>
				<h3 class="box-title">{$title}</h3>
			{/if}
			
		</div>

		<div class="gridBlock_{$name} kuink-grid" style="overflow-x: auto; overflow-y: hidden">

			{$multiSeparator = '-'}

			{*if $title != ""}
				<h3>{$title}</h3>
			{/if*}

			<!-- Handle required fields -->

			<script type="text/javascript">
				function validateRequiredFields_{$_guid}() {
					var reqErrors;
					reqErrors = false;
					var reqFocus;
					reqFocus = '';
					{if ($requiredColumns != null) && (count($requiredColumns) > 0)}
						{foreach $data as $block}
							{foreach $block as $row}
								{$id = $row['id']['value']}
								{foreach $row as $value}
									if ($("#{$id}{$multiSeparator}CHANGED").val() == 1) {
										{if $requiredColumns[$value['attributes']['name']] == $value['attributes']['name']}
											var {$value['attributes']['name']}_{$id} = $("#{$id}{$multiSeparator}{$value['attributes']['name']}").val();
											reqErrors = reqErrors || ({$value['attributes']['name']}_{$id} == '');
											if ({$value['attributes']['name']}_{$id} == '') {
												$("#{$id}{$multiSeparator}{$value['attributes']['name']}CG").addClass("has-error");
												if (reqFocus == '')
													reqFocus = "#{$id}{$multiSeparator}{$value['attributes']['name']}";
											} else
												$("#{$id}{$multiSeparator}{$value['attributes']['name']}CG").removeClass("has-error");
										{/if}
									}
								{/foreach}
							{/foreach}
						{/foreach}
					{/if}
					$(reqFocus).focus();

					return !reqErrors;
				}

				{if $refreshable == 'true' && !$refreshing}
					$(function(){
						$( ".gridBlock_{$name}" ).kuink_refreshControl(
							{
								url: "{$refreshUrl}",
								interval: {$refreshInterval}
							}
						);

					});
				{/if}

				function gridActionField_{$_guid}(confirm, confirm_message, location, button_id, extraParams='') {
					//console.log( confirm );
					if (confirm == 'true' || confirm == true)
						__kuink.controlAddKey('{$_idContext}','{$_guid}', button_id, 'confirm', confirm_message);

					var formButtons = $("#{$_guid}").find("button").parent().children();
					$(formButtons).each(function() {
						if (this.id != '') {
							var button = $("#{$_guid}").children().find("#"+this.id);
							__kuink.controlAddKey('{$_idContext}', '{$_guid}', this.id, 'disabled', $(this).attr('disabled'));
						}
					});

					// get form data
					
					var reqValidate = validateRequiredFields_{$_guid}();
					if (!reqValidate)
						return false;
											
					$("#{$_guid}").kuinkSubmit({
						'url' 			: location+'&modal=embed',
						'idContext'	: '{$_idContext}',
						'method' 		: {if $freeze=='false'}'post'{else}'get'{/if},
						'processData': false,
						'contentType': false,
						'button_id' : button_id,
						'formGuid'	: '{$_guid}'
					});

				}

				$(document).ready(function() {
					$("#{$_guid}").submit(function(e){
						return false;
					});
				});

				//Function to toggle all the pick checkboxes
				function {$name}ToggleChecked(status) {
					$(".neon-pick").each( function() {
						$(this).attr("checked",status);
						var id = $(this).attr("id");
						var idParts = id.split("{$multiSeparator}"); //id is number-fieldname, ans we need just the number
						if( $(this).attr("checked") == "checked") {
							$("#"+idParts[0]+"{$multiSeparator}SELECTED").val(1);
							document.getElementById($(this).attr("id")).checked = true;
						}
						else {
							$("#"+idParts[0]+"{$multiSeparator}SELECTED").val(0);
							document.getElementById($(this).attr("id")).checked = false;
						}
					})
				}

				//Function to toggle all the pick checkboxes
				function {$name}ToggleChecked2(status, style) {
					$("#{$_guid} ."+style).each( function() {
						$(this).attr("checked",status);
						var id = $(this).attr("id");
						var idParts = id.split("{$multiSeparator}"); //id is number-fieldname, ans we need just the number
						if( $(this).attr("checked") == "checked") {
							document.getElementById($(this).attr("id")).checked = true;
							setChanged(idParts[0]);
						} else
							document.getElementById($(this).attr("id")).checked = false;
					})
				}

			</script>

			<input type="hidden" name="_FORM_TYPE" value="multi"/>

			<!-- script to catch changed fields in form -->
			<script>
				function setChanged( id ) {
					fieldId = "#"+id+"{$multiSeparator}CHANGED";
					$(fieldId).val(1);
				}

				function setPick( id, check ) {
					fieldId = "#"+id+"{$multiSeparator}SELECTED";
					if (check)
						$(fieldId).val(1);
					else
						$(fieldId).val(0);
				}

				function setChecked( id, check ) {
					fieldId = "#"+id+"{$multiSeparator}SELECTED";
					if (check)
						$(fieldId).val(1);
					else
						$(fieldId).val(0);
				}

			</script>

			<table id="{$name}" class="{if $tree == 'true'}tree{/if} table table-striped table-condensed table-bordered table-hover datatable kuink-control-grid">
				{if $showColumns == 'true'}
				<thead>
					<tr>
						{$index = 0}
						{$numInlines = 0}
						{$countHeaders = 0}
						{foreach $headers as $header}
							{$countHeaders = $countHeaders + 1}
						{/foreach}
						{foreach $headers as $header}
							{while ($columnAttributes[$index]['inline'] == 'true')}
								{$index = $index + 1}
							{/while}
							{if $columnAttributes[$index]['hidden'] != "true"}
								<th class="col_{$columnAttributes[$index]['name']} col-{$columnAttributes[$index]['colsize']} col-xs-{$columnAttributes[$index]['colsize']} col-sm-{$columnAttributes[$index]['colsize']} col-md-{$columnAttributes[$index]['colsize']} col-lg-{$columnAttributes[$index]['colsize']}" style="text-align: {if $columnAttributes[$index]['headeralign'] == ''}{$columnAttributes[$index]['horizontalalign']}{else}{$columnAttributes[$index]['headeralign']}{/if}">
									{if $columnAttributes[$index]['type'] == 'pick'}
										<input type="checkbox" class="input-medium" id="{$name}_selectall" name="{$name}_selectall" onclick="{$name}ToggleChecked(this.checked);" value="0">
									{/if}
									{if $columnAttributes[$index]['type'] == 'checkbox'}
										<input type="checkbox" class="input-medium" id="{$name}_selectall" name="{$name}_selectall" onclick="{$name}ToggleChecked2(this.checked,'grid-class-{$columnAttributes[$index]['name']}');" value="0">
									{/if}

									{$header}

									{if $columnAttributes[$index]['sortable'] != 'false' && $columnAttributes[$index]['sortable'] != ''}
										<span style="display:inline;">
											{if isset($sort[$index]['sort']) && $sort[$index]['sort'] == 'asc'}
												<a href="javascript: void(0)"  onclick="gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_sort={$index}_desc', '')"><i class="fa fa-sort-down"></i></a>
											{else if isset($sort[$index]['sort']) && $sort[$index]['sort'] == 'desc'}
												<a href="javascript: void(0)"  onclick="gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_sort={$index}_rem', '')"><i class="fa fa-sort-up"></i></a>
											{else}
												<a href="javascript: void(0)"  onclick="gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_sort={$index}_asc', '')"><i class="fa fa-sort"></i></a>
											{/if}
										</span>
									{/if}

									{if $columnAttributes[$index]['help']!=""}
										&nbsp;&nbsp;
										<a tabindex="-1" role="button" data-toggle="popover" data-trigger="focus" title="{$columnAttributes[$index]['label']} - {translate app="framework"}help{/translate}" data-html="true" data-content="{$columnAttributes[$index]['help']}" href="javascript:void(0);">
											<i class="fieldQuestionMark fa fa-info-circle" ></i>
										</a>
										<script>
											$('[data-toggle="popover"]').popover()
										</script>
										{*
										{$modalData = ['fieldID' => $columnAttributes[$index]['name'], 'helpText' => $columnAttributes[$index]['help']]}
										{call name=helpModal modalData=$modalData}

										<a data-toggle="modal" href="#helpModal_{$columnAttributes[$index]['name']}" ><i class="icon icon-question-sign"></i></a>*}
									{/if}
								</th>
							{/if}
							{$index = $index + 1 }
						{/foreach}

						{* Get columns that have defined highlight *}
						{foreach $columnAttributes as $column}
							{if $column['highlightstyle']}
								{$highlightColumn['highlightstyle'] = $column['highlightstyle']}
								{$highlightColumn['highlightvalue'] = $column['highlightvalue']}
								{$highlightColumns[$column['name']] = $highlightColumn}
							{/if}
						{/foreach}
					</tr>
				</thead>
				{/if}
				<tbody>
					{foreach $data as $block}
						{foreach $block as $row}
							{$tr_active_class = ""}
							{if $row['__active'] == 1}
								{$tr_active_class = 'row-highlight'}
							{/if}

							{$first = null}
							{foreach $row as $value}
								{$first = $value}
								{break}
							{/foreach}

							{* Support to highlight columns according values *}
							{$highlightClasses = ''}
							{foreach $highlightColumns item=highlightColumn key=colname}
								{if $row[$colname]['nonformatedvalue'] == $highlightColumn['highlightvalue']}
									{$highlightClasses = $highlightClasses|cat:' '|cat:$highlightColumn['highlightstyle']|cat:'-highlight'}
								{/if}
							{/foreach}
							<tr class="{if $tree == 'true'}treegrid-{$first['attributes']['treeid']} {if $first['attributes']['treeparentid'] != ''}treegrid-parent-{$first['attributes']['treeparentid']}{/if}{/if}{$highlightClasses}">
								{$index = 0}
								{$id = $row['id']['value']}

								{foreach $row as $value}
									{$fieldAttrs = $value['attributes']}
									{$onChange = "javascript: setChanged({$id});"}
									{$onPick = "javascript: setPick({$id}, this.checked);"}

									{$colType = $value['attributes']['type']}

									{* Only show not hidden fields *}
									{if $fieldAttrs['hidden'] != "true"}
										{if $fieldAttrs['nowrap'] == "true"}
											<td nowrap="true" style="white-space: nowrap; overflow-x: auto; text-align: {$fieldAttrs['horizontalalign']}; vertical-align: {$fieldAttrs['verticalalign']}">
										{else}
											<td style="text-align: {$fieldAttrs['horizontalalign']}; vertical-align: {$fieldAttrs['verticalalign']}">
										{/if}


										{if $tree == 'true' && $index==0 && $first['attributes']['treeparentid'] == ''}
											<span class="treegrid-indent"></span>
											<i class="treegrid-expander"></i>
										{/if}


										{$disabledClass = ''}
										{$disabledAttr = ''}

										{if $value['attributes']['disabled'] == 'true'}
											{$disabledClass='disabled'}
											{$disabledAttr='disabled'}
										{else}
											{if $value['attributes']['conditionalfield'] != ''}
												{if $row[$value['attributes']['conditionalfield']] == $value['attributes']['conditionalvalue']}
													{$disabledClass='disabled'}
													{$disabledAttr='disabled'}
												{/if}
											{/if}
										{/if}

										{if $fieldAttrs['visible'] == "true" || $fieldAttrs['visible'] == ""}
											{if $colType != ""}
												{$inputSize = $value['attributes']['inputsize']}
												{include file="./grid/$colType.tpl"}
											{else}
												<span style="overflow-x: auto;">
													{if ($value['constructor'] == null) || count($value['constructor']) == 0}
														{$value['value']}
													{else}
														{foreach $value['constructor'] as $actionAttribute}
															{$actionAttribute['separator']}<a href="javascript: void(0)" {$actionAttribute['tooltip']} class="{$actionAttribute['class']}" onclick="gridActionField_{$_guid}({$actionAttribute['confirm']}, '{$actionAttribute['confirm_message']}', '{$actionAttribute['location']}', '{$actionAttribute['name']}')"><span nowrap="true" style="white-space: nowrap; overflow-x: auto;">{$actionAttribute['label']}</span></a>
														{/foreach}
													{/if}
												</span>
											{/if}
										{/if}
										</td>
									{/if}

									{* create an hidden field if this value is supposed to be posted *}
									{if $fieldAttrs['post'] == "true"}
										<input type="hidden" id="{$id}{$multiSeparator}{$fieldAttrs['name']}" name="{$id}{$multiSeparator}{$fieldAttrs['name']}" value="{$value['value']}"/>
									{/if}

									{$index = $index + 1}
								{/foreach}
								{if ($freeze == 'false') && ($id != '') }
									<input type="hidden" id="{$id}{$multiSeparator}CHANGED" name="{$id}{$multiSeparator}CHANGED" value="0"/>
									<input type="hidden" id="{$id}{$multiSeparator}SELECTED" name="{$id}{$multiSeparator}SELECTED" value="0"/>
								{/if}
							</tr>
						{/foreach}
					{/foreach}
					{if $extendEdit == 'true'}
						{$index = 0 }
						{foreach $headers as $header}
							{* $columnAttributes[$index]['inline'] *}
							{if $columnAttributes[$index]['hidden'] != "true"}
								{if $columnAttributes[$index]['inline'] != "true"}
									<td>
										{if $columnAttributes[$index]['type'] != "static" && $columnAttributes[$index]['type'] != "checkbox"}
											<div id="div_extendedit-{$columnAttributes[$index]['name']}CG" class="control-group">
												<textarea class="input-sma " id="_extendedit-{$columnAttributes[$index]['name']}" name="_extendedit-{$columnAttributes[$index]['name']}" rows="4" cols="20" ></textarea>
												<div id="tt_extendedit-{$columnAttributes[$index]['name']}">
												</div>
											</div>
										{else}
											&nbsp;
										{/if}
									</td>
								{/if}
							{/if}

							{$index = $index + 1 }
						{/foreach}
						{* for actions *}
						<td>
							<script>
								//Expand values to fields in the grid
								function extendedEditAddValues() {
									var extendedFields = $("[id^='_extendedit']");
									for (i=0; i<extendedFields.length; i++)
									{
										var error="";
										var value=extendedFields[i].value;
										var arrValue=value.split("\n");
										var extendId=$(extendedFields[i]).attr('id').replace("_extendedit-","");
										if (arrValue != "") {
											var targetFields = $("[id$="+extendId+"]");
											for (j=0; j<targetFields.length-1; j++) {
												if (j < arrValue.length && arrValue[j]!="") {
													if ($(targetFields[j]).is('select')) {
														//Select field
														if (!$(targetFields[j]).attr('disabled')) {
															var found = false;
															$("#"+$(targetFields[j]).attr("id")+" option:contains('"+arrValue[j]+"')").each(function(){
																if($(this).text() == arrValue[j]){
																	found = true;
																	$(this).attr('selected','selected');
																}
															});
															if (!found)
																error=error+arrValue[j]+"\n";
														}
													} else {
														//Other fields than select
														//works for inputs but must be refactor for other types
														if (!$(targetFields[j]).attr('disabled'))
															$(targetFields[j]).val(arrValue[j]);
													}
													//Set to change to be treated as a changed value
													var itemId=$(targetFields[j]).attr("id").replace("-"+extendId,"");
													setChanged(itemId);
												}
											}
										}
										//Clear the extendfield
										if (error != "" ) {
											$("#div"+$(extendedFields[i]).attr("id")+"CG").removeClass("success");
											$("#div"+$(extendedFields[i]).attr("id")+"CG").addClass("error");
											$("#tt"+$(extendedFields[i]).attr("id")).html('<i class="fa fa-warning icon-black" style="color: #b94a48"></i>&nbsp;'+error);
										} else {
											if (arrValue != "") {
												//Only if the extendedit was not empty
												$("#div"+$(extendedFields[i]).attr("id")+"CG").removeClass("error");
												$("#div"+$(extendedFields[i]).attr("id")+"CG").addClass("success");
												$("#tt"+$(extendedFields[i]).attr("id")).html('<i class="fa fa-check-circle icon-black" style="color: #468847"></i>');
											}
										}
										$(extendedFields[i]).val("");

									}
								}
							</script>

							<a id="extendEditAction" type="submit" class=" btn btn-info " onclick="javascript: extendedEditAddValues(); return(false);"><i class="fa fa-arrow-circle-up icon-white"></i></a>
						</td>
					{/if}
				</tbody>
			</table>

			{if $exportable == 'true'}
				<div style="float:right; padding:3px">
					{foreach $exportTypes as $exportType}
						<a href="{$baseUrl}&action={$action}&exporttype={$exportType}&export={$name}&_nocache={$_guid}"><span class="label label-info">{$exportType}</span></a>
					{/foreach}
				</div>
			{/if}

			{if $freeze != 'true'}
				{call name="addGlobalActionButtons"}		
			{/if}

			{if $isPageable == "true"}
				<div class="pull-left" style="margin: 5px 5px 5px 5px">
					<ul style="width: 100%" class="pagination pagination-sm no-margin pull-right">
						{if $pageCurrent > 0}
							<li><a href="javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_page={$pageCurrent-1}', '');">{translate app="framework"}previous{/translate}</a></li>
							<li><a href="javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_page=0', '');">1</a></li>
						{else}
							<li class=""><a disabled="disabled" href="javascript:void(0);">{translate app="framework"}previous{/translate}</a></li>
							<li class="active"><a disabled="disabled" href="javascript:void(0);">1</a></li>
						{/if}

						{if $pageTotal > 10 && $pageCurrent > 5}
							<li class=""><a disabled="disabled" href="javascript:void(0);">...</a></li>
						{/if}

						{$start = 2}
						{$end = $pageTotal}
						{if $pageCurrent > 5 && $pageTotal > 10}
							{$start = $pageCurrent - 2}
						{/if}

						{if $pageCurrent < $pageTotal - 5  && $pageTotal > 10}
							{$end = $pageCurrent + 5}
						{/if}

						{for $i=$start to $end-1}
							{if $pageCurrent+1 eq $i}
								<li class="active"><a disabled="disabled" href="javascript:void(0);">{$i}</a></li>
							{else}
								<li><a href="javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_page={$i-1}', '');">{$i}</a></li>
							{/if}
						{/for}

						{if $pageTotal > 10 && $pageCurrent < $pageTotal - 5}
							<li class=""><a disabled="disabled" href="javascript:void(0);">...</a></li>
						{/if}

						{if $pageCurrent < $pageTotal-1}
							{if $pageTotal != 1}
								<li><a href="javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_page={$pageTotal-1}', '');">{$pageTotal}</a></li>
							{/if}
							<li><a href="javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_page={$pageCurrent+1}', '');">{translate app="framework"}next{/translate}</a></li>
						{else}
							{if $pageTotal != 1}
								<li class="active">&nbsp;<a href="javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_page={$pageTotal-1}', '');">{$pageTotal}</a></li>
							{/if}
							<li class=""><a disabled="disabled" href="javascript:void(0);">{translate app="framework"}next{/translate}</a></li>
						{/if}

						<li>&nbsp;
							<select id="{$name}_pageselector" name="{$name}_pageselector" class="form-control input-small" onchange="javascript: gridActionField_{$_guid}(false, '', '{$baseUrl}&{$name}_pagesize='+this.value+'&{$name}_page=0', '');" style="width: 80px; height: 28px; padding:0px 6px; display:inline;">
								<option value="10">10</option>
								<option value="20">20</option>
								<option value="50">50</option>
								<option value="100">100</option>
							</select>
							<script>$('#{$name}_pageselector option[value={$pageSize}]').attr('selected', 'selected');</script>
						</li>

						<li class="active">
							<a disabled="disabled">{translate app="framework"}total{/translate}:&nbsp;{$recordsTotal}</a>
						</li>
					</ul>
				</div>
			{else}
				<span class="label label-default">{translate app="framework"}total{/translate}: {$recordsTotal}</span>
			{/if}
			{if $legend != ''}
				<strong>{translate app="framework"}legend{/translate}</strong>: {$legend}
			{/if}

			{* If the grid is freezed then hide global actions *}
		</div>
	</form>
</div>

{if $tree=='true'}
	<script type="text/javascript">
		$(document).ready(function() {
			$('.tree[id={$name}]').treegrid({
				{if $treecollapsed == 'true'}
					'saveState': 'cookie',				
					'initialState': 'collapsed'
				{else}
					'initialState': 'expanded'
				{/if}
			});
		});
	</script>
{/if}
