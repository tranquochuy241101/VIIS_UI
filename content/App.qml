/****************************************************************************
**
** Copyright (C) 2021 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Qt Quick Studio Components.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import InverterControl 1.0

Window {
    width: Constants
    height: Constants
    visible: true
    title: "InverterControl"
   //visibility: Window.FullScreen
    Rectangle{
        id: mainPage
        width:1860
        height:1020
        anchors.top:taskBar.bottom
        x:60
        color: "#D9D9D9"
    }
    TaskBar {
        id: taskBar
        x: 60
        y: 0
        width: 1860
        height: 60
    }
    Menu{
        x:0
    }




//    Drawer{
//        id: drawer
//        width: parent.width * 0.2
//        height: parent.height - taskBar.height
//        y:taskBar.height
//        Column {
//            anchors.fill: parent

//            ItemDelegate {
//                text: qsTr("Page 1")
//                width: parent.width
//                onClicked: {
//                    drawer.close()
//                }
//            }
//            ItemDelegate {
//                text: qsTr("Page 2")
//                width: parent.width
//                onClicked: {
//                    drawer.close()
//                }
//            }
//        }
//    }

    MenuButton {
        id: menuButton
        x: 0
        anchors.right: mainPage.left
        anchors.rightMargin: 0
        y: 1020
    }

    Menu {
        id: menu
        x: -792
        y: 426
    }

    Menu {
        id: menu1
        x: -780
        y: 300
    }

    Menu {
        id: menu2
        x: -754
        y: 80
    }

    Menu {
        id: menu3
        x: -790
        y: 542
    }

    Menu {
        id: menu4
        x: -786
        y: 196
    }

    MenuA {
        id: menuA
        x: 0
        y: 0
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/
