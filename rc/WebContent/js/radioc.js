/** Javascript specific to radioc pages
 *  assumes jquery has been loaded too
 *  */
var loadUrlInTable = function (clickUrl, tableId, destDiv) {
	$("button.edit").button({
		icons: {
			primary: "ui-icon-trash",
		},
		text: false
	}).click(function() {
		$(destDiv).load(clickUrl+$(this).val(), null, function() {
		});
		loadUrlInTable(clickUrl, tableId, destDiv);
	});
	$(tableId).tablesorter({
		headers: {
			0: {
				sorter: false
			}
		}
	});
};
