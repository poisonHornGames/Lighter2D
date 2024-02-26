package lighter;

import openfl.Lib;

class System  {
    public static function getWindowInformation():Array<Dynamic> {
        return [Lib.current.stage.window.width, 
            Lib.current.stage.window.height, 
            Lib.current.stage.window.title];
    }
}