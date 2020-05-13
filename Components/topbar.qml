import QtQuick 2.0

Item {
    id: topBarPanel
    anchors.top: parent.top

    Rectangle {
        id: playerControls
        width: screenWidth; height: parent.height
        anchors.centerIn: parent
        color: "transparent"
//        border.color: "red"
//        border.width: 1
        radius: 5
    }
}
