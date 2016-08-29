import QtQuick 2.0

Text {
    font.pixelSize: _style.fontSizeMid
    color: _style.activeColor

    horizontalAlignment: Text.AlignRight

    font.family: "Didot"
    font.underline: true

    renderType: Text.NativeRendering

    Style {
        id: _style
    }

}
