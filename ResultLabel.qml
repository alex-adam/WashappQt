import QtQuick 2.0

Text {
    property bool active: false

    color: active ? _style.activeColor : _style.highlightColor

    font.pixelSize: _style.fontSizeMid

    horizontalAlignment: Text.AlignRight

    font.family: "Didot"
    font.strikeout: !active

    renderType: Text.NativeRendering

    Style {
        id: _style
    }

}
