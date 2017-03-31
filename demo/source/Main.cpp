
#include <iostream>
#include <stdio.h>
#include <Windows.h>
#include <vector>
#include <time.h>

// include GLEW to access OpenGL 3.3 functions
#include <GL/glew.h>

// GLUT is the toolkit to interface with the OS
#include <GL/freeglut.h>

// Use Very Simple Libs
#include <vsl/vslibs.h>


#include "Parser.h"
#include "TreeNode.h"
#include "Tree.h"
#include "config.h"


#define PI 3.1415
#define EXPANSIONS_NUMBER 3
#define GROUND_EDGE_LENGHT 10



VSMathLib *vsml;
VSShaderLib program, programFonts;

#if (__VSL_FONT_LOADING__ == 1) && (__VSL_TEXTURE_LOADING__ == 1)
VSFontLib vsfl;
#endif

VSModelLib vaseModel, dirtModel;
VSAxis axis;
VSGrid gridY;

unsigned int aSentence, profileSentence;

// Query to track the number of primitives
// issued by the tesselation shaders
GLuint counterQ;
unsigned int primitiveCounter = 0;

// Camera Position
float camX = 0, camY = 0, camZ = 5;
float eyeX = 0;
float eyeY = 0;
float eyeZ = 0;
float lookX = 0;
float lookY = 0;
float lookZ = 0;
float dist = 30;

// Camera Spherical Coordinates
float alpha = 0.0f, beta = 0.0f;
float r = 5.0f;

// Mouse Tracking Variables
int startX, startY, tracking = 0;




//// Frame counting and FPS computation
long myTime, timebase = 0, frame = 0;
char s[32];

float lightDir[4] = { 1.0f, 1.0f, 1.0f, 0.0f };


// TREE STUFF:
float degree = 0;
double lastTime = 0, elapsedTime = 0, lastElapsedTime = 0;
string expanded;
Tree plant;


// ------------------------------------------------------------
//
// Reshape Callback Function
//

void changeSize(int w, int h) {

	float ratio;
	// Prevent a divide by zero, when window is too short
	// (you cant make a window of zero width).
	if (h == 0)
		h = 1;

	// Set the viewport to be the entire window
	glViewport(0, 0, w, h);

	ratio = (1.0f * w) / h;
	vsml->loadIdentity(VSMathLib::PROJECTION);
	vsml->perspective(53.13f, ratio, 0.1f, 10000.0f);
	//vsml->ortho(-2 , 2 , -2/ratio, 2/ratio, -10, 10);
}


// ------------------------------------------------------------
//
// Render stuff
//
void renderScene(void) {

	{
		PROFILE("Frame");
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		// Set both matrices to the identity matrix
		vsml->loadIdentity(VSMathLib::VIEW);
		vsml->loadIdentity(VSMathLib::MODEL);

		glClearColor(1.0f, 1.0f, 1.0f, 0.0f);

		// set camera
		vsml->lookAt(camX, camY, camZ, lookX, lookY, lookZ, 0, 1, 0);

		float res[4];
		vsml->multMatrixPoint(VSMathLib::VIEW, lightDir, res);
		vsml->normalize(res);
		program.setBlockUniform("Lights", "l_dir", res);


		dirtModel.render();
	



		// Tree
		int result;
		result = plant.draw();
		if (result != TREE_DONE && result != TREE_NOT_ENOUGH_POINTS_FOR_CATMULLROM) {
			printf("Fatal Error: %d\n", result);
			exit(0);
		}

		{
			PROFILE_GL("Render models");

			// set the shader to render models
			glUseProgram(program.getProgramIndex());
			// start counting primitives
			glBeginQuery(GL_PRIMITIVES_GENERATED, counterQ);
			// render array of models
			
			vsml->pushMatrix(VSMathLib::MODEL);
			vsml->scale(1.5f, 1.5f, 1.5f);
			vsml->translate(VSMathLib::MODEL, 0.0f, -0.65f, 0.0f);
			vaseModel.render();
			vsml->popMatrix(VSMathLib::MODEL);
		
			axis.render();
			gridY.render();

			// stop counting primitives
			glEndQuery(GL_PRIMITIVES_GENERATED);
		}

		// FPS computation and display
		frame++;
		myTime = glutGet(GLUT_ELAPSED_TIME);
		if (myTime - timebase > 1000) {
			sprintf(s, "FPS:%4.2f  Triangles: %d",
				frame*1000.0 / (myTime - timebase), primitiveCounter);
			timebase = myTime;
			frame = 0;
#if (__VSL_FONT_LOADING__ == 1)
			vsfl.prepareSentence(aSentence, s);
#endif
		}

#if (__VSL_FONT_LOADING__ == 1)
		// Display text info
		{
			PROFILE("Dump");
			//set the shader for rendering the sentence
			glUseProgram(programFonts.getProgramIndex());
			// prepare sentence with profile info
			std::string s = VSProfileLib::DumpLevels();
			vsfl.prepareSentence(profileSentence, s);
			//set the shader for rendering the sentence
			// render sentences
			vsfl.renderSentence(10, 10, aSentence);
			vsfl.renderSentence(10, 30, profileSentence);

		}
#endif
		//swap buffers
		{
			PROFILE("Swap");
			glutSwapBuffers();
		}
	} // end PROFILE("Frame")
	{
		PROFILE("Collect GL Queries Time");
		VSProfileLib::CollectQueryResults();
		glGetQueryObjectuiv(counterQ, GL_QUERY_RESULT, &primitiveCounter);
	}
}

// ------------------------------------------------------------
//
// Idle Function
//

void animate() {

	if (lastTime == 0) lastTime = timeGetTime();
	elapsedTime = timeGetTime() - lastTime;

	int r = plant.animate(elapsedTime);

	if (r != TREE_DONE && r != TREE_NOT_ENOUGH_POINTS_FOR_CATMULLROM) {
		printf("Fatal Error: %d\n", r);
		exit(0);
	}

	glutPostRedisplay();

}


// ------------------------------------------------------------
//
// Events from the Keyboard
//

void processKeys(unsigned char key, int xx, int yy){
	std::string stringAux;

	switch (key) {
	case 'q':
		printf("\nThe End!\n");
		glutLeaveMainLoop();
		break;
	case 'w': r -= 0.1f;
		camX = r * sin(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
		camZ = r * cos(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
		camY = r *   						     sin(beta * 3.14f / 180.0f);
		break;
	case 's': r += 0.1f;
		camX = r * sin(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
		camZ = r * cos(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
		camY = r *   						     sin(beta * 3.14f / 180.0f);
		break;
	case 'm':
		glEnable(GL_MULTISAMPLE);
		break;
	case 'n': 
		glDisable(GL_MULTISAMPLE); 
		break;
	case 'k': 
		VSProfileLib::Reset(); 
		break;
	case 'p': 
		stringAux = VSProfileLib::DumpLevels();
		printf("%s\n", stringAux.c_str());
		break;
	case '+':
		lookY += 1;
		break;

	case '-':
		lookY -= 1;
		break;
	case 'r':
		printf("Restarting Animation...\n");
		plant.reset();
		break;

	case'g':
		printf("Increasing growth...\n");
		plant.reset();
		plant.grow(1);
		printf("New L-System:\n%s\n\n", plant.getLSystem().data());
		break;

	}
	camX = r * sin(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
	camZ = r * cos(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
	camY = r *   						     sin(beta * 3.14f / 180.0f);

	//  uncomment this if not using an idle func
	//glutPostRedisplay();
}


// ------------------------------------------------------------
//
// Mouse Events
//

void processMouseButtons(int button, int state, int xx, int yy){
	// start tracking the mouse
	if (state == GLUT_DOWN) {
		startX = xx;
		startY = yy;
		if (button == GLUT_LEFT_BUTTON)
			tracking = 1;
		else if (button == GLUT_RIGHT_BUTTON)
			tracking = 2;
	}

	//stop tracking the mouse
	else if (state == GLUT_UP) {
		if (tracking == 1) {
			alpha -= (xx - startX);
			beta += (yy - startY);
		}
		else if (tracking == 2) {
			r += (yy - startY) * 0.01f;
		}
		tracking = 0;
	}
}

// Track mouse motion while buttons are pressed
void processMouseMotion(int xx, int yy){
	int deltaX, deltaY;
	float alphaAux, betaAux;
	float rAux;

	deltaX = -xx + startX;
	deltaY = yy - startY;

	// left mouse button: move camera
	if (tracking == 1) {


		alphaAux = alpha + deltaX;
		betaAux = beta + deltaY;

		if (betaAux > 85.0f)
			betaAux = 85.0f;
		else if (betaAux < -85.0f)
			betaAux = -85.0f;

		rAux = r;

		camX = rAux * sin(alphaAux * 3.14f / 180.0f) * cos(betaAux * 3.14f / 180.0f);
		camZ = rAux * cos(alphaAux * 3.14f / 180.0f) * cos(betaAux * 3.14f / 180.0f);
		camY = rAux *   						       sin(betaAux * 3.14f / 180.0f);
	}
	// right mouse button: zoom
	else if (tracking == 2) {

		alphaAux = alpha;
		betaAux = beta;
		rAux = r + (deltaY * 0.01f);

		camX = rAux * sin(alphaAux * 3.14f / 180.0f) * cos(betaAux * 3.14f / 180.0f);
		camZ = rAux * cos(alphaAux * 3.14f / 180.0f) * cos(betaAux * 3.14f / 180.0f);
		camY = rAux *   						       sin(betaAux * 3.14f / 180.0f);
	}


	//  uncomment this if not using an idle func
	//	glutPostRedisplay();
}


void mouseWheel(int wheel, int direction, int x, int y) {

	r += -direction * 0.1f;
	camX = r * sin(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
	camZ = r * cos(alpha * 3.14f / 180.0f) * cos(beta * 3.14f / 180.0f);
	camY = r *   						     sin(beta * 3.14f / 180.0f);

	//  uncomment this if not using an idle func
	//	glutPostRedisplay();
}


// --------------------------------------------------------
//
// Shader Stuff
//


GLuint setupShaders() {

	std::string path = PATH_TO_FILES;
	// Shader for fonts
	programFonts.init();
	programFonts.loadShader(VSShaderLib::VERTEX_SHADER, path + "shaders/color.vert");
	programFonts.loadShader(VSShaderLib::FRAGMENT_SHADER, path + "shaders/color.frag");

	// set semantics for the shader variables
	programFonts.setProgramOutput(0, "outputF");
	programFonts.setVertexAttribName(VSShaderLib::VERTEX_COORD_ATTRIB, "position");
	programFonts.setVertexAttribName(VSShaderLib::TEXTURE_COORD_ATTRIB, "texCoord");


	programFonts.prepareProgram();
	VSGLInfoLib::getUniformsInfo(programFonts.getProgramIndex());

	// add sampler uniforms
	programFonts.setUniform("texUnit", 0);

	printf("InfoLog for Font Shader\n%s\n\n", programFonts.getAllInfoLogs().c_str());


	// Shader formodels
	program.init();
	program.loadShader(VSShaderLib::VERTEX_SHADER, path + "shaders/pixeldirdifambspec.vert");
	program.loadShader(VSShaderLib::FRAGMENT_SHADER, path + "shaders/pixeldirdifambspec.frag");

	// set semantics for the shader variables
	program.setProgramOutput(0, "colorOut");
	program.setVertexAttribName(VSShaderLib::VERTEX_COORD_ATTRIB, "position");
	program.setVertexAttribName(VSShaderLib::TEXTURE_COORD_ATTRIB, "texCoord");
	program.setVertexAttribName(VSShaderLib::NORMAL_ATTRIB, "normal");

	program.prepareProgram();

	VSGLInfoLib::getProgramInfo(program.getProgramIndex());
	VSGLInfoLib::getUniformsInfo(program.getProgramIndex());

	printf("InfoLog for Model Shader\n%s\n", program.getAllInfoLogs().c_str());
	// set sampler uniform
	program.setUniform("texUnit", 0);

	return program.isProgramValid();
}



// ------------------------------------------------------------
//
// Model loading and OpenGL setup
//

int prepareDirtModel() {
	// load dirt model
	
	float p[] = { -GROUND_EDGE_LENGHT,0,-GROUND_EDGE_LENGHT,1,
		GROUND_EDGE_LENGHT,0,-GROUND_EDGE_LENGHT,1,
		-GROUND_EDGE_LENGHT,0,GROUND_EDGE_LENGHT,1 };
	float n[] = { 0,1,0,
		0,1,0,
		0,1,0 };
	dirtModel.addMesh(3, p, n, NULL, NULL, NULL, 0, NULL);

	dirtModel.setColor(VSResourceLib::EMISSIVE, 0.75f, 0, 0, 1);
	return true;
}

int init(){
	axis.set(4, 0.01f);
	gridY.set(VSGrid::Y, 10, 20);

	prepareDirtModel();

	//load vase model
	std::string modelFile = PATH_TO_FILES;
	modelFile += "models/vase1.obj";
	
	// generate a query to count primitives
	glGenQueries(1, &counterQ);
	
	if (vaseModel.load(modelFile)) {

		printf("MODEL INFO: %s\n", vaseModel.getInfo().c_str());
		// some GL settings
		glEnable(GL_DEPTH_TEST);
		glEnable(GL_CULL_FACE);
		glEnable(GL_MULTISAMPLE);
		glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
		//cor de barro
		vaseModel.setColor(VSResourceLib::DIFFUSE, 0.65234375f, 0.3984375f, 0.140625f, 1);
		//glClearColor(0.75f, 0.75f, 0.75f, 0.75f);
		//glClearColor(0.25f, 0.25f, 0.25f, 0.25f);
		return true;
	}
	else {
		printf("MODEL ERROR: %s\n", vaseModel.getErrors().c_str());
		return false;
	}

	return true;
}


void initVSL() {

	// set the material's block name
	VSResourceLib::setMaterialBlockName("Material");

	// Init VSML
	vsml = VSMathLib::getInstance();
	vsml->setUniformBlockName("Matrices");
	vsml->setUniformName(VSMathLib::PROJ_VIEW_MODEL, "m_pvm");
	vsml->setUniformName(VSMathLib::NORMAL, "m_normal");
	vsml->setUniformName(VSMathLib::VIEW_MODEL, "m_viewModel");


#if (__VSL_TEXTURE_LOADING__ == 1)

	// Init VSFL Fonts
	std::string path = PATH_TO_FILES;
	vsfl.load(path + "fonts/couriernew10");
	vsfl.setFixedFont(true);
	vsfl.setColor(1.0f, 0.5f, 0.25f, 1.0f);
	aSentence = vsfl.genSentence();
	profileSentence = vsfl.genSentence();
#endif
}

// ------------------------------------------------------------
//
//  Init Glut Function
//


void glutMain(int argc, char** argv) {

	//  GLUT initialization
	glutInit(&argc, argv);

	glutInitDisplayMode(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA | GLUT_MULTISAMPLE);

	// Set context
	glutInitContextVersion(3, 3);
	glutInitContextProfile(GLUT_CORE_PROFILE);

	glutInitWindowPosition(100, 100);
	glutInitWindowSize(1280, 800);
	glutCreateWindow("VSL Demo - LSystems Tree");

	// Use depth buffering for hidden surface elimination.
	glEnable(GL_DEPTH_TEST);

	//  Callback Registration
	glutDisplayFunc(renderScene);
	glutReshapeFunc(changeSize);
	glutIdleFunc(animate);

	//	Mouse and Keyboard Callbacks
	glutKeyboardFunc(processKeys);
	glutMouseFunc(processMouseButtons);
	glutMotionFunc(processMouseMotion);
	glutMouseWheelFunc(mouseWheel);

	//	return from main loop
	glutSetOption(GLUT_ACTION_ON_WINDOW_CLOSE, GLUT_ACTION_GLUTMAINLOOP_RETURNS);

	//	Init GLEW
	glewExperimental = GL_TRUE;
	glewInit();
	if (!glewIsSupported("GL_VERSION_3_3")) {
		printf("OpenGL 3.3 not supported\n");
		exit(1);
	}

	// this function will display generic OpenGL information
	VSGLInfoLib::getGeneralInfo();

	initVSL();

	setupShaders();

	// init OpenGL and load model
	if (!init()) {
		printf("Could not Load the Model\n");
		exit(1);
	}


	//  GLUT main loop
	glutMainLoop();
}


// ------------------------------------------------------------
//
// Main function
//


int main(int argc, char **argv) {

	Parser parser = Parser();
	list<ProductionRule> pr;

	int r = -1;
	std::string grammarFile = PATH_TO_FILES;
	if (parser.setFile(grammarFile + "demo/source/grammar.txt") == PARSER_FILE_NOT_FOUND) {
		printf("File Not Found!\n");
		return -1;
	}

	r = parser.parse();
	switch (r) {
	case(PARSER_DONE):
		parser.printGrammar();
		break;

	case(PARSER_AXIOM_INVALID_CHARACTERS):
		printf("Axiom contains invalid characters!\n");
		return -1;

	case(PARSER_DEGREE_INVALID_CHARACTERS):
		printf("Degree contains invalid characters!\n");
		return -1;

	case(PARSER_PRODUCTION_RULE_INVALID_CHARACTERS):
		printf("One of the production rules contains invalid characters!\n");
		return -1;

	case(PARSER_SYNTAX_ERROR):
		printf("Syntax error (probably some tag \"#\" out of place or missing)...\n");
		return -1;

	case(PARSER_UNKNOWN_ERROR):
		printf("UNKNOWN ERROR (probably some tag \"#\" out of place or missing)...\n");
		return -1;

	case(PARSER_PRODUCTION_RULE_EQUALS_ERROR):
		printf("One of the production rules has an invalid number of equals \"=\", only one is allowed!\n");
		return -1;

	case(PARSER_PRODUCTION_RULE_MORE_THAN_1_LEFT):
		printf("One of the production rules has more than one symbol before \"=\"!\n");
		return -1;

	default:
		printf("Unexpected error!\n");
		return -1;
	}

	degree = parser.getDegree();

	//			 Axiom					production Rules,				maxLenght,	 maxWidth,	lenght rate,	width rate,		degree rate,	maxDegree; 
	plant = Tree(parser.getAxiom(),		parser.getProductionRules(),	1.1f,		 0.25f,		0.01f,			0.0001f,		0.07f,			degree		);
	
	r = plant.grow(EXPANSIONS_NUMBER);
	if (r != TREE_DONE) {
		switch (r){
		case (TREE_NODE_INVALID_PRODUCTION_RULE):
			printf("TREE_NODE_INVALID_PRODUCTION_RULE!!!!\n");
			break;
		case (TREE_NODE_UNDIFINED_SYMBOL):
			printf("TREE_NODE_UNDIFINED_SYMBOL!!!!\n");
			break;
		default:
			printf("ERROR GROWING !!\n");
			break;
		}
	}

	string aux = plant.getLSystem();
	printf("\nLSystem: \"%s\"\n", aux.data());


	glutMain(argc, argv);
	return(1);
}

