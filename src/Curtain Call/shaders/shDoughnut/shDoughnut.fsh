uniform vec2 v_Center;
uniform float v_Radius;
uniform float v_End;

const float c_MaxAlpha = 0.04;
const float c_DoughnutWidth = 75.0;
const float c_PxPerDoughnut = 150.0;

void main() {
	// Thanks Verve
	float dist = abs(distance(v_Center, vec2(gl_FragCoord.x, gl_FragCoord.y)));
	if(dist > v_Radius || dist < v_End) {
		gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
	} else {
		float innermost = mod(v_Radius, c_PxPerDoughnut) - (c_PxPerDoughnut + (c_DoughnutWidth / 2.0));
	    float dist_rel = abs((c_PxPerDoughnut * floor(((dist - innermost) / c_PxPerDoughnut) + 0.5) + innermost) - dist);
		float base_alpha = clamp(((c_DoughnutWidth / 2.0) - dist_rel) / (c_DoughnutWidth / 2.0), 0.0, 1.0);
		float alpha = c_MaxAlpha * sqrt(base_alpha);
		gl_FragColor = vec4(0.0, 0.0, 0.0, alpha);
	}
}
