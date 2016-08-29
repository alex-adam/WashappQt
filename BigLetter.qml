import QtQuick 2.0

Text {
    anchors.topMargin: _style.dp(55)

    color: _style.inactiveColor
    font.pixelSize: _style.fontSizeBig
    font.family: "Didot"

    renderType: Text.NativeRendering

    Style {
        id: _style
    }
}
