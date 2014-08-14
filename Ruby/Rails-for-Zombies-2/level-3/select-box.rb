# Before

<%= form_for(@weapon) do |f| %>
  <%= f.radio_button :condition, "New", checked: true %> New
  <%= f.radio_button :condition, "Rusty" %> Rusty
  <%= f.radio_button :condition, "Broken" %> Broken
<% end %>

# After

<%= form_for(@weapon) do |f| %>
  <%= f.select :condition, ["New", 'Rusty', 'Broken'] %>
<% end %>
