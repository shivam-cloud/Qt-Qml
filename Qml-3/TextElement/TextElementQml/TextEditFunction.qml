import QtQuick 2.0
//using Focus Scope for more precise result

FocusScope {
    width: 400; height: 400
    Rectangle {
        anchors.fill: parent
        color: "lightsteelblue"
        border.color: "gray"
    }
    property alias text: input.text
    property alias input: input
    //1st input is the property name and 2nd input is the input id
    TextEdit {
        id: input
        x: 8; y: 8
        width: 120; height: 104
        anchors.fill: parent
        anchors.margins: 4
        text: "Text Edit: "
        focus: true
    }
}
