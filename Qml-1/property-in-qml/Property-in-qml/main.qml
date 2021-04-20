import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window{
    visible: true
    width: 600
    height: 600
    color:"brown"
    title: qsTr("PropertyBasics")

             MouseArea{

                 anchors.fill: parent
                 onClicked: {
                     Qt.quit();
                 }


                 }

           MyRectangle{

           rectWidth: 300
           rectHeight: 200
           rectColor: "yellow"
           x: 200
           y:200
//we can directly give values here as well


           }



            }





