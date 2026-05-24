  // Permutation polynomial: (34x^2 + x) mod 289
  vec3 permute_snoise(vec3 x) {
    return mod((34.0 * x + 1.0) * x, 289.0);
  }






// Simplex 2D noise
//

float snoise(vec2 v){
  const vec4 C = vec4(0.211324865405187, 0.366025403784439,
           -0.577350269189626, 0.024390243902439);
  vec2 i  = floor(v + dot(v, C.yy) );
  vec2 x0 = v -   i + dot(i, C.xx);
  vec2 i1;
  i1 = (x0.x > x0.y) ? vec2(1.0, 0.0) : vec2(0.0, 1.0);
  vec4 x12 = x0.xyxy + C.xxzz;
  x12.xy -= i1;
  i = mod(i, 289.0);
  vec3 p = permute_snoise( permute_snoise( i.y + vec3(0.0, i1.y, 1.0 ))
  + i.x + vec3(0.0, i1.x, 1.0 ));
  vec3 m = max(0.5 - vec3(dot(x0,x0), dot(x12.xy,x12.xy),
    dot(x12.zw,x12.zw)), 0.0);
  m = m*m ;
  m = m*m ;
  vec3 x = 2.0 * fract(p * C.www) - 1.0;
  vec3 h = abs(x) - 0.5;
  vec3 ox = floor(x + 0.5);
  vec3 a0 = x - ox;
  m *= 1.79284291400159 - 0.85373472095314 * ( a0*a0 + h*h );
  vec3 g;
  g.x  = a0.x  * x0.x  + h.x  * x0.y;
  g.yz = a0.yz * x12.xz + h.yz * x12.yw;
  return 130.0 * dot(m, g);
}

vec3 dist(vec3 x, vec3 y,  bool manhattanDistance) {
  return manhattanDistance ?  abs(x) + abs(y) :  (x * x + y * y);
}

vec2 worley(vec2 P, float jitter, bool manhattanDistance) {
  float K= 0.142857142857; // 1/7
  float Ko= 0.428571428571 ;// 3/7
  	vec2 Pi = mod(floor(P), 289.0);
   	vec2 Pf = fract(P);
  	vec3 oi = vec3(-1.0, 0.0, 1.0);
  	vec3 of = vec3(-0.5, 0.5, 1.5);
  	vec3 px = permute_snoise(Pi.x + oi);
  	vec3 p = permute_snoise(px.x + Pi.y + oi); // p11, p12, p13
  	vec3 ox = fract(p*K) - Ko;
  	vec3 oy = mod(floor(p*K),7.0)*K - Ko;
  	vec3 dx = Pf.x + 0.5 + jitter*ox;
  	vec3 dy = Pf.y - of + jitter*oy;
  	vec3 d1 = dist(dx,dy, manhattanDistance); // d11, d12 and d13, squared
  	p = permute_snoise(px.y + Pi.y + oi); // p21, p22, p23
  	ox = fract(p*K) - Ko;
  	oy = mod(floor(p*K),7.0)*K - Ko;
  	dx = Pf.x - 0.5 + jitter*ox;
  	dy = Pf.y - of + jitter*oy;
  	vec3 d2 = dist(dx,dy, manhattanDistance); // d21, d22 and d23, squared
  	p = permute_snoise(px.z + Pi.y + oi); // p31, p32, p33
  	ox = fract(p*K) - Ko;
  	oy = mod(floor(p*K),7.0)*K - Ko;
  	dx = Pf.x - 1.5 + jitter*ox;
  	dy = Pf.y - of + jitter*oy;
  	vec3 d3 = dist(dx,dy, manhattanDistance); // d31, d32 and d33, squared
  	// Sort out the two smallest distances (F1, F2)
  	vec3 d1a = min(d1, d2);
  	d2 = max(d1, d2); // Swap to keep candidates for F2
  	d2 = min(d2, d3); // neither F1 nor F2 are now in d3
  	d1 = min(d1a, d2); // F1 is now in d1
  	d2 = max(d1a, d2); // Swap to keep candidates for F2
  	d1.xy = (d1.x < d1.y) ? d1.xy : d1.yx; // Swap if smaller
  	d1.xz = (d1.x < d1.z) ? d1.xz : d1.zx; // F1 is in d1.x
  	d1.yz = min(d1.yz, d2.yz); // F2 is now not in d2.yz
  	d1.y = min(d1.y, d1.z); // nor in  d1.z
  	d1.y = min(d1.y, d2.x); // F2 is in d1.y, we're done.
  	return sqrt(d1.xy);
  }


float easeOutPow(float x) {
	return 1 - pow(1 - x, 2);
}

// magic color is 146,87,142

vec4 vines_fragment(vec3 world_pos, float time, float threshold) {


	float pixel_resolution = 16.0;


	float noise_scale = 5.0;

	vec3 pixelated_pos = floor(world_pos * pixel_resolution) / pixel_resolution;


	vec2 uv = pixelated_pos.xz / noise_scale;

	uv += vec2(
		snoise(uv * 0.5 + time/60),
		snoise(uv * 0.5 + 100.0 + time/60)
	) * 0.7;

	float large = worley(uv * 2.0, 1.0, false).y
				- worley(uv * 2.0, 1.0, false).x;

	float small = worley(uv * 7.0, 1.0, false).y
				- worley(uv * 7.0, 1.0, false).x;

	float noise = min(large, small * 0.6);

	vec2 berry_w = worley(uv * 1.2, 1.0, false);
	float berry_f1 = berry_w.x;
	float berries = 1.0 - smoothstep(0.02, 0.08, berry_f1);

	vec3 vine_color = vec3(0.3176470588,0.568627451,0.2) + snoise(uv*10)/10;

	float vines = 1.0 - smoothstep(0.03, 0.08, noise);
	vines *= threshold;
	//vines = easeOutQuart(vines);
	berries *= vines;

	vec3 berry_color = vec3(0.6, 0.1, 0.15); // adjust vibe

	vec3 final_color = vine_color;

	final_color = mix(final_color, berry_color, berries);

	return vec4(final_color, vines);
}
vec3 vines_vertex(vec3 vertex_pos,float strength) {

	float height = smoothstep(5,0,distance(vec3(0),vertex_pos + vec3(0,1.6,0))) * strength;

	return vertex_pos + vec3(0,pow(height,2),0);
}


