

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0

Rectangle {
    id: root
    width: 1000
    height: 40
    color: "#b3daf7"
    radius: 10
    border.color: "#f9f6f6"
    scale: 1.207

    RowLayout {
        id: row
        anchors.fill: parent
        Image {
            id: beforeAndback
            Layout.preferredHeight: 40
            Layout.preferredWidth: 40
            source: "/music/q.png"
            Layout.leftMargin: 200
            anchors.leftMargin: 100
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: rectangle
            border.color: 'black'
            Layout.fillHeight: false
            Layout.fillWidth: false
            Layout.rightMargin: 150
            Layout.leftMargin: -1
            width: 160
            height: parent.height / 2
            radius: 6

            TextEdit {
                id: textEdit
                selectByMouse: true
                width: parent.width * 7 / 8
                height: 20
                verticalAlignment: Text.AlignVCenter
                color: 'black'
                anchors.left: parent.left
                font.pixelSize: 12
                wrapMode: Text.NoWrap
                anchors.leftMargin: 3
                Text {
                    id: text1
                    visible: textEdit.text === ""
                    y: 40
                    color: "#999999"
                    text: qsTr("请输入查找内容")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 14
                    clip: true
                    font.bold: false
                    font.family: "Microsoft YaHei"
                }
            }

            Image {
                id: image1
                width: parent.width / 8
                height: parent.height
                anchors.right: parent.right
                anchors.leftMargin: 20
                source: "/music/search.png"
                anchors.rightMargin: 3
                focus: true
                clip: true
                fillMode: Image.PreserveAspectFit
            }
        }

        Row {
            id: row1
            width: 20
            height: parent.height / 2
            spacing: 8
            Layout.rightMargin: 200
            Layout.leftMargin: -10
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

            Image {
                id: face
                width: 20
                height: 20
                anchors.verticalCenter: parent.verticalCenter
                source: "music/touxiang.png"
                fillMode: Image.PreserveAspectCrop
            }

            Label {
                id: label
                text: qsTr("your name")
                anchors.verticalCenter: parent.verticalCenter
            }

            Rectangle {

                id: boundary
                width: 1
                height: root.height
                opacity: 0.2
                color: "#ffffff"
                Layout.leftMargin: -225
                Layout.rightMargin: 310
            }
        }

        Row {
            id: settings
            width: 137
            height: parent.height / 2
            Layout.leftMargin: -200
            Layout.rightMargin: 200

            Image {
                id: set
                width: 42
                height: row.height / 3
                source: "music/settings.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: voice
                width: 42
                height: row.height / 3
                source: "music/voice.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: notice
                width: 42
                height: row.height / 3
                source: "music/notice.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

