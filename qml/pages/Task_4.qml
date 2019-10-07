import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: task_2_1
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: task_2_1.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Task 4")
            }

            Button {
                text: "Open dialog"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                         var dialog = pageStack.push(pickerComponent, {
                             date: new Date()
                         })
                         dialog.accepted.connect(function() {
                             txtfield.text = "You chose: " + dialog.dateText
                         })
                     }
                Component {
                         id: pickerComponent
                         DatePickerDialog {}
                }
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "<b>The date will be displayed here:</b>"
            }
            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: txtfield
                width: parent.width
            }
        }
    }
}
