uniform vec2 v_Center;
uniform float v_Radius;
uniform float v_EdgeSize;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

float ease(float x) {
	return x < 0.5 ? 2.0 * x * x : 1.0 - pow(-2.0 * x + 2.0, 2.0) / 2.0;
}

void main() {
	float dist = abs(distance(v_Center, vec2(gl_FragCoord.x, gl_FragCoord.y)));
	float base_alpha = ease(1.0-clamp((dist - v_Radius) / max(v_EdgeSize, 1.0), 0.0, 1.0));
	vec4 out_point = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(out_point.x, out_point.y, out_point.z, out_point.w * base_alpha);
}
