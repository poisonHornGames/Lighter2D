simple setup:

    class Main extends lighter.App
    {
    	public function new() {
    		var scene = new YourScene();
    		super(scene);
    
    	}
    }

a scene:

    class YourScene extends lighter.Scene
    {
      public function new() {
        super(starling.utils.color.BLACK);

        ...setup your objects here
      }
      override update(delta:Float) {
        
    }
      
