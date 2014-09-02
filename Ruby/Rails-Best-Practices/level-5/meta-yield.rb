# Before
# app/helpers/application_helper.rb

module ApplicationHelper
  def author(author)
  end

  def description(description)
  end
end

# app/views/tweets/show.html.erb

<h1>Tweet by <%= @tweet.user.username %></h1>

<p><%= @tweet.status %></p>

# After
# app/helpers/application_helper.rb

module ApplicationHelper
  def author(author)
    content_for(:author, author)
  end

  def description(description)
    content_for(:description, description)
  end
end

# app/views/tweets/show.html.erb

<% author      @tweet.user.username %>
<% description @tweet.status %>
<h1>Tweet by <%= @tweet.user.username %></h1>

<p><%= @tweet.status %></p>></p>
