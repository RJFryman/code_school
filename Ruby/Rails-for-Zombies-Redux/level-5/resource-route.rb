# Before

TwitterForZombies::Application.routes.draw do
end

# After

TwitterForZombies::Application.routes.draw do
  resources :zombies
end
