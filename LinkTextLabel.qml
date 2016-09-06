import QtQuick 2.0
import "."

Text {
    color: Style.activeColor

    font.pixelSize: Style.fontSizeMid
    font.family: "Didot"
    font.underline: true

    horizontalAlignment: Text.AlignRight

    renderType: Text.NativeRendering
}
