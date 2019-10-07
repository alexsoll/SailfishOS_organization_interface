import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Task 1")
            }
            MenuItem {
                text: qsTr("Task 2")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_2_1.qml"))
            }
            MenuItem {
                text: qsTr("Task 3")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_3.qml"))
            }
            MenuItem {
                text: qsTr("Task 4")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_4.qml"))
            }
            MenuItem {
                text: qsTr("Task 5")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_5.qml"))
            }
            MenuItem {
                text: qsTr("Task 6")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_6.qml"))
            }
            MenuItem {
                text: qsTr("Task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_7.qml"))
            }
            MenuItem {
                text: qsTr("Task 8")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_8.qml"))
            }
            MenuItem {
                text: qsTr("Task 9")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_9.qml"))
            }
            MenuItem {
                text: qsTr("Task 10")
                onClicked: pageStack.push(Qt.resolvedUrl("Task_10.qml"))
            }
        }

        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Main page")
            }
            Button {
                text: "Forward"
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"), PageStackAction.Animated)
            }
            Label {
                text: "Stack depth : " + pageStack.depth
            }


        }
    }
}
