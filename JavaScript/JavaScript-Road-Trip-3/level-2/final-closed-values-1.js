// Before

function assignLaser( shark, sharkList ){
  var stationAssignment;
  for(var i = 0; i<sharkList.length; i++){
    if(shark == sharkList[i]){
      stationAssignment = function(){
        alert("Yo, " +
              shark +
              "!\n" +
              "Visit underwater strapping station " +
              i +
              " for your sweet laser.\n" +
              "'Bout to get real up in here."
             );
      };
    }
  }
  return stationAssignment;
}

// After

function assignLaser( shark, sharkList ){
  for(var i = 0; i<sharkList.length; i++){
    if(shark == sharkList[i]){
      return function(shark){
        alert("Yo, " +
              shark +
              "!\n" +
              "Visit underwater strapping station " +
              i +
              " for your sweet laser.\n" +
              "'Bout to get real up in here."
             );
      };
    }
  }
}
