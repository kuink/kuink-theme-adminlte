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


	{* Calculate the label size xlarge, large, medium, small *}
	{* Default size for small fields *}
	{if ($field['attributes']['_rowLength'] > 1) || ($insideColumn == 1)}
		{$labelSize=2} {* Label was too small when field is inside column or in a row with fields *}
	{else}
		{$labelSize=2}
	{/if}
	
  {if $fieldAttrs['label-size']=='medium'}
  	{$labelSize=6}
  {elseif $fieldAttrs['label-size']=='large'}
  	{$labelSize=8}
  {elseif $fieldAttrs['label-size']=='xlarge'}
  	{$labelSize=10}
 	{/if} 
 {* Inline fields allways have value of 1 *}
 	{* if $fieldAttrs['inline']!='false'} 
		{$labelSize=1}
	{/if *}

{$availableSpace = 12}
{if (($field['attributes']['inline'] == 'false') && ($field['attributes']['_rowLength'] > 1))}
	{* This is the first of inline fields*}
	{$fieldSize = ($availableSpace/$field['attributes']['_rowLength']) - $labelSize + 1}
{else}
	{if ($field['attributes']['inline'] != 'false') && ($field['attributes']['_rowEnd'] == 1)}
		{* This is the last of inline fields*}
		{$fieldSize = ($availableSpace/$field['attributes']['_rowLength']) - $labelSize - 1}
	{else}
		{$fieldSize = ($availableSpace/$field['attributes']['_rowLength']) - $labelSize}
	{/if}
{/if}

{* $fieldSize = ($availableSpace/$field['attributes']['_rowLength']) - $labelSize *}

{assign var=fieldType value=$field['type']}
{* $field['attributes']['_rowStart']}|{$field['attributes']['_rowEnd'] *}

{$labelClassComplement = ''}
{if $fieldType=='Checkbox'}
	{* $labelClassComplement = 'font-weight: normal;' *}
	{$labelClassComplement = ''}
{/if}

{if $fieldType == 'Header' || $fieldType == 'Column' || $fieldType == 'Tab'}
	{include file="./form/$fieldType.tpl"}
	{if ($fieldAttrs['close'] == 'true')} {*For closing columns*}
		</div>
	{/if}	
{else}
	{if $fieldAttrs['_rowStart'] == 1}
		{* <!--div class="form-group" id="{$fieldID}CG" style="{if ($prevFieldAttrs['inline']!='false') && ($fieldAttrs['inline']=='false')}clear: left;{/if}{if ($fieldAttrs['inline']!='false') || ($nextFieldAttrs['inline']!='false' && $nextFieldAttrs!=null)}float: left;{/if}margin-left: 10px;"-->	*}
		<div class="form-group" id="{$fieldID}CG" style="margin-left: 10px;">	
			<div class="row">
	{/if}

			{if $fieldAttrs['label-position'] == 'right'}
				{* In the special case of the checkbox, the field size is allways 1 *}
				{if $fieldType=='Checkbox'}
					{$fieldSize = 1}
					{$labelSize = $availableSpace/$field['attributes']['_rowLength'] - 1}
				{/if}

				<div class="col-lg-{$fieldSize} col-md-{$fieldSize} col-sm-{$fieldSize} col-xs-12">
					{include file="./form/$fieldType.tpl"}
				</div>			
			{/if}
			
			{* Place the label *}
			{if $fieldType != 'ActionGroup'}
				<!--div class="col-lg-{$labelSize} col-md-{$labelSize} col-sm-{$labelSize} col-xs-3" style="{if (($fieldAttrs['inline']=='true') || ($nextFieldAttrs['inline']=='true' && $nextFieldAttrs!=null)) }width: 100%;{/if}"-->
				<div class="col-lg-{$labelSize} col-md-{$labelSize} col-sm-{$labelSize} col-xs-12">
					{if $fieldType !='Hidden'}
						{* <label for="{$fieldGuid}" style="{if $fieldAttrs['inline'] == 'tight'}width: auto; margin:0px 5px 0px 5px;{/if}">{$field['attributes']['label']}{if $fieldRequired == true}{$hasRequiredFields=true scope=parent}&nbsp;<font style="color:red">{$sRequiredString}</font>{/if}</label> *}
								
						<label style="margin-top: 8px; {$labelClassComplement}" for="{$fieldGuid}">{$field['attributes']['label']}
							{if $field['attributes']['label-url'] != ''}<a target="_blank" href="{$field['attributes']['label-url']}" onclick="$('#{$fieldGuid}').prop('checked', true );">{$field['attributes']['label-url-description']}</a>{/if}
							{if $fieldRequired == true}{$hasRequiredFields=true scope=parent}&nbsp;<font style="color:red">{$sRequiredString}</font>{/if}
						</label>

						{if $field['attributes']['help']!='false' && $field['attributes']['help']!='' && $field['attributes']['help'] != $field['attributes']['id']}
							&nbsp;&nbsp;
							<a tabindex="-1" role="button" data-toggle="popover" data-trigger="focus" title="{$field['attributes']['label']} - {translate app="framework"}help{/translate}" data-html="true" data-content="{$field['attributes']['help']}" href="javascript:void(0);">
								<i class="fieldQuestionMark fa fa-info-circle" ></i>
							</a>
							<script>
								$('[data-toggle="popover"]').popover()
							</script>
						{/if}
					{/if}
				</div>
			{/if}

			{* Place the field *}
			{if $fieldAttrs['label-position'] == 'left'}
				<div class="col-lg-{$fieldSize} col-md-{$fieldSize} col-sm-{$fieldSize} col-xs-12">
					{include file="./form/$fieldType.tpl"}
				</div>			
			{/if}
	{if ($fieldAttrs['_rowEnd'] == 1)} {*For closing columns*}
			</div>
		</div>
	{/if}
	
{/if}
