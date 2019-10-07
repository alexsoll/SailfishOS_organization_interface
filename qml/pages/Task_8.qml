import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    ListModel {
        id: tasks
        ListElement {task: "<b>complete task 0</b>"
                     time: "06.10.19"}
        ListElement {task: "<b>complete task 1</b>"
                     time: "11.02.18"}
        ListElement {task: "<b>complete task 2</b>"
                     time: "16.03.18"}
        ListElement {task: "<b>complete task 3</b>"
                     time: "20.11.17"}
        ListElement {task: "<b>complete task 4</b>"
                     time: "20.11.17"}
        ListElement {task: "<b>complete task 5</b>"
                     time: "25.12.16"}
    }
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: height; itemWidth: width
        model: tasks
        delegate: Rectangle {
           width: view.itemWidth
           height: view.height
           border.width: 1
           Text {
               anchors.centerIn: parent
               text: "Task " + " - " + (index + 1) + ".10.19"
           }
        }
    }
}
