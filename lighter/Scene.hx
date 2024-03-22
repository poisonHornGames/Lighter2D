package lighter;

import starling.utils.Color;
import openfl.Lib;
class Scene extends Object {
    var bkg:Int;
    public function new(bkg:Int) {
        super();
        Lib.current.stage.color = bkg;
    }
    override function update(delta:Float) {
        super.update(delta);
    }
}