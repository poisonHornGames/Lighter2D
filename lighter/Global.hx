package lighter;

import haxe.macro.Compiler.IncludePosition;
import openfl.Lib;

class Global {
    public static var app:App;
    public static var scene:Scene;
    public static var framerate:Int;
    public static function setScene(newScene:Scene) {
        Lib.current.stage.removeChild(scene);
        scene = newScene;
        Lib.current.stage.addChild(scene);
    }
    public function exit() {
        app.exit();
    }
}