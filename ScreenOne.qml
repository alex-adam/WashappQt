import QtQuick 2.0

Rectangle {
    id: _screen1

    height: _style.screenHeight
    width: _style.screenWidth

    color: "black"

    BigLetter {
        text: "W"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: _style.dp(198)
    }

    LinkTextLabel {
        id: _screen1LinkText
        anchors.bottom: _screen1LinkText2.top
        anchors.bottomMargin: _style.dp(15)
        anchors.right: parent.right
        anchors.rightMargin: _style.dp(30)

        text: "GET"
    }

    LinkTextLabel {
        id: _screen1LinkText2
        anchors.bottom: parent.bottom
        anchors.bottomMargin: _style.dp(40)
        anchors.right: parent.right
        anchors.rightMargin: _style.dp(30)

        text: "STARTED"
    }

    GuideTextLabel {
        id: _screen1GuideTextLineOne

        anchors.top: parent.top
        anchors.topMargin: _style.dp(74)
        anchors.left: parent.left
        anchors.leftMargin: _style.dp(27)

        text: "SHOW ME YOUR"
    }

    GuideTextLabel {
        id: _screen1GuideTextLineTwo
        anchors.top: _screen1GuideTextLineOne.bottom
        anchors.topMargin: _style.dp(10)
        anchors.left: parent.left
        anchors.leftMargin: _style.dp(27)

        text: "DIRTY"
    }

    GuideDescriptionLabel {
        id: _screen1GuideTextLineTwoDetail
        anchors.top: _screen1GuideTextLineOne.bottom
        anchors.topMargin: _style.dp(10)
        anchors.left: _screen1GuideTextLineTwo.right
        anchors.leftMargin: _style.dp(8)

        text: "[ L A U N D R Y ]"
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            _mainScreen.state = "1"
        }
    }

    Style {
        id: _style
    }
}
