using Toybox.WatchUi;
using Toybox.Graphics;
using Toybox.Timer;

class CountdownView extends WatchUi.View {

    var _timer;
    var _count = 3;

    function initialize() {
        View.initialize();

        _timer = new Timer.Timer();
    }

    function onShow() {
        _timer.start(method(:tick), 1000, true);
    }

    function onHide() {
        _timer.stop();
    }

    function tick() {

        _count -= 1;

        WatchUi.requestUpdate();

    }

    function onUpdate(dc) {

        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_BLACK);
        dc.clear();

        var w = dc.getWidth();
        var h = dc.getHeight();

        dc.drawText(
            w / 2,
            35,
            Graphics.FONT_MEDIUM,
            "Bereit?",
            Graphics.TEXT_JUSTIFY_CENTER
        );

        var txt;

        if (_count > 0) {
            txt = _count.toString();
        } else {
            txt = "LOS!";
        }

        dc.drawText(
            w / 2,
            h / 2,
            Graphics.FONT_LARGE,
            txt,
            Graphics.TEXT_JUSTIFY_CENTER
        );
    }
}