package lighter.graphics;


import spritesheet.AnimatedSprite;
import spritesheet.importers.BitmapImporter;
import spritesheet.Spritesheet;
import starling.utils.MathUtil;
import starling.display.MovieClip;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.Lib;

class Graphic extends Object {
    var bitmap:Bitmap;
    public function new(pathToBitmap:String) {
        super();
        bitmap = new Bitmap(Assets.getBitmapData(pathToBitmap));
        addChild(bitmap);
        
    }
    override function update(delta:Float) {
        super.update(delta);
    }

}