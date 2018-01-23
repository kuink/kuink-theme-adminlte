{*

Handle all thing about a field. This includes field attributes definition
and handle the control display

*}

{*Define things*}
{if $field['attributes']['disabled']=="true"}
	{$disabledClass = "disabled"}
	{$disabledAttr = "disabled"}
{/if}
{$fieldID = $field['attributes']['id']}
{$fieldName = $fieldID}
{$fieldGuid = $fieldID} {* TODO::put context in id field *}
{$fieldIcon = $fieldAttrs['icon']}

{* insert the required field symbol *}
{$fieldRequired = false}
{$rule = $rules[{$fieldID}]}
	{foreach $rule as $item}
		{if $item == 'required'}
			{$fieldRequired = true}
		{/if}
	{/foreach}

{assign var=fieldType value=$field['type']}

{if $fieldType == 'Header' || $fieldType == 'Column' || $fieldType == 'Tab'}
	{include file="./form/$fieldType.tpl"}
{else}
	<div class="form-group" id="{$fieldID}CG" style="{if ($prevFieldAttrs['inline']!='false') && ($fieldAttrs['inline']=='false')}clear: left;{/if}{if ($fieldAttrs['inline']!='false') || ($nextFieldAttrs['inline']!='false' && $nextFieldAttrs!=null)}float: left;{/if}">
		<div class="row">
			{if $fieldType != 'Checkbox' && $fieldType != 'ActionGroup'}
			<div class="col-lg-2 col-sm-2 col-xs-3">
				{if $fieldType !='Hidden'}
					<label for="{$fieldGuid}" style="{if $fieldAttrs['inline'] == 'tight'}width: auto; margin:0px 5px 0px 5px;{/if}">{$field['attributes']['label']}{if $fieldRequired == true}{$hasRequiredFields=true scope=parent}&nbsp;<font style="color:red">{$sRequiredString}</font>{/if}</label>
					{if $field['attributes']['help']!=''}
						&nbsp;&nbsp;
						<a tabindex="-1"
							 data-toggle="tooltip" title=""
							 data-original-title="{$field['attributes']['help']}"
							 data-placement="right"
							 href="javascript:void(0);">
								<i class="fieldQuestionMark fa fa-info-circle" ></i>
						</a>
					{/if}
				{/if}
			</div>
			{/if}
			{if $fieldType == 'Checkbox'}
				<div class="col-lg-2 col-sm-2 col-xs-3">
				</div>
			{/if}

			<div class="col-lg-10 col-sm-10 col-xs-12">
				{include file="./form/$fieldType.tpl"}
			</div>
		</div>
	</div>
{/if}
