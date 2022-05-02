var canvas = document.getElementById('myCanvas');
var mainCanvas = document.querySelector("#myCanvas");
var mainContext = mainCanvas.getContext("2d");
//var mainContext1= mainCanvas.getContext('webgl');
var canvasWidth = mainCanvas.width;
var canvasHeight = mainCanvas.height;
var radius = 0;
var canx = 0;
var cany = 0;
var i = 0;
var mouseX;
var mouseY;
var dist = 0;
var dx = 0;
var dy = 0;
var canx1 = 0, canx2 = 0, canx3 = 0, canx4 = 0, canx5 = 0, canx6 = 0, canx7 = 0, canx8 = 0, canx9 = 0, canx10 = 0;
var cany1 = 0, cany2 = 0, cany3 = 0, cany4 = 0, cany5 = 0, cany6 = 0, cany7 = 0, cany8 = 0, cany9 = 0, cany10 = 0;
var radius1 = 0, radius2 = 0, radius3 = 0, radius4 = 0, radius5 = 0, radius6 = 0, radius7 = 0, radius8 = 0, radius9 = 0, radius10 = 0;
var d1, d2;
var sttime;
var flag = 0;
var endtime;
var timeDiff;
var buttons = ["Starting", "1", "2", "5", "8", "8", "9", "5", "9", "9", "10"];
var innerRadius;
var outerRadius;
var seconds = [];
sttime = new Date();
//mouse click generating circles in canvas
drawCircle();
sttime = new Date();
// sttime.push(new Date());
mainCanvas.onclick = next();
//mainCanvas.onclick = drawCircle;;
//drawCircle.onclick = drawCircle;

function drawCircle() {


    mainContext.fillStyle = 'red';
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Double Click on the Red Button to Start", 50, 50);
    // draw the circle/
    //mainContext.beginPath();
    innerRadius = 5;
    outerRadius = 55;
    radius1 = 50
    canx1 = canvas.width / 2;
    cany1 = canvas.height / 2;

    //mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx1, cany1, innerRadius, canx1, cany1, outerRadius);
    gradient.addColorStop(0, 'rgb(250,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.arc(canx1, cany1, radius1, 0, Math.PI * 2);
    gradient.shadowBlur = 20;

    gradient.shadowColor = 'black';

    mainContext.fillStyle = gradient;
    //mainContext1.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();


}
function drawCircle2() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Smaller Red Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 5;
    outerRadius = 55;
    radius = 50
    canx = canvas.width / 2;
    cany = canvas.height / 2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1;
    outerRadius = 22;
    radius2 = 20
    canx2 = canvas.width / 4;
    cany2 = canvas.height / 4;
    mainContext.arc(canx2, cany2, radius2, 0, Math.PI * radius2, false);
    mainContext.closePath();
    // color in the circle 
    var gradient = mainContext.createRadialGradient(canx2, cany2, innerRadius, canx2, cany2, outerRadius);
    gradient.addColorStop(0, 'rgb(250,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');

    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();



}
function drawCircle3() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Big Blue Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 5;
    outerRadius = 55;
    radius = 50
    canx = canvas.width / 1.7;
    cany = canvas.height / 3;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');

    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius3 = 25
    canx3 = canvas.width / 1.7;
    cany3 = canvas.height / 1.2;
    mainContext.arc(canx3, cany3, radius3, 0, Math.PI * radius3, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx3, cany3, innerRadius, canx3, cany3, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,250)');
    gradient.addColorStop(1, 'rgb(0,0,170)');

    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 21;
    radius = 18
    canx = canvas.width / 4;
    cany = canvas.height / 1.6;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,250)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;

    radius = 15
    canx = canvas.width / 2.5;
    cany = canvas.height / 2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1;
    outerRadius = 13;

    radius = 10
    canx = canvas.width / 2.8;
    cany = canvas.height / 1.3;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();




}
function drawCircle4() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Smallest Orange Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 3.5;
    outerRadius = 39;
    radius = 35
    canx = canvas.width / 1.2;
    cany = canvas.height / 3.5;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.5;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 1.1;
    cany = canvas.height / 1.7;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(255,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 1.8;
    cany = canvas.height / 1.7;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1;
    outerRadius = 12;
    radius4 = 8
    canx4 = canvas.width / 2;
    cany4 = canvas.height / 1.1;
    mainContext.arc(canx4, cany4, radius4, 0, Math.PI * radius4, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx4, cany4, innerRadius, canx4, cany4, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 3;
    outerRadius = 28;
    radius = 25
    canx = canvas.width / 2.8;
    cany = canvas.height / 3;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,250)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,255,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();


    // draw the circle
    mainContext.beginPath();
    innerRadius = 3.5;
    outerRadius = 32;
    radius = 28
    canx = canvas.width / 3.2;
    cany = canvas.height / 1.7;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 3.5;
    outerRadius = 32;
    radius = 28
    canx = canvas.width / 3.8;
    cany = canvas.height / 3.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 4;
    cany = canvas.height / 1.1;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(255,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(255,100,0,0.7)';
    mainContext.stroke();




}
function drawCircle5() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Smaller Blue Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 1.2;
    cany = canvas.height / 3.5;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 3;
    outerRadius = 32;
    radius = 28
    canx = canvas.width / 1.1;
    cany = canvas.height / 2.1;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,250)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,255,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.5;
    outerRadius = 28;
    radius = 25
    canx = canvas.width / 1.25;
    cany = canvas.height / 1.2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 13;
    radius = 10
    canx = canvas.width / 1.8;
    cany = canvas.height / 1.9;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 13;
    radius = 13
    canx = canvas.width / 1.9;
    cany = canvas.height / 1.2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(255,100,0,0.7)';
    mainContext.stroke();


    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 4;
    cany = canvas.height / 4;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 3;
    outerRadius = 36;
    radius = 32
    canx = canvas.width / 3.8;
    cany = canvas.height / 1.3;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(255,100,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 1;
    outerRadius = 9;
    radius5 = 7
    canx5 = canvas.width / 8;
    cany5 = canvas.height / 1.1;
    mainContext.arc(canx5, cany5, radius5, 0, Math.PI * radius5, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,200)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,255,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,100,0.7)';
    mainContext.stroke();




}
function drawCircle6() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Green Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.5;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 1.5;
    cany = canvas.height / 3.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 3;
    outerRadius = 31;
    radius = 28
    canx = canvas.width / 1.3;
    cany = canvas.height / 2.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,255,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 1.2;
    cany = canvas.height / 1.2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,185,0)');
    gradient.addColorStop(1, 'rgb(250,120,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 13;
    radius = 10
    canx = canvas.width / 1.8;
    cany = canvas.height / 1.9;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 17;
    radius6 = 13
    canx6 = canvas.width / 2;
    cany6 = canvas.height / 1.1;
    mainContext.arc(canx6, cany6, radius6, 0, Math.PI * radius6, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx6, cany6, innerRadius, canx6, cany6, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();


    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 2.2;
    cany = canvas.height / 2.3;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(250,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.5;
    outerRadius = 25;
    radius = 22
    canx = canvas.width / 3.8;
    cany = canvas.height / 3.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 4;
    cany = canvas.height / 1.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;


    //mainContext.fillStyle = "rgba(0,0,255,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 3;
    outerRadius = 33;
    radius = 30
    canx = canvas.width / 8;
    cany = canvas.height / 2.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();



}
function drawCircle7() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Orange Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.5;
    outerRadius = 23;
    radius7 = 20
    canx7 = canvas.width / 1.5;
    cany7 = canvas.height / 3.8;
    mainContext.arc(canx7, cany7, radius7, 0, Math.PI * radius7, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx7, cany7, innerRadius, canx7, cany7, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(200,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.5;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 1.7;
    cany = canvas.height / 1.1;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 1.9;
    cany = canvas.height / 1.9;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 22;
    radius = 19
    canx = canvas.width / 3.5;
    cany = canvas.height / 3.5;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 22;
    radius = 19
    canx = canvas.width / 4;
    cany = canvas.height / 1.7;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();






}


function drawCircle8() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Smallest Green Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 3;
    outerRadius = 33;
    radius = 30
    canx = canvas.width / 1.5;
    cany = canvas.height / 4.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(200,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 3;
    outerRadius = 32;
    radius = 28
    canx = canvas.width / 1.2;
    cany = canvas.height / 1.5;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 21.5;
    radius = 18
    canx = canvas.width / 1.8;
    cany = canvas.height / 1.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(200,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.3;
    outerRadius = 25.5;
    radius = 22
    canx = canvas.width / 1.8;
    cany = canvas.height / 1.1;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    radius = 20
    canx = canvas.width / 2;
    cany = canvas.height / 2.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();


    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 3.2;
    cany = canvas.height / 1.1;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.3;
    outerRadius = 25.5;
    radius = 22
    canx = canvas.width / 3.8;
    cany = canvas.height / 3.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 4;
    cany = canvas.height / 1.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 13;
    radius8 = 10
    canx8 = canvas.width / 8;
    cany8 = canvas.height / 1.2;
    mainContext.arc(canx8, cany8, radius8, 0, Math.PI * radius8, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx8, cany8, innerRadius, canx8, cany8, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();



}

function drawCircle9() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Odd Grey Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.1;
    outerRadius = 21;
    radius = 18
    canx = canvas.width / 1.5;
    cany = canvas.height / 4;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(200,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.4;
    outerRadius = 28;
    radius = 25
    canx = canvas.width / 1.2;
    cany = canvas.height / 1.5;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.5;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 1.8;
    cany = canvas.height / 1.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.6;
    outerRadius = 26;
    radius = 22
    canx = canvas.width / 2.5;
    cany = canvas.height / 3.9;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 2.8;
    cany = canvas.height / 1.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();


    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius9 = 20
    canx9 = canvas.width / 2.5;
    cany9 = canvas.height / 1.1;
    mainContext.arc(canx9, cany9, radius9, 0, Math.PI * radius9, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx9, cany9, innerRadius, canx9, cany9, outerRadius);
    gradient.addColorStop(0, 'rgb(120,120,120)');
    gradient.addColorStop(1, 'rgb(100,100,100)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(128,128,128,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(128,128,128,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2.6;
    outerRadius = 26;
    radius = 22
    canx = canvas.width / 3.8;
    cany = canvas.height / 1.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 4;
    cany = canvas.height / 3.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.fillStyle = gradient;

    mainContext.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 13;
    radius = 10
    canx = canvas.width / 8;
    cany = canvas.height / 1.2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(200,120,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();



}
function drawCircle10() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    mainContext.fillStyle = 'black';
    mainContext.font = "30px Georgia";
    mainContext.fillText("Click on the Smallest Button", 50, 50);

    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 18;
    radius = 16
    canx = canvas.width / 1.5;
    cany = canvas.height / 4;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(200,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 28;
    radius = 25
    canx = canvas.width / 1.2;
    cany = canvas.height / 1.5;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;

    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 1.8;
    cany = canvas.height / 3.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;


    //mainContext.fillStyle = "rgba(0,200,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1;
    outerRadius = 10;
    radius10 = 8
    canx10 = canvas.width / 1.6;
    cany10 = canvas.height / 1.7;
    mainContext.arc(canx10, cany10, radius10, 0, Math.PI * radius10, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx10, cany10, innerRadius, canx10, cany10, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(200,120,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(250,100,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.8;
    outerRadius = 22;
    radius = 19
    canx = canvas.width / 2;
    cany = canvas.height / 1.8;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(0,0,200,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();


    // draw the circle
    mainContext.beginPath();
    radius = 17
    innerRadius = 1.9;
    outerRadius = 20;
    canx = canvas.width / 2;
    cany = canvas.height / 1.1;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,0,255)');
    gradient.addColorStop(1, 'rgb(0,0,170)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(0,0,228,1)";
    mainContext.fill();
    mainContext.lineWidth = 7;
    mainContext.strokeStyle = 'rgba(0,0,200,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 2;
    outerRadius = 23;
    radius = 20
    canx = canvas.width / 2.7;
    cany = canvas.height / 6;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,0,0)');
    gradient.addColorStop(1, 'rgb(170,0,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(250,0,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(200,0,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 18;
    radius = 15
    canx = canvas.width / 4;
    cany = canvas.height / 1.5;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,185,0)');
    gradient.addColorStop(1, 'rgb(200,120,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(255,165,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(250,140,0,0.7)';
    mainContext.stroke();

    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.5;
    outerRadius = 15;
    radius = 12
    canx = canvas.width / 5;
    cany = canvas.height / 4.2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(255,255,0)');
    gradient.addColorStop(1, 'rgb(200,200,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(255,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(180,180,0,0.7)';
    mainContext.stroke();
    // draw the circle
    mainContext.beginPath();
    innerRadius = 1.8;
    outerRadius = 16;
    radius = 13
    canx = canvas.width / 8;
    cany = canvas.height / 1.2;
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    var gradient = mainContext.createRadialGradient(canx, cany, innerRadius, canx, cany, outerRadius);
    gradient.addColorStop(0, 'rgb(0,255,0)');
    gradient.addColorStop(1, 'rgb(0,170,0)');
    mainContext.fillStyle = gradient;
    //mainContext.fillStyle = "rgba(0,255,0,1)";
    mainContext.fill();
    mainContext.lineWidth = 6;
    mainContext.strokeStyle = 'rgba(0,200,0,0.7)';
    mainContext.stroke();
}
function next() {
    mainContext.canvas.addEventListener('click', function (event) {
        mouseX = event.clientX - mainContext.canvas.offsetLeft;
        mouseY = event.clientY - mainContext.canvas.offsetTop;
        if (i == 0) {
            dx = mouseX - canx1;
            dy = mouseY - cany1;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius1) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);
                i++;
                sttime = new Date();
            }
        }

        else if (i == 1) {
            dx = mouseX - canx1;
            dy = mouseY - cany1;
            dist = Math.sqrt((dx * dx) + (dy * dy));



            if (dist <= radius1) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);
                drawCircle2();
                sttime = new Date();
                i++;
            }
        }
        else if (i == 2) {
            dx = mouseX - canx2;
            dy = mouseY - cany2;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius2) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);

                drawCircle3();
                sttime = new Date();
                i++;
            }
        }
        else if (i == 3) {

            dx = mouseX - canx3;
            dy = mouseY - cany3;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius3) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);


                i++;
                drawCircle4();
                sttime = new Date();
            }


        }
        else if (i == 4) {

            dx = mouseX - canx4;
            dy = mouseY - cany4;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius4) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);

                i++;
                drawCircle5();
                sttime = new Date();
            }

        }
        else if (i == 5) {

            dx = mouseX - canx5;
            dy = mouseY - cany5;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius5) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);

                i++;
                drawCircle6();
                sttime = new Date();
            }

        }
        else if (i == 6) {

            dx = mouseX - canx6;
            dy = mouseY - cany6;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius6) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);

                i++;
                drawCircle7();
                sttime = new Date();
            }


        }
        else if (i == 7) {
            dx = mouseX - canx7;
            dy = mouseY - cany7;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius7) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);

                i++;
                drawCircle8();
                sttime = new Date();
            }


        }
        else if (i == 8) {

            dx = mouseX - canx8;
            dy = mouseY - cany8;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius8) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);

                i++;
                drawCircle9();
                sttime = new Date();
            }

        }
        else if (i == 9) {

            dx = mouseX - canx9;
            dy = mouseY - cany9;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius9) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);

                i++;
                drawCircle10();
                sttime = new Date();
            }


        }
        else if (i == 10) {
            dx = mouseX - canx10;
            dy = mouseY - cany10;
            dist = Math.sqrt((dx * dx) + (dy * dy));
            if (dist <= radius10) {
                endtime = new Date();
                timeDiff = endtime - sttime;
                timeDiff /= 1000
                seconds.push(timeDiff % 60);
                i++;
                document.write("<h2>Click anywhere on the screen to get results.</h2>")
                if (flag == 0) {
                    document.body.addEventListener('click', function () {
                        fn();
                    });

                }

            }
        }
    });
}

function fn() {

    if (flag == 0) {
        document.write("<span style=\"color:black; size: 2px; font-weight: bold \" ><b>No of Buttons</b>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Time(in secs)</b><br></span>");
        document.write(buttons[0] + ":&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + seconds[0] + "<br>");
        for (i = 1; i < seconds.length - 1; i++) {
            document.write(buttons[i] + ":&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + seconds[i] + "<br>");


        }
        document.write(buttons[i] + ":&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + seconds[i] + "<br>");
        document.write(":&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;undefined<br>");

        document.write("<font color='black'><p align='center'>As you have noticed, when the number of the buttons were less, the the time taken to hit the buttons were less, while when the number of button were more, time taken to hit the button was more.</p><p align='left'>In some cases, the time taken to hit the button was less even though the number of choices were more. This is because of the depth of hierarchy in buttons.</p>");
        flag = 1;
    }


}
