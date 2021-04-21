import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    header: Label {
        text: qsTr(" User Stats")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }



    Column {
        anchors.centerIn: parent
        spacing: 10
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr(" User statistics")
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Click")
            onClicked: swipeView.setCurrentIndex(2);
        }
    }

//    Label {
//        text: qsTr("Welcome to User statistics Page")
//        anchors.centerIn: parent
//    }
}
