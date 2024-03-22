simple setup:
```haxe
class Main extends lighter.App
{
    public function new() {
        var scene = new YourScene();
        super(scene);
    
    }
}
```
a scene:
```haxe
class YourScene extends lighter.Scene
{
    public function new() {
        super(starling.utils.color.BLACK);

        //setup your objects here
    }
    override update(delta:Float) {
        super.update(delta);

        if(keys[openfl.ui.Keyboard.SPACE)
            trace("Space key was pressed! ");
        
    }
}
```

a graphic...
```haxe
class MyGraphic extends lighter.graphics.Graphic {
    public function new() {
        super("assets/your-image.png");
    }
```

or an animation!
```haxe
class Animation extends lighter.graphics.Anim {
    public function new() {
        // point to the folder that contains all your sprites
        super("assets/your-sprite-folder");
    }
```

if you want you can ditch scenes and add every sprite straight to the app!
```haxe
class Application extends lighter.App
{
    public function new() {
        super(null);
        addChild(new Graphic("assets/your-sprite.png");
    }
}
```
