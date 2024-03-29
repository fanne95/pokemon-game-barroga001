
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite image;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		AudioClipManager.prepare("pokemon");
		AudioClipManager.play("pokemon");
		
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));

	
		rsc.prepare_image("myimage","start",get_scene_width(),get_scene_height());
		image=add_sprite_for_image(SEImage.for_resource("myimage"));		


	

	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		switch_scene(new Game());
			
	}

	public void cleanup() {
		base.cleanup();
	}
}
