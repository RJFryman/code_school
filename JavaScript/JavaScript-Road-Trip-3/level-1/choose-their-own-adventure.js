// Before

function adventureSelector ( userChoice ){
  /*//build functions here//*/
}

// After

function adventureSelector ( userChoice ){
  if(userChoice == 1){
    return function () {
    alert("You've selected the Vines of Doom!\n" +
          "Hope you have a swingin' time.");
    };
  } else if (userChoice == 2){
    return function () {
    alert("Looks like you want the Lake of Despair!\n" +
          "Watch out for crocs. And I ain't talkin' about shoes.");
    };
  } else if (userChoice == 3) {
    return function () {
      alert("The Caves of Catastrophe, really?\n" +
            "Alright, well....nice knowing you.");
    };
  }
}
