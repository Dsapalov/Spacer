package gameStates
{
	import interfaces.IState;
	
	import main.Game;
	
	public class Play implements IState
	{
		private var game:Game;
		public function Play(game:Game)
		{
			this.game = game;
		}
		
		public function update():void
		{
			//TODO: implement function
		}
		
		public function deactivete():void
		{
			//TODO: implement function
		}
	}
}