/* File: Challenge-9.k
 ---------------------------
 More than a decade after Hurricane Katrina, considerable damage remains along
 the Gulf Coast, and some communities have yet to rebuild. As part of its plans
 to improve the nation’s infrastructure, the government has established a
 program named Katrina Automated RELief (or KAREL) to send house-building
 robots to repair the damaged area. Your job is to program those robots.

Each beeper in the figure represents a pile of debris where a house once stood.
Karel’s job is to walk along the street and build a new house in the place
marked by each beeper. Those houses, moreover, need to be raised on stilts
to avoid damage from the next storm.

At the end of the run, Karel should be at the east end of the street,
having created a set of houses.

In solving this problem, you can count on the following facts about the world:

• Karel starts off facing east at the corner of 1st Street and 1st Avenue
with an infinite number of beepers in its beeper bag.

• The beepers indicating the positions at which houses should be built will be
spaced so there’s room to build the houses without overlapping them
or hitting walls.

• Karel must end up facing east at the southeast corner of the world. Moreover,
 Karel should not run into a wall if it builds a house that extends into
 that final corner.
*/
//-------------------LOCAL LIBRARY---------------------

//***KAREL MUST START FACING RIGHT***

import "turns";

function toWall(){
	while(frontIsClear()){
		move();
	}
}

function up() {
	turnLeft();
	move();
	turnRight();
}

function right() {
	move();
}

function left() {
	turnAround();
	move();
	turnAround();
}

function down() {
	turnRight();
	move();
	turnLeft();
}

function backup(){
	turnAround();
	move();
	turnAround();
}

//-----------------------Actual Program-----------------------------

function SuckItKatrina(){
 scanDebris();
}

function scanDebris(){
	while(frontIsClear()){
		move();
		if(beepersPresent()){
			build();
		}
	}
}

function build(){
	pickBeeper();
	backup();
	putBeeper();
	right();
	right();
	putBeeper();
	up();
	putBeeper();
	up();
	putBeeper();
	left();
	up();
	putBeeper();
	down();
	left();
	putBeeper();
	down();
	putBeeper();
	right();
	putBeeper();
	right();
	down();
}
