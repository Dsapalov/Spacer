package gameStates
{
	import interfaces.IState;
	
	import main.Game;
	
	public class Menu implements IState
	{
		private var game:Game;
		public function Menu(game:Game)
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