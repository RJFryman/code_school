# Before

<ul>
  <% user.tweets.each do |tweet| %>
    <li><%= tweet.status %></li>
  <% end %>
</ul>

# After

<ul>
  <% user.tweets.each do |tweet| %>
    <li><%= tweet.status %></li>
  <% end %>

  <% content_for(:title) do %>
    Tweets by <%= user.username %>
  <% end %>
</ul>
