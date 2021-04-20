import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true

    title: qsTr("Transformations")

    color:"black"
    //for background
    Rectangle{

        // set width and height based on given background
        //width: bg.width
        //height: bg.height
        color:"black"
        Image {
            id: bg
            source: "background@2x.png"
        }
        MouseArea {
            id: backgroundClick

            anchors.fill: bg
            onClicked: {
                //reset to original
                circle.x = 10
                square.rotation = 0
                triangle.rotation = 0
                triangle.scale = 1.0

            }

        }
        ClickableImage{
            id: circle
            x: 10; y: 20
            source: "circle_blue@2x.png"
            antialiasing: true
            onClicked: {
                // increase the x-position on click
                x += 10
            }

        }


    }


    ClickableImage {
        id: square
        x: 100; y: 20
        source: "box_green@2x.png"
        antialiasing: true
        onClicked: {
            // increase the rotation on click
            rotation += 15
        }

    }

    ClickableImage {
        id: triangle
        x: 200; y: 20
        source: "triangle_red@2x.png"
        antialiasing: true
        onClicked: {
            // several transformations
            rotation += 15
            scale += 0.05
        }
    }

/*
    function _test_transformed() {
    circle.x += 20
    box.rotation = 15
    triangle.scale = 1.2
    triangle.rotation = -15
    }
    function _test_overlap() {
    circle.x += 40
    box.rotation = 15
    triangle.scale = 2.0
    triangle.rotation = 45
    }
*/
}
