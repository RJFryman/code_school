# Before

<%= form_for(@limb) do |f| %>
  <div class="field">
    <%= f.label :date_found %><br />
    <%= f.date_select :date_found %>
  </div>
<% end %>

# After

<%= form_for(@limb) do |f| %>
  <div class="field">
    <%= f.label :date_found %><br />
    <%= f.date_field :date_found %>
  </div>
<% end %>
