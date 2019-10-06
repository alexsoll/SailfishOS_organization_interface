import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: task_2_2
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: task_2_2.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Task 2")
            }
            Button {
                anchors.horizontalCenter: parent.horizontalCenter;
                text: "Back"
                onClicked: pageStack.navigateBack()
            }
        }
    }
}
