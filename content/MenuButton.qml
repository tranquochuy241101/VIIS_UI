import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 60
    height: 60

    property bool swState: false
    property bool swMoveOn: false
    property bool swMoveOff: false

    Rectangle{
        id:taskbarbg
        anchors.fill: parent
        color:"#FFFFFF"
    }

    Rectangle{
        id:draweropen
        width:parent.height*0.7
        height:width
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color:taskbarbg.color

        Image{
            id:menubutton
            source: "icons/list.png"
            anchors.fill:parent
            rotation:0
            RotationAnimator {
                    target: menubutton;
                    from: 0;
                    to: 90;
                    duration: 300
                    running: swMoveOn
                }

            RotationAnimator {
                    target: menubutton;
                    from: 90;
                    to: 0;
                    duration: 300
                    running: swMoveOff
                }
             }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                swState = !swState
                if (swState)
                {
                    swMoveOn = true
                    swMoveOff = false
                    drawer.open()
                }
                else
                {
                    swMoveOn = false
                    swMoveOff = true
                    drawer.close()
                }
            }
        }
    }

}
