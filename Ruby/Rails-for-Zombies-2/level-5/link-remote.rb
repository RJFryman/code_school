# Before

<ul>
  <li>
    <em>Name:</em> <%= @weapon.name %>
  </li>
  <li>
    <em>Condition:</em>
    <span id="condition"><%= @weapon.condition %></span>
    <%= link_to "Toggle", toggle_condition_weapon_path(@weapon) %>
  </li>
  <li>
    <em>Ammo:</em>
    <span id="ammo"><%= @weapon.ammo %></span>
  </li>
</ul>

<%= form_for @weapon, url: reload_weapon_path(@weapon) do |f| %>
  <div class="field">
    Number of bullets to reload:
    <%= number_field_tag :ammo_to_reload, 30 %> <br /> <%= f.submit "Reload" %>
  </div>
<% end %>

# After

<ul>
  <li>
    <em>Name:</em> <%= @weapon.name %>
  </li>
  <li>
    <em>Condition:</em>
    <span id="condition"><%= @weapon.condition %></span>
    <%= link_to "Toggle", toggle_condition_weapon_path(@weapon), remote: true %>
  </li>
  <li>
    <em>Ammo:</em>
    <span id="ammo"><%= @weapon.ammo %></span>
  </li>
</ul>

<%= form_for @weapon, url: reload_weapon_path(@weapon), remote: true do |f| %>

    Number of bullets to reload:
    <%= number_field_tag :ammo_to_reload, 30 %>
 <%= f.submit "Reload" %>

<% end %>
