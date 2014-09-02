# Before
# app/helpers/tweets_helper.rb

module TweetsHelper
  def tweet_favorites(favorites)
  end
end

# app/views/tweets/show.html.erb

<h1>Tweet by <%= @tweet.user.username %></h1>

<p><%= @tweet.status %></p>

<% if @favorites.present? %>
  <p>
    This tweet has been favorited
    <span><%= pluralize(@favorites.size, 'time')%></span>,
    most recently by <%= @favorites.to_sentence %>
  </p>
<% end %>

# After
# app/helpers/tweets_helper.rb

module TweetsHelper
  def tweet_favorites(favorites)
    content_tag :p do
      raw(
        "This tweet has been favorited " +
        content_tag(:span, pluralize(favorites.size, 'time')) +
        ", most recently by " + favorites.to_sentence
        )
    end
  end
end

# app/views/tweets/show.html.erb

<h1>Tweet by <%= @tweet.user.username %></h1>
<p><%= @tweet.status %></p>

<% if @favorites.present? %>
  <%= tweet_favorites(@favorites) %>
<% end %>
