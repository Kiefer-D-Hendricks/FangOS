import QtQuick

Rectangle {
    id: root
    width: 800
    height: 450
    color: "#0B0E0C"

    property int slide: 0
    property int slideCount: 6

    Image {
        anchors.fill: parent
        source: "fangos.png"
        fillMode: Image.PreserveAspectCrop
        opacity: 0.14
    }

    Rectangle {
        anchors.fill: parent
        color: "#0B0E0C"
        opacity: 0.55
    }

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 4
        color: "#2E7D5B"
    }

    Timer {
        interval: 8000
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
                color: "#2E7D5B"
                font.pixelSize: 44
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "An Arch Linux-based distribution, built by hand from a stock ArchISO profile. No corporate overlords, no bloat — just a clean, fast system."
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
                text: "Meet fang"
                color: "#2E7D5B"
                font.pixelSize: 44
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "FangOS ships with fang, a friendly wrapper around pacman — with full AUR support via paru. One command for everything in the repos and beyond."
                color: "#e5e5e5"
                font.pixelSize: 19
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "fang install --aur <package>"
                color: "#2E7D5B"
                font.pixelSize: 17
                font.family: "monospace"
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
                text: "KDE Plasma Desktop"
                color: "#2E7D5B"
                font.pixelSize: 44
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "A modern, flexible desktop that stays out of your way and looks good doing it. Dark, green, and mean — themed to match."
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
                text: "Rolling Release"
                color: "#2E7D5B"
                font.pixelSize: 44
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "Built on Arch, so your system stays current with continuous updates. No reinstalls, no version jumps, no waiting a year for new software."
                color: "#e5e5e5"
                font.pixelSize: 19
            }
        }

        Column {
            anchors.centerIn: parent
            width: parent.width - 120
            spacing: 18
            opacity: op(4)
            Behavior on opacity { NumberAnimation { duration: 600 } }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Batteries Included"
                color: "#2E7D5B"
                font.pixelSize: 44
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "NetworkManager ready out of the box, Plymouth boot splash, SDDM theming, and the FangOS welcome app to get you oriented on first boot."
                color: "#e5e5e5"
                font.pixelSize: 19
            }
        }

        Column {
            anchors.centerIn: parent
            width: parent.width - 120
            spacing: 18
            opacity: op(5)
            Behavior on opacity { NumberAnimation { duration: 600 } }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "A Bucket-List Build"
                color: "#2E7D5B"
                font.pixelSize: 44
                font.bold: true
            }
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                text: "One dev, one terminal, one dream. FangOS is a from-scratch love letter to Linux. Thanks for installing — now go break things (gently)."
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
                color: root.slide === index ? "#2E7D5B" : "#ffffff"
                opacity: root.slide === index ? 1.0 : 0.35
            }
        }
    }
}
