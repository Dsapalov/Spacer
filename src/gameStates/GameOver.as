package gameStates
{
	import interfaces.IState;
	
	import main.Game;
	
	public class GameOver implements IState
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