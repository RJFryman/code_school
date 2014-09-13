// After

Array.prototype.countCattle = function(cattle){
  var number = 0;
  for(var i = 0; i < this.length; i ++){
    if(this[i].type == cattle){
      number ++ ;
    }
  }
  return number;
};
