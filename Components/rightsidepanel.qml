import QtQuick 2.0

Item {
    id: rightBarPanel
    anchors.top: parent.top
    anchors.right: parent.right

    Rectangle {
        id: generalInfo
        width: parent.width; height: parent.height
        anchors.centerIn: parent
        color: "transparent"
        border.color: "red"
        border.width: 1
        radius: 5
    }
}
