# Before

<h1>New tweet</h1>

# After

<h1>New tweet</h1>
<%= form_for @tweet do |f| %>
	<%= f.text_area :status %>
	<%= f.text_field :location %>
	<%= f.submit "Create" %>
<% end %>
