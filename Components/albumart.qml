import QtQuick 2.0

Rectangle {
    id: albumArtRect
    width: 160
    height: 180
    border.color: "grey"
    border.width: 1
    radius: 3
    color: "transparent"
    Image {
        anchors.fill: parent
        source: "qrc:/Icons/album-art.jpg"
    }
}
