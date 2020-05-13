import QtQuick 2.0

Item {
    id: bottomBarPanel
    anchors.bottom: parent.bottom

    Rectangle {
        id: statusMessage
        width: screenWidth; height: parent.height
        anchors.centerIn: parent
        color: "transparent"
//        border.color: "red"
//        border.width: 1
        radius: 5
    }
}
