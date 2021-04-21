import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")



    header: ToolBar {

        contentHeight: toolButton.implicitHeight
        /* implicitHeight: Defines the natural width or height of the Item if no
width or height is specified.
The default implicit size for most items is 0x0, however some items have an inherent
implicit size which cannot be overridden, for example, Image and Text.
Setting the implicit size is useful for defining components that have a
 preferred size based on their content*/

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"

//depth: This property holds the number of items currently pushed onto the stack
            //\u25C0: black left pointing triangle
            //\u2630: trigram for heaven(hamburger Button)

            font.pixelSize: /*Qt.application.font.pixelSize * 1.6*/ 20
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()

//Pops one or more items off the stack. Returns the last item removed from the stack.

                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {


        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Profile")
                width: parent.width
                onClicked: {
                    stackView.push("Profile.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("About")
                width: parent.width
                onClicked: {
                    stackView.push(aboutPage)
                    //component for aboutPage
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Home {}

 /*This property holds the initial item that should be shown when the StackView is created.
 The initial item can be an Item, Component, or a url*/
    }

    Component {
        id: aboutPage

        About {}
    }


}
