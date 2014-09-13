// Before

var people = /*//fill this in//*/;
var rain = /*//fill this in, too//*/;
var sharks = /*//yeah, this one, too//*/;
var fearGenerated = function ( numPeeps, rainInInches, numSharks){
  var rainFear = numPeeps * rainInInches;
  var sharkFear = numSharks * numSharks * numSharks;
  var totalFear = sharkFear + rainFear;
  return totalFear;
};

// After

var people = 5;
var rain = 6;
var sharks = 6;
var fearGenerated = function ( numPeeps, rainInInches, numSharks){
  var rainFear = numPeeps * rainInInches;
  var sharkFear = numSharks * numSharks * numSharks;
  var totalFear = sharkFear + rainFear;
  return totalFear;
};
var fear = fearGenerated(people, rain, sharks);
