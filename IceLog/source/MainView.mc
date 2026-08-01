using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.System;

class MainView extends WatchUi.View {

    var _selected = 0;

    function initialize() {
        View.initialize();
    }

    function moveUp() {
        if (_selected > 0) {
            _selected -= 1;
            WatchUi.requestUpdate();
        }
    }

    function moveDown() {
        if (_selected < 2) {
            _selected += 1;
            WatchUi.requestUpdate();
        }
    }

    function select() {

        if (_selected == 0) {
            WatchUi.pushView(
                new SessionView(),
                new SessionDelegate(),
                WatchUi.SLIDE_LEFT
            );
        } else if (_selected == 1) {
            System.println("Verlauf");
        } else {
            System.println("Einstellungen");
        }
    }

    function onUpdate(dc) {

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();

        var w = dc.getWidth();

        dc.drawText(
            w / 2,
            15,
            Graphics.FONT_LARGE,
            "ICELOG",
            Graphics.TEXT_JUSTIFY_CENTER
        );

        drawItem(dc, 50, "Neue Session", _selected == 0);
        drawItem(dc, 80, "Verlauf", _selected == 1);
        drawItem(dc,110, "Einstellungen", _selected == 2);
    }

    function drawItem(dc, y, text, selected) {

        if (selected) {
            text = "> " + text;
        } else {
            text = "  " + text;
        }

        dc.drawText(
            10,
            y,
            Graphics.FONT_SMALL,
            text,
            Graphics.TEXT_JUSTIFY_LEFT
        );
    }
}