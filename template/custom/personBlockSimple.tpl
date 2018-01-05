<style>
	.personBlock_{$id} {
		position: relative;
		margin: 15px 0;
		padding: 39px 19px 14px;
		border: 1px solid #ddd;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
		border-radius: 4px;
	}

	.personBlock_{$id} .table {
		width: 100%;
		margin-bottom: 0px;
	}

	.personBlock_{$id}::after {
		content: "{$_person_type_description}";
		position: absolute;
		top: -1px;
		left: -1px;
		padding: 3px 7px;
		font-size: 12px;
		font-weight: bold;
		background-color: #f5f5f5;
		border: 1px solid #ddd;
		color: #828282;
		-webkit-border-radius: 4px 0 4px 0;
		-moz-border-radius: 4px 0 4px 0;
		border-radius: 4px 0 4px 0;
	}

	.personBlockFirst td {
		border-top: 0px;
	}

</style>

<div class="well personBlock_{$id}">
	<table class="table table-condensed" style="max-width: 250px;" >
		<tbody>
			<tr class="personBlockFirst">
				<td rowspan="2" width="60">{$photo}</td>
				<td><b>{$display_name}</b></td>
			</tr>
			<tr>
				<td>Utente {$id}</td>
			</tr>
		</tbody>
	</table>
</div>
