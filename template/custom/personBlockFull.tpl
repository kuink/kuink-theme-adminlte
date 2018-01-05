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

	.nav-tabs > .active > a, .nav-tabs > .active > a:hover {
		color: #555555;
		cursor: default;
		background-color: #f5f5f5;
		border: 1px solid #ddd;
		border-bottom-color: transparent;
		font-weight: bold;
	}

	.nav {
		margin-bottom: 0px;
	}

</style>

<div class="well personBlock_{$id}" >
	<div class="tabbable tabs-left">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#home" data-toggle="tab">Info</a></li>
			<li class=""><a href="#profile" data-toggle="tab">Detalhes</a></li>
			<li class=""><a href="#related" data-toggle="tab">Relações</a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade active in" id="home">
				<table class="table table-condensed" style="max-width: 400px;" >
					<tbody>
						<tr class="personBlockFirst">
							<td rowspan="2" width="60">{$photo}</td>
							<td><b>{$display_name}</b></td>
							<td>{$mobile_1}</td>
						</tr>
						<tr>
							<td>Utente {$id}</td>
							<td>{$email}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="tab-pane fade" id="profile">
				<table class="table table-condensed" style="max-width: 550px;" >
					<tbody>
						<tr class="personBlockFirst">
							<td rowspan="2" width="60">{$photo}</td>
							<td>{$street_address}</td>
							<td>{$home_phone}</td>
						</tr>
						<tr>
							<td>{$postal_code} {$postal_address}</td>
							<td>{$mobile_1}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="tab-pane fade" id="related">
				<table class="table table-condensed table-bordered" style="max-width: 550px;" >
					<thead>
						<tr>
							<th>Aluno</th>
							<th>Descrição</th>
							<th>Tipo de Relação</th>
						</tr>
					</thead>
					<tbody>
						{foreach from=$related item=person}
							<tr>
								<td>{$person->display_name}</td>
								<td>{$person->_person_type_description}</td>
								<td>{$person->relation_name}</td>
							</tr>
						{/foreach}
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
