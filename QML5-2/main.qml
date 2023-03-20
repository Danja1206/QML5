import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id: parentWindow
    property var lg;
    Component {
        id:singup
        Column {
            anchors.centerIn: parent
            spacing: 8
            Label {
                text: "Логин: Test";
            }
        TextField {
            id:login
            placeholderText: "Введите логин"
            width: 300;

        }
        Label {
            text: "Пароль: 123";
        }

        TextField {

            id:password
            placeholderText: "Введите пароль"
            width: 300;
        }
        Button {
            text:"Вход"
            onClicked: {
                if(password.text == "123" && login.text == "Test")
                {
                    lg = login.text;
                loader.sourceComponent = undefined;
                loader2.sourceComponent = singedUp;
                }

            }
        }
        }

    }
    Component {
        id:singedUp

        Column {
            spacing: 8
            Text {
                text: "Приветствую, " + lg;
            }
            Button {
                text:"Выйти"
                onClicked: {

                    loader.sourceComponent = singup;
                    loader2.sourceComponent = undefined;

                }
            }
        }

    }

    Loader {
    id: loader
    anchors.fill: parent
    sourceComponent: singup
    }
    Loader {
    id: loader2
    anchors.fill: parent
    }

}

