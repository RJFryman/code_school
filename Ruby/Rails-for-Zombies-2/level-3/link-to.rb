# Before

<h2><%= @zombie.name %>'s weapons</h2>
<ul>
  <% @weapons.each do |w| %>
    <li><%= link_to w.name, # add show weapon path here %></li>
  <% end %>
</ul>

<%= link_to "New Weapon", # add new weapon path here %>

# After

<h2><%= @zombie.name %>'s weapons</h2>
<ul>
  <% @weapons.each do |w| %>
    <li><%= link_to w.name, [@zombie, w] %></li>
  <% end %>
</ul>

<%= link_to "New Weapon", new_zombie_weapon_path(@zombie) %>
