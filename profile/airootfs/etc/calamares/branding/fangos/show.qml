import QtQuick

Rectangle {
    id: root
    width: 800
    height: 450
    color: "#0B1712"

    property int slide: 0
    property int slideCount: 4

    Image {
        anchors.fill: parent
        source: "fangos.png"
        fillMode: Image.PreserveAspectCrop
        opacity: 0.16
    }

    Rectangle {
        anchors.fill: parent
        color: "#0B1712"
        opacity: 0.6
    }

    Timer {
        interval: 9000
        running: true
        repeat: true
        onTriggered: root.slide = (root.slide + 1) % root.slideCount
    }

    function op(i) { return root.slide === i ? 1.0 : 0.0; }

    Item {
        anchors.fill: parent

        Column {
            anchors.centerIn: parent
            width: parent.width - 120
            spacing: 18
            opacity: op(0)
            Behavior on opacity { NumberAnimation { duration: 600 } }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Welcome to FangOS"
                color: "#4ade80"
                font.pixelSize: 40
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "An Arch Linux-based distribution, built by hand from a stock ArchISO profile."
                color: "#e5e5e5"
                font.pixelSize: 19
            }
        }

        Column {
            anchors.centerIn: parent
            width: parent.width - 120
            spacing: 18
            opacity: op(1)
            Behavior on opacity { NumberAnimation { duration: 600 } }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "KDE Plasma Desktop"
                color: "#4ade80"
                font.pixelSize: 40
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "A modern, flexible desktop that stays out of your way and looks good doing it."
                color: "#e5e5e5"
                font.pixelSize: 19
            }
        }

        Column {
            anchors.centerIn: parent
            width: parent.width - 120
            spacing: 18
            opacity: op(2)
            Behavior on opacity { NumberAnimation { duration: 600 } }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Rolling Release"
                color: "#4ade80"
                font.pixelSize: 40
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "Built on Arch, so your system stays current. No reinstalls, no version jumps."
                color: "#e5e5e5"
                font.pixelSize: 19
            }
        }

        Column {
            anchors.centerIn: parent
            width: parent.width - 120
            spacing: 18
            opacity: op(3)
            Behavior on opacity { NumberAnimation { duration: 600 } }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "A Bucket-List Build"
                color: "#4ade80"
                font.pixelSize: 40
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "One dev, one terminal, one dream. Thanks for installing FangOS."
                color: "#e5e5e5"
                font.pixelSize: 19
            }
        }
    }

    Row {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        Repeater {
            model: root.slideCount
            Rectangle {
                width: 10
                height: 10
                radius: 5
                color: root.slide === index ? "#4ade80" : "#ffffff"
                opacity: root.slide === index ? 1.0 : 0.35
            }
        }
    }
}
