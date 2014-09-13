// Before

lighthouseRock.addBulb = function (name, wattage){
  this.weaponBulbs.push([name, wattage]);
};


// After

lighthouseRock.addBulb = function (name, wattage){
  this.weaponBulbs.push([name, wattage]);
};

lighthouseRock.addBulb("Blasterbright", 5000);
lighthouseRock.addBulb("Sight Slayer", 1800);
lighthouseRock.addBulb("Burner of Souls", 7500);
