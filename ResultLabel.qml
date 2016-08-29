import QtQuick 2.0

Text {
    property bool active: false

    font.pixelSize: _style.fontSizeMid
    color: active ? _style.activeColor : _style.highlightColor

    horizontalAlignment: Text.AlignRight

    font.family: "Didot"
    font.strikeout: !active

    renderType: Text.NativeRendering

    Style {
        id: _style
    }

}
