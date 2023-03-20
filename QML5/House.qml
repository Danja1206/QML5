import QtQuick 2.0
import "DrawScript.js" as Draws
Canvas {
    id: x;
    width: 700
    height: 600
    property int xStep: width / 6
    property int yStep: height / 5
onPaint: {
    var params = Draws.func("Дом");
    var ctx = getContext("2d");
ctx.reset();
    ctx.clearRect(0, 0, width, height);
    ctx.fillStyle = Qt.rgba(1, 0, 0, 1);
    ctx.beginPath()
    for(var i = 0; i < params.length; i+=2 ) {
        for(var j = i + 1; j < i + 2; j++)
        {
        ctx.lineTo(params[i] + xStep, params[j]+yStep)
        }

    }
    ctx.closePath()
    ctx.lineWidth = 1;
    ctx.stroke();
  // ctx.fill()
}
}

