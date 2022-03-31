import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12

TabButton {
    //             Material.accent: "white"
    Material.foreground: "blue" //未点击之前的颜色
    property string tabText
    property string imgSource
    Image {
        id: ima
        height: 20
        width: 20
        source: imgSource
        anchors.left: parent.left
        anchors.leftMargin:20
        anchors.verticalCenter: parent.verticalCenter
    }
    Text {
        text: tabText
        anchors.left: ima.right
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
    }
    font.family: "Microsoft YaHei"

}

/*##^##
Designer {
    D{i:0;height:48;width:200}
}
##^##*/
