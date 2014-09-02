# Before
# app/controllers/tweets_controller.rb

class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
  end
end

# app/views/tweets/show.html.erb

<h1>Tweet by <%= @tweet.user.username %></h1>

<p><%= @tweet.status %></p>

<% if @tweet.favorites.present? %>
  <h3>Latest Favorites:</h3>
  <ul>
    <% @tweet.favorites.limit(3).order('created_at').each do |favorite| %>
      <li><%= favorite.user.username %></li>
    <% end %>
  </ul>
<% end %>

# After
# app/controllers/tweets_controller.rb

class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
    @favorites = @tweet.favorites.limit(3).order('created_at')
  end
end

# app/views/tweets/show.html.erb

<h1>Tweet by <%= @tweet.user.username %></h1>

<p><%= @tweet.status %></p>

<% if @tweet.favorites.present? %>
  <h3>Latest Favorites:</h3>
  <ul>
    <% @favorites.each do |favorite| %>
      <li><%= favorite.user.username %></li>
    <% end %>
  </ul>
<% end %>
