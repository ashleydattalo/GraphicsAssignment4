#pragma  once
#ifndef __Light__
#define __Light__

#include <map>
#include <string>
#include <vector>
#include <Eigen/Dense>

#define GLEW_STATIC
#include <GL/glew.h>

class Light
{
public:
	Light(Eigen::Vector3f position, float intensity);
	virtual ~Light();
	Eigen::Vector3f getPosition();
	float getIntensity();
	void incrementX();
	void decrementX();
	void incrementY();
	void decrementY();
	void incrementZ();
	void decrementZ();
	
private:
	Eigen::Vector3f position;
	float intensity;
};

#endif