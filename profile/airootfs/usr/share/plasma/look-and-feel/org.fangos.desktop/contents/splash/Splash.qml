import QtQuick
import org.kde.kirigami as Kirigami

Rectangle {
    id: root
    color: "black"

    Image {
        anchors.fill: parent
        source: "images/background.png"
        fillMode: Image.PreserveAspectCrop
        smooth: true
    }

    property int stage

    onStageChanged: {
        if (stage >= 6) {
            fade.start()
        }
    }

    NumberAnimation {
        id: fade
        target: root
        property: "opacity"
        from: 1
        to: 0
        duration: 400
    }
}
