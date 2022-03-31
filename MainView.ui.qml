

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 6.0

//import com.lc 1.0
Item {
    //    width: 1920
    height: 1080
    property alias listView: listView
    Rectangle {
        id: rectangle
        anchors.fill: parent

        RowLayout {
            id: rowLayout
            height: image.height
            width: parent.width - image.width - 40
            anchors.left: image.right
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.leftMargin: 20

            Column {
                id: column
                height: rectangle.height / 3
                spacing: 30
                width: parent.width / 2

                Label {
                    id: label
                    height: parent.height / 4
                    color: "#f4100e0e"
                    text: qsTr("我喜欢")
                    font.pixelSize: 30
                }

                Row {
                    id: row
                    width: parent.width
                    height: label1.height
                    spacing: 10

                    Label {
                        id: label1
                        color: "#f3060505"
                        text: qsTr("2016-8-1")
                        anchors.verticalCenter: parent.verticalCenter
                    }

                    Rectangle {
                        id: rectangle1
                        width: 1
                        height: 10
                        color: "#020202"
                        opacity: 0.26
                        anchors.verticalCenter: parent.verticalCenter
                        scale: 1
                    }

                    Label {
                        id: label2
                        color: "#ed040404"
                        text: qsTr("宁静致远")
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Label {
                    id: label3
                    color: "#f8010101"
                    text: qsTr("介绍：好歌单岂能少了个性的介绍，快去补充一下吧")
                }

                Row {
                    id: row1
                    width: parent.width
                    height: button.height
                    spacing: 10

                    Button {
                        id: button2
                        width: buttonImg.width + buttonTx.width + buttonTx.width / 5
                        highlighted: true
                        Image {
                            id: buttonImg2
                            anchors.left: parent.left
                            anchors.leftMargin: 4
                            scale: 1.2
                            source: "music/favorite.png"
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: buttonTx2
                            anchors.left: buttonImg2.right
                            anchors.leftMargin: -5
                            anchors.top: parent.top
                            anchors.topMargin: 6
                            text: qsTr("全部播放")
                            color: 'white'
                        }
                    }

                    Button {
                        id: button
                        width: buttonImg.width + buttonTx.width + buttonTx.width / 5
                        highlighted: true
                        Image {
                            id: buttonImg
                            anchors.left: parent.left
                            anchors.leftMargin: 5

                            source: "music/shuffle.png"
                        }
                        Text {
                            id: buttonTx
                            anchors.left: buttonImg.right
                            anchors.leftMargin: -5
                            anchors.top: parent.top
                            anchors.topMargin: 7
                            text: qsTr("全部下载")
                            color: 'white'
                        }
                    }

                    Button {
                        id: button1
                        width: buttonImg.width + buttonTx.width + buttonTx.width / 5
                        anchors.verticalCenter: parent.verticalCenter
                        highlighted: true
                        Image {
                            id: buttonImg1
                            anchors.left: parent.left
                            anchors.leftMargin: 17
                            scale: 0.5
                            source: "music/cart.png"
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: buttonTx1
                            anchors.left: buttonImg1.right
                            anchors.leftMargin: -5
                            anchors.top: parent.top
                            anchors.topMargin: 7
                            text: qsTr("分享")
                            color: 'white'
                        }
                    }
                }
            }
        }
        Image {
            id: image
            width: 190
            height: 200
            anchors.left: parent.left
            anchors.top: parent.top
            source: "music/tiger.jpeg"
            anchors.topMargin: 20
            anchors.leftMargin: 40
            Layout.leftMargin: 100
            fillMode: Image.PreserveAspectCrop
        }

        Button {
            id: button3
            width: buttonImg3.width + buttonTx3.width + buttonTx3.width / 5
            anchors.right: parent.right
            anchors.top: parent.top
            highlighted: true
            anchors.topMargin: 20
            anchors.rightMargin: 20
            Image {
                id: buttonImg3
                anchors.left: parent.left
                anchors.leftMargin: 5
                scale: 0.5
                source: "music/save.png"
                fillMode: Image.PreserveAspectFit
            }
            Text {
                id: buttonTx3
                anchors.left: buttonImg3.right
                anchors.leftMargin: -5
                anchors.top: parent.top
                anchors.topMargin: 7
                text: qsTr("编辑歌单")
                color: 'white'
            }
        }
        Row {
            id: musciTitle
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: image.bottom
            spacing: 500
            anchors.rightMargin: 0
            anchors.leftMargin: 10
            anchors.topMargin: 20

            Label {
                id: label4
                color: "#f3040404"
                text: '歌曲列表' + '(' + listView.count + ')'
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 18
            }

            Rectangle {
                id: rectangle12
                border.color: 'black'
                anchors.verticalCenter: parent.verticalCenter
                Layout.rightMargin: 150
                Layout.leftMargin: 100
                width: 160
                height: parent.height / 1.5
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
        }

        Label {
            id: musicName
            anchors.top: musciTitle.bottom
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.topMargin: 10
            opacity: 0.5
            text: qsTr("歌曲名")
            color: 'black'
        }
        Label {
            id: songer1
            anchors.top: musciTitle.bottom
            anchors.left: musicName.right
            anchors.leftMargin: 300
            anchors.topMargin: 10
            opacity: 0.5
            text: qsTr("歌手")
            color: 'black'
        }
        Label {
            id: section1
            anchors.top: musciTitle.bottom
            anchors.left: songer1.right
            anchors.leftMargin: 160
            anchors.topMargin: 10
            opacity: 0.5
            text: qsTr("专辑")
            color: 'black'
        }
        Label {
            id: interval1
            anchors.top: musciTitle.bottom
            anchors.left: section1.right
            anchors.leftMargin: 180
            anchors.topMargin: 10
            opacity: 0.5
            text: qsTr("时长")
            color: 'black'
        }

        Rectangle {
            id: bound
            width: parent.width
            anchors.top: musicName.bottom
            height: 1
            color: 'black'
            opacity: 0.1
        }

        ListView {
            id: listView
            anchors.top: bound.bottom
            anchors.bottom: parent.bottom
            keyNavigationWraps: true
            snapMode: ListView.NoSnap
            clip: true
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.topMargin: 10
            flickableDirection: Flickable.AutoFlickIfNeeded
            highlightMoveDuration: 0
            highlightRangeMode: ListView.ApplyRange
            ScrollBar.vertical: ScrollBar {
                pressed: true
                enabled: true
                hoverEnabled: true
                focusPolicy: Qt.ClickFocus
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/

