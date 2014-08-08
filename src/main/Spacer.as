package main
{
	import flash.display.Sprite;
	
	public class Spacer extends Sprite
	{
		private var game:Game;
		
		public function Spacer()
		{
			game = new Game();
			addChild(game);
		}
	}
}