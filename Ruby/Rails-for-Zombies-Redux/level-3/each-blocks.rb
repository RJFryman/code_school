# Before

<ul>
<% # insert block here %>
</ul>

# After

<ul>
<% zombies.each do |zombie| %>
<li><%= zombie.name %></li>
<% end %>
</ul>
