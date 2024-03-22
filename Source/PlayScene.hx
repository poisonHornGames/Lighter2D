package;

import lighter.graphics.Graphic;
import starling.utils.Color;
import lighter.graphics.Anim;
import openfl.ui.Keyboard;
import lighter.Scene;

class PlayScene extends Scene {
    var graphic = new Anim("assets/sprites", 1);
    var test = new Graphic("assets/logo.png");
    public function new() {
        super(Color.BLACK);
        graphic.scale.x = graphic.scale.y = 4;
        test.scale.x = test.scale.y = 2;
        addChild(graphic);
        addChild(test);
    }
    override function update(delta:Float) {
        //trace(graphic);
        trace(graphic.overlap(test));
        super.update(delta);
        if(keys[Keyboard.W]) {
            graphic.position.y += -8;
            graphic.play();

        }
        if(keys[Keyboard.A]) {
            graphic.position.x += -8;
            graphic.play();
        }
        if(keys[Keyboard.S]) {
            graphic.position.y += 8;
            graphic.play();
        }
        if(keys[Keyboard.D]) {
            graphic.position.x += 8;
            graphic.play();
        }
    }
}