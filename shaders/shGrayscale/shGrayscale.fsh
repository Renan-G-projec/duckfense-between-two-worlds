//
// https://kidscancode.org/godot_recipes/3.x/shaders/greyscale/ - Help from that beautiful blog!
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	
	vec4 color = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord);
	float avarage = (color.r + color.g + color.b) / 3.0;
	color.rgb = vec3(avarage, avarage, avarage);
    gl_FragColor = color;
}
