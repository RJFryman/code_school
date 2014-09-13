// Before

function warningMaker( obstacle ){
  var count = 0;
  return function ( number, location ) {
    count++;
    alert("Beware! There have been " +
          obstacle +
          " sightings in the Cove today!\n" +
          number +
          " " +
          obstacle +
          "(s) spotted at the " +
          location +
          "!\n" +
          "This is Alert #" +
          count +
          " today for " +
          obstacle +
          " danger."
         );
  };
}

// After

function warningMaker( obstacle ){
  var count = 0;
  var zones = [];
  return function ( number, location ) {
    count++;
    zones.push(location);
    var alertMsg = "Beware! There have been " +
          obstacle +
          " sightings in the Cove today!\n" +
          number +
          " " +
          obstacle +
          "(s) spotted at the " +
          location +
          "!\n" +
          "This is Alert #" +
          count +
          " today for " +
          obstacle +
          " danger."+
          "\nCurrent danger zones are:";

    for(var i=0; i<zones.length; i++) {
      alertMsg += "\n" + zones[i];
    }
    alert(alertMsg);
  };
}
