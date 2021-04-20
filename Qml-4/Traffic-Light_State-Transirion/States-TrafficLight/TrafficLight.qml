import QtQuick 2.0

import QtQuick 2.5

Rectangle {
    id: root
    width: 150
    height: 370

    property color black: 'black'
    property color red: 'red'
    property color green: 'green'
    property color yellow: 'yellow'


    gradient: Gradient {
        GradientStop { position: 0.0; color: "black" }
        GradientStop { position: 1.0; color: "grey" }

    }

    Rectangle {
        id: light1
        x: 25; y: 15
        width: 100; height: width
        radius: width/2
        color: root.black
        border.color: Qt.lighter(color, 1.1)
    }

    Rectangle {
        id: light2
        x: 25; y: 135
        width: 100; height: width
        radius: width/2
        color: root.black
        border.color: Qt.lighter(color, 1.1)
    }

    Rectangle {
        id: light3
        x: 25; y: 255
        width: 100; height: width
        radius: width/2
        color: root.black
        border.color: Qt.lighter(color, 1.1)
    }

    state: "stop"

    states: [
        State {
            name: "stop"
            PropertyChanges { target: light1; color: root.red }
            PropertyChanges { target: light2; color: root.black }
            PropertyChanges { target: light3; color: root.black }
        },
        State {
            name: "wait"
            PropertyChanges { target: light1; color: root.black }
            PropertyChanges { target: light2; color: root.yellow }
            PropertyChanges { target: light3; color: root.black }
        },
        State {
            name: "go"
            PropertyChanges { target: light1; color: root.black }
            PropertyChanges { target: light2; color: root.black }
            PropertyChanges { target: light3; color: root.green }
        }
    ]

    MouseArea {
        anchors.fill: parent
        onClicked: parent.state = (parent.state == "stop"? "wait" : "go")
//    }
//    MouseArea {
//        anchors.fill: parent
//        onClicked: parent.state = (parent.state == "go"? "wait" : "stop")
//    }

    transitions: [
        Transition {
            //from: "stop"; to: "wait"
                       from: "*"; to: "*"
            ColorAnimation { target: light1; properties: "color"; duration: 2000 }
            ColorAnimation { target: light2; properties: "color"; duration: 2000 }
            ColorAnimation { target: light3; properties: "color"; duration: 2000 }
        },

        Transition {
           // from: "wait"; to: "go"
                        from: "*"; to: "*"
            ColorAnimation { target: light2; properties: "color"; duration: 2000 }
            ColorAnimation { target: light3; properties: "color"; duration: 2000 }
            ColorAnimation { target: light1; properties: "color"; duration: 2000 }
        },
        Transition {
            //from: "go"; to: "stop"
                        from: "*"; to: "*"
            ColorAnimation { target: light3; properties: "color"; duration: 2000 }
            ColorAnimation { target: light1; properties: "color"; duration: 2000 }
            ColorAnimation { target: light2; properties: "color"; duration: 2000 }
        }


    ]


}
