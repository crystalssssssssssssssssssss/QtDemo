import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12

TabBar {
    id: control
    //    width: parent.width
    height: 150
    Material.accent: "black"  //点击之后的颜色
    contentItem:ListView {

        model: control.contentModel
        currentIndex: control.currentIndex
        spacing: control.spacing
        orientation: ListView.Vertical // <<-- VERTICAL
        boundsBehavior: Flickable.StopAtBounds
        flickableDirection: Flickable.AutoFlickIfNeeded
        snapMode: ListView.SnapToItem
        clip: true
        delegate: Rectangle {
            color: "red"
            Text {
                anchors.fill: parent
//                text: modelData
            }
        }

        highlightMoveDuration: 0
        highlightRangeMode: ListView.ApplyRange
        preferredHighlightBegin: 40
        preferredHighlightEnd: height - 40
        ScrollBar.vertical: ScrollBar{}
    }

}
