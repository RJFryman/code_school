// After
function fencepost(x,y,postNum){
  this.x=x;
  this.y=y;
  this.postNum=postNum;
  this.connectionsTo=[];
}

Fencepost.prototype={
  sendRopeTo:function(connectedPost){
    this.connectionsTo.push(connectedPost);
  },
  removeRope:function(removeTo){
    vartemp=[];
    for(vari=0;i<this.connectionsTo.length;i++){
      if(this.connectionsTo[i].postNum!=removeTo){
        temp.push(this.connectionsTo[i]);
      }
    }
    this.connectionsTo=temp;
  },
  movePost:function(x,y){
    this.x=x;
    this.y=y;
  }
};