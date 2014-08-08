package gameStates
{
	import flash.display.Sprite;
	
	import interfaces.IState;
	
	import main.Game;
	
	public class GameOver extends Sprite implements IState
	{
		private var game:Game;
		public function GameOver(game:Game)
		{
			this.game = game;
		}
		
		public function update():void
		{
		}
		
		public function deactivete():void
		{
		}
	}
}