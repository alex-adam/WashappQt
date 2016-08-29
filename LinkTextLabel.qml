import QtQuick 2.0

Text {
    color: _style.activeColor

    font.pixelSize: _style.fontSizeMid
    font.family: "Didot"
    font.underline: true

    horizontalAlignment: Text.AlignRight

    renderType: Text.NativeRendering

    Style {
        id: _style
    }
}
