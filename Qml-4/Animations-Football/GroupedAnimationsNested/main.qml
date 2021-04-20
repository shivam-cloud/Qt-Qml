import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("Animations-Football")

    Background{
        anchors.fill: parent
    }


    Image {
        id: ball
        x: 0; y: /*root.height-height*/500
        source: "soccer_ball.png"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                ball.x = 0;
                ball.y = window.height-ball.height //approx 500;
                ball.rotation = 0;
                anim.restart()
            }
        }
    }
    ParallelAnimation {
        id: anim
        SequentialAnimation {
            NumberAnimation {
                target: ball
                properties: "y"
                to: 20
                duration: /*window.duration * 0.4*/ (6000) * 0.6
                easing.type: Easing.OutCirc
            }
            NumberAnimation {
                target: ball
                properties: "y"
                to: /*window.height-ball.height*/ 500
                duration: /*window.duration * 0.6*/ (6000) * 0.4
                easing.type: Easing.OutBounce
            }
        }
        NumberAnimation {
            target: ball
            properties: "x"
            to: /*window.width-ball.width*/300
            duration: 6000
        }
        RotationAnimation {
            target: ball
            properties: "rotation"
            to: 720
            duration: 6000
        }
    }

}

