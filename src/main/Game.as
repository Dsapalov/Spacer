package main
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	
	import gameStates.GameOver;
	import gameStates.Menu;
	import gameStates.Play;
	
	import interfaces.IState;

	public class Game extends Sprite
	{
		public static const GAME_STATE_MENU:uint = 0;
		public static const GAME_STATE_PLAY:uint = 1;
		public static const GAME_STATE_GAME_OVER:uint = 2;
		
		private var state:IState;
		
		public function Game()
		{
			addEventListener(Event.ADDED_TO_STAGE, initHandler);
		}
		
		public function changeGameState(newState:uint):void
		{
			if(state)
			{
				state.deactivete();
				state = null;
			}
			
			switch(newState)
			{
				case GAME_STATE_MENU:
				{
					state = new Menu(this);
					addChild(DisplayObject(state));
					break;
				}
					
				case GAME_STATE_PLAY:
				{
					state = new Play(this);
					addChild(DisplayObject(state));
					break;
				}
					
				case GAME_STATE_GAME_OVER:
				{
					state = new GameOver(this);
					addChild(DisplayObject(state));
					break;
				}
				default:
					break;
			}	
		}

		protected function initHandler(event:Event):void
		{
			state = new Menu(this);
			addChild(DisplayObject(state));
			addEventListener(Event.ENTER_FRAME, updateHandler);
		}
		
		protected function updateHandler(event:Event):void
		{
			state.update();
		}
	}
}