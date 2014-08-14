# Before

<%= form_for(@weapon) do |f| %>

<% end %>

# After

<%= form_for([@zombie, @weapon]) do |f| %>
  <%= f.text_field :name %>
  <%= f.number_field :ammo %>
  <%= f.check_box :is_broken %>
  <%= f.submit %>
<% end %>
