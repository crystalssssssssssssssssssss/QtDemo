import QtQuick 2.15
import QtQuick.Controls 2.15

Column {
    id: column
//    width: item1.width
    height: 192
//    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
    property string title
    property string extract
    property string imgSource
    property bool isVisible:true

    Row {
        id: row
        width: 200
        height: 34
//        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        spacing: 20

        Label {
            id: label
            color: "#d8070606"
            text: title
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 12
        }

        Image {
            id: image
            width: 45
            height: parent.height / 1.9
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            source: imgSource
            anchors.leftMargin: 110
            visible: isVisible
            fillMode: Image.PreserveAspectFit
        }

        Label {
            id: label1
            visible: isVisible
            color: "#d8070606"
            text: extract
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 150
            font.pointSize: 12
        }
    }





}
