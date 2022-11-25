if (keyboard_check(vk_space)) {
    draw_surface(surface_extra, 0, 0);
} else {
    draw_surface(application_surface, 0, 0);
	
	gpu_set_blendmode(bm_max);
	shader_set(shd_sobel);
	var u_tex_size = shader_get_uniform(shd_sobel, "texSize");
	shader_set_uniform_f(u_tex_size, surface_get_width(surface_extra), surface_get_height(surface_extra));
	draw_surface(surface_extra, 0, 0);
	shader_reset();
	gpu_set_blendmode(bm_normal);
}