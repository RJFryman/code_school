# Before

<% cache @weapon do %>
  <section>
    <h3><%= @weapon.name %></h3>
    <ul>
      <%= render @weapon.zombies.recent %>
    </ul>
    <%= link_to 'Details', @weapon %>
  </section>
<% end %>


# After

<% cache @weapon do %>
  <section>
    <h3><%= @weapon.name %></h3>
    <ul>
      <%= render partial: "zombies/zombie",
  			collection: @weapon.zombies.recent %>
    </ul>
    <%= link_to 'Details', @weapon %>
  </section>
<% end %>
