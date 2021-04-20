import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    width: 600
    height: 500
    title: qsTr("Rotating-Sinchan")

    Image{
        id :background
        source:"shinc.jpg"




        Image{
            id: wheel
            //anchors.verticalCenterOffset: 109
            //anchors.horizontalCenterOffset: -17
            anchors.centerIn: parent
            source:"sinchan.jpg"
            Behavior on rotation {
                NumberAnimation{
                    duration: 6000
                }

            }

        }



        MouseArea{
            anchors.fill: wheel
            onClicked: wheel.rotation +=360



        }






    }




}




