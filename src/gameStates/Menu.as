package gameStates
{
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	
	import interfaces.IState;
	
	import main.Game;
	
	import objects.Background;
	
	public class Menu extends Sprite implements IState
	{
		private var game:Game;
		private var bgr:Background;
		private var loader:Loader;
		public function Menu(game:Game)
		{
			this.game = game;
			
			initialization();
		}
	 	
		private function initialization():void
		{
			bgr = new Background();
			addChild(bgr);
			
			var req:URLRequest = new URLRequest("Assets/res.swf");
			loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, resLoadedHandler);
			loader.load(req);
		}
		
		protected function resLoadedHandler(event:Event):void
		{
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, resLoadedHandler);
			
			var btnPlay:DisplayObject = loader.getChildByName("btn_play");
			loader.addEventListener(MouseEvent.CLICK, playBtnHandler);
			loader.x = (stage.stageWidth-loader.width)/2;
			loader.y = (stage.stageHeight-loader.height)/2;
			addChild(loader);
			
		}
		
		protected function playBtnHandler(event:MouseEvent):void
		{
			game.changeGameState(Game.GAME_STATE_PLAY);			
		}
		
		public function update():void
		{
			
		}
		
		public function deactivete():void
		{
			removeChild(loader);
			loader = null;
		}
	}
}