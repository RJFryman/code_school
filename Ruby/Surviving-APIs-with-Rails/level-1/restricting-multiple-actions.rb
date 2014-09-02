# Before

SurvivingRails::Application.routes.draw do
  resources :zombies, only: :index
  resources :humans, only: :index
  resources :medical_kits, only: :index
  resources :broadcasts, only: :index
end

# After

SurvivingRails::Application.routes.draw do
  with_options only: :index do |list_only|
  	list_only.resources :zombies
  	list_only.resources :humans
  	list_only.resources :medical_kits
  	list_only.resources :broadcasts
  end
  resources :messages , except: :destroy
end
