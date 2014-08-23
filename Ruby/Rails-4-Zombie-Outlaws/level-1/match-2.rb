# Before

ZombieOutlaws::Application.routes.draw do
  match '/outlaws', to: 'zombies#outlaws'
end

# After

ZombieOutlaws::Application.routes.draw do
  get '/outlaws', to: 'zombies#outlaws'
end
