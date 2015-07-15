	// <% @concert.comments.each do |comment| %>

	// 			<div class="panel panel-default" style="padding: 10px;">
	// 				<div class="panel-heading">
	// 					<h4><%= comment.title %></h4>
	// 					<h4><small><%= comment.description %></small></h4>
	// 				</div>	
	// 			</div>
	// 		<% end %>

	var url = 'http://localhost:3000/getcomments/' + $('#artistID').val()
	$.get(url, handleComments)

	function handleComments(data) {
		console.log(data)
	}