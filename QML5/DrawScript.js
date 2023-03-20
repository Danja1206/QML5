function func(code) {
    var output;
    var counter;
    switch (code) { // звёздочка, кольцо, домик, песочные часы
    case "Звезда":
        output = [130,109,145,109,131,118,138,132,125,123,112,132,118,118,105,109,121,109,125,95];
        break;
    case "Кольцо":
        output = [2,4,5,6];
        break;
    case "Дом":
        output = [130,109,205,109,205,25,130,25,130]; // 130,109,205,109,205,25,130,25,130, 11,130,7];
        break;
    case "Часы":
        output = [50,20,10,100,70,100,10,20,50,20];
        break;
    }
    return output;

}


function clearCanvas(canv) {
    var ctx = canv.getContext("2d");
    ctx.reset();
    ctx.clearRect(0,0,canv.width,canv.height);
    canv.requestPaint();
}

function createSpriteObjects(parent, code) {
    var component;
    var sprite;
    switch (code) {
    case "Звезда":
        component = Qt.createComponent("Star.qml");
        sprite = component.createObject(parent);
        if (sprite == null) {
        // Error Handling
        console.log("Error creating object");
        }
        break;
    case "Кольцо":
        component = Qt.createComponent("Ring.qml");
        sprite = component.createObject(parent);
        if (sprite == null) {
        // Error Handling
        console.log("Error creating object");
        }
        break;
    case "Дом":
        component = Qt.createComponent("House.qml");
        sprite = component.createObject(parent);
        if (sprite == null) {
        // Error Handling
        console.log("Error creating object");
        }
        break;
    case "Часы":
        component = Qt.createComponent("Watch.qml");
        sprite = component.createObject(parent);
        if (sprite == null) {
        // Error Handling
        console.log("Error creating object");
        }
        break;
    }



}
