import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window{
    id: window
    visible: true
    width: 600
    height: 600
    color:"brown"


    Rectangle {
        id: rectangle1
        width: 600
        height: 100
        color: "#34dc37"
        anchors.centerIn: parent//for co-ordinates we can use x: ,y: as well
        border.width: 10
        border.color: "white"
        radius: 60
    }

    Text {
        id: text1
        text: qsTr("Hover over here and see the magic!")
        visible: true
        font.italic: false
        font.bold: true
        font.pointSize: 20
        font.family: "Courier"
        anchors.centerIn: parent
        color: "#ffff00"
        //"..." shall appear in the middle
        elide: Text.ElideMiddle
        //provides styling to the border of the text
        style: Text.Raised
        styleColor: "black"


    }

    MouseArea{
        anchors.topMargin: 0
        anchors.rightMargin: 0

        anchors.fill:rectangle1  //parent-for entire window
        hoverEnabled: true
        onEntered: {
            rectangle1.color = "blue"
            rectangle1.rotation = 180
            text1.rotation = 180
            text1.text = "You are Awesome!"
            text1.style = Text.Sunken
            text1.styleColor = "black"
        }
        onExited: {
            rectangle1.color = "green"
            rectangle1.rotation = 0
            text1.rotation = 0
            text1.text = "Have a great day!"
            text1.style = Text.Sunken
            text1.styleColor = "black"
        }

        onClicked: {
            Qt.quit();
        }


    }




}

