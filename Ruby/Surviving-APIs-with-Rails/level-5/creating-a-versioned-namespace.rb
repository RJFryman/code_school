# Before

SurvivingRails::Application.routes.draw do
  resources :zombies
end

# After

SurvivingRails::Application.routes.draw do
  namespace :v1 do
  	resources :zombies
  end
  namespace :v2 do
    resources :zombies, except: :destroy
  end
end  
