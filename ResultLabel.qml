import QtQuick 2.0
import "."

Text {
    property bool active: false

    color: active ? Style.activeColor : Style.highlightColor

    font.pixelSize: Style.fontSizeMid

    horizontalAlignment: Text.AlignRight

    font.family: "Didot"
    font.strikeout: !active

    renderType: Text.NativeRendering
}
