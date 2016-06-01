#include "Material.h"

#include <iostream>
#include <cassert>

#include "GLSL.h"

using namespace std;
using namespace Eigen;

Material::Material(Vector3f ka, Vector3f kd, Vector3f ks, float s):
	ka(ka),
	ks(ks),
	kd(kd),
	s(s)
{	
}

Material::~Material()
{
}

Vector3f Material::getKa() {
	return ka;
}

Vector3f Material::getKd() {
	return kd;
}

Vector3f Material::getKs() {
	return ks;
}

float Material::getS() {
	return s;
}
