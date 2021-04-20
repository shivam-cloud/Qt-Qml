import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("KeysElement")
    Rectangle {
        width: 1000
        height: 1000
        color:"black"
//        Rectangle{
//            id: square
//            x: 20; y: 20
//            width:50
//            height:50
//        }


        KeysElementFunction{
            id:square
            color:"yellow"
        }
//            KeysElementFunction{
//                y:90
//                color:"green"
//            }
        focus: true

        //USING KEYBOARD KEYS left,right,up,down to move the square by pressing the keys
        Keys.onLeftPressed: square.x -= 8
        Keys.onRightPressed: square.x += 8
        Keys.onUpPressed: square.y -= 8
        Keys.onDownPressed: square.y += 8
        Keys.onPressed: {
            //for scaling the square
            switch(event.key) {
            case Qt.Key_Plus:
                square.scale += 0.2
                break;
            case Qt.Key_Minus:
                square.scale -= 0.2
                break;
            }
        }
    }



}






