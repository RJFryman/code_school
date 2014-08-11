# Before

<ul>
  <% zombies.each do |zombie| %>
    <li>
      <%= zombie.name %>
      # add if statement here
    </li>
  <% end %>
</ul>

# After

<ul>
  <% zombies.each do |zombie| %>
    <li>
      <%= zombie.name %>
      <% if zombie.tweets.count >1 %>
      SMART ZOMBIE
      <% end %>
    </li>
  <% end %>
</ul>
