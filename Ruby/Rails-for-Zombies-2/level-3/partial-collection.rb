# Before

<h1><%= @zombie.name %>'s Weapons</h1>
<% @weapons.each do |weapon| %>
  <%= div_for weapon do %>
    <h2><%= weapon.name %></h2>
    <p>
      Condition: <%= weapon.condition %>
      Ammo: <%= weapon.ammo %>
      Purchased <%= time_ago_in_words weapon.purchased_on %> ago
    </p>
  <% end %>
<% end %>

# After
# weapons/index/html.erb

<h1><%= @zombie.name %>'s Weapons</h1>

<%= render @weapons %>

# weapons/_weapon.html.erb

<% @weapons.each do |weapon| %>
  <%= div_for weapon do %>
    <h2><%= weapon.name %></h2>
    <p>Condition: <%= weapon.condition %> Ammo: <%= weapon.ammo %> Purchased <%= time_ago_in_words weapon.purchased_on %> ago</p>
  <% end %>
<% end %>
