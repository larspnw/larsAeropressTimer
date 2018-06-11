//
// Copyright 2016 by Garmin Ltd. or its subsidiaries.
// Subject to Garmin SDK License Agreement and Wearables
// Application Developer Agreement.
//

using Toybox.WatchUi as Ui;

class InputDelegate extends Ui.BehaviorDelegate {

	var mParentView;
	
    function initialize(view) {
    //function initialize() {
    	System.println("delgate: initialize");
        Ui.BehaviorDelegate.initialize();
        mParentView = view;
    }

    function onMenu() {
        timer1.stop();
        return true;
    }
    
     function onSelect() {
     	mParentView.startTimer();
        return true;
    }
}