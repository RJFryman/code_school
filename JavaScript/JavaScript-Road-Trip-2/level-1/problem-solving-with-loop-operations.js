// Before

var numSheep = 4;
var monthNumber = 1;
var monthsToPrint = 12;

// After

var numSheep = 4;
var monthNumber = 1;
var monthsToPrint = 12;
while(monthNumber <= monthsToPrint) {
    numSheep *= 4;
    console.log("There will be " + numSheep + " sheep after " + monthNumber + " month(s)!");
    monthNumber++;
}
