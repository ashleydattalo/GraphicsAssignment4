#pragma  once
#ifndef __Material__
#define __Material__

#include <map>
#include <string>
#include <vector>
#include <Eigen/Dense>

#define GLEW_STATIC
#include <GL/glew.h>

class Material
{
public:
	Material(Eigen::Vector3f ka, Eigen::Vector3f ks, Eigen::Vector3f kd, float s);
	virtual ~Material();
	Eigen::Vector3f getKa();
	Eigen::Vector3f getKs();
	Eigen::Vector3f getKd();
	float getS();
	
	
private:
	Eigen::Vector3f ka;
	Eigen::Vector3f ks;
	Eigen::Vector3f kd;
	float s;
};

#endif