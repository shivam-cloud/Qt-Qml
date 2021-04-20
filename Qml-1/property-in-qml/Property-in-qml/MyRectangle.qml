import QtQuick 2.0

Item {
  id: propertyQML
  property int rectHeight// property variable or property names cannot begin with upppercase letters
  property int rectWidth
  property string rectColor
    Rectangle{
       width: propertyQML.rectWidth
       height: propertyQML.rectHeight
       color: propertyQML.rectColor
    }









}
