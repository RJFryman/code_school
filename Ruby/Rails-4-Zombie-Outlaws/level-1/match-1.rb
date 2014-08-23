# Before

ZombieOutlaws::Application.routes.draw do
  match '/create_outlaws', to: 'zombies#create'
end

# After

ZombieOutlaws::Application.routes.draw do
  post '/create_outlaws', to: 'zombies#create'
end
