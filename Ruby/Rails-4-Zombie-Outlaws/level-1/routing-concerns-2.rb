# Before

ZombieOutlaws::Application.routes.draw do
  concern :defensible do
    resources :shotguns
    resources :rifles
    resources :knives
  end

  resources :sheriffs, concerns: :defensible
  resources :gunslingers, concerns: :defensible
  resources :preachers, concerns: :defensible
end

# After

ZombieOutlaws::Application.routes.draw do
  concern :defensible do |options|
    resources :shotguns, options
    resources :rifles, options
    resources :knives, options
  end

  resources :sheriffs, concerns: :defensible
  resources :gunslingers, concerns: :defensible
  resources :preachers do
    concerns :defensible, except: :destroy
  end
end
