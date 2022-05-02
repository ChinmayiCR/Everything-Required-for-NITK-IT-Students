var canvas = document.getElementById('myCanvas');
var mainCanvas = document.querySelector("#myCanvas");
var mainContext = mainCanvas.getContext("2d");
var canvasWidth = mainCanvas.width;
var canvasHeight = mainCanvas.height;
var radius = 0;
var canx = 0;
var cany = 0;
var dx;
var dy;
var i = 0;
var mouseX = 0;
var mouseY = 0;
var dist;
var dia;
var diameter = [];
var distance = [];
var time = [];
var id1 = [];
var d1;
var d2;
var dista = 0;
var mt;
var id;
//mouse click generating circles in canvas
drawCircle();
mainCanvas.onclick = next();
//mainCanvas.onclick = drawCircle;
//drawCircle.onclick = drawCircle;

function drawCircle() {
    mainContext.clearRect(0, 0, canvasWidth, canvasHeight);
    // color in the background
    mainContext.fillStyle = "#FFFFFF";
    mainContext.fillRect(0, 0, canvasWidth, canvasHeight);
    // draw the circle
    mainContext.beginPath();
    radius = Math.floor(Math.random() * (80 - 10)) + 10;
    canx = Math.floor(Math.random() * (800 - 150)) + 150;
    cany = Math.floor(Math.random() * (400 - 150)) + 150;
    dia = 2 * radius;
    diameter.push(dia);
    localStorage.setItem('diameter1', diameter);
    distance.push(dista);
    localStorage.setItem('distance1', distance);
    //id=Math.abs(Math.log2((2*dista)/dia).toFixed(2));
    if (i == 0) {
        mt = ((Math.abs(cany + canx * (Math.log2(dia)))) / 1000).toFixed(2);
        time.push(mt);
        localStorage.setItem('time1', time);
        id = Math.abs(Math.log2(dia).toFixed(2));
        id1.push(id);
        localStorage.setItem('id2', id1);
    }
    else {
        mt = ((Math.abs(cany + canx * (Math.log2((2 * dista) / dia)))) / 1000).toFixed(2);
        time.push(mt);
        localStorage.setItem('time1', time);
        id = Math.abs(Math.log2((2 * dista) / dia).toFixed(2));
        id1.push(id);
        localStorage.setItem('id2', id1);
    }
    mainContext.arc(canx, cany, radius, 0, Math.PI * radius, false);
    mainContext.closePath();
    // color in the circle
    mainContext.fillStyle = 'hsl(' + 360 * Math.random() + ', 50%, 50%)';
    mainContext.fill();

}
/*function dr() {
var ctx=document.getElementById('cvs').getContext('2d');
ctx.fillStyle = 'black';
ctx.fillText("diameter", 40, 40);
}*/
function next() {
    //t = setInterval(time, 10);
    mainContext.canvas.addEventListener('click', function (event) {
        d1 = mouseX - canx;
        d2 = mouseY - cany;
        mouseX = event.clientX - mainContext.canvas.offsetLeft;
        mouseY = event.clientY - mainContext.canvas.offsetTop;
        dx = mouseX - canx;
        dy = mouseY - cany;
        //dia=2*radius;
        //diameter.push(dia);
        dist = Math.sqrt((dx * dx) + (dy * dy));
        dista = Math.round(Math.sqrt((d1 * d1) + (d2 * d2)));
        //distance.push(dista);
        //id=Math.abs(Math.log2((2*dista)/dia).toFixed(2));
        //mt=((Math.abs(cany+canx*(Math.log2((2*dista)/dia))))/1000).toFixed(2);
        //time.push(mt);
        if (i <= 20) {
            if (dist <= radius) {
                i++;
                //alert(i);
                drawCircle();
                //alert("dist: "+dist+"radius :"+radius);
                //alert("distance"+canx+cany);
                //alert("dia"+dia);
                //alert("diameter"+diameter);
                //alert(dx+""+dy);
                //alert(dista);
                //alert(dist);
                //alert(d1+""+d2);
                //alert(distancex);
            }
        }
        else if (i == 21) {
            window.location = './analysis.html';
        }
    });
}
/*function handleMouseEvent() {drawCircle();}
handleMouseEvent();*/