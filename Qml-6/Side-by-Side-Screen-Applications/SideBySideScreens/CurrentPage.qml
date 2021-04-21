import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    header: Label {
        text: qsTr("Current")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Column {
        anchors.centerIn: parent
        spacing: 10
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("You are on current Page")
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Click")
            onClicked: swipeView.setCurrentIndex(1);
        }
    }



//    Label {
//        text: qsTr("You can swipe left to check")
//        anchors.centerIn: parent
//    }
}

