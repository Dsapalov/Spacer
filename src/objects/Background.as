package objects
{
	import flash.display.Bitmap;
	import flash.display.Sprite;

	public class Background extends Sprite
	{
		[Embed(source="../Assets/space.jpg")]
		private static const bgrImage:Class;
		
		public function Background()
		{
			var bgr:Bitmap = new bgrImage();
			addChild(bgr);
		}
	}
}