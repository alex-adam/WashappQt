import QtQuick 2.0
import "."

Rectangle {
    id: _screen3

    height: Style.deviceScreenHeight
    width: Style.deviceScreenWidth

    color: "black"
    clip: true

    property string chosenColor: "<color>"

    BigLetter {
        text: "A"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(-168)
    }

    BigLetter {
        text: "S"

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(228)
    }

    LinkTextLabel {
        id: _screen3LinkText4
        anchors.bottom: _screen3LinkText1.top
        anchors.bottomMargin: Style.dp(18)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "CLOTHES"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _screen4.chosenType = parent.text;
                calculateResult();
                _mainScreen.state = 3;
            }
        }
    }

    LinkTextLabel {
        id: _screen3LinkText1
        anchors.bottom: _screen3LinkText2.top
        anchors.bottomMargin: Style.dp(18)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "DELICATES"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _screen4.chosenType = parent.text;
                calculateResult();
                _mainScreen.state = 3;
            }
        }
    }

    LinkTextLabel {
        id: _screen3LinkText2
        anchors.bottom: _screen3LinkText3.top
        anchors.bottomMargin: Style.dp(18)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "TOWELS"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _screen4.chosenType = parent.text;
                calculateResult();
                _mainScreen.state = 3;
            }
        }
    }

    LinkTextLabel {
        id: _screen3LinkText3
        anchors.bottom: parent.bottom
        anchors.bottomMargin: Style.dp(46)
        anchors.right: parent.right
        anchors.rightMargin: Style.dp(30)

        text: "LINEN"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _screen4.chosenType = parent.text;
                calculateResult();
                _mainScreen.state = 3;
            }
        }
    }

    GuideTextLabel {
        id: _screen3GuideTextLineOne

        anchors.top: parent.top
        anchors.topMargin: Style.dp(74)
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(27)

        text: "SORT"
    }


    GuideSelectedLabel {
        id: _screen3GuideTextLineOneDetail

        anchors.top: parent.top
        anchors.topMargin: Style.dp(74)
        anchors.left: _screen3GuideTextLineOne.right
        anchors.leftMargin: Style.dp(7)

        text: _screen3.chosenColor

        MouseArea {
            anchors.fill: parent
            onClicked: {
                _mainScreen.state -= 1;
            }
        }
    }

    GuideTextLabel {
        id: _screen3GuideTextLineTwo
        anchors.top: _screen3GuideTextLineOne.bottom
        anchors.topMargin: Style.dp(10)
        anchors.left: parent.left
        anchors.leftMargin: Style.dp(27)

        text: "BY"
    }

    GuideDescriptionLabel {
        id: _screen3GuideTextLineTwoDetail
        anchors.top: _screen3GuideTextLineOne.bottom
        anchors.topMargin: Style.dp(10)
        anchors.left: _screen3GuideTextLineTwo.right
        anchors.leftMargin: Style.dp(7)

        text: "[ T Y P E ]"
    }

    function calculateResult() {
        switch (_screen4.chosenType) {
        case "CLOTHES":
            _screen4.resultWashingType = "PERM PRESS";
            _screen4.resultTemperatureCold.active = false;
            _screen4.resultTemperatureWarm.active = true;
            _screen4.resultTemperatureHot.active = false;
            return;

        case "DELICATES":
            _screen4.resultWashingType = "DELICATES";
            _screen4.resultTemperatureCold.active = true;
            _screen4.resultTemperatureWarm.active = false;
            _screen4.resultTemperatureHot.active = false;
            return;

        case "TOWELS":
            _screen4.resultWashingType = "NORMAL";
            _screen4.resultTemperatureCold.active = false;
            _screen4.resultTemperatureWarm.active = false;
            _screen4.resultTemperatureHot.active = true;
            return;

        case "LINEN":
            _screen4.resultWashingType = "NORMAL";
            _screen4.resultTemperatureCold.active = false;
            _screen4.resultTemperatureWarm.active = false;
            _screen4.resultTemperatureHot.active = true;
            return;
        }
    }
}
