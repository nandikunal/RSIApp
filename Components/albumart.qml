import QtQuick 2.0

Rectangle {
    id: albumArtRect
    width: 160
    height: 180
    border.color: "grey"
    border.width: 5
    radius: 5

    Image {
        anchors.fill: parent
        anchors.margins: 5
        source: "qrc:/assets/album-art.jpg"
    }
}
