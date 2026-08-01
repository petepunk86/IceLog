using Toybox.WatchUi;
using Toybox.System;

class SessionDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() {
        WatchUi.pushView(
            new CountdownView(),
            new BehaviorDelegate(),
            WatchUi.SLIDE_LEFT
        );
        return true;
    }

    function onBack() {
        WatchUi.popView(WatchUi.SLIDE_RIGHT);
        return true;
    }

}