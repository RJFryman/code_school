# Before

<%= form_for(@weapon) do |f| %>
  <%= f.text_field :name %>

  <%= f.submit %>
<% end %>

# After

<%= form_for([@zombie, @weapon]) do |f| %>
  <%= f.text_field :name %>

  <%= f.submit %>
<% end %>
