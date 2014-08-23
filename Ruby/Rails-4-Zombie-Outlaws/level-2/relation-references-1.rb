# Before

Weapon.includes(:zombies)
      .where("zombies.name = 'Ash'")

# After

Weapon.includes(:zombies)
	.where("zombies.name = 'Ash'").references(:zombies)
