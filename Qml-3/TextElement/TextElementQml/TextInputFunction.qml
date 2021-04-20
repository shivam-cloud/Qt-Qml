import QtQuick 2.0

Rectangle {
    width: 200
    height: 80
    color: "linen"
    Rectangle{
        id:rect1
        width:120
        height: input1.height + 10
         x: 8; y: 8
        color: "yellow"
       border.color: "black"
    TextInput {
        id: input1
        anchors.centerIn: rect1
        //x: 8; y: 8
        width: 96; height: 20
        focus: true
        text: "Text Input 1: "
        KeyNavigation.tab: input2
    }
    }
    Rectangle{
        id: rect2
        width:120
        height: input2.height + 10
        x: 8; y: 36
        color: "yellow"
        border.color: "black"
    TextInput {
        id: input2
        anchors.centerIn : rect2
        //x: 8; y: 36
        width: 96; height: 20
        text: "Text Input 2: "
        KeyNavigation.tab: input1

    }
    }
}
