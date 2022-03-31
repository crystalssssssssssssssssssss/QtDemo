

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    width: 805
    height: 45
    property alias name: songName.text
    property alias songer: songer.text
    property alias section: section.text
    property alias interval: interval.text
    property alias rectColor: rect1.color

    Rectangle {
        id:rect1
        anchors.fill: parent

        Label {
            id: songName
            x: 10
            color: "#100d0d"
            text: qsTr("Label")
            anchors.verticalCenter: parent.verticalCenter
            //            anchors.left: parent.left
            //            anchors.leftMargin: 10
        }

        Label {
            id: songer
            x: 340
            color: "#0a0a0a"
            text: qsTr("Label")
            anchors.verticalCenter: parent.verticalCenter
            //            anchors.left: songName.right
            //            anchors.leftMargin: 290
        }

        Label {
            id: section
            x: 530
            height: 16
            color: "#0a0909"
            text: qsTr("Label")
            anchors.verticalCenter: parent.verticalCenter
            //            anchors.left: songer.right
            //            anchors.leftMargin: 100
        }

        Label {
            id: interval
            x: 739
            color: "#040404"
            text: qsTr("Label")
            anchors.verticalCenter: parent.verticalCenter
            //            anchors.left: section.right
            //            anchors.leftMargin: 180
        }

        Rectangle {
            id: bound
            width: parent.width
            anchors.top: songer.bottom
            height: 1
            color: 'black'
            opacity: 0.1
        }
    }

}
