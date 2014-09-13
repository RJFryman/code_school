// Before

function warningMaker( obstacle ){
  return function ( number, location ) {
    alert("Beware! There have been " +
          obstacle +
          "sightings in the Cove today!\n" +
          number +
          " " +
          obstacle +
          "(s) spotted at the " +
          location +
          "!"
         );
  };
}
var killerPenguinAlert = warningMaker("killer penguin");
var polarBearAlert = warningMaker("polar bear");
var icebergAlert = warningMaker("iceberg");
var flashBlizzardAlert = warningMaker("flash blizzard");
var snowYetiAlert = warningMaker("snow yeti");

// After

function warningMaker( obstacle ){
  return function ( number, location ) {
    alert("Beware! There have been " +
          obstacle +
          "sightings in the Cove today!\n" +
          number +
          " " +
          obstacle +
          "(s) spotted at the " +
          location +
          "!"
         );
  };
}
var killerPenguinAlert = warningMaker("killer penguin");
var polarBearAlert = warningMaker("polar bear");
var icebergAlert = warningMaker("iceberg");
var flashBlizzardAlert = warningMaker("flash blizzard");
var snowYetiAlert = warningMaker("snow yeti");

killerPenguinAlert(6, "Ice Caves");
snowYetiAlert(1, "Blizzard Beach");
