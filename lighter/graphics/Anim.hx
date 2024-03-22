package lighter.graphics;
//import lime.tools.AssetHelper;
//import sys.FileSystem;
import openfl.ui.Keyboard;
import openfl.errors.Error;
import sys.FileSystem;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

class Anim extends Object {
    var sprite:Bitmap;
    var frame:Float = 0;

    var playing:Bool;
    var folder:String;
    var frames:Array<String>;

    var framerate:Int = 12;
    public function new(spritefolder:String, framerate:Int = 12) {
        super();
        this.framerate = framerate;
        if(FileSystem.exists(spritefolder)) 
            frames = FileSystem.readDirectory(spritefolder);
        else 
            throw new Error("Folder not found");
        folder = spritefolder + "/";
        sprite = new Bitmap();
        addChild(sprite);
    }

    public function play() {
        playing = true;
    }
    public function gotoAndPlay(index:Int) {
        playing = true;
        frame = index;
    }
    public function stop() {
        playing = false;
    }
    override function update(delta:Float) {
        super.update(delta);
        trace(frame);
        if(Global.debug) {
            if(keys[Keyboard.P]) {
                frame += framerate * delta;
            }
        }       
        if(playing) {
            frame += framerate * delta;
        }
        if(frame >= frames.length) {
            if(playing) {
                frame = 0;
                stop();
            }
            else
                frame = 0;
        }
        setGraphic(Assets.getBitmapData(folder + frames[Math.floor(frame)]));
    }
    public function setGraphic(data:BitmapData) {
        sprite.bitmapData = data;
    }
}