// Before

function warningMaker( obstacle ){
  return function () {
    alert("Beware! There have been " + obstacle + " sightings in the Cove today!");
  };
}

// After

function warningMaker( obstacle ){
  return function () {
    alert("Beware! There have been " + obstacle + " sightings in the Cove today!");
  };
}
var icebergAlert = warningMaker("iceberg");
icebergAlert ();
