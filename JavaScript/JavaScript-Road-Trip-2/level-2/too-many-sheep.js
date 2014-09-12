// Before

var numSheep = 4;
var monthsToPrint = 12;

for(var monthNumber = 1; monthNumber <= monthsToPrint; monthNumber++) {

  <first conditional goes here>

  <second conditional goes here>

  numSheep*=4;
  console.log("There will be " + numSheep + " sheep after " + monthNumber + " month(s)!");
}

// After

var numSheep = 4;
var monthsToPrint = 12;
var number;

for(var monthNumber = 1; monthNumber <= monthsToPrint; monthNumber++) {

  if(monthNumber % 4 == 0){
    number = numSheep * (3/4);
    console.log("Removing "+number+" sheep from the population. Phew!");
  	numSheep *= (1/4);
  }else if(numSheep > 10000){
  	number = numSheep / 2;
    console.log("Removing "+number+" sheep from the population. Phew!");
    numSheep /= 2;
  }

  numSheep*=4;
  console.log("There will be " + numSheep + " sheep after " + monthNumber + " month(s)!");
}
