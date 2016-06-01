#version 120

varying vec3 normal;
varying vec4 vecPos;

void main()
{
	vec3 n = normalize(normal);
	vec3 e = normalize(vec3(0.0, 0.0, 0.0) - vecPos.xyz);

	if (dot(n, e) > -.2 && dot(n, e) < .2) {
		gl_FragColor = vec4(0, 0, 0, 1.0);
	}
	else {
		gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
	}
}
