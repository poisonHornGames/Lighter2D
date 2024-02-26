package lighter;

import lime.graphics.Image;
import openfl.Assets;
import starling.assets.AssetManager;
import openfl.Lib;
import openfl.ui.Keyboard;
import openfl.system.System;
import openfl.events.KeyboardEvent;
import openfl.events.Event;
import openfl.display.Sprite;

class App extends Object {
    var framerate:Int;
    public function new(scene:Scene, framerate:Int = 60) {
        super();
        Global.app = this;
        this.framerate = framerate;
        addEventListener(Event.ADDED_TO_STAGE, _init);
        Global.scene = scene;
        Global.framerate = this.framerate;
        Lib.current.stage.addChild(Global.scene);

        
    }
    @:noCompletion
    private final function _init(e:Event) {
        
        stage.window.frameRate = framerate;
        create();    
    }


    public function create() {}
    public function exit() {
        System.exit(0);
    }
}