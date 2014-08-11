# Before

<ul>
  <% zombies.each do |zombie| %>
    <li>
      <%= zombie.name %>
    </li>
  <% end %>
</ul>

# After

<ul>
  <% zombies.each do |zombie| %>
    <li>
      <%= link_to zombie.name, edit_zombie_path(zombie) %>
    </li>
  <% end %>
</ul>
