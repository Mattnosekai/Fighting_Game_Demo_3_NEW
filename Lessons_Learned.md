# Notes/Thoughts/Lessons learned during development

**For standing & crouching sprites**, (or any ground based sprites), **use a standard Y-Axis**. These sprites should have the same Y axis 
length , the highest sprite's Y axis length can be used. Not doing this causes sprites to be "jumpy". 

**For Left Facing Sprites**, to take Right Facing Sprites and use them to face left, flip the image on the X-Axis. 
**To get the proper X coordinate for a flipped horizontal sprite:**

xof=xwidth of last frame that was STANDING (standing state of animation)
cur_xwidth=current X width of current frame of animation
X=current X coordinate

**_current location facing left=x-(cur_xwidth-xof)_**
put toscreen,(x-(cur_xwidth-xof),y),cur_ani1

# Program Structure
A keyboard handler is running at all times. It uses the Win32 API. Every time a key is pressed or released 
a keyboard event occurs. This event causes a custom function that I wrote to execute. Inside of this function
is my custom keyboard routines.

Here is the basic program structure...
# UPDATE INPUT STATE
Read the keyboard buffer & key presses and also check for motions. 
# TRANSLATE INPUT STATE TO CURRENT STATE
Check to make sure the input_state is valid, if so translate it to current state.
# EXECUTE CURRENT STATE SUBROUTINE
The states can be anything, for example, punching, kicking, jumping, peforming special moves...etc...
<br>
Each state has its own subroutine.
<br>
The subroutine will make sure that the current state is valid to proceed. 
<br>
The subroutine will maintain its state with static variables.
<br>
The subroutine will control animation timing and X & Y coordinate movement.
<br>
The subroutine will control which frames of animation are valid.
<br>
The subroutine will execute and control sounds for specific animations.
<br>
The subroutine can turn the ability to attack/user input On & Off.
<br>
The subroutine will control and track its state from start to finish.
</br>

# GET THE CURRENT STATE ANMIATION FRAME POINTER
Return an image pointer to the main loop of the program so the current frame of animation can be shown.




