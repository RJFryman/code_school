# Before

<h2><%= @item.title %></h2>

<% if @item.is_featured? %>
  <h3><%= featured_image %></h3>
<% end %>

<p><%= @item.description %></p>

# After

<h2><%= @item_decorator.title %></h2>

<% if @item_decorator.is_featured? %>
  <h3><%= featured_image %></h3>
<% end %>

<p><%= @item_decorator.description %></p>
