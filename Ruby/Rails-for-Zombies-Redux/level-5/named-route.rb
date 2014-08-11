# Before

TwitterForZombies::Application.routes.draw do
  get '', to: '', :as => ''
end

# After

TwitterForZombies::Application.routes.draw do
  get '/zombies/:name', to: 'zombies#index', :as => 'graveyard'
end
