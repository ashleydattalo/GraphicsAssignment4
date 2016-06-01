#include <cassert>
#include <cstring>
#define _USE_MATH_DEFINES
#include <cmath>
#include <iostream>
#include <vector>

#define GLEW_STATIC
#include <GL/glew.h>
#include <GLFW/glfw3.h>

#define EIGEN_DONT_ALIGN_STATICALLY
#include <Eigen/Dense>

#include "Camera.h"
#include "GLSL.h"
#include "MatrixStack.h"
#include "Program.h"
#include "Shape.h"
#include "Material.h"
#include "Light.h"

using namespace std;
using namespace Eigen;

GLFWwindow *window; // Main application window
string RESOURCE_DIR = "./"; // Where the resources are loaded from

shared_ptr<Camera> camera;
shared_ptr<Program> prog;
shared_ptr<Program> prog1;
shared_ptr<Shape> shape, shape1, grass, sun; 
shared_ptr<Shape> voyager, imperial, executor, eWing, spaceShip;

bool keyToggles[256] = {false}; // only for English keyboards!

vector<shared_ptr<Material>> materials;
shared_ptr<Material> materialPtr;
int materialNdx = 0;

shared_ptr<Light> light0;
shared_ptr<Light> light1;

shared_ptr<Light> light;

int progToUse = 0;

Vector3f sunPos;

void drawShapes(shared_ptr<MatrixStack> MV, shared_ptr<MatrixStack> P);

// This function is called when a GLFW error occurs
static void error_callback(int error, const char *description)
{
	cerr << description << endl;
}

// This function is called when a key is pressed
static void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods)
{
	if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) {
		glfwSetWindowShouldClose(window, GL_TRUE);
	}
	if(key == '/') {
		glfwSetWindowShouldClose(window, GL_TRUE);
	}
}

// This function is called when the mouse is clicked
static void mouse_button_callback(GLFWwindow *window, int button, int action, int mods)
{
	// Get the current mouse position.
	double xmouse, ymouse;
	glfwGetCursorPos(window, &xmouse, &ymouse);
	// Get current window size.
	int width, height;
	glfwGetWindowSize(window, &width, &height);
	if(action == GLFW_PRESS) {
		bool shift = mods & GLFW_MOD_SHIFT;
		bool ctrl  = mods & GLFW_MOD_CONTROL;
		bool alt   = mods & GLFW_MOD_ALT;
		camera->mouseClicked(xmouse, ymouse, shift, ctrl, alt);
	}
}

// This function is called when the mouse moves
static void cursor_position_callback(GLFWwindow* window, double xmouse, double ymouse)
{
	int width, height;
	glfwGetWindowSize(window, &width, &height);
	if (xmouse > 0 && xmouse < width && ymouse > 0 && ymouse < height) {
		camera->mouseMoved(xmouse, ymouse);
	}
}

static void char_callback(GLFWwindow *window, unsigned int key)
{
	keyToggles[key] = !keyToggles[key];
	if (key == 'm') {
		if (++materialNdx < materials.size()) {
			materialPtr = materials[materialNdx];
		}
		else {
			materialPtr = materials[materialNdx = 0];
		}
	}

	if (key == 'M') {
		if (--materialNdx >= 0) {
			materialPtr = materials[materialNdx];
		}
		else {
			materialPtr = materials[materialNdx = materials.size() - 1];
		}
	}

	if (key == 'X') {
		light->incrementX();
	}
	if (key == 'x') {
		light->decrementX();
	}
	if (key == 'Y') {
		light->incrementY();
	}
	if (key == 'y') {
		light->decrementY();
	}
	if (key == 'Z') {
		light->incrementZ();
	}
	if (key == 'z') {
		light->decrementZ();
	}

	if (key == 'l') {
		light = light1;
	} 
	if (key == 'L') {
		light = light0;
	} 

	camera->keyPressed(key);

}

// If the window is resized, capture the new size and reset the viewport
static void resize_callback(GLFWwindow *window, int width, int height)
{
	glViewport(0, 0, width, height);
}

// This function is called once to initialize the scene and OpenGL
static void init()
{
	// Initialize time.
	glfwSetTime(0.0);
	
	// Set background color.
	glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
	// Enable z-buffer test.
	glEnable(GL_DEPTH_TEST);

	prog = make_shared<Program>();
	prog->setShaderNames(RESOURCE_DIR + "vert.glsl", RESOURCE_DIR + "frag.glsl");
	prog->setVerbose(false);
	prog->init();
	prog->addAttribute("aPos");
	prog->addAttribute("aNor");
	prog->addUniform("MV");
	prog->addUniform("P");

	prog->addUniform("lightPos0");
	prog->addUniform("lightPos1");

	prog->addUniform("intensity0");
	prog->addUniform("intensity1");
	
	prog->addUniform("ka");
	prog->addUniform("kd");
	prog->addUniform("ks");
	prog->addUniform("s");

	prog->addUniform("V");


	//other program stuff
	prog1 = make_shared<Program>();
	prog1->setShaderNames(RESOURCE_DIR + "vert.glsl", RESOURCE_DIR + "newShader.glsl");
	prog1->setVerbose(false);
	prog1->init();
	prog1->addAttribute("aPos");
	prog1->addAttribute("aNor");
	prog1->addUniform("MV");
	prog1->addUniform("P");


	
	camera = make_shared<Camera>();
	camera->setInitDistance(2.0f);
	
	shape = make_shared<Shape>();
	shape->loadMesh(RESOURCE_DIR + "bunny.obj");
	shape->fitToUnitBox();
	shape->init();

	shape1 = make_shared<Shape>();
	shape1->loadMesh(RESOURCE_DIR + "newStation.obj");
	shape1->fitToUnitBox();
	shape1->init();

	grass = make_shared<Shape>();
	grass->loadMesh(RESOURCE_DIR + "cube.obj");
	grass->fitToUnitBox();
	grass->init();

	sun = make_shared<Shape>();
	sun->loadMesh(RESOURCE_DIR + "sphere.obj");
	sun->fitToUnitBox();
	sun->init();
	
	voyager = make_shared<Shape>();
	voyager->loadMesh(RESOURCE_DIR + "voyager.obj");
	voyager->fitToUnitBox();
	voyager->init();

	imperial = make_shared<Shape>();
	imperial->loadMesh(RESOURCE_DIR + "imperial.obj");
	imperial->fitToUnitBox();
	imperial->init();

	executor = make_shared<Shape>();
	executor->loadMesh(RESOURCE_DIR + "executor.obj");
	executor->fitToUnitBox();
	executor->init();

	eWing = make_shared<Shape>();
	eWing->loadMesh(RESOURCE_DIR + "e-wing.obj");
	eWing->fitToUnitBox();
	eWing->init();


	spaceShip = make_shared<Shape>();
	spaceShip->loadMesh(RESOURCE_DIR + "spaceShip.obj");
	spaceShip->fitToUnitBox();
	spaceShip->init();

	Vector3f kaPink(0.2f, 0.2f, 0.2f);
	Vector3f kdPink(0.8f, 0.7f, 0.7f);
	Vector3f ksPink(1.0f, 0.9f, 0.8f);
	float sPink = 200.0f;

	Vector3f kaGrey(0.3f, 0.3f, .5f);
	Vector3f kdGrey(0.4f, 0.4f, .5f);
	Vector3f ksGrey(.1f, 0.1f, .2f);
	float sGrey = 200.0f;

	Vector3f kaBlue(0.0f, 0.0f, 1.0f);
	Vector3f kdBlue(0.0f, 0.5f, 1.0f);
	Vector3f ksBlue(.4f, 0.4f, 1.0f);
	float sBlue = 200.0f;

	shared_ptr<Material> pink = make_shared<Material>(kaPink, kdPink, ksPink, sPink);
	shared_ptr<Material> grey = make_shared<Material>(kaGrey, kdGrey, ksGrey, sGrey);
	shared_ptr<Material> blue = make_shared<Material>(kaBlue, kdBlue, ksBlue, sBlue);

	materials.push_back(pink);
	materials.push_back(grey);
	materials.push_back(blue);

	materialPtr = pink;

	sunPos = Vector3f(13, 3, 0);

	//Light stuff
	Vector3f pos0 = sunPos;
	Vector3f pos1(-1.0f, 1.0f, 1.0f);

	float intensity0 = 0.8f;
	float intensity1 = 0.2f;

	light0 = make_shared<Light>(pos0, intensity0);
	light1 = make_shared<Light>(pos1, intensity1);

	light = light0;

	GLSL::checkError(GET_FILE_LINE);
}

// This function is called every frame to draw the scene.
static void render()
{
	// Clear framebuffer.
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	if(keyToggles[(unsigned)'c']) {
		glEnable(GL_CULL_FACE);
	} else {
		glDisable(GL_CULL_FACE);
	}

	// Get current frame buffer size.
	int width, height;
	glfwGetFramebufferSize(window, &width, &height);
	camera->setAspect((float)width/(float)height);
	
	// Matrix stacks
	auto P = make_shared<MatrixStack>();
	auto MV = make_shared<MatrixStack>();
	
	// Apply camera transforms
	P->pushMatrix();
	camera->applyProjectionMatrix(P);
	MV->pushMatrix();
	camera->applyViewMatrix(MV);



	prog->bind();

	glUniformMatrix4fv(prog->getUniform("V"), 1, GL_FALSE, MV->topMatrix().data());

	Vector3f l0 = light0->getPosition();
	Vector3f l1 = light1->getPosition();


	glUniform3f(prog->getUniform("lightPos0"), l0[0], l0[1], l0[2]);
	glUniform3f(prog->getUniform("lightPos1"), l1[0], l1[1], l1[2]);
	glUniform1f(prog->getUniform("intensity0"), light0->getIntensity());
	glUniform1f(prog->getUniform("intensity1"), light1->getIntensity());

	float x, y, z;
	x = materialPtr->getKa().x();
	y = materialPtr->getKa().y();
	z = materialPtr->getKa().z();
	glUniform3f(prog->getUniform("ka"), x, y, z);
	x = materialPtr->getKd().x();
	y = materialPtr->getKd().y();
	z = materialPtr->getKd().z();
	glUniform3f(prog->getUniform("kd"), x, y, z);
	x = materialPtr->getKs().x();
	y = materialPtr->getKs().y();
	z = materialPtr->getKs().z();
	glUniform3f(prog->getUniform("ks"), x, y, z);
	glUniform1f(prog->getUniform("s"), materialPtr->getS());

	drawShapes(MV, P);


	MV->pushMatrix();
	MV->translate(sunPos);
	glUniform3f(prog->getUniform("ka"), 255, 255, 0);
	glUniform3f(prog->getUniform("kd"), 255, 255, 0);
	glUniform3f(prog->getUniform("ks"), 255, 255, 0);
	glUniform1f(prog->getUniform("s"), 200);
	glUniformMatrix4fv(prog->getUniform("P"), 1, GL_FALSE, P->topMatrix().data());
	glUniformMatrix4fv(prog->getUniform("MV"), 1, GL_FALSE, MV->topMatrix().data());
	sun->draw(prog);
	MV->popMatrix();


	
	MV->pushMatrix();
	MV->translate(0, -1, 0);
	MV->scale(50, .2, 50);
	glUniform3f(prog->getUniform("ka"), 0, 0, 0);
	glUniform3f(prog->getUniform("kd"), 0, 0, 0);
	glUniform3f(prog->getUniform("ks"), 0, 0, 0);
	glUniform1f(prog->getUniform("s"), 400);
	glUniformMatrix4fv(prog->getUniform("P"), 1, GL_FALSE, P->topMatrix().data());
	glUniformMatrix4fv(prog->getUniform("MV"), 1, GL_FALSE, MV->topMatrix().data());
	grass->draw(prog);
	MV->popMatrix();

	

	prog->unbind();

	
	MV->popMatrix();
	P->popMatrix();
	
	GLSL::checkError(GET_FILE_LINE);
}

void drawShape(shared_ptr<MatrixStack> MV, shared_ptr<MatrixStack> P, shared_ptr<Shape> shape, Vector3f t) {

	glUniform3f(prog->getUniform("kd"), .8, .7, .7);
	glUniform3f(prog->getUniform("ks"), 1.0f, .9f, .8f);
	glUniform1f(prog->getUniform("s"), 200);

	MV->pushMatrix();
	MV->translate(t);
	glUniformMatrix4fv(prog->getUniform("P"), 1, GL_FALSE, P->topMatrix().data());
	glUniformMatrix4fv(prog->getUniform("MV"), 1, GL_FALSE, MV->topMatrix().data());
	shape->draw(prog);
	MV->popMatrix();
}

void drawShapes(shared_ptr<MatrixStack> MV, shared_ptr<MatrixStack> P) {
	MV->pushMatrix();
	MV->scale(2, 2, 2);
	

	MV->pushMatrix();
	MV->translate(0, 0, 1);
	MV->rotate(90, 0, 1, 0);
	glUniformMatrix4fv(prog->getUniform("P"), 1, GL_FALSE, P->topMatrix().data());
	glUniformMatrix4fv(prog->getUniform("MV"), 1, GL_FALSE, MV->topMatrix().data());
	shape1->draw(prog);
	//shape->draw(prog);
	MV->popMatrix();
	

	glUniform3f(prog->getUniform("ka"), .5, .3, .7);
	drawShape(MV, P, imperial, Vector3f(-1, 0, 0));
	drawShape(MV, P, imperial, Vector3f(1, 0, 0));

	glUniform3f(prog->getUniform("ka"), .1, .9, .4);
	drawShape(MV, P, voyager, Vector3f(-2, 0, 0));
	drawShape(MV, P, voyager, Vector3f(2, 0, 0));

	glUniform3f(prog->getUniform("ka"), 0, 0, .5);;
	drawShape(MV, P, spaceShip, Vector3f(-3, 0, 0));
	drawShape(MV, P, spaceShip, Vector3f(3, 0, 0));

	glUniform3f(prog->getUniform("ka"), .8, .1, .3);
	drawShape(MV, P, executor, Vector3f(-4, 0, 0));
	drawShape(MV, P, executor, Vector3f(4, 0, 0));

	glUniform3f(prog->getUniform("ka"), .3, .7, .4);
	drawShape(MV, P, eWing, Vector3f(-5, 0, 0));
	drawShape(MV, P, eWing, Vector3f(5, 0, 0));

	MV->popMatrix();
}

int main(int argc, char **argv)
{
	if(argc < 2) {
		cout << "Please specify the resource directory." << endl;
		cout << "Ex:   ./Assignment4 ../resources" << endl;
		return 0;
	}
	RESOURCE_DIR = argv[1] + string("/");

	// Set error callback.
	glfwSetErrorCallback(error_callback);
	// Initialize the library.
	if(!glfwInit()) {
		return -1;
	}
	// Create a windowed mode window and its OpenGL context.
	window = glfwCreateWindow(640, 480, "Ashley Dattalo", NULL, NULL);
	if(!window) {
		glfwTerminate();
		return -1;
	}
	// Make the window's context current.
	glfwMakeContextCurrent(window);
	// Initialize GLEW.
	glewExperimental = true;
	if(glewInit() != GLEW_OK) {
		cerr << "Failed to initialize GLEW" << endl;
		return -1;
	}
	glGetError(); // A bug in glewInit() causes an error that we can safely ignore.
	cout << "OpenGL version: " << glGetString(GL_VERSION) << endl;
	cout << "GLSL version: " << glGetString(GL_SHADING_LANGUAGE_VERSION) << endl;
	GLSL::checkVersion();
	// Set vsync.
	glfwSwapInterval(1);
	// Set keyboard callback.
	glfwSetKeyCallback(window, key_callback);
	// Set char callback.
	glfwSetCharCallback(window, char_callback);
	// Set cursor position callback.
	glfwSetCursorPosCallback(window, cursor_position_callback);
	// Set mouse button callback.
	glfwSetMouseButtonCallback(window, mouse_button_callback);
	// Set the window resize call back.
	glfwSetFramebufferSizeCallback(window, resize_callback);
	// Initialize scene.
	init();
	// Loop until the user closes the window.
	while(!glfwWindowShouldClose(window)) {
		// Render scene.
		render();
		// Swap front and back buffers.
		glfwSwapBuffers(window);
		// Poll for and process events.
		glfwPollEvents();
	}
	// Quit program.
	glfwDestroyWindow(window);
	glfwTerminate();
	return 0;
}
