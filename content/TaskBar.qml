import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: taskbar
    width: 1860
    height: 60

    Rectangle{
        id:taskbarbg
        anchors.fill: parent
        color:"#FFFFFF"
    }
    Rectangle{
        id:user
        width: 195
        height: 34
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        Image{
            id:usericon
            width: 35
            source: "icons/user.png"
            anchors.top: parent.top
            anchors.bottom:  parent.bottom
            anchors.left: parent.left
        }
        Text{
            id:username
            width:160
            anchors.top: parent.top
            anchors.bottom:  parent.bottom
            anchors.right: parent.right
            anchors.left: usericon.right
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("Username")
            font.family: "Inter"
            font.pixelSize: 24
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/
