package lighter;

//import lime.tools.AssetHelper;
//import sys.FileSystem;
import sys.FileSystem;
import lime.system.System;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.geom.Matrix;
import openfl.display.Sprite;
import openfl.display.BitmapData;
import openfl.geom.Rectangle;
import openfl.filesystem.File;

class Anim extends Object {
    var frame:BitmapData;
    public function new(spritefolder:String, frameWidth:Int, frameHeight:Int) {
        super();
        if(FileSystem.exists(spritefolder)) 
            FileSystem.readDirectory(spritefolder);
        else 
            trace("ERROR: Folder does not exists");
    }
    override function update(delta:Float) {
        super.update(delta);
        
    }
    public function setGraphic(data:BitmapData) {
        
    }
}