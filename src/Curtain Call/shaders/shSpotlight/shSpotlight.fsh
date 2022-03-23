uniform vec2 v_Center;
uniform float v_Radius;
uniform float v_EdgeSize;

varying vec4 v_vColour;
varying vec2 v_vTexcoord;

void main() {
	float dist = abs(distance(v_Center, vec2(gl_FragCoord.x, gl_FragCoord.y)));
	float base_alpha = clamp((dist - v_Radius) / max(v_EdgeSize, 1.0), 0.0, 1.0);
	float alpha = 1.0 - (1.0 - base_alpha) * (1.0 - base_alpha);
	vec4 out_point = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(out_point.x, out_point.y, out_point.z, alpha * out_point.w);
}
