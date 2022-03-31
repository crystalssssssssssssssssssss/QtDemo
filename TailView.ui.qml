

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0
Item{
    id:root
    width: 1000
    height: 100
    property string pauseSource
    state: 'click_stop'
    Rectangle {
        id: rectangle
        anchors.fill: parent
        color: "#b3daf7"
        state: "click_pause"


        RowLayout {
            id: rowLayout
            anchors.fill: parent

            Row {
                id: row
                //            width: 263
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 30
                spacing: 20

                Image {
                    id: previous
                    width: parent.height / 2
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/previous.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: pause
                    width: parent.height / 1.3
                    height: parent.height / 1.3
                    anchors.verticalCenter: parent.verticalCenter
                    source: pauseSource
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        anchors.fill: parent
                        onClicked: root.state === "click_pause" ? root.state = "click_stop" : root.state = "click_pause"
                    }
                }

                Image {
                    id: next
                    width: parent.height / 2
                    height: parent.height / 2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/next.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Row {
                id: row1
                //            width: 695
                anchors.left: row.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                leftPadding: -20
                rightPadding: 10
                Layout.fillHeight: true
                anchors.leftMargin: 45

                Image {
                    id: image
                    width: 70
                    height: 60
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/qq.jpeg"
                    fillMode: Image.PreserveAspectCrop
                }
            }

            Column {
                id: column
                width: 480
                height: 66
                spacing: 10
                Layout.fillHeight: true

                Row {
                    id: row2
                    height: 40
                    width: parent.width * 2 / 5
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    anchors.leftMargin: 60
                    anchors.topMargin: 0

                    Rectangle {
                        id: rectangle1
                        width: 40
                        height: 20
                        color: "#ffffff"
                        radius: 12
                        anchors.verticalCenter: parent.verticalCenter

                        Text {
                            id: text1
                            text: qsTr("标准")
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 12
                            styleColor: "#fefbfb"
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    Label {
                        id: label
                        text: qsTr("银临-棠梨煎雪")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: label1.left
                        color: 'black'
                        anchors.rightMargin: 220
                    }

                    Label {
                        id: label1
                        text: qsTr("2:44/4:05")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        color: 'black'
                        anchors.rightMargin: 0
                    }
                }

                ProgressBar {
                    id: progressBar
                    height: 24
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    layer.format: ShaderEffectSource.RGBA
                    wheelEnabled: false
                    focusPolicy: Qt.TabFocus
                    anchors.leftMargin: 60
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    value: 0.6
                }
            }

            Row {
                id: row3
                width: 284
                height: 51
                spacing: 10
                Layout.fillHeight: true
                Layout.topMargin: 0
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                Image {
                    id: image1
                    width: 35
                    height: 35
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/favorite.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: image2
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/save.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: image3
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/cart.png"
                    fillMode: Image.PreserveAspectFit
                }

                Rectangle {
                    id: rectangle2
                    width: 40
                    height: 20
                    color: "#ffffff"
                    radius: 12
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        id: text2
                        text: qsTr("音效")
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 12
                        styleColor: "#fefbfb"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }

                Label {
                    id: label2
                    text: qsTr("词")
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    font.pointSize: 20
                }

                Image {
                    id: image4
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/repeat.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: image5
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/notice.png"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: image6
                    width: 20
                    height: 20
                    anchors.verticalCenter: parent.verticalCenter
                    source: "music/folder.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
    states: [
        State {
            name: "click_pause"
            PropertyChanges {
                target: root
                pauseSource: "music/stop.png"
            }
        },
        State {
            name: "click_stop"
            PropertyChanges {
                target: root
                pauseSource: "music/pause.png"
            }
        }
    ]

}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:4}D{i:6}D{i:2}D{i:7}D{i:14}D{i:10}D{i:15}D{i:18}D{i:19}
D{i:20}D{i:23}D{i:24}D{i:25}D{i:1}
}
##^##*/

