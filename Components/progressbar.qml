import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: progressRect
    property alias songDuration: barElapsedTime.maximumValue
    property alias songElapsed: txtElapsedTime.text
    property alias songPosition: barElapsedTime.value
    Row {
        anchors.fill: parent
        spacing: 5

        Text {
            id: txtElapsedTime
            text: "0:00"
            color: "red"
        }

        ProgressBar {
            id: barElapsedTime
            minimumValue: 0.00
            maximumValue: 0.00
            value: 0
            height: 15
            width: 400
        }

        Text {
            text: "0:00"//songDuration.toString().substring(0,4)
            color: "red"
        }
    }
}
