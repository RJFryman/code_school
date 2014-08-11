# Before

TwitterForZombies::Application.routes.draw do

end

# After

TwitterForZombies::Application.routes.draw do
  get 'undead', controller: 'zombies', action: 'undead'
end
