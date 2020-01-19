shader_type canvas_item;

uniform float blur : hint_range(0, 2) = 0.2;
uniform int OCTAVES = 3;

float rand(vec2 coord){
	return fract(sin(dot(coord, vec2(56, 78)) * 1000.0) * 1000.0);
}

float noise(vec2 coord){
	vec2 i = floor(coord);
	vec2 f = fract(coord);

	// 4 corners of a rectangle surrounding our point
	float a = rand(i);
	float b = rand(i + vec2(1.0, 0.0));
	float c = rand(i + vec2(0.0, 1.0));
	float d = rand(i + vec2(1.0, 1.0));

	vec2 cubic = f * f * (3.0 - 2.0 * f);

	return mix(a, b, cubic.x) + (c - a) * cubic.y * (1.0 - cubic.x) + (d - b) * cubic.x * cubic.y;
}

float fbm(vec2 coord){
	float value = 0.0;
	float scale = 0.5;

	for(int i = 0; i < OCTAVES; i++){
		value += noise(coord) * scale;
		coord *= 2.0;
		scale *= 0.5;
	}
	return value;
}

void fragment() {
	vec2 coord = UV * 4.0;
	
	float noise = fbm(coord + vec2(TIME*0.1));
	
	vec3 blurred = texture(SCREEN_TEXTURE, SCREEN_UV, blur).rgb;
	
	COLOR = vec4(blurred,noise);
	COLOR.rgb += vec3(noise*0.6);
}