# Before

<h2><%= @zombie.name %></h2>
<p>Weapons: <%= @zombie.weapon_list.join(",") %></p>
<p><%= @zombie.tweets.size %> Tweets</p>
<p>Money in Pocket $<%= @zombie.money %>.00</p>

# After

<h2><%= @zombie.name.titleize %></h2>
<p>Weapons: <%= @zombie.weapon_list.to_sentence %></p>
<p><%= pluralize(@zombie.tweets.size, 'Tweets') %></p>
<p>Money in Pocket <%= number_to_currency(@zombie.money, locale: :us) %></p>
