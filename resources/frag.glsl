#version 120

uniform vec3 lightPos0;
uniform vec3 lightPos1;

uniform float intensity0;
uniform float intensity1;

uniform vec3 ka;
uniform vec3 kd;
uniform vec3 ks;
uniform float s;

uniform mat4 V;

varying vec3 normal;
varying vec4 vecPos;

void main()
{
	vec4 sunPos4 = V * vec4(lightPos0, 1);
	vec3 sunPos = sunPos4.xyz;

	vec3 n = normalize(normal);
	vec3 e = normalize(vec3(0.0, 0.0, 0.0) - vecPos.xyz);
	vec3 ca = ka;
	
	vec3 l = normalize(sunPos - vecPos.xyz);
	vec3 h = normalize(l + e);
	
	vec3 cd = kd * max(0.0, dot(l, n));
	vec3 cs = ks * pow(max(0.0, dot(h, n)), s);

	vec3 color = intensity0 * (ca + cd + cs);


	gl_FragColor = vec4(color.r, color.g, color.b, 1.0);
}
