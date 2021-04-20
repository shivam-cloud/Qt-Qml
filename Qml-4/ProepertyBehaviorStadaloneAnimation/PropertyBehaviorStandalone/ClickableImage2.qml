import QtQuick 2.0

Item {
id: root
//childrenRect is a column property to get the total width aND HEIGHT of the entire column
width: container.childrenRect.width
height: container.childrenRect.height
property alias text: label.text
property alias source: image.source
signal clicked
Column {
id: container
Image {
id: image
}
Text {
id: label
width: image.width
horizontalAlignment: Text.AlignHCenter
wrapMode: Text.WordWrap
color: "#ececec"
}
}
//for reset click anywhere on the parent screen
MouseArea {
anchors.fill: parent
onClicked: root.clicked()
}
}
