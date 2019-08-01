import QtQuick 2.0

Rectangle {
    id: rectAppListPanel
    color: "red"
    anchors.left: parent.left

    Component {
        id: appDelegate
        Column {
            id: colComponent
            Button {
                id: appButton
                width: rectAppListPanel.width; height: 80

                Image {
                    id: appListButtonIcon
                    source: icon
                    width: appButton.width
                    height: appButton.height
                    anchors.centerIn: appButton
                }
            }
        }
    }

    ListView {
        anchors.fill: parent
        anchors.topMargin: 10
        spacing: 10
        model: AppList {

        }
        delegate: appDelegate
    }
}
