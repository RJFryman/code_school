// code

function thisIsWeird () {

  function secret(){
    var unused3;
  }

  var result;

  function secret(){
    var unused1;
  }

  result = secret;

  function secret(){
    var unused2;
  }

  return result;
}

// console
// what gets returned

console.log( "unused2" );
