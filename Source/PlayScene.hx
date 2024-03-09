package;

import openfl.Assets;
import lighter.animation.Anim;
import openfl.ui.Keyboard;
import lighter.Graphic;
import openfl.Lib;
import lighter.Global;
import lighter.Scene;

class PlayScene extends Scene {
    var graphic = new Anim("Assets", 16, 16);
    public function new() {
        super();
        addChild(graphic);
    }
    override function update(delta:Float) {
        trace(graphic);
        super.update(delta);
        if(keys[Keyboard.W]) {
            graphic.y += -8;

        }
        if(keys[Keyboard.A]) {
            graphic.x += -8;

        }
        if(keys[Keyboard.S]) {
            graphic.y += 8;

        }
        if(keys[Keyboard.D]) {
            graphic.x += 8;
        }
    }
}