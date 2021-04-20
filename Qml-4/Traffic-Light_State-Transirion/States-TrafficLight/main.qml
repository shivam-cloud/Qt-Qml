import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("Traffic-Light")
    Rectangle{
        anchors.fill: parent
    gradient: Gradient {
        GradientStop { position: 0.0; color: "light green" }
        GradientStop { position: 1.0; color: "blue" }
    }
TrafficLight{
anchors.centerIn: parent
}
    }
}
