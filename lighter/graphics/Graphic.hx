package lighter.graphics;


import openfl.Assets;
import openfl.display.Bitmap;

class Graphic extends Object {
    @:noCompletion
    public var bitmap:Bitmap;
    
    public function new(pathToBitmap:String) {
        super();
        bitmap = new Bitmap(Assets.getBitmapData(pathToBitmap));
        addChild(bitmap);
        
    }
    override function update(delta:Float) {
        super.update(delta);
    }

}