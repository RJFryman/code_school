// Before

var genericPost =
  {x: 0, y: 0, postNum: undefined,
   connectionsTo: undefined,
   sendRopeTo: function ( connectedPost ) {
     if(this.connectionsTo == undefined){
       var postArray = [ ];
       postArray.push(connectedPost);
       this.connectionsTo = postArray;
     } else {
       this.connectionsTo.push(connectedPost);
     }
   }
  };

// After

var genericPost =
  {x: 0, y: 0, postNum: undefined,
   connectionsTo: undefined,
   sendRopeTo: function ( connectedPost ) {
     if(this.connectionsTo == undefined){
       var postArray = [ ];
       postArray.push(connectedPost);
       this.connectionsTo = postArray;
     } else {
       this.connectionsTo.push(connectedPost);
     }
   }
  };

var post1 = Object.create(genericPost);
var post2 = Object.create(genericPost);

post1.x = -2;
post1.y = 4;
post1.postNum = 1;
genericPost.sendRopeTo(post1);

post2.x = 5;
post2.y = 1;
post2.postNum = 2;
genericPost.sendRopeTo(post2);
