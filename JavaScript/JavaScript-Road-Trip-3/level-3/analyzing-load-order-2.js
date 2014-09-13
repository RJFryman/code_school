// After

function theBridgeOfHoistingDoom(){
    var ring = undefined ;
    var power = undefined ;

    function balrog(){
      return "whip" ;
    }

    function elf(){
      return "pointy ears" ;
    }

    function wizard(){
      return "white" ;
    }

    ring = wizard ;
    wizard = balrog ;
    return wizard();
}
