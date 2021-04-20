//QML and Javascript (also known as ECMAScript) relation
//
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    width: 640
    height: 480
    color: "yellow"
    title: qsTr("ScriptBasics")

    Text {
        id: label
        x:50
        y:50
        font.pixelSize: 30

        property int spacePresses: 0
        text: "Space pressed " + spacePresses + " times"
        onTextChanged: console.log("Text changed to" + text)//the text change handler onTextChanged
        //prints the current text every time the text changed due to a space-bar key pressed

        focus: true

        Keys.onSpacePressed:
        {

            increment()
        }

        Keys.onEscapePressed: {
        label.text = "count stopped"
        }

    function increment(){
//definition of javascript funciton in form of function<name>(<parameters>{.....})
    spacePresses  = spacePresses + 1
    }

    }
}

