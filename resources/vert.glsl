#version 120

uniform mat4 P;
uniform mat4 MV;

attribute vec4 aPos; // in object space
attribute vec3 aNor; // in object space

varying vec3 normal;
varying vec4 vecPos;


void main()
{
	gl_Position = P * MV * aPos;
	vec4 newNormal = MV * vec4(aNor, 0.0);
	normal = newNormal.xyz;
	vecPos = MV * aPos;
}
