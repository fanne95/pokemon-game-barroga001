
/*
 * Game
 * Created by Eqela Studio 2.0b7.4
 */

public class Game : SEScene
{
	SESprite cloud;
	int h;
	int w;
	public static int x;
	public static int y;
	int i;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();

		AudioClipManager.prepare("pkmtheme");
		AudioClipManager.play("pkmtheme");
		
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("mybg","pokemon",w,h);
		cloud = add_sprite_for_image(SEImage.for_resource ("mybg"));
		cloud.move(0,0);

		add_entity(new PlayerEntity());
	

		for(i=0;i<Math.random(5,10);i++){
			add_entity(new MonsterEntity());
		}

	//	AudioClipManager.play("Sleep Away");
		
	}



	public void on_pointer_move(SEPointerInfo pi) {
		base.on_pointer_move(pi);

		x = pi.get_x();
		y = pi.get_y();

		if(MonsterEntity.check){
			switch_scene(new GameOver());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
