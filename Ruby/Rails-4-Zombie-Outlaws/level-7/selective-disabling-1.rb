# Before

<p id="notice"><%= notice %></p>

<p>
  <strong>Name:</strong>
  <%= @zombie.name %>
</p>

<%= link_to 'Edit', edit_zombie_path(@zombie) %> |
<%= link_to 'Back', zombies_path %> |
<%= link_to 'Home', welcome_path %>

# After

<p id="notice"><%= notice %></p>

<p>
  <strong>Name:</strong>
  <%= @zombie.name %>
</p>

<%= link_to 'Edit', edit_zombie_path(@zombie) %> |
<%= link_to 'Back', zombies_path %> |
<%= link_to 'Home', welcome_path, "data-no-turbolink" => true %>
