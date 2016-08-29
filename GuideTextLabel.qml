import QtQuick 2.0

Text {
    color: _style.highlightColor

    font.pixelSize: _style.fontSizeSmall

    font.italic: true
    font.weight: Font.Normal
    font.family: "Helvetica Neue"

    font.letterSpacing: 5

    Style {
        id: _style
    }
}
