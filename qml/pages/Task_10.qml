import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All
    SilicaListView {
        id: listview
        anchors.fill: parent
        model: 10
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "List item #"+ index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu{
                MenuLabel {
                    text: "Context Menu"
                }
                MenuItem {
                    text: "Menu Item 1"
                    onClicked: console.log("Menu Item 1 is clicked")
                }
                MenuItem {
                    text: "Menu Item 2"
                    onClicked: console.log("Menu Item 2 is clicked")
                }
            }
        }
    }

}
