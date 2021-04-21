import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Material 2.1

//import QtQuick 2.5

//Material style

ApplicationWindow {

    id: window

    visible: true
    width: 360
    height: 520
    title: qsTr("Mobile Application Image Viewer")

    Drawer {
        id: drawer

        width: /*Math.min(window.width, window.height) / 3 * 2*/ 180
        height: window.height
        ListView {
            focus: true
            //currentIndex holds the index number of the current item
            currentIndex: -1 //currentIndex: -1 ,to clear the current item memory and make it NULL
            anchors.fill: parent

            delegate: ItemDelegate {
                width: parent.width
                text: model.text
                highlighted: ListView.isCurrentItem
                onClicked: {
                    drawer.close()
                    model.triggered()
                }
            }

            model: ListModel {
                ListElement {
                    text: qsTr("Open...")
                    triggered: function(){ fileOpenDialog.open(); }
                }
                ListElement {
                    text: qsTr("About...")
                    triggered: function(){ aboutDialog.open(); }
                }
            }
           //for scrolling the drawer items
            ScrollIndicator.vertical: ScrollIndicator { }
 //ScrollIndicator is a non-interactive indicator that indicates the current scroll position. A scroll indicator can be either vertical or horizontal, and can be attached to any Flickable, such as ListView and GridView.

        }
    }

    header: ToolBar {
        Material.background: Material.Green

        ToolButton {
            id: menuButton
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "hamburger_button.svg"
            onClicked: drawer.open()
        }
        Label {
            anchors.centerIn: parent
            text: "Image Viewer"
            font.pixelSize: 20
 //Set this property to elide parts of the text fit to the Text item's width.
 //The text will only elide if an explicit width has been set.
            elide: Label.ElideRight
        }
    }

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0.0; color: "grey" }
            GradientStop { position: 1.0; color: "black" }
        }
        //color: "darkGray"
    }

    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        asynchronous: true
    }

    FileDialog {
        id: fileOpenDialog
        title: "Select an image file"
        folder: shortcuts.documents
        nameFilters: [
            "Image files (*.png *.jpeg *.jpg)",
        ]
        onAccepted: {
            image.source = fileOpenDialog.fileUrl
        }
    }

    Dialog {
        id: aboutDialog
        title: qsTr("About")
        Label {
            anchors.fill: parent
            text: qsTr("QML Image Viewer\nA part of the QmlBook\nhttp://qmlbook.org")
            horizontalAlignment: Text.AlignHCenter
        }

        standardButtons: StandardButton.Ok
    }



}
