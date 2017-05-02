#include "Tree.h"

// Use Very Simple Libs
#include <vsl/vslibs.h>

vector<Point3> currentPoints;
Point3 last;

Tree::Tree(){
	start = TreeNode();
	maxLength = -1;
	maxWidth = -1;
	lengthGrowthRate = -1;
	widthGrowthRate = -1;
	angleGrowthRate = -1;
}

Tree::Tree(string axiom, list<ProductionRule> prods,float maxLength, float maxWidth, float lengthGrowthRate, float widthGrowthRate, float angleGrowthRate, float angle){
	productionRules = list<ProductionRule>(prods);
	this->maxLength = maxLength;
	this->maxWidth = maxWidth;
	this->lengthGrowthRate = lengthGrowthRate;
	this->widthGrowthRate = widthGrowthRate;
	this->angleGrowthRate = angleGrowthRate;
	this->angle = angle;
	TreeNode *aux;
	this->vsml = VSMathLib::getInstance();

	char ch = axiom.at(0);
	start = TreeNode(ch, nullptr);

	TreeNode *last = &start;
	//printf("char do start:     \'%c\'\n", start.getType());
	for (unsigned int j = 1; j < axiom.length(); j++) {
		ch = axiom.at(j);
		aux = new TreeNode (ch, last);
		//printf("char do Tree node:     \'%c\'\n", aux.getType());
		last->addNode(aux);
		last = aux;
	}

}

TreeNode Tree::getStart(){
	return start;
}

int Tree::setStart(TreeNode start){
	//if(start==nullptr) return TREE_INVALID_VALUE;
	this->start = start;
	return TREE_DONE;
}

float Tree::getMaxLength(){
	return maxLength;
}

int Tree::setMaxLength(float length){
	if (length <= 0) return TREE_INVALID_VALUE;
	this->maxLength = length;
	return TREE_DONE;
}

float Tree::getMaxWidth(){
	return maxWidth;
}

int Tree::setMaxWidth(float width){
	if (width <= 0) return TREE_INVALID_VALUE;
	this->maxWidth = width;
	return TREE_DONE;
}

float Tree::getLenghGrowthRate(){
	return lengthGrowthRate;
}

int Tree::setLengthGrowthRate(float rate){
	if (rate <= 0) return TREE_INVALID_VALUE;
	this->lengthGrowthRate = rate;
	return TREE_DONE;
}

float Tree::getAngleGrowthRate(){
	return angleGrowthRate;
}

int Tree::setAngleGrowthRate(float rate){
	if (rate <= 0) return TREE_INVALID_VALUE;
	this->angleGrowthRate = rate;
	return TREE_DONE;
}

float Tree::getWidthGrowthRate(){
	return widthGrowthRate;
}

int Tree::setWidthGrowthRate(float rate){
	if (rate <= 0) return TREE_INVALID_VALUE;
	this->widthGrowthRate = rate;
	return TREE_DONE;
}

int Tree::grow(int number){
	int r;
	for (int i = 0; i < number; i++) {
		r=start.grow(productionRules);
		if (r != TREE_NODE_DONE) {
			return r;
		}
	}

	return TREE_DONE;
}

int Tree::drawLine(TreeNode * node) {
	assert("TreeNode Is Null" && node != NULL);
	VSPolyLine pp;
	vector<Point3> points={
		Point3(0,0,0),
		Point3(0,node->getLength(),0)
	};
	pp.set(points);
	pp.setColor(VSResourceLib::EMISSIVE, 0, 1, 0, 1);
	pp.render();

	return TREE_DONE;
}

int drawBark(TreeNode * node) {
	assert("TreeNode Is Null" && node != NULL);

	VSSurfRevLib bark;
	TreeNode *father = node->getFather();

	if (father == NULL) return TREE_DONE;

	while (father->getType() != TREE_NODE_TYPE_BRANCH) {
		father = father->getFather();
		if (father == NULL) return TREE_DONE;
	}
	
	float points[8];
	points[0] = 0;
	points[1] = 0;

	points[2] = father->getWidth();
	points[3] = 0;

	points[4] = node->getWidth();
	points[5] = node->getLength();

	points[6] = 0;
	points[7] = node->getLength();

	bark.create(points, 4, 10, 1, 1.0f);
	bark.setColor(VSResourceLib::EMISSIVE, 0, 0, 1, 0);
	bark.render();

	return TREE_DONE;
}

int Tree::drawIntersection(TreeNode * node){
	VSSurfRevLib vssrl;
	
	if (node->getBranchNumber() > 1) {
		vssrl.createSphere(node->getWidth(), 7);
		vssrl.setColor(VSResourceLib::EMISSIVE, 0, 1, 0, 1);
		vssrl.render();
	}
	return TREE_DONE;
}

/// <summary>
/// Rotates the tree node "node->getDegree()" degrees in relation to the Y axis. Controls the height or beta angle on spheric coordinates.
/// </summary>
/// <param name="node">The Tree Node to be rotated.</param>
void Tree::rotL(TreeNode* node) {
	//vsml->rotate(node->getDegree(), 1, 0, 0);
	vsml->rotate(node->getDegree(), 0, 1, 0);
	//vsml->rotate(node->getDegree(), 0, 0, 1);
}

/// <summary>
/// Rotates the tree node "-node->getDegree()" degrees in relation to the Y axis.  Controls the height or beta angle on spheric coordinates.
/// </summary>
/// <param name="node">The Tree Node to be rotated.</param>
void Tree::rotR(TreeNode* node) {
	//vsml->rotate(-node->getDegree(), 1, 0, 0);
	vsml->rotate(-node->getDegree(), 0, 1, 0);
	//vsml->rotate(-node->getDegree(), 0, 0, 1);
}

/// <summary>
/// Rotates the tree node "node->getDegree()" degrees in relation to the X axis.  Controls the direction or alpha angle on spheric coordinates.
/// </summary>
/// <param name="node">The Tree Node to be rotated.</param>
void Tree::switchL(TreeNode* node) {
	vsml->rotate(node->getDegree(), 1, 0, 0);
	//vsml->rotate(node->getDegree(), 0, 1, 0);
	//vsml->rotate(node->getDegree(), 0, 0, 1);
}

/// <summary>
/// Rotates the tree node "-node->getDegree()" degrees in relation to the X axis.  Controls the direction or alpha angle on spheric coordinates.
/// </summary>
/// <param name="node">The Tree Node to be rotated.</param>
void Tree::switchR(TreeNode* node) {
	vsml->rotate(-node->getDegree(), 1, 0, 0);
	//vsml->rotate(-node->getDegree(), 0, 1, 0);
	//vsml->rotate(-node->getDegree(), 0, 0, 1);
}




int Tree::incrementLength(TreeNode *current){
	float l = current->getLength();
	if (l >= maxLength) return TREE_MAX_LENGTH_REACHED;

	l += lengthGrowthRate / current->getStage();

	current->setLength(l);

	return TREE_DONE;
}

int Tree::incrementWidth(TreeNode *current){
	float w = current->getWidth();
	if (w >= (maxWidth - (0.05*current->getStage()))) return TREE_MAX_WIDTH_REACHED;

	w += widthGrowthRate / current->getStage();

	current->setWidth(w);
	
	return TREE_DONE;
}

int Tree::incrementDegree(TreeNode * current){
	float a = current->getDegree();
	if (a >= (angle - (0.05*current->getStage()))) return TREE_MAX_ANGLE_REACHED;

	a += angleGrowthRate / current->getStage();

	current->setDegree(a);

	return TREE_DONE;
}


bool isLastFromStage(TreeNode * current) {
	int stage = current->getStage();
	list<TreeNode*> nodes = current->getNodes();
	list<TreeNode*>::iterator it;
	TreeNode * aux;

	if (nodes.size() == 0) return true;

	for (it = nodes.begin(); it != nodes.end(); it++) {
		aux = *it;
		if (aux->getStage() == stage) {
			if (aux->getType() == TREE_NODE_TYPE_BRANCH && aux->getLength() > 0) return false;
			if (aux->getType() == TREE_NODE_TYPE_TURN_LEFT || aux->getType() == TREE_NODE_TYPE_TURN_RIGHT){
				if (!isLastFromStage(aux)) return false;
			}
		}
	}

	return true;
}


int Tree::buildContralPoints(TreeNode * current){
	
	float* modelMatrix;
	modelMatrix = vsml->get(VSMathLib::VIEW_MODEL);

	current->setCentralPoint(modelMatrix[12],modelMatrix[13], modelMatrix[14]);

	// In order to draw the last one:
	if (isLastFromStage(current) && current->getStage() == 1) {
		//glPushMatrix();
		vsml->pushMatrix(VSMathLib::MODEL);
		vsml->translate(0, current->getLength(), 0);
		modelMatrix = vsml->get(VSMathLib::VIEW_MODEL);
		last = Point3(modelMatrix[12], modelMatrix[13], modelMatrix[14]);
		vsml->popMatrix(VSMathLib::MODEL);
	}
	
	return TREE_DONE;
}

int Tree::buildCirclePoints(TreeNode * current) {
	// Draw the circle
	/*glBegin(GL_TRIANGLE_STRIP);
	for (float i = 0; i < 2 * 3.14; i += 0.5) {
	//glColor3f(0.5, 0.5, 0.5);
	glNormal3f(sin(i),0.0,cos(i));
	glVertex3f(current->getWidth()*sin(i)s, current->getLength(), current->getWidth()*cos(i));
	glNormal3f(sin(i), 0.0, cos(i));
	glVertex3f(current->getWidth()*sin(i), 0, current->getWidth()*cos(i));
	}
	glNormal3f(sin(0), 0.0, cos(0));
	glVertex3f(current->getWidth()*sin(0.0), current->getLength(), current->getWidth()*cos(0.0));
	glNormal3f(sin(0), 0.0, cos(0));
	glVertex3f(current->getWidth()*sin(0.0), 0, current->getWidth()*cos(0.0));
	glEnd();*/

	//glPopMatrix();
	//vsml->popMatrix(VSMathLib::VIEW);
	return TREE_DONE;
}

int Tree::buildpoints(TreeNode* node) {
	list<TreeNode*>::iterator it;
	list<TreeNode*> nodes = node->getNodes();
	TreeNode* aux;
	int r;

	switch (node->getType()){
	case TREE_NODE_TYPE_BRANCH:
		if (node->getLength() > 0) {
			drawLine(node);
			drawBark(node);
			buildContralPoints(node);
			buildCirclePoints(node);
			vsml->translate(0, node->getLength(), 0);
			drawIntersection(node);
		}
		break;
	case TREE_NODE_TYPE_TURN_RIGHT:
		rotR(node);
		break;
	case TREE_NODE_TYPE_TURN_LEFT:
		rotL(node);
		break;
	case TREE_NODE_TYPE_SWITCH_RIGHT:
		switchR(node);
		break;
	case TREE_NODE_TYPE_SWITCH_LEFT:
		switchL(node);
		break;
	default:
		assert("Unexpected Tree Node Type!" && false);
		break;
	}

	if (nodes.size() == 0) {
		return TREE_DONE;
	}

	if (nodes.size() >= 1) {

		for (it = nodes.begin(); it != nodes.end(); it++) {
			aux = *it;
			if (aux->getStage() > node->getStage()) {
				vsml->pushMatrix(VSMathLib::MODEL);
			}
			r = buildpoints(aux);
			if (r != TREE_DONE) return r;
			if (aux->getStage() > node->getStage()) {
				vsml->popMatrix(VSMathLib::MODEL);
			}
		}
	}

	return TREE_DONE;
}



int gatherPoints(TreeNode* current) {
	list<TreeNode*>::iterator it;
	list<TreeNode*> nodes;

	// main stage so far...
	if (current->getStage() == 1 && current->getLength()>0) {
		if (current->getType() == TREE_NODE_TYPE_BRANCH && current->getBranchNumber()>2) {
			currentPoints.push_back(current->getCentralPoint());
		}
		

		nodes = current->getNodes();

		for (it = nodes.begin(); it != nodes.end(); it++) {
			gatherPoints(*it);
		}
		//Add imaginary last point.
		currentPoints.push_back(last);
	}

	return TREE_DONE;
}

int Tree::draw(){
	VSCubicCurve cc;
	currentPoints.clear();

	int r= buildpoints(&start);

	//add imaginary first point;
	currentPoints.push_back(Point3(0, -1, 0));
	gatherPoints(&start);

	vsml->loadIdentity(VSMathLib::MODEL);
	vsml->loadIdentity(VSMathLib::VIEW);

	if (currentPoints.size() > 4) {
		cc.setType(VSCubicCurve::CATMULL_ROM);
		cc.set(currentPoints, 8, false);
		cc.setColor(VSResourceLib::EMISSIVE, 1, 0, 0, 1);
		cc.render();
	}
	else return TREE_NOT_ENOUGH_POINTS_FOR_CATMULLROM; 

	//if(currentPoints.size() > 0) printf("Last Point is: %f %f %f\n", currentPoints.back()->x, currentPoints.back()->y, currentPoints.back()->z);

	return r;
}

string Tree::getLSystem(){
	return start.getLSystem();
}

int Tree::animate(double time){
	TreeNode *current;
	list<TreeNode*> TNlist;
	list<TreeNode*>::reverse_iterator it;
	stack<TreeNode*> q;

	q.push(&start);

	// TODO: Change the angle to make it blow in the wind

	while (!q.empty()) {
		current = q.top();
		q.pop();

		incrementLength(current);
		incrementWidth(current);
		incrementDegree(current);

		if(current->getLength()>0.3){
			if (current->getNodes().size() != 0) {
				TNlist = current->getNodes();
				for (it = TNlist.rbegin(); it != TNlist.rend(); it++)
					q.push(*it);
			}
		}
		
	}

	return TREE_DONE;
}

/// <summary>
/// Resets the tree to its basic form.
/// </summary>
/// <returns></returns>
int Tree::reset() {
	TreeNode *current;
	list<TreeNode*> TNlist;
	list<TreeNode*>::iterator it;
	stack<TreeNode*> q;

	q.push(&start);

	while (!q.empty()) {
		current = q.top();
		q.pop();

		current->setLength(0);
		current->setWidth(1);

		if (current->getNodes().size() != 0) {
			TNlist = current->getNodes();
			for (it = TNlist.begin(); it != TNlist.end(); it++)
				q.push(*it);
		}
	}

	return TREE_DONE;
}
