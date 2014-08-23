# Before

<li><%= zombie %></li>

# After

<% cache zombie do %>
	<li><%= zombie %></li>
<% end %>
