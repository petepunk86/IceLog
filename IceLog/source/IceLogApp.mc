using Toybox.Application;
using Toybox.WatchUi;

class IceLogApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    function onStart(state) {
    }

    function onStop(state) {
    }

    function getInitialView() {

        var view = new MainView();

        return [ view, new MainDelegate(view) ];
    }

}