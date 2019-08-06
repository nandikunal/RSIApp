import QtQuick 2.0

Rectangle {
    id: rectButton

    function onButtonClickRelease() {
        rectButton.color = "light blue"
        rectButton.border.color = "grey"
    }

    objectName: "rootButton"
    border.width: 5
    radius: 5
    border.color: "grey"
    color: "light blue"

    MouseArea {
        anchors.fill: rectButton
        onClicked: {
            console.debug("Clicked")
        }
        onCanceled: {
            console.debug("Canceled")
            onButtonClickRelease()
        }
        onFocusChanged: {
            console.debug("Focus Changed")
        }
        onReleased: {
            console.debug("Released")
            onButtonClickRelease()
        }
        onPressed: {
            console.debug("Pressed")
            rectButton.color = "light blue"
            rectButton.border.color = "red"
        }
    }
}
