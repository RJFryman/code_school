// Before

function warningMaker( obstacle ){
  return function () {
    alert("Beware! There have been " +
          obstacle +
          " sightings in the Cove today!"
         );
  };
}

// After

function warningMaker(obstacle){
  return function(number,location){
    alert("Beware! There have been "+obstacle+
          " sightings in the Cove today!\n"+number+
          " "+obstacle+"(s) spotted at the "+location+"!"
         );
  };
}
