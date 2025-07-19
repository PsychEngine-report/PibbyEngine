#pragma header

uniform float iTime;

float onOff(float a, float b, float c) {
	return step(c, sin(iTime + a * cos(iTime * b)));
}

float ramp(float y, float start, float end) {
	float inside = step(start, y) - step(end, y);
	float fact = (y - start) / (end - start) * inside;
	return (1.0 - fact) * inside;
}

vec4 getVideo(vec2 uv) {
	vec2 look = uv;
	float window = 1.0 / (1.0 + 20.0 * (look.y - mod(iTime / 4.0, 1.0)) * (look.y - mod(iTime / 4.0, 1.0)));
	//bool a = aaa;
	look.x = look.x + (sin(look.y * 12.0 + iTime) / 40.0 * onOff(4.0, 4.0, 0.3) * (1.0 + cos(iTime * 80.0)) * window) * (0.0 * 2.0);
	float vShift = 0.4 * onOff(2.0, 3.0, 0.9)*(sin(iTime) * sin(iTime * 20.0) + (0.5 + 0.1 * sin(iTime * 200.0) * cos(iTime)));
	look.y = mod(look.y + vShift * 0.0, 3.0);
	vec4 video = flixel_texture2D(bitmap, look);
	return video;
}

vec2 screenDistort(vec2 uv) {
	uv = (uv - 0.5) * 2.0;
	uv *= 1.1;
	uv.x *= 1.0 + pow((abs(uv.y) / 5.0), 2.0);
	uv.y *= 1.0 + pow((abs(uv.x) / 4.0), 2.0);
	uv  = (uv / 2.0) + 0.5;
	uv =  uv * 0.92 + 0.04;
	return uv;
}

float random(vec2 uv) {
	return fract(sin(dot(uv, vec2(15.5151, 42.2561))) * 12341.14122 * sin(iTime * 0.03));
}

float noise(vec2 uv) {
	vec2 i = floor(uv);
	vec2 f = fract(uv);
	float a = random(i);
	float b = random(i + vec2(1.0, 0.0));
	float c = random(i + vec2(0.0, 1.0));
	float d = random(i + vec2(1.0));
	vec2 u = smoothstep(0.0, 1.0, f);
	return mix(a,b, u.x) + (c - a) * u.y * (1.0 - u.x) + (d - b) * u.x * u.y;
}

vec2 scandistort(vec2 uv) {
	float scan1 = clamp(cos(uv.y * 2.0 + iTime), 0.0, 1.0);
	float scan2 = clamp(cos(uv.y * 2.0 + iTime + 4.0) * 10.0, 0.0, 1.0) ;
	float amount = scan1 * scan2 * uv.x;
	//uv.x -= 0.05 * mix(flixel_texture2D(noiseTex, vec2(uv.x, amount)).r * amount, amount, 0.9);
	return uv;
}

void main() {
	vec2 uv = openfl_TextureCoordv;
	vec2 curUV = screenDistort(uv);
	uv = scandistort(curUV);
	vec4 video = getVideo(uv);
	float vigAmt = 1.0;
	float x =  0.0;
	
	  // Create a scanline effect
    float scanline = abs(cos(uv.y * 400.));
    scanline = smoothstep(0.0, 2.0, scanline);
	
	video = clamp(video * 0.6 + 0.4 * video * video * 1.0, 0.0, 1.0);
	vigAmt = 3.0 + 0.3 * sin(iTime + 5.0 * cos(iTime * 5.0));
	float vignette = (1.0 - vigAmt * (uv.y - 0.5) * (uv.y - 0.5)) * (1.0 - vigAmt * (uv.x - 0.5) * (uv.x - 0.5));
	
	video *= vignette;
	
	gl_FragColor = mix(video,vec4(noise(uv * 75.0)), 0.05);

	if(curUV.x < 0.0 || curUV.x > 1.0 || curUV.y < 0.0 || curUV.y > 1.0) {
		gl_FragColor = vec4(0, 0, 0, 0);
	}
}