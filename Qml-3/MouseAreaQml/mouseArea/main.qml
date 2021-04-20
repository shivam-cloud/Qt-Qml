import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("MouseArea")
    Rectangle {
        id: rect1
        x: 12; y: 12
        width: 200; height: 200
        color: "black"
        MouseArea {
            id: area
            width: rect1.width
            height: rect1.height
            hoverEnabled: true
            onEntered:{

                rect1.color = "red"
                rect2.visible = !rect2.visible//1st go invisible then 2nd go visible
                rect2.color = "brown"

            }

            onExited:{

                rect1.color = "yellow"
                rect2.visible =rect2.visible
                rect2.color = "green"

            }
            onClicked: {

                Qt.quit()
            }
        }
    }
    Rectangle {
        id: rect2
        x: 312; y: 12
        width: 200; height: 200
        border.color: "black"
        border.width: 4
        radius: 8
    }


}
