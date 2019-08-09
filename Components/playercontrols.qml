import QtQuick 2.0

Item {
    property bool isPlaying: false

    Row {
        spacing: 2
        Button {
            id: btnShuffle
            width: 64; height: 64
            Image {
                anchors.fill: parent
                source: "qrc:/assets/player-controls/shuffle.png"
            }
        }
        Button {
            id: btnRewind
            width: 64; height: 64
            Image {
                anchors.fill: parent
                source: "qrc:/assets/player-controls/rewind.png"
            }
        }
        Button {
            id: btnPrevious
            width: 64; height: 64
            Image {
                anchors.fill: parent
                source: "qrc:/assets/player-controls/previous.png"
            }
        }
        Button {
            id: btnPlayPause
            width: 64; height: 64
            Image {
                anchors.fill: parent
                source: isPlaying ? "qrc:/assets/player-controls/pause.png" : "qrc:/assets/player-controls/play.png"
            }
        }
        Button {
            id: btnNext
            width: 64; height: 64
            Image {
                anchors.fill: parent
                source: "qrc:/assets/player-controls/next.png"
            }
        }
        Button {
            id: btnFastForward
            width: 64; height: 64
            Image {
                anchors.fill: parent
                source: "qrc:/assets/player-controls/fastforward.png"
            }
        }
        Button {
            id: btnRepeat
            width: 64; height: 64
            Image {
                anchors.fill: parent
                source: "qrc:/assets/player-controls/repeat.png"
            }
        }
    }
}
