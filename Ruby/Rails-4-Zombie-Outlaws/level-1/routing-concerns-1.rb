# Before

ZombieOutlaws::Application.routes.draw do
  resources :sheriffs do
    resources :shotguns
    resources :rifles
    resources :knives
  end

  resources :gunslingers do
    resources :shotguns
    resources :rifles
    resources :knives
  end

  resources :preachers do
    resources :shotguns
    resources :rifles
    resources :knives
  end
end

# AFter

ZombieOutlaws::Application.routes.draw do

  concern :defensible do
    resources :shotguns
    resources :rifles
    resources :knives
  end

  resources :sheriffs,     concerns: :defensible
  resources :gunslingers,  concerns: :defensible
  resources :preachers, 	 concerns: :defensible
end
