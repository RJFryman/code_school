# Before

RailsForZombies::Application.routes.draw do
  resources :zombies
  resources :tweets
  resources :weapons
end

# After

RailsForZombies::Application.routes.draw do
  resources :zombies do
    resources :tweets
    resources :weapons
  end
end
