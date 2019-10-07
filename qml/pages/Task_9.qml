import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent
        PullDownMenu {
            MenuItem {
                text: qsTr("Choice 1")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Choice 2")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Choice 3")
                onClicked: txtfield.text = text
            }
        }
        PushUpMenu {
            MenuItem {
                text: qsTr("Choice 4")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Choice 5")
                onClicked: txtfield.text = text
            }
            MenuItem {
                text: qsTr("Choice 6")
                onClicked: txtfield.text = text
            }
        }
        header: PageHeader{title: "List" }
    }
    TextField {
        anchors.centerIn: parent
        id: txtfield
        text: "..."
        width: parent.width
    }
}
