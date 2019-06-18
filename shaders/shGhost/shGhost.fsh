//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
void main()
{
	vec4 ghost_color = v_vColour;
	ghost_color = vec4(ghost_color.r * 0.25, ghost_color.g * 0.25, ghost_color.b * 0.75, ghost_color.a * 0.3);
    gl_FragColor = ghost_color * texture2D( gm_BaseTexture, v_vTexcoord );
}
