#include "Light.h"

#include <iostream>
#include <cassert>

#include "GLSL.h"

using namespace std;
using namespace Eigen;

Light::Light(Vector3f position, float intensity):
	position(position),
	intensity(intensity)
{	
}

Light::~Light()
{
}

Eigen::Vector3f Light::getPosition() {
	return position;
}

float Light::getIntensity() {
	return intensity;
}

void Light::incrementX() {
	position[0]++;
}

void Light::decrementX() {
	position[0]--;
}

void Light::incrementY() {
	position[1]++;
}

void Light::decrementY() {
	position[1]--;
}

void Light::incrementZ() {
	position[2]++;
}

void Light::decrementZ() {
	position[2]--;
}