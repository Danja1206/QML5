import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

import "DrawScript.js" as Draws

Window {
    id: parentWindow

width: 640
height: 480
visible: true
title: qsTr("Hello World")
property int code: combo.currentIndex
ColumnLayout {
    anchors.fill: parent

    ComboBox {
        id: combo
        model: ListModel {
            ListElement {
                text: "Звезда";

            }
            ListElement {
                text: "Кольцо";

            }
            ListElement {
                text: "Дом";

            }
            ListElement {
                text: "Часы";

            }
        }
    }
    Button {
        onClicked: Draws.createSpriteObjects(parentWindow,combo.currentText)
    }

}

Canvas {
    id: mycanvas
    anchors.fill: parent
    property int xStep: width / 6
    property int yStep: height / 5
        onPaint: {
            var code = combo.currentText;
            var params = Draws.func(code);
            var ctx = getContext("2d");
            ctx.reset();

            var centreX = width / 2;
            var centreY = height / 2;

            switch(code)
            {
            case "Звезда":
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
                //ctx.stroke();
              // ctx.fill()
                break;

            case 2:

                ctx.beginPath();
                ctx.fillStyle = "red";
                for(var k = 0; k < params.length; k+=2 ) {
                    for(var m = k + 1; m < k + 2; m++)
                    {
                    ctx.arc(centreX, centreY, width / params[k], 0, Math.PI * params[m], false);
                    }

                }
                ctx.stroke();
                break;

            case 3:

                ctx.beginPath();
                ctx.fillStyle = "red";
                for(var k = 0; k < params.length; k+=2 ) {
                    for(var m = k + 1; m < k + 2; m++)
                    {
                    ctx.arc(centreX, centreY, width / params[k], 0, Math.PI * params[m], false);
                    }

                }
                ctx.stroke();
                break;

            }
        }
}
}
