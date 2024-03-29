
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{	

	SESprite image1;
	SESprite image2;
	SESprite image3;
	SESprite image4;
	SESprite text;
	SESprite text2;
	SESprite text3;
	SESprite text4;
	double opacity;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("#468499"), get_scene_width(), get_scene_height());
		rsc.prepare_image("chocban","cb",0.5*get_scene_width(),0.5*get_scene_height());
		image1 = add_sprite_for_image(SEImage.for_resource("chocban"));
		image1.move(0,0);
		rsc.prepare_image("icepop","ip",0.5*get_scene_width(),0.5*get_scene_height());
		image2 = add_sprite_for_image(SEImage.for_resource("icepop"));
		image2.move(0.5*get_scene_width(),0);
		rsc.prepare_image("mashrum","m",0.5*get_scene_width(),0.5*get_scene_height());
		image3 = add_sprite_for_image(SEImage.for_resource("mashrum"));
		image3.move(0,0.5*get_scene_height());
		rsc.prepare_image("pickles","p",0.5*get_scene_width(),0.5*get_scene_height());
		image4 = add_sprite_for_image(SEImage.for_resource("pickles"));
		image4.move(0.5*get_scene_width(),0.5*get_scene_height());
		rsc.prepare_font("myfont","ariel bold color=black",40);
		
	}

	public void on_key_press(String name, String str) {
		base.on_key_press(name,str);
		text=add_sprite_for_text("ChocoBan wants to \n dance like yeah~~","myfont");
		text.move(0.25*get_scene_width(),0.25*get_scene_height());
		text2=add_sprite_for_text("Im small bent \n and green~~","myfont");
		text2.move(0.75*get_scene_width(),0.75*get_scene_height());
		text3=add_sprite_for_text("Icepop poppin~","myfont");
		text3.move(0.75*get_scene_width(),0.25*get_scene_height());
		text4=add_sprite_for_text("Imma MUSHROOM~","myfont");
		text4.move(0.25*get_scene_width(),0.75*get_scene_height());
		image1.set_alpha(0.5);
		image2.set_alpha(0.5);
		image3.set_alpha(0.5);
		image4.set_alpha(0.5);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		image1.set_alpha(1);
		image2.set_alpha(1);
		image3.set_alpha(1);
		image4.set_alpha(1);
		

		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())){
			base.on_pointer_press(pi);
			text=add_sprite_for_text("ChocoBan wants to \n dance like yeah~~","myfont");
			text.move(0.25*get_scene_width(),0.25*get_scene_height());
			image1.set_alpha(0.5);
		}
	
			if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),get_scene_width(),get_scene_height())){
			base.on_pointer_press(pi);
			text2=add_sprite_for_text("Im small bent \n and green~~","myfont");
			text2.move(0.75*get_scene_width(),0.75*get_scene_height());
			image4.set_alpha(0.5);
		}
			if(pi.is_inside(0.5*get_scene_width(),0,get_scene_width(),0.5*get_scene_height())){
			base.on_pointer_press(pi);
			text3=add_sprite_for_text("Icepop poppin~","myfont");
			text3.move(0.75*get_scene_width(),0.25*get_scene_height());
			image2.set_alpha(0.5);
		}
			if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),get_scene_height())){
			base.on_pointer_press(pi);
			text4=add_sprite_for_text("Imma MUSHROOM~","myfont");
			text4.move(0.25*get_scene_width(),0.75*get_scene_height());
			image3.set_alpha(0.5);
		}
	}

	public void set_text(double alpha) {
		opacity = alpha;
	}
}
