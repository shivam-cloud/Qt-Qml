import QtQuick 2.0
//Grid
Element{
    id:root
    width: 540
    height: 360
    color:"grey"

    Grid{
        id:grid
        rows:2
        columns: 2
        anchors.centerIn: root
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
