import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window{
    id:root
    visible: true


    Rectangle{
             id:rectangle
             visible: true
             width:1000
             height:1000
             color:"black"
             anchors.centerIn: parent

             Image {
                 id: triangle
                 anchors.verticalCenterOffset: -51
                 anchors.horizontalCenterOffset: 1
                 source: "TriangleMain.png"
                 anchors.centerIn: parent
             }

             Text {
                 id: label
                 x: 421
                 y:580
                width: 192
                 height: 57
                 color:"#f6f6f4"

                 text: qsTr("Triangle")
                 font.bold: true
                 font.pointSize: 24
                 font.family: "Courier"
                 //horizontalAlignment: Text.AlignHCenter

             }


}





}
