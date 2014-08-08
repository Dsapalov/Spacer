package gameStates
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	
	import interfaces.IState;
	
	import main.Game;
	
	public class Play extends Sprite implements IState
	{
		[Embed(source="../Assets/boobs1.gif")]
		private static const imgGunner:Class;
		
		private var game:Game;
		private var gunner:DisplayObject;
		
		public function Play(game:Game)
		{
			this.game = game;
			
			addEventListener(Event.ADDED_TO_STAGE, initHandler);
		}
		
		protected function initHandler(event:Event):void
		{
			// TODO: move gunner to separate class
			gunner = new imgGunner();
			gunner.x = (stage.stageWidth-gunner.width)/2;
			gunner.y = stage.stageHeight - gunner.height;
			addChild(gunner);
			
			stage.addEventListener(MouseEvent.CLICK, clickHandler);
		}
		
		protected function clickHandler(event:MouseEvent):void
		{
			trace("Pew!");
			
		}
		
		public function update():void
		{
			gunner.x = stage.mouseX;
			gunner.y = stage.mouseY;
		}
		
		public function deactivete():void
		{
			stage.removeEventListener(MouseEvent.CLICK, clickHandler);
			
			removeChild(gunner);
			gunner = null;
		}
	}
}