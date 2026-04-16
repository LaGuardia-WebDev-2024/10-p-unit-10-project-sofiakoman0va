var xPositions = [100, 100, 200, 170];
var yPositions = [100, 150, 200, 250];

setup = function() {
  size(500, 500);

  background(255, 255, 247);
};
  

draw = function(){
  if(mousePressed){
  xPositions.push(mouseX);
  yPositions.push(mouseY); //for loop
}

  background(34, 242, 241);
  
  //while
textSize(30);
  var x = 10;
  while (x < 500) {
  text("🍔", x, 300);
  text("🩷", x, 400);
  x += 50;
  }

 //array
 stroke(0, 255, 224);
 var myThings = ["lattes", "pizza", "baby pandas", "milkshake"];

fill(0, 10, 255);
text(myThings[0], 20, 100);
text(myThings[1], 20, 150);
text(myThings[2], 20, 200);
text(myThings[3], 20, 250);

noStroke();
drawFace();
}

//for loop
var drawFace = function() {
    for (var i = 0; i < yPositions.length; i++) {
        text("😍", xPositions[i], yPositions[i]);
    }
}