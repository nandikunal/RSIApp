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

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        listView.currentIndex = index
                        console.debug(listView.currentIndex)
                    }
                }
            }
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        anchors.topMargin: 10
        spacing: 10
        model: AppList {

        }
        delegate: appDelegate
    }
}
