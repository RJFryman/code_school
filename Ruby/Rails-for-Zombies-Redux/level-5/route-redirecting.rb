# Before

TwitterForZombies::Application.routes.draw do

end

# After

TwitterForZombies::Application.routes.draw do
   get '/undead', to: redirect('/zombies')
end
