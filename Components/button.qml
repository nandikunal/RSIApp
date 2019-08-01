import QtQuick 2.0

Rectangle {
    id: rectButton
    objectName: "rootButton"
    border.width: 2
    border.color: "light grey"
    width: 40
    height: 32
    radius: 3
    color: "light blue"

    MouseArea {
        anchors.fill: rectButton
        onClicked: {
            console.debug("Clicked")
        }
        onCanceled: {
            console.debug("Canceled")
        }
        onFocusChanged: {
            console.debug("Focus Changed")
        }
        onReleased: {
            console.debug("Released")
            rectButton.color = "light blue"
        }
        onPressed: {
            console.debug("Pressed")
            rectButton.color = "steelblue"
        }
    }
}
