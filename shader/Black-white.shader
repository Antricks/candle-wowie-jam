shader_type canvas_item;

uniform vec4 additional_color: hint_color;
uniform vec3 gray_ratio = vec3(0.21, 0.72, 0.07);
uniform float multiplier = 1.0;

void fragment() {
	vec4 screen_color = texture(SCREEN_TEXTURE, SCREEN_UV);
	screen_color.rgb *= gray_ratio;
	COLOR.rgb = vec3((screen_color.r + screen_color.g + screen_color.b)/3.0*multiplier);
}