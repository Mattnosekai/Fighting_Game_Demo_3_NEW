# Notes/Thoughts/Lessons learned during development

**For standing & crouching sprites**, (or any ground based sprites), **use a standard Y-Axis**. These sprites should have the same Y axis 
length , the highest sprite's Y axis can be used. Not doing this causes sprites to be "jumpy". 

**For Left Facing Sprites**, to take Right Facing Sprites and use them to face left, flip the image on the X-Axis. 
**To get the proper X coordinate for a flipped horizontal sprite:**

xof=xwidth of last frame that was STANDING (standing state of animation)
cur_xwidth=current X width of current frame of animation
X=current X coordinate

**_current location facing left=x-(cur_xwidth-xof)_**
put toscreen,(x-(cur_xwidth-xof),y),cur_ani1




