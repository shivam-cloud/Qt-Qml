import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("Welcome to Animations")

    Rectangle {
        id: root
        anchors.fill: parent
       // width:1000
        //height:600
        color:"black"
        property int padding: 40
        property int duration: 9000
        property bool running: false
        Image {
            id: box1
            x: root.padding
            y: /*(root.height-height)/2 */40
            source: "box_blue@2x.png"
            NumberAnimation on x
                 {
                to: /*root.width - box.width - root.padding*/ 800 + 40
                duration: root.duration
                running: root.running
                 }
                 RotationAnimation on rotation
                   {
                to: 360
                duration: root.duration
                running: root.running
                   }
                }
        MouseArea {
            anchors.fill: parent
            onClicked: root.running = true


        }


    Image {
        id: box2
        x: root.padding + 200
        y: /*(root.height-height)/2 */40
        source: "box_green@2x.png"
        NumberAnimation on x
        {
            to: /*root.width - box.width - root.padding*/ 1000 + 40
            duration: root.duration
            running: root.running
        }
        RotationAnimation on rotation {
            to: 180
            duration: root.duration
            running: root.running
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true

}
    Image {
        id: box3
        x: root.padding + 200
        y: /*(root.height-height)/2 */ 500
        source: "box_blue@2x.png"
        NumberAnimation on y
        {
            to: /*root.width - box.width - root.padding*/40
            duration: root.duration + 1000
            running: root.running
        }
        RotationAnimation on rotation {
            to: 180
            duration: root.duration
            running: root.running
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true

}



    Image {
        id: box4
        x: root.padding
        y: /*(root.height-height)/2 */ 500
        source: "box_red@2x.png"
        NumberAnimation on y
        {
            to: /*root.width - box.width - root.padding*/40
            duration: root.duration + 2000
            running: root.running
        }
        RotationAnimation on rotation {
            to: 360
            duration: root.duration
            running: root.running
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true

}


    Image {

        id: box5
        x: root.padding + 800
        y: /*(root.height-height)/2 */40
        source: "box_red@2x.png"
        NumberAnimation on y
        {
            to: 500
            duration: root.duration + 1000
            running: root.running
        }
        RotationAnimation on rotation {
            to: 180
            duration: root.duration
            running: root.running
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true

}



    Image {
        id: box6
        x: root.padding +1000
        y: /*(root.height-height)/2 */ 40
        source: "box_green@2x.png"
        NumberAnimation on y
        {
            to:/* root.width - root.padding */ 500
            duration: root.duration + 2000
            running: root.running
        }
        RotationAnimation on rotation {
            to: 360
            duration: root.duration
            running: root.running
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true

}


    Image {

        id: box7
        x: root.padding + 800
        y: /*(root.height-height)/2 */500
        source: "box_green@2x.png"
        NumberAnimation on x
        {
            to: 40
            duration: root.duration + 1000
            running: root.running
        }
        RotationAnimation on rotation {
            to: 180
            duration: root.duration
            running: root.running
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true

}



    Image {
        id: box8
        x: root.padding +1000
        y: /*(root.height-height)/2 */ 500
        source: "box_red@2x.png"
        NumberAnimation on x
        {
            to:/* root.width - root.padding */ 40 + 200
            duration: root.duration + 2000
            running: root.running
        }
        RotationAnimation on rotation {
            to: 360
            duration: root.duration
            running: root.running
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.running = true

}


    }


}



