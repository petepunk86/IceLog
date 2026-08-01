using Toybox.WatchUi;
using Toybox.Graphics;

class SessionView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    function onUpdate(dc) {

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();

        var w = dc.getWidth();

        dc.drawText(
            w / 2,
            20,
            Graphics.FONT_LARGE,
            "Neue Session",
            Graphics.TEXT_JUSTIFY_CENTER
        );

        dc.drawText(
            w / 2,
            80,
            Graphics.FONT_MEDIUM,
            "GPS starten",
            Graphics.TEXT_JUSTIFY_CENTER
        );

        dc.drawText(
            w / 2,
            145,
            Graphics.FONT_SMALL,
            "BACK = Menü",
            Graphics.TEXT_JUSTIFY_CENTER
        );
    }

}