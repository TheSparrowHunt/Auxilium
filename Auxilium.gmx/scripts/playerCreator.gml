//defining enum for states
enum state{
    STAND,
    MOVE,
    ATTACK,
    ALERT
}
//initialising state to STAND
state = state.STAND;
//to store the last state
previousState = state.STAND;
//defining enum for direction
enum directionState{
    UP,
    DOWN,
    LEFT,
    RIGHT,
    UPLEFT,
    UPRIGHT,
    DOWNLEFT,
    DOWNRIGHT
}
directionState = directionState.DOWN;
//to store the last directionState
previousDirectionState = directionState.DOWN;

canMove = true;
previousState = state.STAND;

//length of attack in ticks
attackLength = 15;
//length of playing an alert
alertLength = 15;
//counters for interactions
//counters must be initialised greater than the Length for the state machine to initialise properly
attackCounter = 16;
alertCounter = 16;

