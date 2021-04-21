import QtQuick 2.9
import QtQuick.Controls 2.2




ApplicationWindow {



    visible: true
    width: 640
    height: 480

    title: qsTr("Side by Side Interface(Swiping)")


    SwipeView {
        id: swipeView
        anchors.fill: parent

        CurrentPage {

            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "white" }
                    GradientStop { position: 1.0; color: "magenta" }
                    GradientStop { position: 0.3; color: "grey" }
                }}
        }

        UserStatsPage {
            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "white" }
                    GradientStop { position: 0.3; color: "grey" }
                    GradientStop { position: 1.0; color: "green" }
                }}
        }

        TotalStatsPage {
            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "white" }
                    GradientStop { position: 1.0; color: "brown" }
                    GradientStop { position: 0.3; color: "grey" }
                }}
        }


    }

    PageIndicator {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        currentIndex: swipeView.currentIndex
        count: swipeView.count
    }

}


