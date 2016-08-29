import QtQuick 2.0

Text {

    font.pixelSize: _style.fontSizeSmall

    font.italic: true
    font.weight: Font.Normal
    font.family: "Helvetica Neue"

    font.letterSpacing: 5

    color: _style.highlightColor

    Style {
        id: _style
    }
}
