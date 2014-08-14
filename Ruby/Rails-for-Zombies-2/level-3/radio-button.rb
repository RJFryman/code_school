# Before

<%= form_for(@weapon) do |f| %>

<% end %>

# After

<%= form_for(@weapon) do |f| %>
  <%= f.radio_button :condition, 'New', checked: true %>
  <%= f.radio_button :condition, 'Rusty' %>
  <%= f.radio_button :condition, 'Broken' %>
<% end %>
