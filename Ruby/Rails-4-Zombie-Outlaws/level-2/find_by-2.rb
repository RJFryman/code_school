# Before

Zombie.find_by_name_and_weapon('Ash', 'Chainsaw')

# After

Zombie.find_by(name: 'Ash', weapon:'Chainsaw')
