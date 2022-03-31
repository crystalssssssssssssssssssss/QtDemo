import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
//import com.lc 1.0

Window {
    id:root
    width: 1000
    height: 900
    visible: true
    title: qsTr("酷狗音乐")

    SplitView{

        anchors.fill: parent
        orientation: Qt.Vertical

        handle: Rectangle{
            //            implicitHeight: 3
            implicitWidth: 2
            color: SplitHandle.hovered ? "#81e889" : "#FFFFFF"
        }

        HeadView{
            width: root.width
            implicitHeight: 50
        }

        //        Rectangle{

        //        }
        SplitView{
            id:mainview
            implicitHeight: parent.height *6/7
            orientation: Qt.Horizontal

            handle: Rectangle{
                implicitHeight: 3
//                implicitWidth: 2
                color: SplitHandle.hovered ? "#81e889" : "#FFFFFF"
            }
            LeftView{
                implicitWidth: 195
//                color: 'red'
            }
            MainView{
//                implicitWidth: 20
//                color: 'white'
                listView.model:$Model
                listView.delegate: MusicItem{
                    name: namem
                    songer: songerm
                    section: sectionm
                    interval: intervalm
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
//                        onHoveredChanged:ListView.isCurrentIndex?rectColor='red':rectColor='blue'
                        onEntered: rectColor='#b3daf7'  //鼠标进入到当前item
                        onExited: rectColor='white'     //鼠标离开当前item
                    }
                }
            }
        }

        TailView{
//            color: '#b3daf7'
//            radius: 5
        }

    }
    Component.onCompleted: {
        $Model.setMusic();
    }
}
