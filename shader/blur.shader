shader_type canvas_item;

uniform float blur_factor : hint_range(0, 5) = 2;

void fragment() {
	vec4 blur = texture(SCREEN_TEXTURE, SCREEN_UV, blur_factor);
	COLOR = blur; 
}