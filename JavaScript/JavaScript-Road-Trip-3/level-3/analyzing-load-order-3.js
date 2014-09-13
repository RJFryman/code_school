// After


function  theBridgeOfHoistingDoom ()  {
    var  sword  =  undefined ;
    var  dwarf  =  undefined ;
    var  fall  =  undefined ;
    var  ring  =  undefined ;

    function  Fellowship(){
      return  "friends" ;
    }

    sword  =  "sting" ;
    dwarf  =  function(){
      return  "AXE" ;
    };
    fall  =  "Fly you Fools!";
    Fellowship  =  function(){
      return  "broken" ; 
    };
    ring();
    return  sword ;
}
