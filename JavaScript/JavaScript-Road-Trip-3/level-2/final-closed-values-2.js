// Before

function makeTargetAssigner( sharks, targets ){

}

// After

function makeTargetAssigner( sharks, targets ){
 return function ( shark ) {
    for (var i = 0; i<sharks.length; i++) {
      if(shark == sharks[i]) {
        alert("What up, " + shark + "!\n" +
              "There've been " + targets[i] + " sightings in our 'hood!\n" +
              "Time for a swim-by lasering, homie!");
      }
    }
  };
}
