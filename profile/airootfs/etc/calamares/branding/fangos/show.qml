import QtQuick

Rectangle {
    width: 800
    height: 450
    color: "#0B1712"

    Image {
        anchors.fill: parent
        source: "fangos.png"
        fillMode: Image.PreserveAspectCrop
        opacity: 0.28
    }

    Rectangle {
        anchors.fill: parent
        color: "#0B1712"
        opacity: 0.45
    }

    Text {
        anchors.centerIn: parent
        text: "Installing FangOS"
        color: "white"
        font.pixelSize: 34
        font.bold: true
    }
}
