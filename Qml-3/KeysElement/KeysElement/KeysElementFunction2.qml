import QtQuick 2.0


    Rectangle{
        id: square2
        x: 20; y: 80
        width:50
        height:50
        color:"green"
        focus:true
        KeyNavigation.tab: square2
    }

