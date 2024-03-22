package lighter;

import haxe.Timer;
import openfl.Vector;
import openfl.Lib;
import openfl.events.KeyboardEvent;
import openfl.events.Event;
import lighter.Math.Vector2;
import openfl.display.Sprite;

class Object extends Sprite {
    public var scale:Vector2 = {x: 1, y: 1};
    public var keys:Array<Bool> = new Array();
    public var position:Vector2  = {x: 0, y: 0};
    public var delta:Float;

    
    var time:Int;
    var previousTime:Int;
    public function new() {
        super();
        Lib.current.stage.addEventListener(KeyboardEvent.KEY_DOWN, _keyDown);
        Lib.current.stage.addEventListener(KeyboardEvent.KEY_UP, _keyUp);
        addEventListener(Event.ENTER_FRAME, _update);

    }

    @:noCompletion
    private final function _keyDown(k:KeyboardEvent) {
        keys[k.keyCode] = true;
    }
    @:noCompletion
    private final function _keyUp(k:KeyboardEvent) {
        keys[k.keyCode] = false;
    }
    @:noCompletion
    private final function _update(e:Event) {
        time = Lib.getTimer ();
        delta = (time - previousTime) / 1000;
        previousTime = time;
        scaleX = scale.x;
        scaleY = scale.y;
        
        x = position.x;
        y = position.y;
        update(delta);
        
    }
    public function add(child:Object) {
        addChild(child);
    }
    public function update(delta:Float) {
        
    }

    public function overlap(obj:Object):Bool {
        return hitTestObject(obj);
    }
}