// Before

var num = 10;
while(num>0){

    console.log(num);

  num--;
}

// After

var num = 10;
while(num>0){
  if(num%2==0){
    console.log(num);
  }
  num--;
}
