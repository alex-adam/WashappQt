import QtQuick 2.0

Item {
    property string activeColor: "white"
    property string inactiveColor: "#363636"
    property string highlightColor: "#808080"
    property string selectedColor: "#fff200"

    property int fontSizeSmall: 20
    property int fontSizeMid: 40
    property int fontSizeBig: 280

    property int screenHeight: 667 //1334
    property int screenWidth: 375 //750

    function dp(pixel) {
        return pixel;
    }
}
