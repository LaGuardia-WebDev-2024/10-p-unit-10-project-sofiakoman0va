var burgerXPos = [];
var burgerYPos = [];
var burger = "🍔";
var burgerTotal = 100;

var alienXPos = [];
var alienYPos = [];
var alien = "👽";
var alienTotal = 3;
var alienFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < burgerXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, burgerXPos[i], burgerYPos[i])<15){
      burgerXPos.splice(i, 1);
      burgerYPos.splice(i, 1);
      burgerFound++;
    }
  }
}

var display = function(){
  background(255, 46, 126);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < alienXPos.length; i ++){
    text(alien, alienXPos[i], alienYPos[i]);
  }

  for(var i = 0; i < burgerXPos.length; i ++){
    text(burger, burgerXPos[i], burgerYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + alien + "s   |   " + alien + " " + alienFound + "/" + alienTotal, 0, 425);

  if(alienFound == alienTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  burgerXPos = [];
  burgerYPos = [];
  alienXPos = [];
  alienYPos = [];
  alienFound = 0;


  for(var i = 0; i < burgerTotal; i++){
    burgerXPos.push(random(0,600));
    burgerYPos.push(random(0,400));
  }

  for(var i = 0; i < alienTotal; i++){
    alienXPos.push(random(0,600));
    alienYPos.push(random(0,400));
  }
}