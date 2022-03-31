

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 6.0

Rectangle {
    id: item1
    width: 195
    height: 900
    color: "white"

    ColumnLayout {
        id: columnLayout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        MusicColumnItem {
            id: column
            width: item1.width
            height: 192
            extract: '反馈'
            title: '在线音乐'
            imgSource: "/music/folder.png"
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop

            TabBarView {
                id: tabBarView1
                width: parent.width
                height: 262

                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/bluetooth.png"
                    tabText: '推荐'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/filter.png"
                    tabText: '电台'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/filter.png"
                    tabText: '歌单'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/filter.png"
                    tabText: '排行榜'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/filter.png"
                    tabText: '歌手'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/filter.png"
                    tabText: 'MV'
                }
            }
        }

        MusicColumnItem {
            id: column1
            isVisible: false
            width: item1.width
            title: '我的音乐'
            Layout.bottomMargin: 330
            height: 300
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop

            TabBarView {
                id: tabBarView
                width: parent.width

                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/cloud.png"
                    tabText: '私人音乐云盘'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/cloud.png"
                    tabText: '下载管理'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/music.png"
                    tabText: 'iTunes音乐'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/save.png"
                    tabText: '本地音乐'
                }
            }
        }

        MusicColumnItem {
            id: column2
            isVisible: true
            width: item1.width
            extract: '添歌单'
            title: '自建歌单'
            imgSource: "music/cart.png"
            Layout.bottomMargin: 350
            height: 192
            Layout.topMargin: -330
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom

            TabBarView {
                id: tabBarView2
                width: parent.width

                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/favorite.png"
                    tabText: '我喜欢'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/message.png"
                    tabText: '默认收藏'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/message.png"
                    tabText: 'mylove'
                }
                TabButtonItem {
                    width: parent.width
                    anchors.left: parent.left
                    imgSource: "music/shuffle.png"
                    tabText: '轻松'
                }
            }
        }
    }
}
