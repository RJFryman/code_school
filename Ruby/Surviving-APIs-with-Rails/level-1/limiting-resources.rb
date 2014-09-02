# Before

SurvivingRails::Application.routes.draw do
  resources :humans
  resources :weapons
end

# After

SurvivingRails::Application.routes.draw do
  resources :humans, except: :destroy
  resources :weapons, only: [:index, :show]
end
