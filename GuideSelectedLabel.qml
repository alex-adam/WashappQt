import QtQuick 2.0
import "."

GuideTextLabel {
    color: Style.selectedColor

    font.weight: Font.Bold

    Canvas {
        //draw a line by yourself because the standard
        //line is too thick
        id: mycanvas

        anchors.bottom: parent.bottom

        width: parent.width * 0.95
        height: 1

        onPaint: {
            var ctx = getContext("2d");
            ctx.fillStyle = Qt.rgba(1, 1, 0, 1);
            ctx.fillRect(0, 0, width, height);
        }
    }
}
