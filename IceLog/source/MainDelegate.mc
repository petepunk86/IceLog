using Toybox.WatchUi;

class MainDelegate extends WatchUi.BehaviorDelegate {

    var _view;

    function initialize(view) {
        BehaviorDelegate.initialize();
        _view = view;
    }

    function onPreviousPage() {
        _view.moveUp();
        return true;
    }

    function onNextPage() {
        _view.moveDown();
        return true;
    }

    function onSelect() {
        _view.select();
        return true;
    }

    function onBack() {
        return true;
    }
}