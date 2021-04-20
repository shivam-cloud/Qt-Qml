import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: window
    visible: true
    title: qsTr("ImageAddon")
    color:"red"

    Image{
        id:netflix
        x:50;y:50
        source:"Netflix.png"
        //anchors.centerIn: parent

    }

    Image{
        id:netflix1
        x:400;y:50
        height: 150
        source:"Netflix.png"
        fillMode: Image.PreserveAspectCrop
        //to preserve cropping of image beyond the Image boundaries and for that we need to baselineOffset:
        // clip to true also
        clip: true
        //anchors.centerIn: parent

    }

}
