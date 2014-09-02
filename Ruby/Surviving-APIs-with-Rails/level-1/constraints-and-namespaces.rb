# Before

SurvivingRails::Application.routes.draw do
  resources :announcements
  resources :zombies
  resources :humans
end

# After

SurvivingRails::Application.routes.draw do
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :zombies
    resources :humans
  end
  resources :announcements
end
