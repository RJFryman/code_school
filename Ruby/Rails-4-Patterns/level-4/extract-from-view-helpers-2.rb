# Before

<li>
  <%= @item.name %> <i><%= status(@item) %></i>
</li>

# After

<li>
  <%= @item_decorator.name %> <i><%= @item_decorator.status %></i>
</li>
