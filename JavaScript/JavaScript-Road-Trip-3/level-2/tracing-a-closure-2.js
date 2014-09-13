// Closure

var hidden = mystery(4);
var result  = hidden(2);

function mystery ( input ){
  var secret = 5;
  function mystery2 ( multiplier ) {
    multiplier *= input;
    return secret * multiplier;
  }
  return mystery2;
}

// Console
// What is result

alert(40);
