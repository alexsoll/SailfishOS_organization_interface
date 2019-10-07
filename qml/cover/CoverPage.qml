import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    CoverBackground {
        id: cover
        anchors.fill: parent
        transparent: true
        Rectangle {
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0; color: "red" }
                GradientStop { position: 0.6; color: "black" }
                GradientStop { position: 1; color: "transparent" }
            }
        }
        Label {
            id: coverlabel
            property int count: 0
            text: count
            anchors.centerIn: parent

        }
        CoverActionList {
            CoverAction {
                iconSource: "image://theme/icon-m-dismiss"
                onTriggered: coverlabel.count = 0
            }
            CoverAction {
                iconSource: "image://theme/icon-m-add"
                onTriggered: coverlabel.count = coverlabel.count  + 1
            }
        }
    }

}

