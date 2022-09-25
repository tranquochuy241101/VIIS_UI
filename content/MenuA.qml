import QtQuick 2.15
import QtQuick.Controls 2.15



Item {
    width: 60
    height: 1020

    Rectangle{
        id:menu
        x:-width+60
        width:400
        height:parent.height
        color:"#FFFFFF"
        NumberAnimation{
            id: goOn
            target:menu
            property: "x"
            from: -width
            to: 60
            duration: 500
        }
        NumberAnimation{
            id: goOff
            target:menu
            property: "x"
            from: 60
            to: -width
            duration: 500
        }


    }
    Rectangle{
        id:miniMenu
        width:60
        height:1020
        anchors.top:parent.top
        color:"#FFFFFF"
        Image{
            id:appIcon
            source: "icons/green-factory.png"
            width:60
            height: 60
            y:0

        }
        Rectangle{
            id:homePage
            width:60
            height:width
            anchors.top:appIcon.bottom
            anchors.topMargin: 30
            Image{
                source: "icons/home.png"
                width:parent.width*0.7
                height:width
                anchors.centerIn: parent
                MouseArea{
                    anchors.fill:parent

                }
            }

        }
        Rectangle{
            id:dashBoard
            width:60
            height:width
            anchors.top:homePage.bottom
            anchors.topMargin: 30
            Image{
                source: "icons/dashboard.png"
                width:parent.width*0.7
                height:width
                anchors.centerIn: parent
                MouseArea{
                    anchors.fill:parent
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
