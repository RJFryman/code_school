# Before

<span>
  <% if user.username.present? %>
    <%= user.username %>
  <% else %>
    <%= user.name %>
  <% end %>
</span>

# After

<span>
 <% if user.username? %> <%= user.username %> <% else %> <%= user.name %> <% end %>
</span>
