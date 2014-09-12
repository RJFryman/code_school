// Before

function feedPerRanger (         ) {



}

// After

function feedPerRanger ( sheepCount,numberOfRanger) {
  var feedLb = sheepCount*2 ;
  var perRanger = feedLb/numberOfRanger;
  alert("Each Park Ranger should load " +perRanger+" lb(s) of feed into his/her BART today.");
}
