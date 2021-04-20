import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("Grouped-Animations")
    color:"black"

    //    Rectangle{
    //        id: root
    //        width: 600
    //        height: 400
    //        property int duration: 10000
    property Item ufo: ufo
    Image {
        anchors.fill: parent
        source: "ufo_background.png"
    }

    //for ufo
    ClickableImage3 {
        id: ufo
        x: 20; y: /*root.height-height*/ 500
        text: 'ufo'
        source: "ufo.png"
        onClicked: anim.restart()
    }
 //for rocket
    ClickableImage3 {
        id: rocket
        x: 20; y: /*root.height-height*/ 500
        text: 'rocket'
        source: "rocket.png"
        onClicked: anim2.restart()

    }


    //ParallelAnimation


    ParallelAnimation {
        id: anim
        NumberAnimation {
            //from: 220
            target: ufo
            properties: "y"
            to: 20
            duration: 6000
        }
        NumberAnimation {
            // from:20
            target: ufo
            properties: "x"

            to: 1000
            duration: 6000
        }



/*****************************************************************************************/
        //for rocket


        //SequentialAnimation

        SequentialAnimation {
            id: anim2
            NumberAnimation {

                target: rocket
                properties: "y"
                to: 20
                // 60% of time to travel up
                duration: (10000)*0.6
            }

            RotationAnimation{
            target:  rocket
            properties: "rotation"
            to: 90
            duration: 3000

            }

            NumberAnimation {
                target: rocket
                properties: "x"

                to: 1000
                // 40% of time to travel sideways
                duration: (10000)*0.4
            }

        }
    }

}
