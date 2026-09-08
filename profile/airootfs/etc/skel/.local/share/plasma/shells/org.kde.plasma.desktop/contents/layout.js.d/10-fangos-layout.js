var desktopsArray = desktops();
for (var i = 0; i < desktopsArray.length; i++) {
    var d = desktopsArray[i];
    d.wallpaperPlugin = "org.kde.image";
    d.currentConfigGroup = ["Wallpaper", "org.kde.image", "General"];
    d.writeConfig("Image", "file:///usr/share/backgrounds/fangos/fangos-default.png");
}

var oldPanels = panels();
for (var i = 0; i < oldPanels.length; i++) {
    oldPanels[i].remove();
}

var panel = new Panel;
panel.location = "top";
panel.height = 36;
panel.alignment = "center";
panel.lengthMode = "fit";

panel.addWidget("org.kde.plasma.kickerdash");
panel.addWidget("org.kde.plasma.icontasks");
panel.addWidget("org.kde.plasma.systemtray");
var clock = panel.addWidget("org.kde.plasma.digitalclock");
clock.currentConfigGroup = ["Appearance"];
clock.writeConfig("showDate", true);
clock.writeConfig("dateFormat", "shortDate");
