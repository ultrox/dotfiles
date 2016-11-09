var pushRight = slate.operation("push", {
    "direction" : "right",
    "style" : "bar-resize:430"
});
var pushLeft = slate.operation("push", {
    "direction" : "left",
    "style" : "bar-resize:850"
});
var pushTop = slate.operation("push", {
    "direction" : "top",
    "style" : "bar-resize:screenSizeY/2"
});
var fullscreen = slate.operation("move", {
    "x" : "screenOriginX",
    "y" : "screenOriginY",
    "width" : "screenSizeX",
    "height" : "screenSizeY"
});
slate.config("orderScreensLeftToRight", true);
var threeMonitorsLayout = slate.layout("threeMonitors", {
  "Google Chrome" : {
    "operations" : [function(windowObject) {
      var title = windowObject.title();
      if (title !== undefined && title.match(/^Developer\sTools\s-\s.+$/)) {
        windowObject.doOperation(pushRight);
      } else {
        windowObject.doOperation(pushLeft);
      }
    }],
    "ignore-fail" : true, // Chrome has issues sometimes so I add ignore-fail so that Slate doesn't stop the
                          // layout if Chrome is being stupid.
    "repeat" : true // Keep repeating the function above for all windows in Chrome.
  }
});

// bind the layout to activate when I press Control and the Enter key on the number pad.
slate.bind("i:alt:ctrl", slate.operation("layout", { "name" : threeMonitorsLayout }));
