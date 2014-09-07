// Before

var numPassengers = 0
numPassengers += 3

// After

var numPassengers = 0
numPassengers += 3
numPassengers --
var trainCapacity = 60
trainCapacity -= numPassengers
var occupancy = numPassengers + " passengers present, with " + trainCapacity +" seats remaining."
