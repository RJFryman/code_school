# Before

<div id="navigation">
  <div><%= link_to 'Zombies', zombies_path %></div>
  <div><%= link_to 'Weapons', weapons_path %></div>
</div>

# After

<div id="navigation" data-no-turbolink="true">
  <div><%= link_to 'Zombies', zombies_path %></div>
  <div><%= link_to 'Weapons', weapons_path %></div>
</div>
