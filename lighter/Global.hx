package lighter;

import haxe.macro.Compiler.IncludePosition;
import openfl.Lib;

class Global {
    public static var app:App;
    public static var scene:Scene;
    public static var framerate:Int;

    /**
     * WARNING: should be used exclusively for engine development
     * may result in bugs if used
     */
    public static var debug:Bool = false;

    
    public static function setScene(newScene:Scene) {
        Lib.current.stage.removeChild(scene);
        scene = newScene;
        Lib.current.stage.addChild(scene);
    }
    public function exit() {
        app.exit();
    }
}