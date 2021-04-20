import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("Property,Behavior,Standalone Animations")
    color: "black"

   //ClickableImage2 is a whole column consisting of image and text
    //Property
    ClickableImage2 {
    id: greenBox
    //here we are defining the entire coulmn's x and y position
    x: 40; y: 40
    source: "box_green@2x.png"
    text: "animation on property"
    NumberAnimation on y {
    to: 500; duration: 20000
    }
    }
  //Behavior on property,moves when we click on the image
    ClickableImage2 {
    id: blueBox
    x: /*(root.width-width)/2*/200
       y: /*root.height-height*/ 40
    source: "box_blue@2x.png"
    text: "behavior on property"

    Behavior on y {
    NumberAnimation {
//        to: 500
        duration: 10000 }
    }
    onClicked: y =500
    //MouseArea{
//        anchors.fill: blueBox
//    onClicked: image.clicked()
   // }
    // random y on each click
    //onClicked: y = 40+Math.random()*(205-40)

}

    //standalone

    ClickableImage2 {
    id: redBox
    x: /*root.width-width-40*/ 400; y: root.height-height
    source: "box_red@2x.png"
    onClicked: anim.start()
   // onClicked: anim.restart()
    text: "standalone animation"
    NumberAnimation {
    id: anim
    target: redBox
    properties: "y"
    to: 40
    duration: 4000
    }
    }

}
