import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("Property")

    Text {
        id: label
        x:24;y:16
        height: 2 * width

        property int times: 24

        property alias anotherTimes: label.times

        text: "Greetings " + times

        font.family: "Courier"
        font.pixelSize: 24
        font.bold: true
        //these are grouped property
       /*
         Another way of writing is
         font{
             family:"Courier"
             pixelsize: 24
             bold: true

}
*/


        KeyNavigation.tab:otherlabel //KeyNavigation is an attached property

        onHeightChanged: console.log('Height: ', height )//signal handler for property changes
 //here we want to be notifies whenever the height changes and use built-in console to log a message
        focus: true //focus is necessary for key events
        color: focus?"red": "black" //change color based on focus value
    }


}
