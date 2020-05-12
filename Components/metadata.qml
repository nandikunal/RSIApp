import QtQuick 2.0

Rectangle {
    id: metaDataRect
    width: 300
    height: 180
    border.color: "grey"
    border.width: 1
    radius: 3
    color: "transparent"


    Column {
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10

        Text {
            id: txtSongName
            text: "Twinkle Twinkle Little Star"
            color: "grey"
            font.pointSize: 14
        }

        Text {
            id: txtAlbum
            text: "Nursery Rhymes"
            color: "grey"
            font.pointSize: 14
        }

        Text {
            id: txtArtist
            text: "Ishu"
            color: "grey"
            font.pointSize: 14
        }

        Text {
            id: txtGener
            text: "Fun"
            color: "grey"
            font.pointSize: 14
        }
    }
}
