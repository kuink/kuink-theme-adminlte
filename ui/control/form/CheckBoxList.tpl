<div class="controls form-group">
		{foreach $field['options'] as $optionValue => $optionLabel}
			{if $optionValue != ''}
				<div class="checkbox">
					<label>
						<input type="hidden" name="{$fieldID}_{$optionValue}" value="0"/>
						<input type="checkbox" {$disabledAttr} class="{$disabledClass}" id="{$fieldID}_{$optionValue}" name="{$fieldID}_{$optionValue}" value="1"  {if $field['value'][$optionValue] == 1}checked{/if}>
							&nbsp;{$optionLabel}
						</input>
					</label>
				</div>
			{/if}
		{/foreach}
</div>
