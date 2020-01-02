shader_type canvas_item;

void fragment() {
	COLOR.r = texture(SCREEN_TEXTURE, SCREEN_UV+vec2(0.0006,0.005)).r;
	COLOR.g = texture(SCREEN_TEXTURE, SCREEN_UV).g;
	COLOR.b = texture(SCREEN_TEXTURE, SCREEN_UV-vec2(0.0006,0.005)).b;
}