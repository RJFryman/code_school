# Before

<%= form_for(@zombie) do |f| %>
  <div class="field">
    <%= f.label :limbs %><br />
    <%= collection_check_boxes(:object,
                               :method,
                               :collection,
                               :value_method,
                               :text_method) %>
  </div>
<% end %>

# After

<%= form_for(@zombie) do |f| %>
  <div class="field">
    <%= f.label :limbs %><br />
    <%= collection_check_boxes(:limb,
                               :id,
                               @limbs,
                               :id,
                               :kind) %>
  </div>
<% end %>
