# Before

<h2>New Tweet</h2>

<%= form_for(@tweet) do |f| %>
  <div class="field">
    <%= f.label :status %><br />
    <%= f.text_area :status %>
  </div>

  <div class="field">
    <%= f.label :location %><br />
    <%= f.text_field :location %>
  </div>

  <%= f.submit %>
<% end %>

<%= link_to 'back', tweets_path %>

# After
# _form.html.erb

<%= form_for(@tweet) do |f| %>
  <div class="field">
    <%= f.label :status %><br />
    <%= f.text_area :status %>
  </div>

  <div class="field">
    <%= f.label :location %><br />
    <%= f.text_field :location %>
  </div>

  <%= f.submit %>
<% end %>

# new.html.erb

<h2>New Tweet</h2>

<%= render 'form'%>

<%= link_to 'back', tweets_path %>
