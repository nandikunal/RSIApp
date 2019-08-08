import QtQuick 2.0

Item {
    property Image bgImage: imgBG
    property int bgImageWidth: bgImage.width
    property int bgImageHeight: bgImage.height

    Image {
        id: imgBG
        width: bgImageWidth
        height: bgImageHeight
        //source: "qrc:/assets/screen_bg_1.jpg"
        //source: "qrc:/assets/screen_bg_2.jpg"
        source: "qrc:/assets/screen_bg_3.jpg"
    }
}
