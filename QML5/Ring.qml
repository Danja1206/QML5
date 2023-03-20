import QtQuick 2.0
import "DrawScript.js" as Draws
Canvas {
    id:x
    width: 200
    height: 200
    property int xStep: width / 6
    property int yStep: height / 5
onPaint: {
    var params = Draws.func("Кольцо");
    var ctx = getContext("2d");
ctx.reset();
    ctx.clearRect(0, 0, width, height);
    var centreX = width / 2;
    var centreY = height / 2;

    ctx.beginPath();
    ctx.fillStyle = "red";
    for(var k = 0; k < params.length; k+=2 ) {
        for(var m = k + 1; m < k + 2; m++)
        {
        ctx.arc(centreX, centreY, width / params[k], 0, Math.PI * params[m], false);
        }

    }
    ctx.stroke();
}
}
