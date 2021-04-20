import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    x:150;y:50
    color: "black"
    title: qsTr("Components-Button")


/*
    Rectangle { //for button
        id: button
        x: 12; y: 12
        width: 126; height: 26
        color: "lightsteelblue"
        border.color: "white"
        Text {
            anchors.centerIn: parent
            color: "white"
            font.bold: true
            text: "Start"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                status.text = "Button clicked!"
            }
        }
    }
    Text
{ // text changes when button was clicked
        id: status
        x: 12; y: 76
        width: 116; height: 26
        color: "white"
        text: "waiting ..."
        horizontalAlignment: Text.AlignHCenter
    }
*/

    Button { // Creating our own component
    id: button
    x: 12; y: 12
    color: "white"
    text: "Start"
    onClicked: {
    status.text = "Button clicked!"
    }
    }
    Text { // text changes when button was clicked
    id: status
    x: 12; y: 76
    width: 116; height: 26
    color:"white"
    text: "waiting ..."
    horizontalAlignment: Text.AlignHCenter

  }


}
