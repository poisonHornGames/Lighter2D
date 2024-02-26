import openfl.ui.Keyboard;
import lighter.graphics.Graphic;
import openfl.Lib;
import lighter.Global;
import lighter.Scene;

class PlayScene extends Scene {
    var graphic = new Graphic("assets/lighter.png");
    public function new() {
        super();
        addChild(graphic);
    }
    override function update(delta:Float) {
        super.update(delta);
        if(keys[Keyboard.W]) {
            graphic.position.y += -8;

        }
        if(keys[Keyboard.A]) {
            graphic.position.x += -8;

        }
        if(keys[Keyboard.S]) {
            graphic.position.y += 8;

        }
        if(keys[Keyboard.D]) {
            graphic.position.x += 8;
        }
    }
}