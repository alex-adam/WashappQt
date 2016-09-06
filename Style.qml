pragma Singleton
import QtQuick 2.0

QtObject {
    property string activeColor: "white"
    property string inactiveColor: "#363636"
    property string highlightColor: "#808080"
    property string selectedColor: "#fff200"

    property int fontSizeSmall: dp(20)
    property int fontSizeMid: dp(40)
    property int fontSizeBig: dp(280)

    property int screenHeight: 667
    property int screenWidth: 375

    property int deviceScreenHeight
    property int deviceScreenWidth

    function dp(pixel) {
        if (deviceScreenHeight > 0) {
            var factor = deviceScreenHeight / screenHeight;
            pixel = pixel * factor;
        }
        return pixel;
    }
}
