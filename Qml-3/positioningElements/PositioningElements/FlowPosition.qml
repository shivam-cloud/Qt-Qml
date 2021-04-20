import QtQuick 2.0

Element{
    id:root
    width: 540
    height: 360
    color:"grey"

    Flow{
        id:flow
        anchors.centerIn: root
        anchors.margins: 20
        spacing: 20
        Element{
            id:redsquare
            color:"red"

        }

        Element{
            id:greensquare
            color:"green"
        }

        Element{
            id:bluesquare
            color:"blue"

        }


        Element{
            id: yellowsquare
            color:"yellow"

        }
    }
}
