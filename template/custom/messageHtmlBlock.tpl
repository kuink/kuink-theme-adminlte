<script type="text/javascript">
	var tagsToReplace = {
		'&': '&amp;',
		'<': '&lt;',
		'>': '&gt;'
	};

	function replaceTag(tag) {
		return tagsToReplace[tag] || tag;
	}

	function safe_tags_replace(str) {
		return str.replace(/[&<>]/g, replaceTag);
	}

</script>

<style>
	.message_{$id} {
		position: relative;
		margin: 0px 0;
		padding: 39px 19px 14px;
		border: 1px solid #ddd;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
		border-radius: 4px;
	}

	.message_{$id} .table {
		width: 100%;
		margin-bottom: 0px;
	}

	.message_{$id}::after {
		content: "Message {$guid}";
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

	.messageFirst td {
		border-top: 0px;
	}
</style>

<div class="tabbable message_{$id}  tabs-left"> <!-- Only required for left/right tabs -->
	<ul class="nav nav-tabs">
		<li class="active"><a href="#headersTab" data-toggle="tab"><i class="icon-list"></i> Information</a></li>
		<li><a href="#bodyTab" data-toggle="tab"><i class="icon-folder-open"></i> Body</a></li>
	</ul>

	<div class="tab-content">
		<!-- headers tab -->
		<div class="tab-pane active" style="height: auto" id="headersTab">
			<div class="accordion" id="accordion2">
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
							Status
						</a>
					</div>
					<div style="height: auto;" id="collapseOne" class="accordion-body in collapse">
						<div class="accordion-inner">
							<ul>
								<li>Guid: {$guid}</li>
								<li>Is Sent: {$is_sent}</li>
								<li>Creation date: {$_creation} | {$_creation|date_format:"%m/%d/%Y %T %Z"}</li>
								<li>Modification date: {$_modification} | {$_modification|date_format:"%m/%d/%Y %T %Z"}</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
							Headers
						</a>
					</div>
					<div style="height: 0px;" id="collapseTwo" class="accordion-body collapse">
						<div class="accordion-inner">
							<pre class="prettyprint">
								<code style="font-size: 11px;">
									<script>document.write(safe_tags_replace(JSON.stringify({$headers},null,4)));</script>
								</code>
							</pre>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- body tab -->
		<div class="tab-pane fade" id="bodyTab">
			<pre class="prettyprint lang-html pre-scrollable ">
				<code>
					{$body}
				</code>
			</pre>
		</div>
	</div>
</div>
