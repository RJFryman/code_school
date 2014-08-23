# Before

ZombieOutlaws::Application.routes.draw do
  match '/undeads', to: 'undeads#index'
end

# After

ZombieOutlaws::Application.routes.draw do
  match '/undeads', to: 'undeads#index', via: :all
end
