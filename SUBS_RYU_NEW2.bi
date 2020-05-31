#include once "mb_sound_lib2.bi"


'###############################################################################
declare sub SOUND_RYU(commandz as string)
'declare sub STANDING_RYU1(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref third_state as string)
'declare sub WALKING_BACK_RYU(byref rx as integer,byref ry as integer,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub WALKING_FORWARD_RYU(byref rx as integer,byref ry as integer,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub CROUCHING_RYU(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub WINPOSE_RYU1(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref attack as string)
'declare sub CROUCHING_PUNCH_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub CROUCHING_PUNCH2_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub CROUCHING_KICK2_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub CROUCHING_KICK_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub STANDING_PUNCH_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub STANDING_LPUNCH_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub STANDING_KICK_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub STANDING_KICK2_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
'declare sub TRANSLATE_INPUT_TO_CURRENT_STATE(byref current_state1 as string, byref attack as string, byref i_state as string, byref input_state1 as string,byref input_status as string, byref d_state as string,byref d_state2 as string,byref hadoken as string, byref shoryuken as string,byref tatsu as string,byref air_tatsu as string)
'declare sub GET_ANIMATION_RYU(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
'declare sub GET_ANIMATION_LEFT_RYU(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
'declare sub mb_kb_clear_p1t
'declare function hadoken_motion_check_p1_left(byref hadoken_speed as string,hadoken as string,lhts as double,og_ts as double) as integer
'declare function hadoken_motion_check_p1(byref hadoken_speed as string,hadoken as string,lhts as double,og_ts as double) as integer
'declare function shoryuken_motion_check_p1_left(d_state as string,byref shoryuken_speed as string,og_ts as double) as integer
'declare function shoryuken_motion_check_p1(d_state as string,byref shoryuken_speed as string,og_ts as double) as integer 
'declare function tatsu_motion_check_p1_left(byref tatsu_speed as string,og_ts as double) as integer 
'declare function tatsu_motion_check_p1(byref tatsu_speed as string,og_ts as double) as integer 
'declare sub CONTROL_P1_RYU(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref hadoken_speed as string,d_state as string,fireball_state as string,hadoken as string,lhts as double,shoryuken as string,attack as string,shoryuken_speed as string,tatsu_speed as string,og_ts as double)
'declare sub CONTROL_P1_LEFT_RYU(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref hadoken_speed as string,d_state as string,fireball_state as string,hadoken as string,lhts as double,shoryuken as string,attack as string,shoryuken_speed as string,tatsu_speed as string,og_ts as double)
'declare sub JUMPING_FORWARD_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_BACK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_FORWARD_PUNCH_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_FORWARD_PUNCH2_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_BACK_PUNCH_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_BACK_PUNCH2_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_FORWARD_KICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_FORWARD_LKICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_BACK_KICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_BACK_LKICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_PUNCH_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_PUNCH2_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_LKICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub JUMPING_KICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'declare sub HADOKEN_RYU(byref rx as integer,byref ry as integer,byref hx1 as integer,byref hy1 as integer,byref current_frame1 as integer,byref fireball_frame as integer,byref hadoken1 as string,byref hadoken_active as string,byref input_status as string,byref current_state1 as string,byref attack as string,byref fireball_state as string,byref i_state as string,byref hadoken_speed as string,byref lhts as double)
'declare sub SHORYUKEN_RYU(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame1 as integer,byref current_state1 as string,byref attack as string,byref i_state as string,byref shoryuken as string,byref shoryuken_speed as string)
'declare sub TATSU_RYU(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame1 as integer,byref current_state1 as string,byref attack as string,byref i_state as string,byref tatsu as string,byref tatsu_speed as string)
'declare sub STATE_RYU(byref rx as integer,byref ry as integer,byref cur_ani as any ptr,states_ryu() as string,byref hadoken_active as string,byref hx as integer,byref hy as integer,byref cur_ani22 as any ptr,byref obj_list as string,byref obj_desc as string,byref cur_anif22 as integer)
'###############################################################################
'===============================================================================
SUB STANDING_RYU1(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref third_state as string)
static fp as integer 

if d_state="ON GROUND" and input_status="ON" and i_state="Standing" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 6) as double

frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1

if fp=0 or pstate<>"STANDING" then
fp=1    
t=timer    
frame_count=6
current_frame2=1
third_state=""
end if    

if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=1 
i_state="Standing"    
current_state1="STANDING" 
'fp=0
end if 
end if
current_frame1=current_frame2
END SUB
'===============================================================================
SUB WALKING_BACK_RYU(byref rx as integer,byref ry as integer,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)

static fp as integer
if d_state="ON GROUND" and input_status="ON" and i_state="WB" then
else
fp=0
exit sub
end if

static t as double  
static t2 as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 6) as double

frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1

if fp=0 or pstate<>"WALKBACK" then
fp=1
t=timer
t2=timer
frame_count=6
current_frame2=1
end if

if (timer-t2)>=.003 then
t2=timer    

MOVE_CHARACTER rx,ry,"RYU","WALKBACK"

if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=1 
i_state="WB"    
current_state1="WALKBACK"    
end if 
end if
current_frame1=current_frame2
end if
END SUB
'===============================================================================
SUB WALKING_FORWARD_RYU(byref rx as integer,byref ry as integer,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
 
static fp as integer
if d_state="ON GROUND" and input_status="ON" and i_state="WF" then
else
fp=0
exit sub
end if

static t as double  
static t2 as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 6) as double

frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1

if fp=0 or pstate<>"WALKFORWARD" then
fp=1
t=timer
t2=timer
frame_count=6
current_frame2=1
end if

if (timer-t2)>=.003 then
t2=timer    

MOVE_CHARACTER rx,ry,"RYU","WALKFORWARD"
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=1 
i_state="WF"    
current_state1="WALKFORWARD"    
end if 
end if
current_frame1=current_frame2
end if
END SUB   
'===============================================================================
SUB CROUCHING_RYU(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if i_state="C" or i_state="UFC" or current_state1="CROUCH" or mid(pstate,1,9)="CROUCHING" then
else
fp=0
exit sub    
end if

if d_state="ON GROUND" and input_status="ON" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1


if fp=0 then
fp=1    
t=timer    
frame_count=3
current_frame2=1
end if    

if mid(pstate,1,9)="CROUCHING" then current_frame2=3:current_frame1=3:exit sub


if i_state="C" then
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=3 
i_state="C"    
current_state1="CROUCH"    
end if 
end if
current_frame1=current_frame2
end if

if i_state="UFC" then 'Up From Crouch Returning to Standing State
    
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2-1
if current_frame2<1 then 
current_frame2=1 
i_state="Standing"    
current_state1="STANDING" 
fp=0
end if 
end if
current_frame1=current_frame2
end if
END SUB
'=============================================================================== 
SUB WINPOSE_RYU1(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref attack as string)
static fp as integer 

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="WIN" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 5) as double
static count as integer

frame_delays(1)=.2
frame_delays(2)=.2
frame_delays(3)=.2
frame_delays(4)=.3
frame_delays(5)=.3

'SOUND_RYU "HADOKEN"
'sleep 

if fp=0 then
fp=1    
t=timer    
frame_count=5
current_frame2=1
current_frame1=1
count=0
SOUND_RYU "WIN" 'Ryu Win
end if    

if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 


current_frame2=4
count=count+1
'current_frame2=1 
'i_state="Standing"    
'current_state1="STANDING"    
end if 
end if


if count>=6 then
'count=0
current_frame2=1 
current_frame1=1
i_state="Standing"    
current_state1="STANDING" 
attack="YES"
fp=0
input_status="ON"
pstate="WIN"
end if    

current_frame1=current_frame2
END SUB
'===============================================================================
SUB CROUCHING_PUNCH_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="CROUCHINGPUNCH" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 5) as double

frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.2
frame_delays(4)=.1
frame_delays(5)=.1 


if fp=0 or pstate<>"CROUCHINGPUNCH" then
fp=1    
t=timer    
frame_count=5
current_frame2=1
SOUND_RYU "SWING" 'Punching Sound
end if    

if current_state1="CROUCHINGPUNCH" then 
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=3
current_frame1=3
i_state="C"    
current_state1="CROUCH"
pstate="CROUCHINGPUNCH"
attack="YES"
input_status="ON"
end if 
end if
current_frame1=current_frame2
end if

END SUB 
'===============================================================================
SUB CROUCHING_PUNCH2_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="CROUCHINGPUNCH2" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.1
frame_delays(2)=.05
frame_delays(3)=.1
 


if fp=0 or pstate<>"CROUCHINGPUNCH2" then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_RYU "LPUNCH" 'Light Punching Sound
end if    

if current_state1="CROUCHINGPUNCH2" then 
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=3
current_frame1=3
i_state="C"    
current_state1="CROUCH"
pstate="CROUCHINGPUNCH2"
attack="YES"
input_status="ON" 
end if 
end if
current_frame1=current_frame2
end if

END SUB
'===============================================================================
SUB CROUCHING_KICK2_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="CROUCHINGKICK2" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.03
frame_delays(2)=.08
frame_delays(3)=.03
 


if fp=0 or pstate<>"CROUCHINGKICK2" then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_RYU "LKICK" 'Light Kicking Sound
end if    

if current_state1="CROUCHINGKICK2" then 
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=3
current_frame1=3
i_state="C"    
current_state1="CROUCH"
pstate="CROUCHINGKICK2"
attack="YES"
input_status="ON"
end if 
end if
current_frame1=current_frame2
end if

END SUB
'===============================================================================
SUB CROUCHING_KICK_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="CROUCHINGKICK" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 5) as double

frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1 


if fp=0 or pstate<>"CROUCHINGKICK" then
fp=1    
t=timer    
frame_count=5
current_frame2=1
SOUND_RYU "JUMPING" 'Kicking Sound
end if    

if current_state1="CROUCHINGKICK" then 
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=3
current_frame1=3
i_state="C"    
current_state1="CROUCH"
pstate="CROUCHINGKICK"
attack="YES"
input_status="ON"
end if 
end if
current_frame1=current_frame2
end if
    
END SUB    
'=============================================================================== 
SUB STANDING_PUNCH_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer 

if d_state="ON GROUND" and current_state1="STANDINGPUNCH" then'input_status="OFF" and attack="NO" and current_state1="STANDINGPUNCH" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1


if fp=0 then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_RYU "SWING" 'Punching Sound 
input_status="OFF"
attack="NO"
end if    


if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=1
i_state="Standing"    
current_state1="STANDING"
attack="YES"
input_status="ON"
fp=0
end if 
end if
current_frame1=current_frame2

    
END SUB    
'===============================================================================
SUB STANDING_LPUNCH_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer 

if d_state="ON GROUND" and current_state1="STANDINGLPUNCH" then'input_status="OFF" and attack="NO" and current_state1="STANDINGPUNCH" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05


if fp=0 then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_RYU "LPUNCH" 'Light Punching Sound  
input_status="OFF"
attack="NO"
end if    


if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=1
i_state="Standing"    
current_state1="STANDING"
attack="YES"
input_status="ON"
fp=0
end if 
end if
current_frame1=current_frame2

    
END SUB    
'===============================================================================
SUB STANDING_KICK_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and current_state1="STANDINGKICK" then'and input_status="OFF" and attack="NO" and current_state1="STANDINGKICK" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1


if fp=0 then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_RYU "JUMPING" 'Kicking Sound
input_status="OFF"
attack="NO"
end if    


if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=1
i_state="Standing"    
current_state1="STANDING"
attack="YES"
input_status="ON"
fp=0
end if 
end if
current_frame1=current_frame2

    
END SUB     
'===============================================================================
SUB STANDING_KICK2_RYU(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and current_state1="STANDINGKICK2" then'and input_status="OFF" and attack="NO" and current_state1="STANDINGKICK" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05


if fp=0 then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_RYU "LKICK" 'Light Kicking Sound
input_status="OFF"
attack="NO"
end if    


if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=1
i_state="Standing"    
current_state1="STANDING"
attack="YES"
input_status="ON"
fp=0
end if 
end if
current_frame1=current_frame2

    
END SUB
'===============================================================================
SUB TRANSLATE_INPUT_TO_CURRENT_STATE(byref current_state1 as string, byref attack as string, byref i_state as string, byref input_state1 as string,byref input_status as string, byref d_state as string,byref d_state2 as string,byref hadoken as string, byref shoryuken as string,byref tatsu as string,byref air_tatsu as string)
'Translates Keyboard Input into Current Animation State
static pk as string
static pstate as string
pstate=current_state1

if input_status="OFF" then
    else
select case input_state1
case "LEFT"
if input_state1="LEFT" and input_status="ON" and d_state="ON GROUND" then 'Pressing Left 
pk="L"
if i_state="WB" then
else
i_state="WB"
end if  

if i_state="WB" and P1_facing="LEFT" then i_state="WF"


else
if pk="L" then i_state="":pk=""    
end if
case "RIGHT"
if input_state1="RIGHT" and input_status="ON" and d_state="ON GROUND" then 'Pressing Right 
pk="R"
if i_state="WF" then
else
i_state="WF"
end if    

if i_state="WF" and P1_facing="LEFT" then i_state="WB"

else
if pk="R" then i_state="":pk=""    
end if
case "PUNCH"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Punch
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" or i_state="UFC" then
pk=""
input_status="OFF"
i_state="SP"
attack="NO"
end if    
end if 

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPING" then 'Jumping Punch
pk=""
input_status="OFF"
i_state="JP"
attack="NO"
end if    

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGFORWARD" then 'Jumping Forward Punch
pk=""
input_status="OFF"
i_state="JFP"
attack="NO"
end if  

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGBACK" then 'Jumping Back Punch
pk=""
input_status="OFF"
i_state="JBP"
attack="NO"
end if 


case "KICK"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Kick
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" or i_state="UFC" then
pk=""
input_status="OFF"
i_state="SK"
attack="NO"
end if    
end if  

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPING" then 'Jumping Kick
pk=""
input_status="OFF"
i_state="JK"
attack="NO"
end if

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGFORWARD" then 'Jumping Forward Kick
pk=""
input_status="OFF"
i_state="JFK"
attack="NO"
end if 

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGBACK" then 'Jumping Back Kick
pk=""
input_status="OFF"
i_state="JBK"
attack="NO"
end if
case "LKICK"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Light Kick
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" or i_state="UFC" then
pk=""
input_status="OFF"
i_state="SLK"
attack="NO"
end if    
end if

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPING" then 'Jumping Light Kick
pk=""
input_status="OFF"
i_state="JLK"
attack="NO"
end if

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGFORWARD" then 'Jumping Forward Light Kick
pk=""
input_status="OFF"
i_state="JFLK"
attack="NO"
end if

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGBACK" then 'Jumping Back Light Kick
pk=""
input_status="OFF"
i_state="JBLK"
attack="NO"
end if

case "LPUNCH"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Standing Light Punch
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" or i_state="UFC" then
pk=""
input_status="OFF"
i_state="SLP"
attack="NO"
end if    
end if 

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPING" then 'Jumping Light Punch
pk=""
input_status="OFF"
i_state="JLP"
attack="NO"
end if 

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGFORWARD" then 'Jumping Forward Light Punch
pk=""
input_status="OFF"
i_state="JFLP"
attack="NO"
end if

if attack="YES" and d_state="IN AIR" and input_status="ON" and current_state1="JUMPINGBACK" then 'Jumping Back Light Punch
pk=""
input_status="OFF"
i_state="JBLP"
attack="NO"
end if 

case "DOWN"
if d_state="ON GROUND" then 'Pressing Down
if i_state="" or i_state="Standing" or i_state="WB" or i_state="WF" or i_state="UFC" or current_state1="STANDING" then    
input_status="ON"
i_state="C"
pk="D"
end if
end if
case "CROUCHINGPUNCH2"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Crouching Punch    
if i_state="C" then
input_status="OFF"
i_state="CLP"
attack="NO"
end if
end if
case "CROUCHINGPUNCH"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Crouching Punch    
if i_state="C" then
input_status="OFF"
i_state="CP"
attack="NO"
end if
end if
case "CROUCHINGKICK"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Crouching Kick    
if i_state="C" then
input_status="OFF"
i_state="CK"
attack="NO"
end if
end if
case "CROUCHINGKICK2"
if attack="YES" and d_state="ON GROUND" and input_status="ON" then 'Crouching Light Kick    
if i_state="C" then
input_status="OFF"
i_state="CLK"
attack="NO"
end if
end if
case "JUMPING"
if attack="YES" and input_status="ON" and d_state="ON GROUND" then i_state="J" 
case "JUMPINGFORWARD"
if attack="YES" and input_status="ON" and d_state="ON GROUND" then i_state="JF"
case "JUMPINGBACK"
if attack="YES" and input_status="ON" and d_state="ON GROUND" then i_state="JB"
case "NOTHING"
if input_status="ON" then 
i_state="Standing"
end if
case "HADOKEN"
if d_state="ON GROUND" and input_status="ON" and hadoken="YES" then
i_state="HADOKEN"
input_status="OFF"
hadoken="NO"
attack="NO"
end if
case "SHORYUKEN"
if d_state="ON GROUND" and input_status="ON" and shoryuken="YES" then
i_state="SHORYUKEN"
input_status="OFF"
shoryuken="NO"
attack="OFF"
end if 
case "TATSU"

if air_tatsu="OFF" and d_state="IN AIR" then '
    else
if input_status="ON" and tatsu="YES" then
i_state="TATSU"
input_status="OFF"
tatsu="NO"
attack="OFF"
end if 
end if
case "WIN"
if d_state="ON GROUND" and input_status="ON" then
i_state="WIN"
input_status="OFF"
attack="NO"
end if
case else
if input_status="ON" then 

i_state="Standing"

end if
end select


select case i_state
case "WF" 
current_state1="WALKFORWARD"
case "WB"
current_state1="WALKBACK"
case "SP"
current_state1="STANDINGPUNCH"    
case "SK"
current_state1="STANDINGKICK"  
case "SLP"
current_state1="STANDINGLPUNCH" 
case "SLK"
current_state1="STANDINGKICK2" 
case "C"
current_state1="CROUCH"  
case "UFC"
current_state1="CROUCH"
case "CP"
current_state1="CROUCHINGPUNCH"  
case "CLP"
current_state1="CROUCHINGPUNCH2" 
case "CLK"
current_state1="CROUCHINGKICK2"
case "CK"
current_state1="CROUCHINGKICK"  
case "J"
if current_state1<>"JUMPINGFORWARD" and current_state1<>"JUMPINGBACK" then current_state1="JUMPING"   
d_state2="J"
case "JP"
current_state1="JUMPINGPUNCH" 
d_state2="JP"
case "JLP"
current_state1="JUMPINGPUNCH2" 
d_state2="JLP"
case "JK"
current_state1="JUMPINGKICK" 
d_state2="JK"
case "JLK"
current_state1="JUMPINGLKICK" 
d_state2="JLK"
case "JFK"
current_state1="JUMPINGFORWARDKICK" 
d_state2="JFK"
case "JFLK"
current_state1="JUMPINGFORWARDKICK2" 
d_state2="JFLK"
case "JBLK"
current_state1="JUMPINGBACKKICK2" 
d_state2="JBLK"
case "JF"
if current_state1<>"JUMPING" then current_state1="JUMPINGFORWARD" 
d_state2="JF"
case "JB"
if current_state1<>"JUMPING" then current_state1="JUMPINGBACK"
d_state2="JB"
case "JFP"
current_state1="JUMPINGFORWARDPUNCH"
d_state2="JFP"
case "JFLP"
current_state1="JUMPINGFORWARDPUNCH2"
d_state2="JFLP"
case "JBP"
current_state1="JUMPINGBACKPUNCH"
d_state2="JBP"
case "JBLP"
current_state1="JUMPINGBACKPUNCH2"
d_state2="JBLP"
case "JBK"
current_state1="JUMPINGBACKKICK"
d_state2="JBK"
case "HADOKEN"
current_state1="HADOKEN"
case "SHORYUKEN"
current_state1="SHORYUKEN" 
case "TATSU"
current_state1="TATSU"     
case "WIN"
current_state1="WIN"    
case else
if pstate="CROUCH" then
i_state="UFC"
current_state1="CROUCH"
else
if d_state="ON GROUND" then
current_state1="STANDING"    
i_state="Standing"
end if
end if
end select
end if
END SUB
'===============================================================================
SUB GET_ANIMATION_RYU(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
static standing_ryu (1 to 6) as sprite
static walkback_ryu (1 to 6) as sprite
static walkforward_ryu (1 to 6) as sprite
static crouch_ryu (1 to 3) as sprite
static jumping_ryu (1 to 7) as sprite
static return_ryu (1 to 3) as sprite
static jumpingforward_ryu (1 to 8) as sprite
static jumpingback_ryu (1 to 8) as sprite
static standingpunch_ryu (1 to 3) as sprite
static standinglpunch_ryu (1 to 3) as sprite
static crouchingpunch_ryu (1 to 5) as sprite
static crouchinglpunch_ryu (1 to 3) as sprite
static jumpingpunch_ryu (1 to 3) as sprite
static standingkick_ryu (1 to 3) as sprite
static standinglkick_ryu (1 to 3) as sprite
static crouchingkick_ryu (1 to 5) as sprite
static crouchinglkick_ryu (1 to 3) as sprite
static jumpingkick_ryu (1 to 5) as sprite
static jumpingkick2_ryu (1 to 5) as sprite
static jumpinglkick_ryu (1 to 1) as sprite 
static jumpinglkick2_ryu (1 to 3) as sprite 
static hadoken_ryu (1 to 8) as sprite
static fireball (1 to 4) as sprite
static fireballslow (1 to 4) as sprite
static shoryuken_ryu (1 to 7) as sprite
static tatsu_ryu(1 to 11) as sprite
static jumpingpunch2_ryu (1 to 2) as sprite
static winpose_ryu(1 to 5) as sprite

static last_command as string
dim i as integer

select case commandz
case "LC"
'return last command
return_string=last_command
case "STANDING"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=standing_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1    
case "WALKBACK"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkback_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1    
case "WALKFORWARD"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkforward_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1   
case "CROUCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1    
case "JUMPING"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=jumping_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
frame_delays(7)=.1    
case "RETURN"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=return_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1 
case "JUMPINGBACK"
frame_counts=8
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingback_ryu(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
frame_delays(8)=.1
case "JUMPINGFORWARD"
frame_counts=8
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingforward_ryu(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
frame_delays(8)=.1
case "STANDINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingpunch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "STANDINGLPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standinglpunch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "CROUCHINGPUNCH"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=crouchingpunch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.2
frame_delays(4)=.1
frame_delays(5)=.1   
case "CROUCHINGPUNCH2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglpunch_ryu(i).spritebuf
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGPUNCH","JUMPINGFORWARDPUNCH","JUMPINGBACKPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.003
case "JUMPINGPUNCH2","JUMPINGFORWARDPUNCH2","JUMPINGBACKPUNCH2"
frame_counts=2
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch2_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.6
frame_delays(3)=.1
case "STANDINGKICK"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingkick_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "STANDINGKICK2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standinglkick_ryu(i).spritebuf
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05 
case "CROUCHINGKICK"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=crouchingkick_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "CROUCHINGKICK2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglkick_ryu(i).spritebuf
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGLKICK"  
frame_counts=1
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick_ryu(i).spritebuf
next
frame_delays(1)=.1
case "JUMPINGKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGKICK2","JUMPINGFORWARDKICK","JUMPINGBACKKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick2_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGFORWARDKICK2","JUMPINGBACKKICK2" 
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick2_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
case "HADOKEN"
frame_counts=8
for i=1 to frame_counts
ani_pointers(i)=hadoken_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.15
frame_delays(7)=.2
frame_delays(8)=.15  
case "FIREBALL"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=fireball(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
case "FIREBALLSLOW"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=fireballslow(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
case "SHORYUKEN"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=shoryuken_ryu(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.4
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1
case "TATSU"
frame_counts=11
for i=1 to frame_counts
ani_pointers(i)=tatsu_ryu(i).spritebuf
next
frame_delays(1)=.4   
frame_delays(2)=.4 
frame_delays(3)=.3 
frame_delays(4)=.3 
frame_delays(5)=.3 
frame_delays(6)=.3 
frame_delays(7)=.3 
frame_delays(8)=.3 
frame_delays(9)=.4 
frame_delays(10)=.4 
frame_delays(11)=.6 
case "WIN"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=winpose_ryu(i).spritebuf
next    
frame_delays(1)=.2   
frame_delays(2)=.2 
frame_delays(3)=.2 
frame_delays(4)=.2 
frame_delays(5)=.2 
case "LOAD"
LOAD_SPRITE standing_ryu(1),"graphics/ryu/ryu1_0-0.bmp"
LOAD_SPRITE standing_ryu(2),"graphics/ryu/ryu1_0-1.bmp"
LOAD_SPRITE standing_ryu(3),"graphics/ryu/ryu1_0-2.bmp"
LOAD_SPRITE standing_ryu(4),"graphics/ryu/ryu1_0-3.bmp"
LOAD_SPRITE standing_ryu(5),"graphics/ryu/ryu1_0-4.bmp"
LOAD_SPRITE standing_ryu(6),"graphics/ryu/ryu1_0-5.bmp"
'****
LOAD_SPRITE walkback_ryu(1),"graphics/ryu/ryu1_21-0.bmp"
LOAD_SPRITE walkback_ryu(2),"graphics/ryu/ryu1_21-1.bmp"
LOAD_SPRITE walkback_ryu(3),"graphics/ryu/ryu1_21-2.bmp"
LOAD_SPRITE walkback_ryu(4),"graphics/ryu/ryu1_21-3.bmp"
LOAD_SPRITE walkback_ryu(5),"graphics/ryu/ryu1_21-4.bmp"
LOAD_SPRITE walkback_ryu(6),"graphics/ryu/ryu1_21-5.bmp"
'****
LOAD_SPRITE walkforward_ryu(1),"graphics/ryu/ryu1_20-0.bmp"
LOAD_SPRITE walkforward_ryu(2),"graphics/ryu/ryu1_20-1.bmp"
LOAD_SPRITE walkforward_ryu(3),"graphics/ryu/ryu1_20-2.bmp"
LOAD_SPRITE walkforward_ryu(4),"graphics/ryu/ryu1_20-3.bmp"
LOAD_SPRITE walkforward_ryu(5),"graphics/ryu/ryu1_20-4.bmp"
LOAD_SPRITE walkforward_ryu(6),"graphics/ryu/ryu1_20-5.bmp"
'****
LOAD_SPRITE crouch_ryu(1),"graphics/ryu/ryu1_10-00.bmp"
LOAD_SPRITE crouch_ryu(2),"graphics/ryu/ryu1_10-01.bmp"
LOAD_SPRITE crouch_ryu(3),"graphics/ryu/ryu1_10-02.bmp"
'****
LOAD_SPRITE jumping_ryu(1),"graphics/ryu/ryu1_41-0.bmp"
LOAD_SPRITE jumping_ryu(2),"graphics/ryu/ryu1_41-1.bmp"
LOAD_SPRITE jumping_ryu(3),"graphics/ryu/ryu1_41-2.bmp"
LOAD_SPRITE jumping_ryu(4),"graphics/ryu/ryu1_41-3.bmp"
LOAD_SPRITE jumping_ryu(5),"graphics/ryu/ryu1_41-4.bmp"
LOAD_SPRITE jumping_ryu(6),"graphics/ryu/ryu1_41-5.bmp"
LOAD_SPRITE jumping_ryu(7),"graphics/ryu/ryu1_41-6.bmp"
'****
LOAD_SPRITE return_ryu(3),"graphics/ryu/ryu1_41-2.bmp"
LOAD_SPRITE return_ryu(2),"graphics/ryu/ryu1_41-3.bmp"
LOAD_SPRITE return_ryu(1),"graphics/ryu/ryu1_41-4.bmp"
'****
LOAD_SPRITE jumpingforward_ryu(1),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE jumpingforward_ryu(2),"graphics/ryu/ryu1_42-1.bmp"
LOAD_SPRITE jumpingforward_ryu(3),"graphics/ryu/ryu1_42-2.bmp"
LOAD_SPRITE jumpingforward_ryu(4),"graphics/ryu/ryu1_42-3.bmp"
LOAD_SPRITE jumpingforward_ryu(5),"graphics/ryu/ryu1_42-4.bmp"
LOAD_SPRITE jumpingforward_ryu(6),"graphics/ryu/ryu1_42-5.bmp"
LOAD_SPRITE jumpingforward_ryu(7),"graphics/ryu/ryu1_41-6.bmp"
LOAD_SPRITE jumpingforward_ryu(8),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE jumpingback_ryu(6),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE jumpingback_ryu(5),"graphics/ryu/ryu1_42-1.bmp"
LOAD_SPRITE jumpingback_ryu(4),"graphics/ryu/ryu1_42-2.bmp"
LOAD_SPRITE jumpingback_ryu(3),"graphics/ryu/ryu1_42-3.bmp"
LOAD_SPRITE jumpingback_ryu(2),"graphics/ryu/ryu1_42-4.bmp"
LOAD_SPRITE jumpingback_ryu(1),"graphics/ryu/ryu1_42-5.bmp"
LOAD_SPRITE jumpingback_ryu(7),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE jumpingback_ryu(8),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE standingpunch_ryu(1),"graphics/ryu/ryu1_210-0.bmp"
LOAD_SPRITE standingpunch_ryu(2),"graphics/ryu/ryu1_210-1.bmp"
LOAD_SPRITE standingpunch_ryu(3),"graphics/ryu/ryu1_210-0.bmp"
'****
LOAD_SPRITE crouchingpunch_ryu(1),"graphics/ryu/ryu1_305-0.bmp"
LOAD_SPRITE crouchingpunch_ryu(2),"graphics/ryu/ryu1_305-1.bmp"
LOAD_SPRITE crouchingpunch_ryu(3),"graphics/ryu/ryu1_305-2.bmp" 
LOAD_SPRITE crouchingpunch_ryu(4),"graphics/ryu/ryu1_305-1.bmp"
LOAD_SPRITE crouchingpunch_ryu(5),"graphics/ryu/ryu1_305-0.bmp"
'****
LOAD_SPRITE jumpingpunch_ryu(1),"graphics/ryu/ryu1_355-0.bmp"
LOAD_SPRITE jumpingpunch_ryu(2),"graphics/ryu/ryu1_355-1.bmp"
LOAD_SPRITE jumpingpunch_ryu(3),"graphics/ryu/ryu1_355-0.bmp"
'****
LOAD_SPRITE standingkick_ryu(1),"graphics/ryu/ryu1_250-0.bmp"
LOAD_SPRITE standingkick_ryu(2),"graphics/ryu/ryu1_250-1.bmp"
LOAD_SPRITE standingkick_ryu(3),"graphics/ryu/ryu1_250-0.bmp"
'****
LOAD_SPRITE standinglkick_ryu(1),"graphics/ryu/ryu1_255-0.bmp"
LOAD_SPRITE standinglkick_ryu(2),"graphics/ryu/ryu1_255-1.bmp"
LOAD_SPRITE standinglkick_ryu(3),"graphics/ryu/ryu1_255-0.bmp"
'****
LOAD_SPRITE crouchingkick_ryu(1),"graphics/ryu/ryu1_330-0.bmp"
LOAD_SPRITE crouchingkick_ryu(2),"graphics/ryu/ryu1_330-1.bmp"
LOAD_SPRITE crouchingkick_ryu(3),"graphics/ryu/ryu1_330-2.bmp"
LOAD_SPRITE crouchingkick_ryu(4),"graphics/ryu/ryu1_330-3.bmp"
LOAD_SPRITE crouchingkick_ryu(5),"graphics/ryu/ryu1_330-4.bmp"
'****
LOAD_SPRITE crouchinglkick_ryu(1),"graphics/ryu/ryu1_320-0.bmp"
LOAD_SPRITE crouchinglkick_ryu(2),"graphics/ryu/ryu1_320-1.bmp"
LOAD_SPRITE crouchinglkick_ryu(3),"graphics/ryu/ryu1_320-0.bmp"
'****
LOAD_SPRITE jumpingkick2_ryu(1),"graphics/ryu/ryu1_405-0.bmp"
LOAD_SPRITE jumpingkick2_ryu(2),"graphics/ryu/ryu1_405-1.bmp"
LOAD_SPRITE jumpingkick2_ryu(3),"graphics/ryu/ryu1_405-0.bmp"
LOAD_SPRITE jumpingkick2_ryu(4),"graphics/ryu/ryu1_41-6.bmp"
LOAD_SPRITE jumpingkick2_ryu(5),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE jumpinglkick2_ryu(1),"graphics/ryu/ryu1_400-0.bmp"
LOAD_SPRITE jumpinglkick2_ryu(2),"graphics/ryu/ryu1_400-1.bmp"
LOAD_SPRITE jumpinglkick2_ryu(3),"graphics/ryu/ryu1_400-2.bmp"
'****
LOAD_SPRITE jumpinglkick_ryu(1),"graphics/ryu/ryu1_365-0.bmp"
'****
LOAD_SPRITE jumpingkick_ryu(1),"graphics/ryu/ryu1_410-0.bmp"
LOAD_SPRITE jumpingkick_ryu(2),"graphics/ryu/ryu1_410-1.bmp"
LOAD_SPRITE jumpingkick_ryu(3),"graphics/ryu/ryu1_410-2.bmp"
LOAD_SPRITE jumpingkick_ryu(4),"graphics/ryu/ryu1_410-3.bmp"
LOAD_SPRITE jumpingkick_ryu(5),"graphics/ryu/ryu1_410-4.bmp"
'****
LOAD_SPRITE hadoken_ryu(1),"graphics/ryu/ryu1_1200-0.bmp"
LOAD_SPRITE hadoken_ryu(2),"graphics/ryu/ryu1_1200-1.bmp"
LOAD_SPRITE hadoken_ryu(3),"graphics/ryu/ryu1_1200-2.bmp"
LOAD_SPRITE hadoken_ryu(4),"graphics/ryu/ryu1_1200-3.bmp"
LOAD_SPRITE hadoken_ryu(5),"graphics/ryu/ryu1_1200-5.bmp"
LOAD_SPRITE hadoken_ryu(6),"graphics/ryu/ryu1_1200-3.bmp"
'****
LOAD_SPRITE fireball(3),"graphics/ryu/ryu1_6110-0.bmp" 'frame 1 of traveling fireball
LOAD_SPRITE fireball(1),"graphics/ryu/ryu1_6100-1.bmp"
LOAD_SPRITE fireball(2),"graphics/ryu/ryu1_6100-2.bmp"
LOAD_SPRITE fireball(4),"graphics/ryu/ryu1_6100-7.bmp" 'frame 2 of traveling fireball 
'****
LOAD_SPRITE fireballslow(3),"graphics/ryu/ryu1_6200-3.bmp" 'frame 1 of traveling fireball
LOAD_SPRITE fireballslow(1),"graphics/ryu/ryu1_6200-1.bmp"
LOAD_SPRITE fireballslow(2),"graphics/ryu/ryu1_6200-2.bmp"
LOAD_SPRITE fireballslow(4),"graphics/ryu/ryu1_6200-7.bmp" 'frame 2 of traveling fireball 
'****
LOAD_SPRITE shoryuken_ryu(1),"graphics/ryu/ryu1_1000-0.bmp"
LOAD_SPRITE shoryuken_ryu(2),"graphics/ryu/ryu1_1000-1.bmp"
LOAD_SPRITE shoryuken_ryu(3),"graphics/ryu/ryu1_1000-2.bmp"
LOAD_SPRITE shoryuken_ryu(4),"graphics/ryu/ryu1_1000-3.bmp"
LOAD_SPRITE shoryuken_ryu(5),"graphics/ryu/ryu1_1000-4.bmp"
LOAD_SPRITE shoryuken_ryu(6),"graphics/ryu/ryu1_1000-5.bmp" 
LOAD_SPRITE shoryuken_ryu(7),"graphics/ryu/ryu1_41-0.bmp" 
'****    
LOAD_SPRITE tatsu_ryu(1),"graphics/ryu/ryu1_1100-0.bmp"
LOAD_SPRITE tatsu_ryu(2),"graphics/ryu/ryu1_1100-1.bmp"
LOAD_SPRITE tatsu_ryu(3),"graphics/ryu/ryu1_1100-2.bmp"
LOAD_SPRITE tatsu_ryu(4),"graphics/ryu/ryu1_1100-3.bmp"
LOAD_SPRITE tatsu_ryu(5),"graphics/ryu/ryu1_1100-4.bmp"
LOAD_SPRITE tatsu_ryu(6),"graphics/ryu/ryu1_1100-5.bmp"
LOAD_SPRITE tatsu_ryu(7),"graphics/ryu/ryu1_1100-6.bmp"
LOAD_SPRITE tatsu_ryu(8),"graphics/ryu/ryu1_1100-7.bmp"
LOAD_SPRITE tatsu_ryu(9),"graphics/ryu/ryu1_1100-8.bmp"
LOAD_SPRITE tatsu_ryu(10),"graphics/ryu/ryu1_1100-9.bmp"
LOAD_SPRITE tatsu_ryu(11),"graphics/ryu/ryu1_1100-11.bmp"
'****
LOAD_SPRITE standinglpunch_ryu(1),"graphics/ryu/ryu1_200-0.bmp"
LOAD_SPRITE standinglpunch_ryu(2),"graphics/ryu/ryu1_200-1.bmp"
LOAD_SPRITE standinglpunch_ryu(3),"graphics/ryu/ryu1_200-0.bmp"
'**** 
LOAD_SPRITE jumpingpunch2_ryu(1),"graphics/ryu/ryu1_350-0.bmp"
LOAD_SPRITE jumpingpunch2_ryu(2),"graphics/ryu/ryu1_350-1.bmp"
'****
LOAD_SPRITE crouchinglpunch_ryu(1),"graphics/ryu/ryu1_300-0.bmp"
LOAD_SPRITE crouchinglpunch_ryu(2),"graphics/ryu/ryu1_300-1.bmp"
LOAD_SPRITE crouchinglpunch_ryu(3),"graphics/ryu/ryu1_300-0.bmp" 
'**** 
LOAD_SPRITE winpose_ryu(1),"graphics/ryu/ryu1_181-0.bmp"
LOAD_SPRITE winpose_ryu(2),"graphics/ryu/ryu1_181-1.bmp"
LOAD_SPRITE winpose_ryu(3),"graphics/ryu/ryu1_181-2.bmp"
LOAD_SPRITE winpose_ryu(4),"graphics/ryu/ryu1_181-3.bmp"
LOAD_SPRITE winpose_ryu(5),"graphics/ryu/ryu1_181-4.bmp"
'****
case "FREE"
ImageDestroy standing_ryu(1).spritebuf   
ImageDestroy standing_ryu(2).spritebuf   
ImageDestroy standing_ryu(3).spritebuf   
ImageDestroy standing_ryu(4).spritebuf   
ImageDestroy standing_ryu(5).spritebuf   
ImageDestroy standing_ryu(6).spritebuf   
'****
ImageDestroy walkback_ryu(1).spritebuf   
ImageDestroy walkback_ryu(2).spritebuf   
ImageDestroy walkback_ryu(3).spritebuf  
ImageDestroy walkback_ryu(4).spritebuf   
ImageDestroy walkback_ryu(5).spritebuf   
ImageDestroy walkback_ryu(6).spritebuf   
'****
ImageDestroy walkforward_ryu(1).spritebuf   
ImageDestroy walkforward_ryu(2).spritebuf   
ImageDestroy walkforward_ryu(3).spritebuf   
ImageDestroy walkforward_ryu(4).spritebuf   
ImageDestroy walkforward_ryu(5).spritebuf   
ImageDestroy walkforward_ryu(6).spritebuf   
'****
ImageDestroy crouch_ryu(1).spritebuf   
ImageDestroy crouch_ryu(2).spritebuf   
ImageDestroy crouch_ryu(3).spritebuf   
'****
ImageDestroy jumping_ryu(1).spritebuf   
ImageDestroy jumping_ryu(2).spritebuf   
ImageDestroy jumping_ryu(3).spritebuf   
ImageDestroy jumping_ryu(4).spritebuf   
ImageDestroy jumping_ryu(5).spritebuf   
ImageDestroy jumping_ryu(6).spritebuf   
ImageDestroy jumping_ryu(7).spritebuf   
'****
ImageDestroy return_ryu(3).spritebuf   
ImageDestroy return_ryu(2).spritebuf   
ImageDestroy return_ryu(1).spritebuf   
'**** 
ImageDestroy jumpingforward_ryu(1).spritebuf   
ImageDestroy jumpingforward_ryu(2).spritebuf   
ImageDestroy jumpingforward_ryu(3).spritebuf   
ImageDestroy jumpingforward_ryu(4).spritebuf   
ImageDestroy jumpingforward_ryu(5).spritebuf   
ImageDestroy jumpingforward_ryu(6).spritebuf 
ImageDestroy jumpingforward_ryu(7).spritebuf 
ImageDestroy jumpingforward_ryu(8).spritebuf
'****
ImageDestroy jumpingback_ryu(1).spritebuf   
ImageDestroy jumpingback_ryu(2).spritebuf   
ImageDestroy jumpingback_ryu(3).spritebuf   
ImageDestroy jumpingback_ryu(4).spritebuf   
ImageDestroy jumpingback_ryu(5).spritebuf   
ImageDestroy jumpingback_ryu(6).spritebuf 
ImageDestroy jumpingback_ryu(7).spritebuf 
ImageDestroy jumpingback_ryu(8).spritebuf
'****
ImageDestroy standingpunch_ryu(1).spritebuf   
ImageDestroy standingpunch_ryu(2).spritebuf   
ImageDestroy standingpunch_ryu(3).spritebuf   
'****
ImageDestroy crouchingpunch_ryu(1).spritebuf   
ImageDestroy crouchingpunch_ryu(2).spritebuf   
ImageDestroy crouchingpunch_ryu(3).spritebuf   
ImageDestroy crouchingpunch_ryu(4).spritebuf   
ImageDestroy crouchingpunch_ryu(5).spritebuf   
'****
ImageDestroy jumpingpunch_ryu(1).spritebuf   
ImageDestroy jumpingpunch_ryu(2).spritebuf   
ImageDestroy jumpingpunch_ryu(3).spritebuf   
'****
ImageDestroy standingkick_ryu(1).spritebuf   
ImageDestroy standingkick_ryu(2).spritebuf   
ImageDestroy standingkick_ryu(3).spritebuf  
'****
ImageDestroy standinglkick_ryu(1).spritebuf   
ImageDestroy standinglkick_ryu(2).spritebuf   
ImageDestroy standinglkick_ryu(3).spritebuf
'****
ImageDestroy crouchingkick_ryu(1).spritebuf   
ImageDestroy crouchingkick_ryu(2).spritebuf   
ImageDestroy crouchingkick_ryu(3).spritebuf   
ImageDestroy crouchingkick_ryu(4).spritebuf   
ImageDestroy crouchingkick_ryu(5).spritebuf 
'****
ImageDestroy crouchinglkick_ryu(1).spritebuf   
ImageDestroy crouchinglkick_ryu(2).spritebuf   
ImageDestroy crouchinglkick_ryu(3).spritebuf 
'****
ImageDestroy jumpinglkick_ryu(1).spritebuf 
'****
ImageDestroy jumpinglkick2_ryu(1).spritebuf 
ImageDestroy jumpinglkick2_ryu(2).spritebuf 
ImageDestroy jumpinglkick2_ryu(3).spritebuf 
'****
ImageDestroy jumpingkick_ryu(1).spritebuf   
ImageDestroy jumpingkick_ryu(2).spritebuf   
ImageDestroy jumpingkick_ryu(3).spritebuf 
ImageDestroy jumpingkick_ryu(4).spritebuf
ImageDestroy jumpingkick_ryu(5).spritebuf
'****
ImageDestroy hadoken_ryu(1).spritebuf   
ImageDestroy hadoken_ryu(2).spritebuf   
ImageDestroy hadoken_ryu(3).spritebuf   
ImageDestroy hadoken_ryu(4).spritebuf   
ImageDestroy hadoken_ryu(5).spritebuf   
ImageDestroy hadoken_ryu(6).spritebuf   
ImageDestroy hadoken_ryu(7).spritebuf   
ImageDestroy hadoken_ryu(8).spritebuf   
'****
ImageDestroy fireball(1).spritebuf   
ImageDestroy fireball(2).spritebuf   
ImageDestroy fireball(3).spritebuf   
ImageDestroy fireball(4).spritebuf   
'****
ImageDestroy fireballslow(1).spritebuf   
ImageDestroy fireballslow(2).spritebuf   
ImageDestroy fireballslow(3).spritebuf   
ImageDestroy fireballslow(4).spritebuf
'****
ImageDestroy shoryuken_ryu(1).spritebuf   
ImageDestroy shoryuken_ryu(2).spritebuf   
ImageDestroy shoryuken_ryu(3).spritebuf   
ImageDestroy shoryuken_ryu(4).spritebuf   
ImageDestroy shoryuken_ryu(5).spritebuf   
ImageDestroy shoryuken_ryu(6).spritebuf  
ImageDestroy shoryuken_ryu(7).spritebuf 
'****   
ImageDestroy tatsu_ryu(1).spritebuf
ImageDestroy tatsu_ryu(2).spritebuf
ImageDestroy tatsu_ryu(3).spritebuf
ImageDestroy tatsu_ryu(4).spritebuf
ImageDestroy tatsu_ryu(5).spritebuf
ImageDestroy tatsu_ryu(6).spritebuf
ImageDestroy tatsu_ryu(7).spritebuf
ImageDestroy tatsu_ryu(8).spritebuf
ImageDestroy tatsu_ryu(9).spritebuf
ImageDestroy tatsu_ryu(10).spritebuf
ImageDestroy tatsu_ryu(11).spritebuf
'****
ImageDestroy standinglpunch_ryu(1).spritebuf   
ImageDestroy standinglpunch_ryu(2).spritebuf   
ImageDestroy standinglpunch_ryu(3).spritebuf   
'****
ImageDestroy jumpingpunch2_ryu(1).spritebuf   
ImageDestroy jumpingpunch2_ryu(2).spritebuf  
'****
ImageDestroy crouchinglpunch_ryu(1).spritebuf
ImageDestroy crouchinglpunch_ryu(2).spritebuf
ImageDestroy crouchinglpunch_ryu(3).spritebuf
'****
ImageDestroy winpose_ryu(1).spritebuf
ImageDestroy winpose_ryu(2).spritebuf
ImageDestroy winpose_ryu(3).spritebuf
ImageDestroy winpose_ryu(4).spritebuf
ImageDestroy winpose_ryu(5).spritebuf
'****
case else
end select
if commandz="LC" then
else
last_command=commandz    
end if    
END SUB
'===============================================================================
SUB GET_ANIMATION_LEFT_RYU(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
static standing_ryu (1 to 6) as sprite
static walkback_ryu (1 to 6) as sprite
static walkforward_ryu (1 to 6) as sprite
static crouch_ryu (1 to 3) as sprite
static jumping_ryu (1 to 7) as sprite
static return_ryu (1 to 3) as sprite
static jumpingforward_ryu (1 to 8) as sprite
static jumpingback_ryu (1 to 8) as sprite
static standingpunch_ryu (1 to 3) as sprite
static standinglpunch_ryu (1 to 3) as sprite
static crouchingpunch_ryu (1 to 5) as sprite
static crouchinglpunch_ryu (1 to 3) as sprite
static jumpingpunch_ryu (1 to 3) as sprite
static standingkick_ryu (1 to 3) as sprite
static standinglkick_ryu (1 to 3) as sprite
static crouchingkick_ryu (1 to 5) as sprite
static crouchinglkick_ryu (1 to 3) as sprite
static jumpingkick_ryu (1 to 5) as sprite
static jumpingkick2_ryu (1 to 5) as sprite
static jumpinglkick_ryu (1 to 1) as sprite 
static jumpinglkick2_ryu (1 to 3) as sprite 
static hadoken_ryu (1 to 8) as sprite
static fireball (1 to 4) as sprite
static fireballslow (1 to 4) as sprite
static shoryuken_ryu (1 to 7) as sprite
static tatsu_ryu(1 to 11) as sprite
static jumpingpunch2_ryu (1 to 2) as sprite
static winpose_ryu(1 to 5) as sprite

static last_command as string
dim i as integer

select case commandz
case "LC"
'return last command
return_string=last_command
case "STANDING"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=standing_ryu(i).spritebuf
cur_xwidth(i)=standing_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
case "WALKBACK"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkback_ryu(i).spritebuf
cur_xwidth(i)=walkback_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1    
case "WALKFORWARD"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkforward_ryu(i).spritebuf
cur_xwidth(i)=walkforward_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1   
case "CROUCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouch_ryu(i).spritebuf
cur_xwidth(i)=crouch_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1    
case "JUMPING"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=jumping_ryu(i).spritebuf
cur_xwidth(i)=jumping_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
frame_delays(7)=.1    
case "RETURN"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=return_ryu(i).spritebuf
cur_xwidth(i)=return_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1 
case "JUMPINGBACK"
frame_counts=8
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingback_ryu(i).spritebuf
cur_xwidth(i)=jumpingback_ryu(i).xwidth
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
frame_delays(8)=.1
case "JUMPINGFORWARD"
frame_counts=8
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingforward_ryu(i).spritebuf
cur_xwidth(i)=jumpingforward_ryu(i).xwidth
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
frame_delays(8)=.1
case "STANDINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingpunch_ryu(i).spritebuf
cur_xwidth(i)=standingpunch_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "STANDINGLPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standinglpunch_ryu(i).spritebuf
cur_xwidth(i)=standinglpunch_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "CROUCHINGPUNCH"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=crouchingpunch_ryu(i).spritebuf
cur_xwidth(i)=crouchingpunch_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.2
frame_delays(4)=.1
frame_delays(5)=.1   
case "CROUCHINGPUNCH2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglpunch_ryu(i).spritebuf
cur_xwidth(i)=crouchinglpunch_ryu(i).xwidth
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGPUNCH","JUMPINGFORWARDPUNCH","JUMPINGBACKPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch_ryu(i).spritebuf
cur_xwidth(i)=jumpingpunch_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.003
case "JUMPINGPUNCH2","JUMPINGFORWARDPUNCH2","JUMPINGBACKPUNCH2"
frame_counts=2
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch2_ryu(i).spritebuf
cur_xwidth(i)=jumpingpunch2_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.6
frame_delays(3)=.1
case "STANDINGKICK"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standingkick_ryu(i).spritebuf
cur_xwidth(i)=standingkick_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "STANDINGKICK2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standinglkick_ryu(i).spritebuf
cur_xwidth(i)=standinglkick_ryu(i).xwidth
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05 
case "CROUCHINGKICK"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=crouchingkick_ryu(i).spritebuf
cur_xwidth(i)=crouchingkick_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "CROUCHINGKICK2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglkick_ryu(i).spritebuf
cur_xwidth(i)=crouchinglkick_ryu(i).xwidth
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGLKICK"  
frame_counts=1
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick_ryu(i).spritebuf
cur_xwidth(i)=jumpinglkick_ryu(i).xwidth
next
frame_delays(1)=.1
case "JUMPINGKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick_ryu(i).spritebuf
cur_xwidth(i)=jumpingkick_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGKICK2","JUMPINGFORWARDKICK","JUMPINGBACKKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick2_ryu(i).spritebuf
cur_xwidth(i)=jumpingkick2_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGFORWARDKICK2","JUMPINGBACKKICK2" 
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick2_ryu(i).spritebuf
cur_xwidth(i)=jumpinglkick2_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
case "HADOKEN"
frame_counts=8
for i=1 to frame_counts
ani_pointers(i)=hadoken_ryu(i).spritebuf
cur_xwidth(i)=hadoken_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.15
frame_delays(7)=.2
frame_delays(8)=.15  
case "FIREBALL"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=fireball(i).spritebuf
cur_pxwidth(i)=fireball(i).xwidth
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
case "FIREBALLSLOW"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=fireballslow(i).spritebuf
cur_pxwidth(i)=fireballslow(i).xwidth
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
case "SHORYUKEN"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=shoryuken_ryu(i).spritebuf
cur_xwidth(i)=shoryuken_ryu(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.4
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1
case "TATSU"
frame_counts=11
for i=1 to frame_counts
ani_pointers(i)=tatsu_ryu(i).spritebuf
cur_xwidth(i)=tatsu_ryu(i).xwidth
next
frame_delays(1)=.4   
frame_delays(2)=.4 
frame_delays(3)=.3 
frame_delays(4)=.3 
frame_delays(5)=.3 
frame_delays(6)=.3 
frame_delays(7)=.3 
frame_delays(8)=.3 
frame_delays(9)=.4 
frame_delays(10)=.4 
frame_delays(11)=.6 
case "WIN"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=winpose_ryu(i).spritebuf
cur_xwidth(i)=winpose_ryu(i).xwidth
next
frame_delays(1)=.5   
frame_delays(2)=.5 
frame_delays(3)=.5 
frame_delays(4)=.5 
frame_delays(5)=.5
case "LOAD"
LOAD_SPRITE_LEFT standing_ryu(1),"graphics/ryu/ryu1_0-0.bmp"
LOAD_SPRITE_LEFT standing_ryu(2),"graphics/ryu/ryu1_0-1.bmp"
LOAD_SPRITE_LEFT standing_ryu(3),"graphics/ryu/ryu1_0-2.bmp"
LOAD_SPRITE_LEFT standing_ryu(4),"graphics/ryu/ryu1_0-3.bmp"
LOAD_SPRITE_LEFT standing_ryu(5),"graphics/ryu/ryu1_0-4.bmp"
LOAD_SPRITE_LEFT standing_ryu(6),"graphics/ryu/ryu1_0-5.bmp"
'****
LOAD_SPRITE_LEFT walkback_ryu(1),"graphics/ryu/ryu1_21-0.bmp"
LOAD_SPRITE_LEFT walkback_ryu(2),"graphics/ryu/ryu1_21-1.bmp"
LOAD_SPRITE_LEFT walkback_ryu(3),"graphics/ryu/ryu1_21-2.bmp"
LOAD_SPRITE_LEFT walkback_ryu(4),"graphics/ryu/ryu1_21-3.bmp"
LOAD_SPRITE_LEFT walkback_ryu(5),"graphics/ryu/ryu1_21-4.bmp"
LOAD_SPRITE_LEFT walkback_ryu(6),"graphics/ryu/ryu1_21-5.bmp"
'****
LOAD_SPRITE_LEFT walkforward_ryu(1),"graphics/ryu/ryu1_20-0.bmp"
LOAD_SPRITE_LEFT walkforward_ryu(2),"graphics/ryu/ryu1_20-1.bmp"
LOAD_SPRITE_LEFT walkforward_ryu(3),"graphics/ryu/ryu1_20-2.bmp"
LOAD_SPRITE_LEFT walkforward_ryu(4),"graphics/ryu/ryu1_20-3.bmp"
LOAD_SPRITE_LEFT walkforward_ryu(5),"graphics/ryu/ryu1_20-4.bmp"
LOAD_SPRITE_LEFT walkforward_ryu(6),"graphics/ryu/ryu1_20-5.bmp"
'****
LOAD_SPRITE_LEFT crouch_ryu(1),"graphics/ryu/ryu1_10-00.bmp"
LOAD_SPRITE_LEFT crouch_ryu(2),"graphics/ryu/ryu1_10-01.bmp"
LOAD_SPRITE_LEFT crouch_ryu(3),"graphics/ryu/ryu1_10-02.bmp"
'****
LOAD_SPRITE_LEFT jumping_ryu(1),"graphics/ryu/ryu1_41-0.bmp"
LOAD_SPRITE_LEFT jumping_ryu(2),"graphics/ryu/ryu1_41-1.bmp"
LOAD_SPRITE_LEFT jumping_ryu(3),"graphics/ryu/ryu1_41-2.bmp"
LOAD_SPRITE_LEFT jumping_ryu(4),"graphics/ryu/ryu1_41-3.bmp"
LOAD_SPRITE_LEFT jumping_ryu(5),"graphics/ryu/ryu1_41-4.bmp"
LOAD_SPRITE_LEFT jumping_ryu(6),"graphics/ryu/ryu1_41-5.bmp"
LOAD_SPRITE_LEFT jumping_ryu(7),"graphics/ryu/ryu1_41-6.bmp"
'****
LOAD_SPRITE_LEFT return_ryu(3),"graphics/ryu/ryu1_41-2.bmp"
LOAD_SPRITE_LEFT return_ryu(2),"graphics/ryu/ryu1_41-3.bmp"
LOAD_SPRITE_LEFT return_ryu(1),"graphics/ryu/ryu1_41-4.bmp"
'****
LOAD_SPRITE_LEFT jumpingforward_ryu(1),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE_LEFT jumpingforward_ryu(2),"graphics/ryu/ryu1_42-1.bmp"
LOAD_SPRITE_LEFT jumpingforward_ryu(3),"graphics/ryu/ryu1_42-2.bmp"
LOAD_SPRITE_LEFT jumpingforward_ryu(4),"graphics/ryu/ryu1_42-3.bmp"
LOAD_SPRITE_LEFT jumpingforward_ryu(5),"graphics/ryu/ryu1_42-4.bmp"
LOAD_SPRITE_LEFT jumpingforward_ryu(6),"graphics/ryu/ryu1_42-5.bmp"
LOAD_SPRITE_LEFT jumpingforward_ryu(7),"graphics/ryu/ryu1_41-6.bmp"
LOAD_SPRITE_LEFT jumpingforward_ryu(8),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingback_ryu(6),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE_LEFT jumpingback_ryu(5),"graphics/ryu/ryu1_42-1.bmp"
LOAD_SPRITE_LEFT jumpingback_ryu(4),"graphics/ryu/ryu1_42-2.bmp"
LOAD_SPRITE_LEFT jumpingback_ryu(3),"graphics/ryu/ryu1_42-3.bmp"
LOAD_SPRITE_LEFT jumpingback_ryu(2),"graphics/ryu/ryu1_42-4.bmp"
LOAD_SPRITE_LEFT jumpingback_ryu(1),"graphics/ryu/ryu1_42-5.bmp"
LOAD_SPRITE_LEFT jumpingback_ryu(7),"graphics/ryu/ryu1_42-0.bmp"
LOAD_SPRITE_LEFT jumpingback_ryu(8),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE_LEFT standingpunch_ryu(1),"graphics/ryu/ryu1_210-0.bmp"
LOAD_SPRITE_LEFT standingpunch_ryu(2),"graphics/ryu/ryu1_210-1.bmp"
LOAD_SPRITE_LEFT standingpunch_ryu(3),"graphics/ryu/ryu1_210-0.bmp"
'****
LOAD_SPRITE_LEFT crouchingpunch_ryu(1),"graphics/ryu/ryu1_305-0.bmp"
LOAD_SPRITE_LEFT crouchingpunch_ryu(2),"graphics/ryu/ryu1_305-1.bmp"
LOAD_SPRITE_LEFT crouchingpunch_ryu(3),"graphics/ryu/ryu1_305-2.bmp" 
LOAD_SPRITE_LEFT crouchingpunch_ryu(4),"graphics/ryu/ryu1_305-1.bmp"
LOAD_SPRITE_LEFT crouchingpunch_ryu(5),"graphics/ryu/ryu1_305-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingpunch_ryu(1),"graphics/ryu/ryu1_355-0.bmp"
LOAD_SPRITE_LEFT jumpingpunch_ryu(2),"graphics/ryu/ryu1_355-1.bmp"
LOAD_SPRITE_LEFT jumpingpunch_ryu(3),"graphics/ryu/ryu1_355-0.bmp"
'****
LOAD_SPRITE_LEFT standingkick_ryu(1),"graphics/ryu/ryu1_250-0.bmp"
LOAD_SPRITE_LEFT standingkick_ryu(2),"graphics/ryu/ryu1_250-1.bmp"
LOAD_SPRITE_LEFT standingkick_ryu(3),"graphics/ryu/ryu1_250-0.bmp"
'****
LOAD_SPRITE_LEFT standinglkick_ryu(1),"graphics/ryu/ryu1_255-0.bmp"
LOAD_SPRITE_LEFT standinglkick_ryu(2),"graphics/ryu/ryu1_255-1.bmp"
LOAD_SPRITE_LEFT standinglkick_ryu(3),"graphics/ryu/ryu1_255-0.bmp"
'****
LOAD_SPRITE_LEFT crouchingkick_ryu(1),"graphics/ryu/ryu1_330-0.bmp"
LOAD_SPRITE_LEFT crouchingkick_ryu(2),"graphics/ryu/ryu1_330-1.bmp"
LOAD_SPRITE_LEFT crouchingkick_ryu(3),"graphics/ryu/ryu1_330-2.bmp"
LOAD_SPRITE_LEFT crouchingkick_ryu(4),"graphics/ryu/ryu1_330-3.bmp"
LOAD_SPRITE_LEFT crouchingkick_ryu(5),"graphics/ryu/ryu1_330-4.bmp"
'****
LOAD_SPRITE_LEFT crouchinglkick_ryu(1),"graphics/ryu/ryu1_320-0.bmp"
LOAD_SPRITE_LEFT crouchinglkick_ryu(2),"graphics/ryu/ryu1_320-1.bmp"
LOAD_SPRITE_LEFT crouchinglkick_ryu(3),"graphics/ryu/ryu1_320-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingkick2_ryu(1),"graphics/ryu/ryu1_405-0.bmp"
LOAD_SPRITE_LEFT jumpingkick2_ryu(2),"graphics/ryu/ryu1_405-1.bmp"
LOAD_SPRITE_LEFT jumpingkick2_ryu(3),"graphics/ryu/ryu1_405-0.bmp"
LOAD_SPRITE_LEFT jumpingkick2_ryu(4),"graphics/ryu/ryu1_41-6.bmp"
LOAD_SPRITE_LEFT jumpingkick2_ryu(5),"graphics/ryu/ryu1_41-0.bmp"
'****
LOAD_SPRITE_LEFT jumpinglkick2_ryu(1),"graphics/ryu/ryu1_400-0.bmp"
LOAD_SPRITE_LEFT jumpinglkick2_ryu(2),"graphics/ryu/ryu1_400-1.bmp"
LOAD_SPRITE_LEFT jumpinglkick2_ryu(3),"graphics/ryu/ryu1_400-2.bmp"
'****
LOAD_SPRITE_LEFT jumpinglkick_ryu(1),"graphics/ryu/ryu1_365-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingkick_ryu(1),"graphics/ryu/ryu1_410-0.bmp"
LOAD_SPRITE_LEFT jumpingkick_ryu(2),"graphics/ryu/ryu1_410-1.bmp"
LOAD_SPRITE_LEFT jumpingkick_ryu(3),"graphics/ryu/ryu1_410-2.bmp"
LOAD_SPRITE_LEFT jumpingkick_ryu(4),"graphics/ryu/ryu1_410-3.bmp"
LOAD_SPRITE_LEFT jumpingkick_ryu(5),"graphics/ryu/ryu1_410-4.bmp"
'****
LOAD_SPRITE_LEFT hadoken_ryu(1),"graphics/ryu/ryu1_1200-0.bmp"
LOAD_SPRITE_LEFT hadoken_ryu(2),"graphics/ryu/ryu1_1200-1.bmp"
LOAD_SPRITE_LEFT hadoken_ryu(3),"graphics/ryu/ryu1_1200-2.bmp"
LOAD_SPRITE_LEFT hadoken_ryu(4),"graphics/ryu/ryu1_1200-3.bmp"
LOAD_SPRITE_LEFT hadoken_ryu(5),"graphics/ryu/ryu1_1200-5.bmp"
LOAD_SPRITE_LEFT hadoken_ryu(6),"graphics/ryu/ryu1_1200-3.bmp"
'****
LOAD_SPRITE_LEFT fireball(3),"graphics/ryu/ryu1_6110-0.bmp" 'frame 1 of traveling fireball
LOAD_SPRITE_LEFT fireball(1),"graphics/ryu/ryu1_6100-1.bmp"
LOAD_SPRITE_LEFT fireball(2),"graphics/ryu/ryu1_6100-2.bmp"
LOAD_SPRITE_LEFT fireball(4),"graphics/ryu/ryu1_6100-7.bmp" 'frame 2 of traveling fireball 
'****
LOAD_SPRITE_LEFT fireballslow(3),"graphics/ryu/ryu1_6200-3.bmp" 'frame 1 of traveling fireball
LOAD_SPRITE_LEFT fireballslow(1),"graphics/ryu/ryu1_6200-1.bmp"
LOAD_SPRITE_LEFT fireballslow(2),"graphics/ryu/ryu1_6200-2.bmp"
LOAD_SPRITE_LEFT fireballslow(4),"graphics/ryu/ryu1_6200-7.bmp" 'frame 2 of traveling fireball 
'****
LOAD_SPRITE_LEFT shoryuken_ryu(1),"graphics/ryu/ryu1_1000-0.bmp"
LOAD_SPRITE_LEFT shoryuken_ryu(2),"graphics/ryu/ryu1_1000-1.bmp"
LOAD_SPRITE_LEFT shoryuken_ryu(3),"graphics/ryu/ryu1_1000-2.bmp"
LOAD_SPRITE_LEFT shoryuken_ryu(4),"graphics/ryu/ryu1_1000-3.bmp"
LOAD_SPRITE_LEFT shoryuken_ryu(5),"graphics/ryu/ryu1_1000-4.bmp"
LOAD_SPRITE_LEFT shoryuken_ryu(6),"graphics/ryu/ryu1_1000-5.bmp" 
LOAD_SPRITE_LEFT shoryuken_ryu(7),"graphics/ryu/ryu1_41-0.bmp" 
'****    
LOAD_SPRITE_LEFT tatsu_ryu(1),"graphics/ryu/ryu1_1100-0.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(2),"graphics/ryu/ryu1_1100-1.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(3),"graphics/ryu/ryu1_1100-2.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(4),"graphics/ryu/ryu1_1100-3.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(5),"graphics/ryu/ryu1_1100-4.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(6),"graphics/ryu/ryu1_1100-5.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(7),"graphics/ryu/ryu1_1100-6.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(8),"graphics/ryu/ryu1_1100-7.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(9),"graphics/ryu/ryu1_1100-8.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(10),"graphics/ryu/ryu1_1100-9.bmp"
LOAD_SPRITE_LEFT tatsu_ryu(11),"graphics/ryu/ryu1_1100-11.bmp"
'****
LOAD_SPRITE_LEFT standinglpunch_ryu(1),"graphics/ryu/ryu1_200-0.bmp"
LOAD_SPRITE_LEFT standinglpunch_ryu(2),"graphics/ryu/ryu1_200-1.bmp"
LOAD_SPRITE_LEFT standinglpunch_ryu(3),"graphics/ryu/ryu1_200-0.bmp"
'**** 
LOAD_SPRITE_LEFT jumpingpunch2_ryu(1),"graphics/ryu/ryu1_350-0.bmp"
LOAD_SPRITE_LEFT jumpingpunch2_ryu(2),"graphics/ryu/ryu1_350-1.bmp"
'****
LOAD_SPRITE_LEFT crouchinglpunch_ryu(1),"graphics/ryu/ryu1_300-0.bmp" 
LOAD_SPRITE_LEFT crouchinglpunch_ryu(2),"graphics/ryu/ryu1_300-1.bmp"
LOAD_SPRITE_LEFT crouchinglpunch_ryu(3),"graphics/ryu/ryu1_300-0.bmp" 
'**** 
LOAD_SPRITE_LEFT winpose_ryu(1),"graphics/ryu/ryu1_181-0.bmp"
LOAD_SPRITE_LEFT winpose_ryu(2),"graphics/ryu/ryu1_181-1.bmp"
LOAD_SPRITE_LEFT winpose_ryu(3),"graphics/ryu/ryu1_181-2.bmp"
LOAD_SPRITE_LEFT winpose_ryu(4),"graphics/ryu/ryu1_181-3.bmp"
LOAD_SPRITE_LEFT winpose_ryu(5),"graphics/ryu/ryu1_181-4.bmp"
'****
case "FREE"
ImageDestroy standing_ryu(1).spritebuf   
ImageDestroy standing_ryu(2).spritebuf   
ImageDestroy standing_ryu(3).spritebuf   
ImageDestroy standing_ryu(4).spritebuf   
ImageDestroy standing_ryu(5).spritebuf   
ImageDestroy standing_ryu(6).spritebuf   
'****
ImageDestroy walkback_ryu(1).spritebuf   
ImageDestroy walkback_ryu(2).spritebuf   
ImageDestroy walkback_ryu(3).spritebuf  
ImageDestroy walkback_ryu(4).spritebuf   
ImageDestroy walkback_ryu(5).spritebuf   
ImageDestroy walkback_ryu(6).spritebuf   
'****
ImageDestroy walkforward_ryu(1).spritebuf   
ImageDestroy walkforward_ryu(2).spritebuf   
ImageDestroy walkforward_ryu(3).spritebuf   
ImageDestroy walkforward_ryu(4).spritebuf   
ImageDestroy walkforward_ryu(5).spritebuf   
ImageDestroy walkforward_ryu(6).spritebuf   
'****
ImageDestroy crouch_ryu(1).spritebuf   
ImageDestroy crouch_ryu(2).spritebuf   
ImageDestroy crouch_ryu(3).spritebuf   
'****
ImageDestroy jumping_ryu(1).spritebuf   
ImageDestroy jumping_ryu(2).spritebuf   
ImageDestroy jumping_ryu(3).spritebuf   
ImageDestroy jumping_ryu(4).spritebuf   
ImageDestroy jumping_ryu(5).spritebuf   
ImageDestroy jumping_ryu(6).spritebuf   
ImageDestroy jumping_ryu(7).spritebuf   
'****
ImageDestroy return_ryu(3).spritebuf   
ImageDestroy return_ryu(2).spritebuf   
ImageDestroy return_ryu(1).spritebuf   
'****
ImageDestroy jumpingforward_ryu(1).spritebuf   
ImageDestroy jumpingforward_ryu(2).spritebuf   
ImageDestroy jumpingforward_ryu(3).spritebuf   
ImageDestroy jumpingforward_ryu(4).spritebuf   
ImageDestroy jumpingforward_ryu(5).spritebuf   
ImageDestroy jumpingforward_ryu(6).spritebuf 
ImageDestroy jumpingforward_ryu(7).spritebuf 
ImageDestroy jumpingforward_ryu(8).spritebuf 
'****
ImageDestroy jumpingback_ryu(1).spritebuf   
ImageDestroy jumpingback_ryu(2).spritebuf   
ImageDestroy jumpingback_ryu(3).spritebuf   
ImageDestroy jumpingback_ryu(4).spritebuf   
ImageDestroy jumpingback_ryu(5).spritebuf   
ImageDestroy jumpingback_ryu(6).spritebuf 
ImageDestroy jumpingback_ryu(7).spritebuf 
ImageDestroy jumpingback_ryu(8).spritebuf
'****
ImageDestroy standingpunch_ryu(1).spritebuf   
ImageDestroy standingpunch_ryu(2).spritebuf   
ImageDestroy standingpunch_ryu(3).spritebuf   
'****
ImageDestroy crouchingpunch_ryu(1).spritebuf   
ImageDestroy crouchingpunch_ryu(2).spritebuf   
ImageDestroy crouchingpunch_ryu(3).spritebuf   
ImageDestroy crouchingpunch_ryu(4).spritebuf   
ImageDestroy crouchingpunch_ryu(5).spritebuf   
'****
ImageDestroy jumpingpunch_ryu(1).spritebuf   
ImageDestroy jumpingpunch_ryu(2).spritebuf   
ImageDestroy jumpingpunch_ryu(3).spritebuf   
'****
ImageDestroy standingkick_ryu(1).spritebuf   
ImageDestroy standingkick_ryu(2).spritebuf   
ImageDestroy standingkick_ryu(3).spritebuf  
'****
ImageDestroy standinglkick_ryu(1).spritebuf   
ImageDestroy standinglkick_ryu(2).spritebuf   
ImageDestroy standinglkick_ryu(3).spritebuf
'****
ImageDestroy crouchingkick_ryu(1).spritebuf   
ImageDestroy crouchingkick_ryu(2).spritebuf   
ImageDestroy crouchingkick_ryu(3).spritebuf   
ImageDestroy crouchingkick_ryu(4).spritebuf   
ImageDestroy crouchingkick_ryu(5).spritebuf 
'****
ImageDestroy crouchinglkick_ryu(1).spritebuf   
ImageDestroy crouchinglkick_ryu(2).spritebuf   
ImageDestroy crouchinglkick_ryu(3).spritebuf 
'****
ImageDestroy jumpinglkick_ryu(1).spritebuf 
'****
ImageDestroy jumpinglkick2_ryu(1).spritebuf 
ImageDestroy jumpinglkick2_ryu(2).spritebuf 
ImageDestroy jumpinglkick2_ryu(3).spritebuf 
'****
ImageDestroy jumpingkick_ryu(1).spritebuf   
ImageDestroy jumpingkick_ryu(2).spritebuf   
ImageDestroy jumpingkick_ryu(3).spritebuf 
ImageDestroy jumpingkick_ryu(4).spritebuf
ImageDestroy jumpingkick_ryu(5).spritebuf
'****
ImageDestroy hadoken_ryu(1).spritebuf   
ImageDestroy hadoken_ryu(2).spritebuf   
ImageDestroy hadoken_ryu(3).spritebuf   
ImageDestroy hadoken_ryu(4).spritebuf   
ImageDestroy hadoken_ryu(5).spritebuf   
ImageDestroy hadoken_ryu(6).spritebuf   
ImageDestroy hadoken_ryu(7).spritebuf   
ImageDestroy hadoken_ryu(8).spritebuf   
'****
ImageDestroy fireball(1).spritebuf   
ImageDestroy fireball(2).spritebuf   
ImageDestroy fireball(3).spritebuf   
ImageDestroy fireball(4).spritebuf   
'****
ImageDestroy fireballslow(1).spritebuf   
ImageDestroy fireballslow(2).spritebuf   
ImageDestroy fireballslow(3).spritebuf   
ImageDestroy fireballslow(4).spritebuf
'****
ImageDestroy shoryuken_ryu(1).spritebuf   
ImageDestroy shoryuken_ryu(2).spritebuf   
ImageDestroy shoryuken_ryu(3).spritebuf   
ImageDestroy shoryuken_ryu(4).spritebuf   
ImageDestroy shoryuken_ryu(5).spritebuf   
ImageDestroy shoryuken_ryu(6).spritebuf  
ImageDestroy shoryuken_ryu(7).spritebuf 
'****   
ImageDestroy tatsu_ryu(1).spritebuf
ImageDestroy tatsu_ryu(2).spritebuf
ImageDestroy tatsu_ryu(3).spritebuf
ImageDestroy tatsu_ryu(4).spritebuf
ImageDestroy tatsu_ryu(5).spritebuf
ImageDestroy tatsu_ryu(6).spritebuf
ImageDestroy tatsu_ryu(7).spritebuf
ImageDestroy tatsu_ryu(8).spritebuf
ImageDestroy tatsu_ryu(9).spritebuf
ImageDestroy tatsu_ryu(10).spritebuf
ImageDestroy tatsu_ryu(11).spritebuf
'****
ImageDestroy standinglpunch_ryu(1).spritebuf   
ImageDestroy standinglpunch_ryu(2).spritebuf   
ImageDestroy standinglpunch_ryu(3).spritebuf   
'****
ImageDestroy jumpingpunch2_ryu(1).spritebuf   
ImageDestroy jumpingpunch2_ryu(2).spritebuf  
'****
ImageDestroy crouchinglpunch_ryu(1).spritebuf
ImageDestroy crouchinglpunch_ryu(2).spritebuf
ImageDestroy crouchinglpunch_ryu(3).spritebuf
'****
ImageDestroy winpose_ryu(1).spritebuf
ImageDestroy winpose_ryu(2).spritebuf
ImageDestroy winpose_ryu(3).spritebuf
ImageDestroy winpose_ryu(4).spritebuf
ImageDestroy winpose_ryu(5).spritebuf
'****
case else
end select
if commandz="LC" then
else
last_command=commandz    
end if    
END SUB
'===============================================================================
'assumes the keyboard handler is already installed

SUB mb_kb_clear_p1t
'clear Player 1's keyboard buffer timers only
dim as integer i
ibuff_p1_c=1
for i=1 to 30
'kb_p1(i)=""
kts_p1(i)=0
next
END SUB
'=============================================================================== 
function hadoken_motion_check_p1_left(byref hadoken_speed as string,hadoken as string,lhts as double,og_ts as double) as integer
'Facing LEFT hadoken motion detection

if hadoken="NO" then 
hadoken_motion_check_p1_left=0    
exit function
end if

dim as integer i,hc,cc
dim as double hct,st,hcts,hcte,et

'scan_codes_p1(1)=65 'A
'scan_codes_p1(2)=83 'S
'scan_codes_p1(3)=68 'D
'scan_codes_p1(4)=90 'Z
'scan_codes_p1(5)=88 'X
'scan_codes_p1(6)=67 'C
'scan_codes_p1(7)=38 'Up
'scan_codes_p1(8)=37 'Left
'scan_codes_p1(9)=40 'Down
'scan_codes_p1(10)=39 'Right



hc=0
hct=0
cc=0 'confirm count
for i=1 to 30
if kb_p1(i)="40D" then cc=cc+1
if kb_p1(i)="37D" then cc=cc+1
if kb_p1(i)="40U" then cc=cc+1
if kb_p1(i)="37U" then cc=cc+1
if cc>=3 then exit for
next

if cc>=3 then
mb_keyboard_buffer_sort kts_p1(),kb_p1()
else
hadoken_motion_check_p1_left=0
exit function
end if

for i=1 to 27
if kb_p1(i)="40D" and kts_p1(i)>og_ts then  

if kb_p1(i+1)="37D" or kb_p1(i+1)="40U" then
st=kts_p1(i+1) 'starting time stamp of motion
if kts_p1(i+1)>lhts then

hcts=st
if kb_p1(i+2)="40U" or kb_p1(i+2)="37D" or kb_p1(i+2)="37U" then
hcte=kts_p1(i+2)


if time_stamp_kp1(2) < st then
if time_stamp_kp1(4) < st then   
et=time_stamp_kp1(1) 'ending time stamp of motion
if time_stamp_kp1(3)>time_stamp_kp1(1) then et=time_stamp_kp1(3)'SLOW hadoken speed:hadoken_speed="SLOW"
if (et-st)<=.3 then hc=1
hct=hcte-hcts
end if
end if

if hc=1 and hct<=.3 and time_stamp_kp1(1)>st and st>og_ts then

mb_kb_clear_p1
hadoken_motion_check_p1_left=1
exit function
end if 

if hc=1 and hct<=.3 and time_stamp_kp1(3)>st then
hadoken_speed="SLOW"
mb_kb_clear_p1
hadoken_motion_check_p1_left=1
exit function
end if 

end if
end if

end if

else
    
end if

next

hadoken_motion_check_p1_left=0
end function   
'===============================================================================
function hadoken_motion_check_p1(byref hadoken_speed as string,hadoken as string,lhts as double,og_ts as double) as integer
'Facing RIGHT hadoken motion detection

if hadoken="NO" then 
hadoken_motion_check_p1=0    
exit function
end if

dim as integer i,hc,cc
dim as double hct,st,hcts,hcte,et

'scan_codes_p1(1)=65 'A
'scan_codes_p1(2)=83 'S
'scan_codes_p1(3)=68 'D
'scan_codes_p1(4)=90 'Z
'scan_codes_p1(5)=88 'X
'scan_codes_p1(6)=67 'C
'scan_codes_p1(7)=38 'Up
'scan_codes_p1(8)=37 'Left
'scan_codes_p1(9)=40 'Down
'scan_codes_p1(10)=39 'Right


hc=0
hct=0
cc=0 'confirm count
for i=1 to 30
if kb_p1(i)="40D" then cc=cc+1
if kb_p1(i)="39D" then cc=cc+1
if kb_p1(i)="40U" then cc=cc+1
if kb_p1(i)="39U" then cc=cc+1
if cc>=3 then exit for
next

if cc>=3 then
mb_keyboard_buffer_sort kts_p1(),kb_p1()
else
hadoken_motion_check_p1=0
exit function
end if

for i=1 to 27
if kb_p1(i)="40D" and kts_p1(i)>og_ts then  

if kb_p1(i+1)="39D" or kb_p1(i+1)="40U" then
st=kts_p1(i+1) 'starting time stamp of motion
if kts_p1(i+1)>lhts then

hcts=st
if kb_p1(i+2)="40U" or kb_p1(i+2)="39D" or kb_p1(i+2)="39U" then
hcte=kts_p1(i+2)


if time_stamp_kp1(2) < st then
if time_stamp_kp1(4) < st then   
et=time_stamp_kp1(1) 'ending time stamp of motion
if time_stamp_kp1(3)>time_stamp_kp1(1) then et=time_stamp_kp1(3)'SLOW hadoken speed:hadoken_speed="SLOW"
if (et-st)<=.3 then hc=1
hct=hcte-hcts
end if
end if

if hc=1 and hct<=.3 and time_stamp_kp1(1)>st and st>og_ts then

mb_kb_clear_p1
hadoken_motion_check_p1=1
exit function
end if 

if hc=1 and hct<=.3 and time_stamp_kp1(3)>st then
hadoken_speed="SLOW"
mb_kb_clear_p1
hadoken_motion_check_p1=1
exit function
end if 

end if
end if

end if

else
    
end if

next

hadoken_motion_check_p1=0
end function  
'=============================================================================== 
function shoryuken_motion_check_p1_left(d_state as string,byref shoryuken_speed as string,og_ts as double) as integer 
'Facing LEFT shoryuken motion detection

if d_state="ON GROUND" then
else
exit function    
end if

dim as integer i,hc,cc
dim as double hct,st,hcts,hcte,et

'scan_codes_p1(1)=65 'A
'scan_codes_p1(2)=83 'S
'scan_codes_p1(3)=68 'D
'scan_codes_p1(4)=90 'Z
'scan_codes_p1(5)=88 'X
'scan_codes_p1(6)=67 'C
'scan_codes_p1(7)=38 'Up
'scan_codes_p1(8)=37 'Left
'scan_codes_p1(9)=40 'Down
'scan_codes_p1(10)=39 'Right


hc=0
hct=0
cc=0 'confirm count
for i=1 to 30
if kb_p1(i)="40D" then cc=cc+1
if kb_p1(i)="37D" then cc=cc+1
if kb_p1(i)="40U" then cc=cc+1
if kb_p1(i)="37U" then cc=cc+1
if cc>=3 then exit for
next

if cc>=3 then
mb_keyboard_buffer_sort kts_p1(),kb_p1()
else
shoryuken_motion_check_p1_left=0
exit function
end if

for i=1 to 27
if kb_p1(i)="37D" and kts_p1(i)>og_ts then  

if kb_p1(i+1)="40U" or kb_p1(i+1)="40D" then
st=kts_p1(i+1) 'starting time stamp of motion


hcts=st
if kb_p1(i+2)="37D" or kb_p1(i+2)="37U" then
hcte=kts_p1(i+2)


if time_stamp_kp1(2) < st then
if time_stamp_kp1(4) < st then   
et=time_stamp_kp1(1) 'ending time stamp of motion
if time_stamp_kp1(3)>time_stamp_kp1(1) then et=time_stamp_kp1(3)'SLOW shoryuken speed:shoryuken_speed="SLOW"
if (et-st)<=.3 then hc=1
hct=hcte-hcts
end if
end if

if hc=1 and hct<=.3 and time_stamp_kp1(1)>st and st>og_ts then

mb_kb_clear_p1
shoryuken_motion_check_p1_left=1
exit function
end if 

if hc=1 and hct<=.3 and time_stamp_kp1(3)>st then
shoryuken_speed="SLOW"
mb_kb_clear_p1
shoryuken_motion_check_p1_left=1
exit function
end if 


end if

end if

else
    
end if

next

shoryuken_motion_check_p1_left=0
end function
'===============================================================================
function shoryuken_motion_check_p1(d_state as string,byref shoryuken_speed as string,og_ts as double) as integer 
'Facing RIGHT shoryuken motion detection


if d_state="ON GROUND" then
else
exit function    
end if

dim as integer i,hc,cc
dim as double hct,st,hcts,hcte,et

'scan_codes_p1(1)=65 'A
'scan_codes_p1(2)=83 'S
'scan_codes_p1(3)=68 'D
'scan_codes_p1(4)=90 'Z
'scan_codes_p1(5)=88 'X
'scan_codes_p1(6)=67 'C
'scan_codes_p1(7)=38 'Up
'scan_codes_p1(8)=37 'Left
'scan_codes_p1(9)=40 'Down
'scan_codes_p1(10)=39 'Right


hc=0
hct=0
cc=0 'confirm count
for i=1 to 30
if kb_p1(i)="40D" then cc=cc+1
if kb_p1(i)="39D" then cc=cc+1
if kb_p1(i)="40U" then cc=cc+1
if kb_p1(i)="39U" then cc=cc+1
if cc>=3 then exit for
next

if cc>=3 then
mb_keyboard_buffer_sort kts_p1(),kb_p1()
else
shoryuken_motion_check_p1=0
exit function
end if

for i=1 to 27
if kb_p1(i)="39D" and kts_p1(i)>og_ts then  

if kb_p1(i+1)="40U" or kb_p1(i+1)="40D" then
st=kts_p1(i+1) 'starting time stamp of motion


hcts=st
if kb_p1(i+2)="39D" or kb_p1(i+2)="39U" then
hcte=kts_p1(i+2)


if time_stamp_kp1(2) < st then
if time_stamp_kp1(4) < st then   
et=time_stamp_kp1(1) 'ending time stamp of motion
if time_stamp_kp1(3)>time_stamp_kp1(1) then et=time_stamp_kp1(3)'SLOW shoryuken speed:shoryuken_speed="SLOW"
if (et-st)<=.3 then hc=1
hct=hcte-hcts
end if
end if

if hc=1 and hct<=.3 and time_stamp_kp1(1)>st and st>og_ts then

mb_kb_clear_p1
shoryuken_motion_check_p1=1
exit function
end if 

if hc=1 and hct<=.3 and time_stamp_kp1(3)>st then
shoryuken_speed="SLOW"
mb_kb_clear_p1
shoryuken_motion_check_p1=1
exit function
end if 


end if

end if

else
    
end if

next

shoryuken_motion_check_p1=0
end function
'===============================================================================
function tatsu_motion_check_p1_left(byref tatsu_speed as string,og_ts as double) as integer 
'Facing LEFT tatsu motion detection

'scan_codes_p1(1)=65 'A
'scan_codes_p1(2)=83 'S
'scan_codes_p1(3)=68 'D
'scan_codes_p1(4)=90 'Z
'scan_codes_p1(5)=88 'X
'scan_codes_p1(6)=67 'C
'scan_codes_p1(7)=38 'Up
'scan_codes_p1(8)=37 'Left
'scan_codes_p1(9)=40 'Down
'scan_codes_p1(10)=39 'Right
dim as integer i,hc,cc
dim as double hct,st,hcts,hcte,et

hc=0
hct=0
cc=0 'confirm count
for i=1 to 30

if kb_p1(i)="40D" then cc=cc+1
if kb_p1(i)="39D" then cc=cc+1
if kb_p1(i)="40U" then cc=cc+1
if kb_p1(i)="39U" then cc=cc+1
if cc>=3 then exit for
next

if cc>=3 then
mb_keyboard_buffer_sort kts_p1(),kb_p1()
else
tatsu_motion_check_p1_left=0
exit function
end if

for i=1 to 27
if kb_p1(i)="40D" then 

if kb_p1(i+1)="39D" or kb_p1(i+1)="40U" then
st=kts_p1(i+1) 'starting time stamp of motion
hcts=st
if kb_p1(i+2)="40U" or kb_p1(i+2)="39D" or kb_p1(i+2)="39U" then
hcte=kts_p1(i+2)

if time_stamp_kp1(1) < st then
if time_stamp_kp1(3) < st then    
   
if time_stamp_kp1(5) < st then
if time_stamp_kp1(6) < st then
et=time_stamp_kp1(2) 'ending time stamp of motion
if time_stamp_kp1(4)>time_stamp_kp1(2) then et=time_stamp_kp1(4)':tatsu_speed="SLOW"
if (et-st)<=.2 then hc=1
hct=hcte-hcts
end if
end if

end if
end if

if hc=1 and hct<=.2 and time_stamp_kp1(2)>st and st>og_ts then

mb_kb_clear_p1
tatsu_motion_check_p1_left=1
exit function
end if 

if hc=1 and hct<=.2 and time_stamp_kp1(4)>st then
tatsu_speed="SLOW"
mb_kb_clear_p1
tatsu_motion_check_p1_left=1
exit function
end if 

end if
end if


else
    
end if    
next

tatsu_motion_check_p1_left=0
end function
'===============================================================================
function tatsu_motion_check_p1(byref tatsu_speed as string,og_ts as double) as integer 
'Facing RIGHT tatsu motion detection

'scan_codes_p1(1)=65 'A
'scan_codes_p1(2)=83 'S
'scan_codes_p1(3)=68 'D
'scan_codes_p1(4)=90 'Z
'scan_codes_p1(5)=88 'X
'scan_codes_p1(6)=67 'C
'scan_codes_p1(7)=38 'Up
'scan_codes_p1(8)=37 'Left
'scan_codes_p1(9)=40 'Down
'scan_codes_p1(10)=39 'Right
dim as integer i,hc,cc
dim as double hct,st,hcts,hcte,et

hc=0
hct=0
cc=0 'confirm count
for i=1 to 30

if kb_p1(i)="40D" then cc=cc+1
if kb_p1(i)="37D" then cc=cc+1
if kb_p1(i)="40U" then cc=cc+1
if kb_p1(i)="37U" then cc=cc+1
if cc>=3 then exit for
next

if cc>=3 then
mb_keyboard_buffer_sort kts_p1(),kb_p1()
else
tatsu_motion_check_p1=0
exit function
end if

for i=1 to 27
if kb_p1(i)="40D" then 

if kb_p1(i+1)="37D" or kb_p1(i+1)="40U" then
st=kts_p1(i+1)'starting time stamp of motion
hcts=st
if kb_p1(i+2)="40U" or kb_p1(i+2)="37D" or kb_p1(i+2)="37U" then
hcte=kts_p1(i+2)

if time_stamp_kp1(1) < st then
if time_stamp_kp1(3) < st then    
   
if time_stamp_kp1(5) < st then
if time_stamp_kp1(6) < st then
et=time_stamp_kp1(2) 'ending time stamp of motion
if time_stamp_kp1(4)>time_stamp_kp1(2) then et=time_stamp_kp1(4)':tatsu_speed="SLOW"
if (et-st)<=.2 then hc=1
hct=hcte-hcts
end if
end if
'end if
end if
end if

if hc=1 and hct<=.2 and time_stamp_kp1(2)>st and st>og_ts then

mb_kb_clear_p1
tatsu_motion_check_p1=1
exit function
end if 

if hc=1 and hct<=.2 and time_stamp_kp1(4)>st then
tatsu_speed="SLOW"
mb_kb_clear_p1
tatsu_motion_check_p1=1
exit function
end if 

end if
end if


else
    
end if    
next

tatsu_motion_check_p1=0
end function
'===============================================================================
SUB SOUND_RYU(commandz as string)
static as integer hWave(9),sound(9),lasts
dim i as integer
select case ucase(commandz)
case "LOAD"
LOAD_MP3_TO_MEM "sounds/SF_Swing.mp3",hWave(0),sound(0),@sound(0) 
LOAD_MP3_TO_MEM "sounds/Hadoken1.mp3",hWave(1),sound(1),@sound(1)
LOAD_MP3_TO_MEM "sounds/Jumping.mp3",hWave(2),sound(2),@sound(2)
LOAD_MP3_TO_MEM "sounds/shoryuken.mp3",hWave(3),sound(3),@sound(3) 
LOAD_MP3_TO_MEM "sounds/Ryu_Tatsu_voice.mp3",hWave(4),sound(4),@sound(4) 
LOAD_MP3_TO_MEM "sounds/Ryu_Tatsu_kick.mp3",hWave(5),sound(5),@sound(5) 
LOAD_MP3_TO_MEM "sounds/Ryu_Lpunch.mp3",hWave(6),sound(6),@sound(6) 
LOAD_MP3_TO_MEM "sounds/Ryu_Lkick.mp3",hWave(7),sound(7),@sound(7) 
LOAD_MP3_TO_MEM "sounds/WIN_R.mp3",hWave(8),sound(8),@sound(8)
case "FREE"
for i=0 to 8
FREE_SOUND_MEMORY hWave(i)
next
case "SWING"
PLAY_SOUND_MC sound(0)  
lasts=0
case "HADOKEN"
STOP_SOUND sound(1)    
PLAY_SOUND sound(1) 
lasts=1
case "JUMPING"
PLAY_SOUND_MC sound(2) 
lasts=2
case "SHORYUKEN"
STOP_SOUND sound(3)    
PLAY_SOUND sound(3) 
lasts=3
case "TATSU1"
STOP_SOUND sound(4)    
PLAY_SOUND sound(4) 
lasts=4
case "TATSU2"
PLAY_SOUND_MC sound(5) 
lasts=5    
case "LPUNCH"
PLAY_SOUND_MC sound(6) 
lasts=6  
case "LKICK"
PLAY_SOUND_MC sound(7) 
lasts=7
case "WIN"
PLAY_SOUND_MC sound(8) 
lasts=8
case "STOP"
STOP_SOUND sound(lasts)    
case else
end select
END SUB
'===============================================================================
SUB CONTROL_P1_RYU(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref hadoken_speed as string,d_state as string,fireball_state as string,hadoken as string,lhts as double,shoryuken as string,attack as string,shoryuken_speed as string,tatsu_speed as string,og_ts as double)
static t as double  
static fp as integer
static as string togk
static as string pk2
static i as integer
static p_keys(1 to 10) as integer 'previously pressed keys



if fp=0 then t=timer
if fp=0 then fp=1 

input_state="NOTHING"

if kcs_p1(3)=1 and kcs_p1(4)=1  then 'Win Pose
input_state="WIN"
input_state2=input_state
exit sub
end if 

if kcs_p1(7)=1 and kcs_p1(8)=1  then 'Jumping Back 
if input_state<>"JUMPING" then
input_state="JUMPINGBACK"
input_state2=input_state  
exit sub
end if
end if

if kcs_p1(7)=1 and kcs_p1(10)=1  then 'Jumping Forward 
'if kcs_p1(3)=1 then
if input_state<>"JUMPING" then
input_state="JUMPINGFORWARD"
input_state2=input_state 
exit sub
end if
end if

if kcs_p1(8)=1  then 'Pressing Left 
input_state="LEFT"
input_state2=input_state 
end if

if kcs_p1(10)=1  then 'Pressing Right 
input_state="RIGHT"
input_state2=input_state 
end if


if kcs_p1(7)=1  then 'Pressing Up 
if input_state<>"JUMPINGBACK" and input_state<>"JUMPINGFORWARD" then
input_state="JUMPING"
input_state2=input_state 
end if
end if

if kcs_p1(9)=1  then 'Pressing Down 
input_state="DOWN"
input_state2=input_state 
end if

if d_state="ON GROUND" then

pk2=kb_p1(30)
mb_keyboard_buffer_sort kts_p1(),kb_p1()

if fireball_state="" and hadoken="YES" then
if hadoken_motion_check_p1(hadoken_speed,hadoken,lhts,og_ts)=1 then 'Hadoken Motion Check  
mb_kb_clear_p1
input_state="HADOKEN"
exit sub
end if
end if

if shoryuken_motion_check_p1(d_state,shoryuken_speed,og_ts)=1  then 'Shoryuken Motion Check 
if shoryuken="YES" and attack="YES" then
mb_kb_clear_p1 
input_state="SHORYUKEN"
exit sub
end if
end if

if tatsu_motion_check_p1(tatsu_speed,og_ts)=1  then 'Tatsu Motion Check 
mb_kb_clear_p1 
input_state="TATSU"
exit sub
end if
end if

if kcs_p1(9)=1 and kcs_p1(1)=1  then 'Crouching Punch 
if kcs_p1(1)=1 and p_keys(1)=0 then input_state="CROUCHINGPUNCH":p_keys(1)=1:input_state2="DOWN":input_state3="PUNCH"  
if kcs_p1(1)=0 and p_keys(1)=1 then p_keys(1)=0 
exit sub
end if 

if kcs_p1(9)=1 and kcs_p1(3)=1  then 'Crouching Light Punch 
if kcs_p1(3)=1 and p_keys(3)=0 then input_state="CROUCHINGPUNCH2":p_keys(3)=1:input_state2="DOWN":input_state3="LPUNCH"  
if kcs_p1(3)=0 and p_keys(3)=1 then p_keys(3)=0 
exit sub
end if


if kcs_p1(9)=1 and kcs_p1(2)=1  then 'Crouching Kick 
if kcs_p1(2)=1 and p_keys(2)=0 then input_state="CROUCHINGKICK":p_keys(2)=1:input_state2="DOWN":input_state3="KICK"
if kcs_p1(2)=0 and p_keys(2)=1 then p_keys(2)=0 
exit sub
end if

if kcs_p1(9)=1 and kcs_p1(4)=1  then 'Crouching Light Kick 
if kcs_p1(4)=1 and p_keys(4)=0 then input_state="CROUCHINGKICK2":p_keys(4)=1:input_state2="DOWN":input_state3="LKICK"
if kcs_p1(4)=0 and p_keys(4)=1 then p_keys(4)=0 
exit sub
end if

if kcs_p1(1)=1 and p_keys(1)=0 then input_state="PUNCH":p_keys(1)=1:input_state3="PUNCH"'Punch
if kcs_p1(1)=0 and p_keys(1)=1 then p_keys(1)=0:input_state3="PUNCH_RELEASE"    
    
if kcs_p1(2)=1 and p_keys(2)=0 then input_state="KICK":p_keys(2)=1:input_state3="KICK"'Kick
if kcs_p1(2)=0 and p_keys(2)=1 then p_keys(2)=0:input_state3="KICK_RELEASE"

if kcs_p1(4)=1 and p_keys(4)=0 then input_state="LKICK":p_keys(4)=1:input_state3="LKICK"'Light Kick
if kcs_p1(4)=0 and p_keys(4)=1 then p_keys(4)=0:input_state3="LKICK_RELEASE"

if kcs_p1(3)=1 and p_keys(3)=0 then input_state="LPUNCH":p_keys(3)=1:input_state3="LPUNCH"'Light Punch
if kcs_p1(3)=0 and p_keys(3)=1 then p_keys(3)=0:input_state3="LPUNCH_RELEASE" 

END SUB
'===============================================================================
SUB CONTROL_P1_LEFT_RYU(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref hadoken_speed as string,d_state as string,fireball_state as string,hadoken as string,lhts as double,shoryuken as string,attack as string,shoryuken_speed as string,tatsu_speed as string,og_ts as double)
static t as double 
static fp as integer
static as string togk
static as string pk2
static i as integer
static p_keys(1 to 10) as integer 'previously pressed keys



if fp=0 then t=timer
if fp=0 then fp=1

input_state="NOTHING"

if kcs_p1(3)=1 and kcs_p1(4)=1  then 'Win Pose
input_state="WIN"
input_state2=input_state
exit sub
end if
  
if kcs_p1(7)=1 and kcs_p1(10)=1  then 'Jumping Back
if input_state<>"JUMPING" then
input_state="JUMPINGBACK"
input_state2=input_state  
exit sub
end if
end if

 
if kcs_p1(7)=1 and kcs_p1(8)=1  then 'Jumping Forward 

if input_state<>"JUMPING" then
input_state="JUMPINGFORWARD"
input_state2=input_state 
exit sub
end if
end if

if kcs_p1(8)=1  then 'Pressing Left 
input_state="LEFT"
input_state2=input_state 
end if

if kcs_p1(10)=1  then 'Pressing Right 
input_state="RIGHT"
input_state2=input_state 
end if


if kcs_p1(7)=1  then 'Pressing Up 
if input_state<>"JUMPINGBACK" and input_state<>"JUMPINGFORWARD" then
input_state="JUMPING"
input_state2=input_state 
end if
end if

if kcs_p1(9)=1  then 'Pressing Down 
input_state="DOWN"
input_state2=input_state 
end if

if d_state="ON GROUND" then

pk2=kb_p1(30)
mb_keyboard_buffer_sort kts_p1(),kb_p1()

if fireball_state="" and hadoken="YES" then
if hadoken_motion_check_p1_left(hadoken_speed,hadoken,lhts,og_ts)=1 then 'Hadoken Motion Check   
mb_kb_clear_p1
input_state="HADOKEN"
exit sub
end if
end if

if shoryuken_motion_check_p1_left(d_state,shoryuken_speed,og_ts)=1  then 'Shoryuken Motion Check 
if shoryuken="YES" and attack="YES" then
mb_kb_clear_p1 
input_state="SHORYUKEN"
exit sub
end if
end if

if tatsu_motion_check_p1_left(tatsu_speed,og_ts)=1  then 'Tatsu Motion Check 
mb_kb_clear_p1 
input_state="TATSU"
exit sub
end if
end if

if kcs_p1(9)=1 and kcs_p1(1)=1  then 'Crouching Punch 
if kcs_p1(1)=1 and p_keys(1)=0 then input_state="CROUCHINGPUNCH":p_keys(1)=1:input_state2="DOWN":input_state3="PUNCH"  
if kcs_p1(1)=0 and p_keys(1)=1 then p_keys(1)=0 
exit sub
end if 

if kcs_p1(9)=1 and kcs_p1(3)=1  then 'Crouching Light Punch 
if kcs_p1(3)=1 and p_keys(3)=0 then input_state="CROUCHINGPUNCH2":p_keys(3)=1:input_state2="DOWN":input_state3="LPUNCH"  
if kcs_p1(3)=0 and p_keys(3)=1 then p_keys(3)=0 
exit sub
end if


if kcs_p1(9)=1 and kcs_p1(2)=1  then 'Crouching Kick 
if kcs_p1(2)=1 and p_keys(2)=0 then input_state="CROUCHINGKICK":p_keys(2)=1:input_state2="DOWN":input_state3="KICK"
if kcs_p1(2)=0 and p_keys(2)=1 then p_keys(2)=0 
exit sub
end if

if kcs_p1(9)=1 and kcs_p1(4)=1  then 'Crouching Light Kick 
if kcs_p1(4)=1 and p_keys(4)=0 then input_state="CROUCHINGKICK2":p_keys(4)=1:input_state2="DOWN":input_state3="LKICK"
if kcs_p1(4)=0 and p_keys(4)=1 then p_keys(4)=0 
exit sub
end if

if kcs_p1(1)=1 and p_keys(1)=0 then input_state="PUNCH":p_keys(1)=1:input_state3="PUNCH"'Punch
if kcs_p1(1)=0 and p_keys(1)=1 then p_keys(1)=0:input_state3="PUNCH_RELEASE"    
    
if kcs_p1(2)=1 and p_keys(2)=0 then input_state="KICK":p_keys(2)=1:input_state3="KICK"'Kick
if kcs_p1(2)=0 and p_keys(2)=1 then p_keys(2)=0:input_state3="KICK_RELEASE"

if kcs_p1(4)=1 and p_keys(4)=0 then input_state="LKICK":p_keys(4)=1:input_state3="LKICK"'Light Kick
if kcs_p1(4)=0 and p_keys(4)=1 then p_keys(4)=0:input_state3="LKICK_RELEASE"

if kcs_p1(3)=1 and p_keys(3)=0 then input_state="LPUNCH":p_keys(3)=1:input_state3="LPUNCH"'Light Punch
if kcs_p1(3)=0 and p_keys(3)=1 then p_keys(3)=0:input_state3="LPUNCH_RELEASE" 

END SUB
'===============================================================================
SUB JUMPING_FORWARD_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGFORWARD" and third_state<>"JUMPING" and third_state<>"JUMPINGBACK" then 
else 
fp=0    
exit sub    
end if


static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05
static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'Distance from ground
static current_frame2 as integer

if fp=0 then
'Initialize Jump
SOUND_RYU "JUMPING" 'Jumping Sound 
d_state="IN AIR"
input_status="OFF"
attack="NO"
third_state="JUMPINGFORWARD"
current_state1="JUMPINGFORWARD"
rf=""

count=0
t=timer
t2=timer
jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=1
wall2=610
fp=1
end if




if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and count>=1 and count<upward then
'Rising
rf="RISING"
current_frame2=1
if (timer-t)>=.004 then

count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDRISING"
end if
end if 


if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and (upward-count)<=20 and count<upward then current_frame2=2:efc=2

if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and count>=upward and dbf>1 then
'Falling
rf="FALLING"
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame2=efc
if (timer-t)>=.004 then

count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDFALLING"
end if
end if




if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and count=0 and rf="" then
'Begin Jump
current_frame2=1


count=count+1

rf="RISING"
end if    


if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and dbf<=1 then
current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
i_state="Standing"
current_state1="STANDING"
attack="YES"
second_state=""
third_state=""
fp=0
rf=""
end if
end if




if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="RISING" then input_status="ON":attack="YES"
if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="FALLING" and dbf>min_d then input_status="ON":attack="YES"
if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="FALLING" and dbf<min_d then input_status="OFF":attack="NO"

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'===============================================================================
SUB JUMPING_BACK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGBACK" and third_state<>"JUMPING" and third_state<>"JUMPINGFORWARD" then 
else
fp=0    
exit sub    
end if

static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05
static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'Distance from ground
static current_frame2 as integer


if fp=0 then 
'Initialize Jump
SOUND_RYU "JUMPING" 'Jumping Sound
d_state="IN AIR"
input_status="OFF"
count=0
attack="NO"
third_state="JUMPINGBACK"
current_state1="JUMPINGBACK"
rf=""
t=timer
t2=timer
jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=1
wall2=20
fp=1
end if




if current_state1="JUMPINGBACK" and d_state="IN AIR" and count>=1 and count<upward then
'Rising
rf="RISING"
current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKRISING"
end if
end if 



if current_state1="JUMPINGBACK" and d_state="IN AIR" and (upward-count)<=20 and count<upward then current_frame2=2:efc=2


if current_state1="JUMPINGBACK" and d_state="IN AIR" and count>=upward and dbf>1 then
'Falling
rf="FALLING"
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame2=efc
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKFALLING"
end if
end if




if current_state1="JUMPINGBACK" and d_state="IN AIR" and count=0 and rf="" then
'Begin Jump
current_frame2=1


input_status="OFF"
count=count+1

rf="RISING"
end if    


if current_state1="JUMPINGBACK" and d_state="IN AIR" and dbf<=1 then

current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
i_state="Standing"
current_state1="STANDING"
attack="YES"
second_state=""
third_state=""
rf=""
fp=0
end if
end if


if d_state="IN AIR" and rf="RISING" and current_state1="JUMPINGBACK" then input_status="ON":attack="YES"
if d_state="IN AIR" and rf="FALLING" and current_state1="JUMPINGBACK" and dbf>min_d then input_status="ON":attack="YES"
if d_state="IN AIR" and rf="FALLING" and current_state1="JUMPINGBACK" and dbf<min_d then input_status="OFF":attack="NO"

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'===============================================================================  
SUB JUMPING_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer



if current_state1="JUMPING" and third_state<>"JUMPINGFORWARD" and third_state<>"JUMPINGBACK" then
else
fp=0    
exit sub    
end if 

static count as integer
static current_frame2 as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1
static jumping_distance as integer
static rf as string 'Rise and Fall status
static re_entry as string


dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'Distance from ground

if d_state="ON GROUND" and fp=0 then'and input_status="ON" and pstate<>"JUMPING" then'fp=0 then
'Initialize Jump
SOUND_RYU "JUMPING" 'Jumping Sound
rf=""
attack="YES"
current_frame2=1
current_state1="JUMPING"
d_state="IN AIR"
input_status="OFF"
count=0
jump_count=0
fp=1
third_state="JUMPING"
re_entry="YES"

t=timer
t2=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
end if


if third_state="JUMPINGPUNCH" or third_state="JUMPINGKICK" or third_state="JUMPINGPUNCH2" then

count=jump_count
rf=second_state
input_status="OFF"
attack="NO"

end if     


if d_state="IN AIR" and count>=1 and count<upward then
'Rising

rf="RISING"
current_frame2=2
if (timer-t)>=.004 then

count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGRISING"
end if
end if 

if d_state="IN AIR" and (upward-count)<=20 and count<upward then current_frame2=3:efc=3


if d_state="IN AIR" and count>=upward and dbf>1 then
'Falling

rf="FALLING"
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame2=efc
if (timer-t)>=.004 then

count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGFALLING"
end if
end if



if d_state="IN AIR" and count=0 and rf="" then
'Begin Jump
current_frame2=1


count=count+1

rf="RISING"
end if    

if d_state="IN AIR" and dbf<=1 then
current_frame2=1
if (timer-t)>=.1 then
input_status="ON"

jump_count=0
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
i_state="Standing"
current_state1="STANDING"
second_state=""
pstate="STANDING"
third_state=""
rf=""
fp=0
re_entry="YES"
attack="YES"
end if
end if

current_frame1=current_frame2

jump_count=count

if d_state="IN AIR" and rf="RISING"  and attack="YES" then input_status="ON"
if d_state="IN AIR" and rf="FALLING" and attack="YES" and dbf>min_d then input_status="ON":
if d_state="IN AIR" and rf="FALLING" and dbf<min_d then input_status="OFF":

second_state=rf 


END SUB
'=============================================================================== 
SUB JUMPING_FORWARD_PUNCH_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGFORWARDPUNCH" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
else
fp=0    
exit sub    
end if



static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer

static true_frame as integer
static t3 as double







static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "SWING" 'Punching Sound
 
attack="NO"
'Initialize Jump


distance_increment1=1 'X Axis increment


min_d=40

wall2=610



count=0

d_state="IN AIR"
input_status="OFF"
count=jump_count
rf=second_state

if rf="" then rf="RISING"

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if


if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then
'Rising

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDPUNCHRISING"
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDPUNCHFALLING"
end if
end if


if true_frame<=3 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame2=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame2=7:d_state="IN AIR"


if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"

current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state=""
jump_count=0
fp=0

rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB 
'=============================================================================== 
SUB JUMPING_FORWARD_PUNCH2_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGFORWARDPUNCH2" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
else
fp=0    
exit sub    
end if



static count as integer
static i_state2 as string
static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.8
'frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'Distance from ground
static current_frame2 as integer

static true_frame as integer
static t3 as double







static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "LPUNCH" 'Light Punching Sound
 
attack="NO"
'Initialize Jump


distance_increment1=1 'X Axis increment


min_d=40

wall2=610



count=0

d_state="IN AIR"
input_status="OFF"
count=jump_count
rf=second_state

if rf="" then rf="RISING"

t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if


if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then
'Rising

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDPUNCH2RISING"
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDPUNCH2FALLING"
end if
end if


if true_frame<=2 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
if true_frame>2 then true_frame=2
efc=2
end if
end if






if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"

current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state=""
jump_count=0
fp=0

rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'===============================================================================
SUB JUMPING_BACK_PUNCH_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKPUNCH" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
else
fp=0    
exit sub    
end if


static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer
static true_frame as integer
static t3 as double


'Initialize Jump

jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=10


static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "SWING" 'Punching Sound 
attack="NO"
count=0

d_state="IN AIR"
input_status="OFF"
count=jump_count
rf=second_state

if rf="" then rf="RISING"


t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if

  
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKPUNCHRISING"
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKPUNCHFALLING"
end if
end if


if true_frame<=3 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame2=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame2=7:d_state="IN AIR"

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then

current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state="" 
jump_count=0
fp=0

rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'===============================================================================
SUB JUMPING_BACK_PUNCH2_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKPUNCH2" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
else
fp=0    
exit sub    
end if


static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.8


static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string
static wall2 as integer

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer
static true_frame as integer
static t3 as double


'Initialize Jump

jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=10


static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "LPUNCH" 'Light Punching Sound 
attack="NO"
count=0

d_state="IN AIR"
input_status="OFF"
count=jump_count
rf=second_state

if rf="" then rf="RISING"


t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if

  
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKPUNCH2RISING"
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKPUNCH2FALLING"
end if
end if


if true_frame<=2 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
if true_frame>2 then true_frame=2
efc=2
end if
end if





if d_state="IN AIR" and dbf<=1 and rf="FALLING" then

current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state=""
jump_count=0
fp=0

rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'=============================================================================== 
SUB JUMPING_FORWARD_KICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer 

if current_state1="JUMPINGFORWARDKICK" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
else
fp=0    
exit sub    
end if

static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer
static true_frame as integer
static t3 as double



jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=610


static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "JUMPING" 'Kicking Sound 

'Initialize Jump
count=0

d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count
rf=second_state

if rf="" then rf="RISING"


t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if

 
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDKICKRISING"
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDKICKFALLING"
end if
end if


if true_frame<=3 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame2=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame2=7:d_state="IN AIR"

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then

current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state=""
jump_count=0
fp=0

rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB 
'=============================================================================== 
SUB JUMPING_FORWARD_LKICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer 

if current_state1="JUMPINGFORWARDKICK2" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
else
fp=0    
exit sub    
end if

static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.1
frame_delay2(3)=.2

static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer
static true_frame as integer
static t3 as double



jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=610


static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "LKICK" 'Light Kicking Sound 

'Initialize Jump
count=0

d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count
rf=second_state

if rf="" then rf="RISING"


t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if

 
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDKICK2RISING" 
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=3
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGFORWARDKICK2FALLING"
end if
end if


if true_frame<=3 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame2=3:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame2=3:d_state="IN AIR"

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then

current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state=""
jump_count=0
fp=0

rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB 
'===============================================================================
SUB JUMPING_BACK_KICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKKICK" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
else
fp=0    
exit sub    
end if

static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer

static true_frame as integer
static t3 as double



jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=10


static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "JUMPING" 'Kicking Sound 
attack="NO"
'Initialize Jump
count=0

d_state="IN AIR"
input_status="OFF"
count=jump_count
rf=second_state

if rf="" then rf="RISING"


t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if

 
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKKICKRISING"
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=7
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKKICKFALLING"
end if
end if


if true_frame<=3 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame2=1:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame2=7:d_state="IN AIR"

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then

current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state=""
jump_count=0
fp=0
rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB 
'===============================================================================
SUB JUMPING_BACK_LKICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKKICK2" and third_State<>"JUMPING" then  
else
fp=0    
exit sub    
end if

static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
frame_delay(8)=.05
frame_delay(9)=.05
frame_delay(10)=.05

frame_delay2(1)=.1
frame_delay2(2)=.1
frame_delay2(3)=.2

static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer

static true_frame as integer
static t3 as double



jumping_distance=300 '300 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40

wall2=10


static sn as string


if fp=0 then 'Set variables for first entry
fp=1 
SOUND_RYU "LKICK" 'Light Kicking Sound 
attack="NO"
'Initialize Jump
count=0

d_state="IN AIR"
input_status="OFF"
count=jump_count
rf=second_state

if rf="" then rf="RISING"


t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment2=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment2)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1

sn="S"

end if

 
if count<upward then rf="RISING"
if count>=upward then rf="FALLING"

if rf="RISING" and count<upward then

current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKKICK2RISING"
end if
end if



if rf="FALLING" and count>=upward and dbf>1 then
'Rising

current_frame2=3
if (timer-t)>=.004 then

input_status="OFF"
count=count+1
t=timer


MOVE_CHARACTER rx,ry,"RYU","JUMPINGBACKKICK2FALLING"
end if
end if


if true_frame<=3 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if



if true_frame>3 and rf="RISING" then current_frame2=3:d_state="IN AIR"
if true_frame>3 and rf="FALLING" then current_frame2=3:d_state="IN AIR"

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then

current_frame2=8
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
third_state=""
jump_count=0
fp=0
rf=""

sn=""
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'=============================================================================== 
SUB JUMPING_PUNCH_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   
 
if current_state1="JUMPINGPUNCH" and d_state="IN AIR" then'and third_state="JUMPING" then 
else
fp=0    
exit sub    
end if

static count as integer 
static t as double
static t2 as double
static current_frame2 as integer
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1

frame_delay2(1)=.1
frame_delay2(2)=.2
frame_delay2(3)=.1

static true_frame as integer

static jumping_distance as integer
static rf as string 'Rise and Fall status
static t3 as double

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static sn as string



if fp=0 then 'Set variables for first entry
fp=1    
SOUND_RYU "SWING" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle
rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
end if



if rf="RISING" and count<upward then
'Rising
current_frame2=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGPUNCHRISING"
end if
end if

if count>=upward then rf="FALLING"

if rf="FALLING" and count>=upward and dbf>1 then
'Rising
current_frame2=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGPUNCHFALLING"
end if
end if


if true_frame<=3 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if


if true_frame>3 then
current_state1="JUMPING"
third_state="JUMPINGPUNCH"
jump_count=count
second_state=rf
attack="NO"

fp=0
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame2=efc

end if

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame2=1
if (timer-t)>=.1 then
 
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
END SUB
'=============================================================================== 
SUB JUMPING_PUNCH2_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   
 
if current_state1="JUMPINGPUNCH2" and d_state="IN AIR" then'and third_state="JUMPING" then 
else
fp=0    
exit sub    
end if

static count as integer 
static t as double
static t2 as double
static current_frame2 as integer
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1

frame_delay2(1)=.1
frame_delay2(2)=.8


static true_frame as integer

static jumping_distance as integer
static rf as string 'Rise and Fall status
static t3 as double

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static sn as string



if fp=0 then 'Set variables for first entry
fp=1    
SOUND_RYU "LPUNCH" 'Light Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle
rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
end if



if rf="RISING" and count<upward then
'Rising
current_frame2=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGPUNCH2RISING"
end if
end if

if count>=upward then rf="FALLING"

if rf="FALLING" and count>=upward and dbf>1 then
'Rising
current_frame2=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGPUNCH2FALLING"
end if
end if


if true_frame<=2 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
if true_frame>2 then true_frame=2
efc=2
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame2=1
third_state="JUMPINGPUNCH2"
if (timer-t)>=.1 then
 
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
END SUB 
'=============================================================================== 
SUB JUMPING_LKICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   
 
if current_state1="JUMPINGLKICK" and d_state="IN AIR" then  
else
fp=0    
exit sub    
end if

static count as integer 
static t as double
static t2 as double
static current_frame2 as integer
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1

frame_delay2(1)=.1


static true_frame as integer

static jumping_distance as integer
static rf as string 'Rise and Fall status
static t3 as double

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static sn as string



if fp=0 then 'Set variables for first entry
fp=1    
SOUND_RYU "LKICK" 'Light Kicking Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle
rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
end if



if rf="RISING" and count<upward then
'Rising
current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGLKICKRISING"
end if
end if

if count>=upward then rf="FALLING"

if rf="FALLING" and count>=upward and dbf>1 then
'Rising
current_frame2=1
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGLKICKFALLING"
end if
end if


if true_frame<=2 then
current_frame2=1'true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=1'true_frame
t3=timer
true_frame=true_frame+1
if true_frame>2 then true_frame=2
efc=2
end if
end if



if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame2=1
third_state="JUMPINGLKICK"
if (timer-t)>=.1 then
 
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
END SUB
'===============================================================================
SUB JUMPING_KICK_RYU(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer    
 
if current_state1="JUMPINGKICK" and d_state="IN AIR" then'and third_state="JUMPING" then  
else
fp=0    
exit sub    
end if

static count as integer

static t as double
static t2 as double
dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
frame_delay(4)=.2
frame_delay(5)=.05
frame_delay(6)=.03
frame_delay(7)=0
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1

frame_delay2(1)=.05'.05
frame_delay2(2)=.05'.05
frame_delay2(3)=.1'.1
frame_delay2(4)=.05'.05
frame_delay2(5)=.05'.05

static true_frame as integer

static jumping_distance as integer
static rf as string 'Rise and Fall status
static t3 as double

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static sn as string
static current_frame2 as integer

if fp=0 then 'Set variables for first entry
fp=1    
SOUND_RYU "JUMPING" 'Kicking Sound 
'Initialize Jump
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count
rf=second_state
third_state="JUMPINGKICK"
if rf="" then rf="RISING"


t=timer
t2=timer
t3=timer
jumping_distance=300 '300 Pixels Up
distance_increment=2 'Y Axis increment
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
true_frame=1
end if


if rf="RISING" and count<upward then
'Rising

current_frame2=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGKICKRISING"
end if
end if

if count>=upward then rf="FALLING"

if rf="FALLING" and count>=upward and dbf>1 then
'Rising
current_frame2=2
if (timer-t)>=.004 then
input_status="OFF"
count=count+1
t=timer

MOVE_CHARACTER rx,ry,"RYU","JUMPINGKICKFALLING"
end if
end if


if true_frame<=5 then
current_frame2=true_frame    
if (timer-t3)>=frame_delay2(true_frame) then
current_frame2=true_frame
t3=timer
true_frame=true_frame+1
efc=2
end if
end if


if true_frame>5 then
current_state1="JUMPING"
third_state="JUMPINGKICK"
jump_count=count
second_state=rf
attack="NO"

fp=0
if (timer-t2)>=frame_delay(efc) then
t2=timer
efc=efc+1
if efc>7 then efc=7
end if    
current_frame2=efc

end if

if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
current_frame2=1
if (timer-t)>=.1 then
input_status="ON"
count=0
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""

jump_count=0
fp=0
'rf=""
end if
end if
current_frame1=current_frame2

END SUB
'===============================================================================
SUB HADOKEN_RYU(byref rx as integer,byref ry as integer,byref hx1 as integer,byref hy1 as integer,byref current_frame1 as integer,byref fireball_frame as integer,byref hadoken1 as string,byref hadoken_active as string,byref input_status as string,byref current_state1 as string,byref attack as string,byref fireball_state as string,byref i_state as string,byref hadoken_speed as string,byref lhts as double)
static fp as integer


if current_state1="HADOKEN" or fireball_state="FIREBALL" then 
else
fp=0    
exit sub    
end if

static current_frame2 as integer
static true_frame as integer
static fireball_xinc as integer
fireball_xinc=2 'X Axis increment for fireball
static t as double
static t2 as double
static new_state3 as string
static hadoken_speed2 as string



dim frame_delay(1 to 10) as double
dim frame_delay2(1 to 10) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.1
frame_delay(4)=.1
frame_delay(5)=.2
frame_delay(6)=.2
frame_delay(7)=.2
frame_delay(8)=.2
frame_delay(9)=.2
frame_delay(10)=.2


frame_delay2(1)=.15
frame_delay2(2)=.1
if hadoken_speed2="SLOW" then frame_delay2(2)=.2:frame_delay2(1)=.3
frame_delay2(3)=.05
frame_delay2(4)=.05




if fp=0 then 'Intialize Hadoken

lhts=100000
SOUND_RYU "HADOKEN" 'Hadoken Sound    
P1_projectile_facing=P1_facing
hadoken_speed2=hadoken_speed
fp=1
new_state3="HADOKEN"
current_state1="HADOKEN"
t=timer
current_frame2=1
true_frame=1
fireball_frame=1

if hadoken_speed="SLOW" then
MOVE_PROJECTILE rx,ry,hx1,hy1,"RYU","STARTS"    
    else
MOVE_PROJECTILE rx,ry,hx1,hy1,"RYU","START"
end if
input_status="OFF"
fireball_state=""
attack="NO"
hadoken1="NO"

end if

if current_frame2<=5 then
if (timer-t)>=frame_delay(current_frame2) then    
current_frame2=current_frame2+1
true_frame=current_frame2
if hadoken_speed2="SLOW" and current_frame2=5 then true_frame=6
t=timer
fireball_frame=1

end if    
end if    

if current_frame2=6 then
hadoken_active="A"
fireball_state="FIREBALL"
new_state3="LAUNCH" 
true_frame=4
fireball_frame=1
if (timer-t)>=frame_delay2(fireball_frame) then  

if hadoken_speed="SLOW" then
MOVE_PROJECTILE rx,ry,hx1,hy1,"RYU","LAUNCHS"    
    else
MOVE_PROJECTILE rx,ry,hx1,hy1,"RYU","LAUNCH"
end if
current_frame2=current_frame2+1
t=timer
end if
end if

if current_frame2=7 then
new_state3="LAUNCH"
true_frame=4
fireball_frame=2
if (timer-t)>=frame_delay2(fireball_frame) then    
current_frame2=current_frame2+1
t=timer
end if
end if

if current_frame2=8 then
new_state3="LAUNCH"
true_frame=4
fireball_frame=4
if (timer-t)>=frame_delay2(fireball_frame) then    
current_frame2=current_frame2+1
t=timer
end if
t2=timer
end if

if current_frame2>8 then



new_state3="FIREBALL"
if (timer-t)>=frame_delay2(fireball_frame) then
current_frame2=current_frame2+1
select case fireball_frame
case 3
fireball_frame=4
case 4
fireball_frame=3    
end select
t=timer
end if

if (timer-t2)>=.003 and hadoken_speed2="" then
t2=timer

MOVE_PROJECTILE rx,ry,hx1,hy1,"RYU","FIREBALL"

end if    

if (timer-t2)>=.006 and hadoken_speed2="SLOW" then 
t2=timer

MOVE_PROJECTILE rx,ry,hx1,hy1,"RYU","FIREBALL"
end if


end if

if current_frame2>=15 then'Freeze Ryu after hadoken release for number of frames 


if current_state1="HADOKEN" then 

current_state1="STANDING"
input_status="ON"
attack="YES"
end if

if hx1>(GET_WALL_RIGHT+40) and P1_projectile_facing="RIGHT" then hadoken1="YES":fireball_state="":hadoken_active="":fp=0:fireball_frame=0:hadoken_speed="":hadoken_speed2="":lhts=timer
if hx1<(GET_WALL_LEFT-40) and P1_projectile_facing="LEFT" then hadoken1="YES":fireball_state="":hadoken_active="":fp=0:fireball_frame=0:hadoken_speed="":hadoken_speed2="":lhts=timer
end if
if current_state1="HADOKEN" then current_frame1=true_frame'current_frame2
   
END SUB
'===============================================================================
SUB SHORYUKEN_RYU(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame1 as integer,byref current_state1 as string,byref attack as string,byref i_state as string,byref shoryuken as string,byref shoryuken_speed as string)
static fp as integer

if current_state1="SHORYUKEN" then 
shoryuken="NO"
else 
fp=0    
exit sub    
end if

static count as integer
static i_state2 as string
static t as double
static t2 as double
static true_frame as integer
static frame_delay(1 to 10) as double

static jumping_distance as integer
static rf as string 'Rise and Fall status
static input_status2 as string
static new_state2 as string

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer

if fp=0 and d_state="ON GROUND" then


if shoryuken_speed="SLOW" then
frame_delay(1)=.2
frame_delay(2)=.3
frame_delay(3)=.1
frame_delay(4)=.2
frame_delay(5)=.2
frame_delay(6)=.2
frame_delay(7)=.3
frame_delay(8)=.2
frame_delay(9)=.2
frame_delay(10)=.2
else
frame_delay(1)=.1
frame_delay(2)=.2
frame_delay(3)=0
frame_delay(4)=.1
frame_delay(5)=.1
frame_delay(6)=.1
frame_delay(7)=.2
frame_delay(8)=.1
frame_delay(9)=.1
frame_delay(10)=.1
end if
SOUND_RYU "SHORYUKEN" 'Shoryuken Sound
shoryuken="NO"
'Initialize Jump
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=0

t=timer
t2=timer
jumping_distance=350'350 '300 Pixels Up
distance_increment=2'Y Axis increment
if shoryuken_speed="SLOW" then jumping_distance=175
if shoryuken_speed="SLOW" then distance_increment=1
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
fp=1
true_frame=1

rf="RISING"
end if


if d_state="IN AIR" and true_frame<3 and count<upward then
if (timer-t)>=frame_delay(true_frame) then
true_frame=true_frame+1    
t=timer
end if    
end if

if d_state="IN AIR" and true_frame>=3 and count<upward then
'Rising
rf="RISING"
true_frame=3
if (timer-t)>=.002 then
input_status="OFF"
count=count+1
if count<20 then 

MOVE_CHARACTER rx,ry,"RYU","SRISINGX"
end if
t=timer
t2=timer

if shoryuken_speed="SLOW" then
MOVE_CHARACTER rx,ry,"RYU","SRISINGS"
else
MOVE_CHARACTER rx,ry,"RYU","SRISING"
end if

end if
end if 


if d_state="IN AIR" and count>=upward and true_frame<=5 then
rf="FALLING"
if (timer-t2)>=frame_delay(true_frame) then
true_frame=true_frame+1    
t2=timer
end if     
if (timer-t)>=.005 then
input_status="OFF"
count=count+1
t=timer

if shoryuken_speed="SLOW" then
MOVE_CHARACTER rx,ry,"RYU","SFALLINGS"
else
MOVE_CHARACTER rx,ry,"RYU","SFALLING"
end if

end if
end if


if d_state="IN AIR" and count>=upward and true_frame>5 and dbf>1 then
rf="FALLING"
true_frame=6    
if (timer-t)>=.005 then
input_status="OFF"
count=count+1
t=timer

if shoryuken_speed="SLOW" then
MOVE_CHARACTER rx,ry,"RYU","SFALLINGS"
else
MOVE_CHARACTER rx,ry,"RYU","SFALLING"
end if

end if
end if 
   
  





if rf="FALLING" and true_frame>5 and dbf<=1 then

true_frame=7
if (timer-t)>=frame_delay(true_frame) then

t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
i_state="Standing"
current_state1="STANDING"
attack="YES"
input_status="ON"
attack="YES"
shoryuken="YES"
shoryuken_speed=""

fp=0
rf=""
true_frame=1
end if
end if

if rf="FALLING" and dbf<=1 then
true_frame=7
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
i_state="Standing"
current_state1="STANDING"
attack="YES"
input_status="ON"
attack="YES"
shoryuken="YES"
shoryuken_speed=""
fp=0
rf=""
true_frame=1
end if


current_frame1=true_frame
END SUB 
'===============================================================================
SUB TATSU_RYU(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame1 as integer,byref current_state1 as string,byref attack as string,byref i_state as string,byref tatsu as string,byref tatsu_speed as string)
static fp as integer

if current_state1="TATSU" then 
else 
fp=0    
exit sub    
end if

static count as integer

static t as double
static t2 as double
static true_frame as integer
static frame_delay(1 to 11) as double

static jumping_distance as integer
static rf as string 'Rise and Fall status

dim ground as integer
ground=GET_GROUND'300 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'300-ry
static current_frame2 as integer
static xinc as integer
static xdistance as integer
static xmovement as integer



if fp=0 then

if tatsu_speed="SLOW" then
frame_delay(1)=.1   
frame_delay(2)=.1
frame_delay(3)=.1 
frame_delay(4)=.2 
frame_delay(5)=.05 
frame_delay(6)=.2 
frame_delay(7)=.05 
frame_delay(8)=.05 
frame_delay(9)=.05 
frame_delay(10)=.05 
frame_delay(11)=.3 
  else
frame_delay(1)=.1   
frame_delay(2)=.1
frame_delay(3)=.1 
frame_delay(4)=.15 
frame_delay(5)=.05 
frame_delay(6)=.05 
frame_delay(7)=.05 
frame_delay(8)=.05 
frame_delay(9)=.05 
frame_delay(10)=.05 
frame_delay(11)=.3 
end if
SOUND_RYU "JUMPING" 'Jumping Sound
SOUND_RYU "TATSU1" 'Tatsu Voice Sound 
'Initialize Jump
d_state="IN AIR"
input_status="OFF"
attack="NO"
tatsu="NO"
count=0

t=timer
t2=timer
jumping_distance=5 '300 Pixels Up
distance_increment=4 'Y Axis increment
total_movement=ry-int(jumping_distance/distance_increment) 
upward=int(total_movement)
downward=(upward+1)
min_d=40
efc=2
fp=1
true_frame=1
xinc=4 'X Axis increment
xdistance=200 '200 Pixes Left to Right
if tatsu_speed="SLOW" then xinc=1:xdistance=75'100
xmovement=int(xdistance/xinc)
rf="START"
end if

'Move Ryu straight up before beginning tatsu
if ry>upward and rf="START" then
if (timer-t)>.005 then
t=timer
   
MOVE_CHARACTER rx,ry,"RYU","TSTART"     
end if    
true_frame=1
else
if ry<=upward and rf="START" then rf="T1":t=timer:t2=timer    
end if

if rf="T1" then
if (timer-t2)>=.01 then

t2=timer
MOVE_CHARACTER rx,ry,"RYU","TATSU" 
end if    

if (timer-t)>=frame_delay(true_frame) then
true_frame=true_frame+1 
t=timer
rf="TATSU"
end if    
end if    

if true_frame=2 then
if (timer-t2)>=.01 then

MOVE_CHARACTER rx,ry,"RYU","TATSU" 
t2=timer
end if

if (timer-t)>=frame_delay(true_frame) then
true_frame=true_frame+1    
t=timer
end if     
end if    

if true_frame=3 then
if (timer-t2)>=.01 then

MOVE_CHARACTER rx,ry,"RYU","TATSU" 
t2=timer
end if
if (timer-t)>=frame_delay(true_frame) then
true_frame=true_frame+1    
t=timer
end if
end if

'The core of the Tatsu animation and movement
if true_frame>=4 and count<xmovement and rf<>"END" then
if (timer-t2)>=.01 then

if tatsu_speed="SLOW" then
MOVE_CHARACTER rx,ry,"RYU","TTATSUS"     
else
MOVE_CHARACTER rx,ry,"RYU","TTATSU"     
end if    
    
count=count+1
t2=timer
end if

if (timer-t)>=frame_delay(true_frame) then

if true_frame=4 then
SOUND_RYU "TATSU2" 'Tatsu Kick Sound    
end if    
true_frame=true_frame+1    
t=timer
end if
if true_frame>7 then true_frame=4
else
if count>=xmovement and rf<>"END" and rf<>"LAND" then rf="END":true_frame=7   
end if

if rf="END" then
if (timer-t2)>.01 and rf="END" then
if tatsu_speed="SLOW" then
MOVE_CHARACTER rx,ry,"RYU","TENDS" 
else
MOVE_CHARACTER rx,ry,"RYU","TEND"    
end if    

if ry>=GET_GROUND then ry=GET_GROUND:rf="LAND":true_frame=11


t2=timer
end if
if (timer-t)>=frame_delay(true_frame) then
true_frame=true_frame+1    
if true_frame>10 and rf="END" then true_frame=10
if rf="LAND" then true_frame=11
t=timer
end if
end if

if rf="LAND" then
    
if (timer-t)>=frame_delay(true_frame) then    
input_status="ON"
count=0
ry=GET_GROUND'ground
d_state="ON GROUND"
i_state="Standing"
current_state1="STANDING"
attack="YES"
tatsu="YES"
tatsu_speed=""
fp=0
rf=""
'sleep
end if
end if
'==================
current_frame1=true_frame
END SUB
'===============================================================================
'###############################################################################
'###############################################################################
'AI/Computer Controls===========================================================
FUNCTION GET_RANDOM_NUMBER_RYU AS INTEGER
'Get a random integer between 1 and 20
GET_RANDOM_NUMBER_RYU=int(RND*20)+1
END FUNCTION
'===============================================================================
SUB COM_RYU_J2BW(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
'Jump to Back Wall
input_state="NOTHING"

if P1_facing="RIGHT" then
if rx>(GET_WALL_LEFT+20) then 
    input_state="JUMPINGBACK":input_state2=input_state    
else
    com_state=""
end if
end if    
    
if P1_facing="LEFT" then
if rx<(GET_WALL_RIGHT-20) then 
    input_state="JUMPINGBACK":input_state2=input_state    
else
    com_state=""
end if    
end if    
    
END SUB
'===============================================================================
SUB COM_RYU_W2BW(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
'Walk to Back Wall
input_state="NOTHING"

if P1_facing="RIGHT" then
if rx>(GET_WALL_LEFT+20) then 
    input_state="LEFT":input_state2=input_state    
else
    com_state=""
end if
end if    
    
if P1_facing="LEFT" then
if rx<(GET_WALL_RIGHT-20) then 
    input_state="RIGHT":input_state2=input_state    
else
    com_state=""
end if    
end if    
    
END SUB 
'===============================================================================
SUB COM_RYU_WF2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
'Walk Forward to Center of the Screen
input_state="NOTHING"

if P1_facing="RIGHT" then
if rx<320 then 
    input_state="RIGHT":input_state2=input_state    
else
    com_state=""
end if
end if    
    
if P1_facing="LEFT" then
if rx>320 then 
    input_state="LEFT":input_state2=input_state    
else
    com_state=""
end if    
end if    
    
END SUB   
'===============================================================================
SUB COM_RYU_JF2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
'Jumping Forward to Center of the Screen
input_state="NOTHING"

if P1_facing="RIGHT" then
if rx<220 then 
    input_state="JUMPINGFORWARD":input_state2=input_state    
else
    com_state=""
end if
end if    
    
if P1_facing="LEFT" then
if rx>420 then 
    input_state="JUMPINGFORWARD":input_state2=input_state    
else
    com_state=""
end if    
end if    
    
END SUB 
'===============================================================================
SUB COM_RYU_JB2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
'Jumping Back to Center of the Screen
input_state="NOTHING"

if P1_facing="RIGHT" then
if rx>420 then 
    input_state="JUMPINGBACK":input_state2=input_state    
else
    com_state=""
end if
end if    
    
if P1_facing="LEFT" then
if rx<220 then 
    input_state="JUMPINGBACK":input_state2=input_state    
else
    com_state=""
end if    
end if    
    
END SUB
'===============================================================================
SUB COM_RYU_3T(byref rx as integer,byref input_state as string,byref attack as string,byref tatsu_speed as string,byref com_state as string)
'3 Tatsus
'input_state="NOTHING"
static fp as integer
static count as integer
static t as double
static r as integer

if fp=0 then
fp=1
count=0
t=timer

end if  

if attack="YES" and P1_facing="RIGHT" and rx>(GET_WALL_RIGHT-30) then P1_facing="LEFT"
if attack="YES" and P1_facing="LEFT" and rx<(GET_WALL_LEFT+30) then P1_facing="RIGHT"

if attack="YES" then
input_state="TATSU"
r=int(RND*3)+1
count=count+1
select case r
case 1
tatsu_speed="SLOW"
case else
tatsu_speed=""    
end select    
end if    


if count>3 then
com_state=""
fp=0
count=0
input_state="NOTHING"
end if    
END SUB
'===============================================================================
SUB COM_RYU_RSA(byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref hadoken as string,byref hadoken_speed as string,byref shoryuken as string,byref shoryuken_speed as string,byref tatsu as string,byref tatsu_speed as string,byref com_state as string)
'Random Standing Attack
static fp as integer
static r as integer

if fp=0 and d_state="ON GROUND" and attack="YES" then
r=int(RND*28)+1
input_state="NOTHING"
input_state2=""
input_state3=""
fp=1
exit sub
end if

if fp=1 then
if d_state="ON GROUND" and attack="YES" then
select case r
case 1 to 10
input_state="PUNCH":input_state3="PUNCH"
case 11 to 13
input_state="LPUNCH":input_state3="LPUNCH"
case 14 to 18
input_state="KICK":input_state3="KICK"
case 19 to 20
input_state="LKICK":input_state3="LKICK"
case 21
if hadoken="YES" then input_state="HADOKEN":hadoken_speed=""
case 22
if hadoken="YES" then input_state="HADOKEN":hadoken_speed="SLOW"
case 23
if shoryuken="YES" then input_state="SHORYUKEN":shoryuken_speed=""
case 24
if shoryuken="YES" then input_state="SHORYUKEN":shoryuken_speed="SLOW"
case 25
if tatsu="YES" then input_state="TATSU":tatsu_speed=""
case 26
if tatsu="YES" then input_state="TATSU":tatsu_speed="SLOW"
case else
input_state="WIN"
input_state2=input_state    
end select
fp=2
exit sub
end if
end if

if fp=2 then
input_state="NOTHING"
input_state2=""
'select case r
'case 1 to 10
input_state3="PUNCH_RELEASE"
'case 11 to 13
'input_state3="LPUNCH_RELEASE"    
'case 14 to 18
'input_state3="KICK_RELEASE"    
'case 19 to 20
'input_state3="LKICK_RELEASE"    
'case else
'end select    
fp=0
com_state=""
end if    


END SUB
'=============================================================================== 
SUB COM_RYU_ALLS3(byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref com_state as string)
'All Standing Punches and Kicks 3 times     
static fp as integer

static count as integer

if d_state<>"ON GROUND" then com_state="":exit sub

if fp=0 then
fp=1
count=0
end if

if attack="YES" then
count=count+1
select case count
case 1 to 3
input_state="KICK":input_state2=input_state
case 4 to 6
input_state="LKICK":input_state2=input_state    
case 7 to 9
input_state="PUNCH":input_state2=input_state    
case 10 to 12
input_state="LPUNCH":input_state2=input_state    
end select
end if    

if count>12 then
com_state=""
input_state="NOTHING"
input_state2=""
input_state3=""
fp=0
count=0
end if 
    

END SUB   
'===============================================================================
SUB COM_RYU_3RCK(byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref com_state as string)
'3 Random Crouching Kicks    
static fp as integer
static r as integer
static count as integer
if d_state<>"ON GROUND" then com_state="":exit sub
if fp=0 then
input_state="DOWN"
input_state2=input_state
fp=1
r=int(RND*3)+1
count=0
exit sub
end if  

if attack="YES" then
count=count+1
select case r
case 1
input_state="CROUCHINGKICK":input_state2="DOWN":input_state3="KICK"
case else
input_state="CROUCHINGKICK2":input_state2="DOWN":input_state3="LKICK"     
end select
end if    

if count>3 then
com_state=""
input_state="NOTHING"
fp=0
count=0
select case r
case 1
input_state2="":input_state3="KICK_RELEASE"
case else
input_state2="":input_state3="LKICK_RELEASE"     
end select
end if 
    

END SUB    
'===============================================================================
SUB COM_RYU_RCA(byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref hadoken as string,byref hadoken_speed as string,byref com_state as string)
'Random Crouching Attack
static fp as integer
static t as double
static t2 as double
static r as integer

if input_state="HADOKEN" then input_state="NOTHING"
if fp=0 and d_state="ON GROUND" and attack="YES" then
t=timer
input_state="DOWN"
input_state2=input_state
fp=1
t2=(RND*1)+.001
r=int(RND*12)+1
exit sub
end if    

if (timer-t)>t2 and fp=1 and attack="YES" then
select case r
case 1
input_state="CROUCHINGPUNCH":input_state2="DOWN":input_state3="PUNCH" 
case 2
input_state="CROUCHINGPUNCH2":input_state2="DOWN":input_state3="LPUNCH"
case 3
input_state="CROUCHINGKICK":input_state2="DOWN":input_state3="KICK"    
case 4  
input_state="CROUCHINGKICK2":input_state2="DOWN":input_state3="LKICK"    
case 5
if hadoken="YES" and attack="YES" then
input_state="HADOKEN":input_state2=""
hadoken_speed=""
end if
case 6 to 8
if hadoken="YES" and attack="YES" then
input_state="HADOKEN":input_state2=""
hadoken_speed="SLOW" 
end if
case else
end select    
fp=2 
exit sub
end if    

if fp=2 then
com_state=""
fp=0
input_state="NOTHING"
select case r
case 1
input_state="NOTHING":input_state2="":input_state3="PUNCH_RELEASE" 
case 2
input_state="NOTHING":input_state2="":input_state3="LPUNCH_RELEASE"
case 3
input_state="NOTHING":input_state2="":input_state3="KICK_RELEASE"    
case 4  
input_state="NOTHING":input_state2="":input_state3="LKICK_RELEASE"    
case 5
input_state="NOTHING":input_state2=""
if hadoken="YES" then hadoken_speed=""
case 6
input_state="NOTHING":input_state2=""
if hadoken="YES" then hadoken_speed=""    
end select

end if    

END SUB
'===============================================================================
SUB COM_RYU_RJA(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref d_state as string,byref com_state as string)
'Random Jumping Attack
static fp as integer
static t as double
static t2 as double
static t3 as double
static r as integer
static r2 as integer
static r3 as integer
static r4 as integer
if fp=0 then
fp=1
t=timer
r=int(RND*3)+1
r2=2'int(RND*2)+1
r3=int(RND*8)+1
t2=(RND*.4)+.001

if r=1 and input_state<>"JUMPINGBACK" and input_state<>"JUMPINGFORWARD" then input_state="JUMPING":input_state2=input_state
if r=2 and input_state<>"JUMPING" then input_state="JUMPINGFORWARD":input_state2=input_state
if r=3 and input_state<>"JUMPING" then input_state="JUMPINGBACK":input_state2=input_state
exit sub
end if    

if fp=1 then
if (timer-t)>t2 then
fp=2
if r2=2 and attack="YES" and d_state="IN AIR" then
select case r3
case 1
input_state="PUNCH":input_state3="PUNCH"    
case 2
input_state="LPUNCH":input_state3="LPUNCH"    
case 3
input_state="KICK":input_state3="KICK"    
case 4
input_state="LKICK":input_state3="LKICK"    
case else
input_state="KICK":input_state3="KICK"     
end select
t3=timer
exit sub
end if
end if
end if

if fp=2 and d_state="ON GROUND" then input_state="NOTHING"

if fp=2 then
if (timer-t3)>.5 then
com_state=""
fp=0
if r2=2 then
select case r3
case 1
input_state3="PUNCH_RELEASE"    
case 2
input_state3="LPUNCH_RELEASE"    
case 3
input_state3="KICK_RELEASE"    
case 4
input_state3="LKICK_RELEASE"    
end select

end if

end if
end if
END SUB    
'===============================================================================
SUB COM_RYU_FOOTWORK2(byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref hadoken as string,byref hadoken_speed as string,byref shoryuken as string,byref shoryuken_speed as string,byref tatsu as string,byref tatsu_speed as string,byref com_state as string)
'Footwork 2
'input_state="NOTHING"
static fp as integer
static count as integer
static t as double


if fp=0 then
fp=1
count=-1
t=timer

end if  

if count=-1 and d_state="ON GROUND" and attack="YES" and tatsu="YES" then input_state="TATSU":tatsu_speed="":count=0:exit sub

if count=0 and d_state="ON GROUND" then input_state="JUMPINGBACK":input_state2=input_state:count=1:exit sub

if count=1 and d_state="ON GROUND" then input_state="JUMPINGBACK":input_state2=input_state:count=2:exit sub

if count=2 and d_state="ON GROUND" then input_state="JUMPINGFORWARD":input_state2=input_state:count=3:t=timer:exit sub

if count=3 then input_state="NOTHING"
if timer-t>3 and count=3 then
count=4
t=timer
end if

if count=4 then input_state="RIGHT":input_state2=input_state 

if count=4 and timer-t>1 then
count=5
t=timer
end if

if count=5 then input_state="LEFT":input_state2=input_state

if count=5 and timer-t>1 then
count=6
end if
    
if count=6 and attack="YES" and hadoken="YES" then input_state="HADOKEN":hadoken_speed="SLOW":count=7:exit sub

if count=7 and attack="YES" and shoryuken="YES" then input_state="SHORYUKEN":shoryuken_speed="SLOW":count=8:t=timer:exit sub

if count=8 then input_state="NOTHING"
if count=8 and timer-t>3 then count=9

if count=9 then input_state="HADOKEN":hadoken_speed="":count=10:t=timer:exit sub

if count=10 and attack="YES" then input_state="RIGHT":input_state2=input_state

if count=10 and timer-t>2 then
input_state="WIN":input_state2=input_state
count=11
exit sub
end if


if count=11 and d_state="ON GROUND" then
fp=0
count=0
com_state=""
input_state="NOTHING"
input_state2=""
input_state3=""
end if
    
END SUB
'===============================================================================
SUB COM_RYU_FOOTWORK1(byref input_state as string,byref input_state2 as string,byref com_state as string)
'Footwork 1
'input_state="NOTHING"
static fp as integer
static count as integer
static t as double
static t2 as double
static t3 as double

if fp=0 then
fp=1
count=0
t=timer
t2=(RND*1)+.001
t3=(RND*1)+.001
end if  

if count<2 and (timer-t)>t2 then count=count+1:t=timer
if count>=2 and (timer-t)>t3 then count=count+1:t=timer

if count=0 then input_state="DOWN":input_state2=input_state 

if P1_facing="RIGHT" then
if count=1 then input_state="RIGHT":input_state2=input_state 
end if
if P1_facing="LEFT" then
if count=1 then input_state="LEFT":input_state2=input_state 
end if

if P1_facing="RIGHT" then
if count=2 then input_state="LEFT":input_state2=input_state 
end if
if P1_facing="LEFT" then
if count=2 then input_state="RIGHT":input_state2=input_state 
end if

if count=3 then input_state="DOWN":input_state2=input_state 

if count>=4 then
com_state=""
fp=0
count=0
input_state="NOTHING"
end if    
END SUB
'=============================================================================== 
SUB COM_RYU_WB2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
'Walk Back to Center of the Screen
input_state="NOTHING"

if P1_facing="RIGHT" then
if rx>320 then 
    input_state="LEFT":input_state2=input_state    
else
    com_state=""
end if
end if    
    
if P1_facing="LEFT" then
if rx<320 then 
    input_state="RIGHT":input_state2=input_state    
else
    com_state=""
end if    
end if    
    
END SUB
'=============================================================================== 
SUB COM_RYU_5FSR(byref input_state as string,byref shoryuken as string,byref attack as string,byref com_state as string)
'5 Fast Shoryukens

static fp as integer
static count as integer
if fp=0 then
fp=1
count=0
end if    

if shoryuken="YES" and attack="YES" then
count=count+1
input_state="SHORYUKEN" 
end if

if count>5 then
fp=0
count=0
input_state="NOTHING"
com_state=""
end if    
    
END SUB
'===============================================================================
SUB COM_RYU_SOW(byref d_state as string,byref input_state as string,byref input_state2 as string,byref com_state as string)
'Stand or Win Pose    
static fp as integer
static t as double
static r as integer
if d_state="ON GROUND" then
else
exit sub    
end if  

if fp=0 then
fp=1    
t=timer    
r=int(RND*2)+1
select case r
case 1
input_state="NOTHING"
case 2
input_state="WIN":input_state2=input_state     
end select
end if 

if (timer-t)>1 then
fp=0
com_state=""
input_state="NOTHING"
end if    

END SUB
'===============================================================================
SUB COM_RYU_3FH(byref input_state as string,byref fireball_state as string,byref hadoken as string,byref com_state as string)
'3 Fast Hadokens

static fp as integer
static count as integer
if fp=0 then
fp=1
count=0
end if    

if fireball_state="" and hadoken="YES" then
count=count+1
input_state="HADOKEN"
else
input_state="NOTHING"    
end if

if count>3 then
fp=0
count=0
com_state=""
input_state="NOTHING"
end if    
    
END SUB
'===============================================================================
SUB COM_RYU(byref rx as integer,byref ry as integer,byref current_state1 as string,byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref hadoken_speed as string,byref fireball_state as string,byref hadoken as string,byref shoryuken as string,byref attack as string,byref shoryuken_speed as string,byref tatsu_speed as string,byref tatsu as string) 
'Computer/AI Controlled Ryu
static com_state as string
static ccount as integer
static ccount2 as integer
static ccount3 as integer
static ccount4 as integer
static fp as integer
static r as integer
static pcs as string
'com_state="WF2COS"
'com_state="WB2COS"
'com_state="JF2COS"
'com_state="JB2COS"
'com_state="W2BW"
'com_state="J2BW"
'com_state="3FH"
'com_state="5FSR"
'com_state="FOOTWORK1"
'com_state="3T"
'com_state="RJA"
'com_state="RCA"
'com_state="RSA"
'com_state="SOW"
pcs=com_state
if com_state="" then
input_state="NOTHING"
input_state2=""
input_state3=""
ccount=ccount+1
ccount2=ccount2+1
ccount3=ccount3+1
ccount4=ccount4+1
r=int(RND*90)+1
if ccount3=5 then r=6:ccount3=0
if ccount4=3 then r=11:ccount4=0
if ccount=11 then 
    'com_state="5FSR"
com_state="RSA"
ccount=0
else
select case r
case 1
com_state="WF2COS"
case 2
com_state="WB2COS"
case 3
com_state="JF2COS"
case 4
com_state="JB2COS"
case 5
com_state="W2BW"
case 6
com_state="J2BW"
case 7
com_state="3FH"
case 8
com_state="5FSR"
case 9
com_state="FOOTWORK1"
case 10
com_state="3T"
case 11
com_state="RJA"
case 12
com_state="RCA"
case 13
com_state="RSA"
case 14
com_state="SOW"
case 15 to 20
com_state="FOOTWORK1"
case 21 to 25
com_state="RCA"
case 26 to 30
com_state="RSA" 
case 31 to 35
com_state="RJA"
case 36 to 40
com_state="3FH"
case 41 to 50
com_state="ALLS"    
case 51 to 60
com_state="3RCK"
case 61 to 70
com_state="FOOTWORK2"    
case else
com_state=""    
if attack="YES" and d_state="ON GROUND" then
if P1_facing="RIGHT" then 
P1_facing="LEFT"    
else
P1_facing="RIGHT"    
end if
end if
end select
end if

end if    

if ccount2>20 then com_state="5FSR":ccount2=0
'if pcs="FOOTWORK2" and com_state="FOOTWORK2" then com_state="RJA"

com_state2=com_state
select case com_state
case "WF2COS"
COM_RYU_WF2COS rx,input_state,input_state2,com_state
case "WB2COS"
COM_RYU_WB2COS rx,input_state,input_state2,com_state    
case "JF2COS"
COM_RYU_JF2COS rx,input_state,input_state2,com_state     
case "JB2COS"
COM_RYU_JB2COS rx,input_state,input_state2,com_state     
case "W2BW"
COM_RYU_W2BW rx,input_state,input_state2,com_state    
case "J2BW"
COM_RYU_J2BW rx,input_state,input_state2,com_state 
case "3FH"
COM_RYU_3FH input_state,fireball_state,hadoken,com_state
case "5FSR"
COM_RYU_5FSR input_state,shoryuken,attack,com_state
case "FOOTWORK1"
COM_RYU_FOOTWORK1 input_state,input_state2,com_state    
case "3T"
COM_RYU_3T rx,input_state,attack,tatsu_speed,com_state    
case "RJA"
COM_RYU_RJA input_state,input_state2,input_state3,attack,d_state,com_state    
case "RCA"
COM_RYU_RCA d_state,input_state,input_state2,input_state3,attack,hadoken,hadoken_speed,com_state    
case "RSA"
COM_RYU_RSA d_state,input_state,input_state2,input_state3,attack,hadoken,hadoken_speed,shoryuken,shoryuken_speed,tatsu,tatsu_speed,com_state    
case "SOW"
COM_RYU_SOW d_state,input_state,input_state2,com_state    
case "3RCK"
COM_RYU_3RCK d_state,input_state,input_state2,input_state3,attack,com_state   
case "ALLS"
COM_RYU_ALLS3 d_state,input_state,input_state2,input_state3,attack,com_state    
case "FOOTWORK2"
COM_RYU_FOOTWORK2 d_state,input_state,input_state2,input_state3,attack,hadoken,hadoken_speed,shoryuken,shoryuken_speed,tatsu,tatsu_speed,com_state
end select

END SUB
'###############################################################################
'###############################################################################
'===============================================================================
SUB STATE_RYU(byref rx as integer,byref ry as integer,byref cur_ani as any ptr,states_ryu() as string,byref hadoken_active as string,byref hx as integer,byref hy as integer,byref cur_ani22 as any ptr,byref obj_list as string,byref obj_desc as string,byref cur_anif22 as integer)
'Animation & Sound should be loaded before calling this sub
 static fp as integer
 static current_state1 as string
 static frame_count1 as integer
 static current_frame1 as integer

 static input_state1 as string
 static input_state2 as string
 static input_state3 as string
 static animation_pointers(1 to 100) as any ptr

 static frame_delays1(1 to 100) as double

 static return_string1 as string

 static d_state as string 'Descriptive State (will only be ON GROUND or IN AIR)
 static d_state2 as string 'Descriptive State 2
 static i_state as string
 static input_status as string

 static pstate as string

 static t_array1(1 to 100) as string
 static hadoken as string
 static hadoken_speed as string
 static shoryuken as string
 static tatsu as string
 static air_tatsu as string

 static attack as string
 static second_state as string
 static third_state as string
 static fireball_state as string
 static jump_count as integer
 static lhts as double
 static shoryuken_speed as string
 static tatsu_speed as string
 static og_ts as double 'ON GROUND time stamp
 static pd_state as string 'Previous d_state

if fp=0 then
fp=1
i_state="Standing"
current_state1="STANDING"

d_state="ON GROUND"
d_state2=""

input_status="ON"

air_tatsu="OFF" 'ON/OFF for mid-air tatsu
attack="YES"
current_frame1=1
hadoken="YES"
shoryuken="YES"
tatsu="YES"

pstate=""
second_state=""
hadoken_speed=""
shoryuken_speed=""
tatsu_speed=""
og_ts=timer
end if
pstate=current_state1 'Previous State before next loop
pd_state=d_state 'Previous d_state before next loop


'Handle Input===================================================================
if AI_Control="ON" then
'AI/Computer Controlled Ryu 
COM_RYU rx,ry,current_state1,d_state,input_state1,input_state2,input_state3,hadoken_speed,fireball_state,hadoken,shoryuken,attack,shoryuken_speed,tatsu_speed,tatsu
else
if P1_facing="RIGHT" then
CONTROL_P1_RYU input_state1,input_state2,input_state3,hadoken_speed,d_state,fireball_state,hadoken,lhts,shoryuken,attack,shoryuken_speed,tatsu_speed,og_ts 
'Get Keyboard Input
else
CONTROL_P1_LEFT_RYU input_state1,input_state2,input_state3,hadoken_speed,d_state,fireball_state,hadoken,lhts,shoryuken,attack,shoryuken_speed,tatsu_speed,og_ts     
'Get Keyboard Input for facing left
end if    
end if

TRANSLATE_INPUT_TO_CURRENT_STATE current_state1,attack,i_state,input_state1,input_status,d_state,d_state2,hadoken,shoryuken,tatsu,air_tatsu 
'Translate input to current state
'===============================================================================


'Standing=======================================================================
STANDING_RYU1 pstate,i_state,current_state1,current_frame1,d_state,input_status,third_state
'=============================================================================== 

 

'Crouching Punch================================================================
CROUCHING_PUNCH_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching Light Punch==========================================================
CROUCHING_PUNCH2_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching Kick=================================================================
CROUCHING_KICK_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching Light Kick===========================================================
CROUCHING_KICK2_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching======================================================================
CROUCHING_RYU pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Punch=================================================================
STANDING_PUNCH_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Light Punch===========================================================
STANDING_LPUNCH_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Kick==================================================================
STANDING_KICK_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Light Kick============================================================
STANDING_KICK2_RYU attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================



'Walking Back===================================================================
WALKING_BACK_RYU rx,ry,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Walking Forward================================================================
WALKING_FORWARD_RYU rx,ry,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================



'Jumping========================================================================
JUMPING_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Punch==================================================================
JUMPING_PUNCH_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================


'Jumping Light Punch============================================================
JUMPING_PUNCH2_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Kick===================================================================
JUMPING_KICK_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Light Kick=============================================================
JUMPING_LKICK_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward================================================================
JUMPING_FORWARD_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward Punch==========================================================
JUMPING_FORWARD_PUNCH_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward Light Punch====================================================
JUMPING_FORWARD_PUNCH2_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================


'Jumping Forward Kick===========================================================
JUMPING_FORWARD_KICK_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward Light Kick=====================================================
JUMPING_FORWARD_LKICK_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back===================================================================
JUMPING_BACK_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Punch=============================================================
JUMPING_BACK_PUNCH_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Light Punch=======================================================
JUMPING_BACK_PUNCH2_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Kick==============================================================
JUMPING_BACK_KICK_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Light Kick========================================================
JUMPING_BACK_LKICK_RYU rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Hadoken========================================================================
HADOKEN_RYU rx,ry,hx,hy,current_frame1,cur_anif22,hadoken,obj_list,input_status,current_state1,attack,fireball_state,i_state,hadoken_speed,lhts
'===============================================================================

'Shoryuken======================================================================
SHORYUKEN_RYU rx,ry,d_state,input_status,current_frame1,current_state1,attack,i_state,shoryuken,shoryuken_speed
'===============================================================================

'Tatsu==========================================================================
TATSU_RYU rx,ry,d_state,input_status,current_frame1,current_state1,attack,i_state,tatsu,tatsu_speed
'===============================================================================

'Win Pose=======================================================================
WINPOSE_RYU1 pstate,i_state,current_state1,current_frame1,d_state,input_status,attack
'===============================================================================


'Animation======================================================================
if fireball_state="FIREBALL" and hadoken_speed<>"SLOW" then
if P1_projectile_facing="RIGHT" then
GET_ANIMATION_RYU "FIREBALL",animation_pointers(),frame_delays1(),frame_count1,return_string1 
end if

if P1_projectile_facing="LEFT" then
GET_ANIMATION_LEFT_RYU "FIREBALL",animation_pointers(),frame_delays1(),frame_count1,return_string1 
end if

cur_ani22=animation_pointers(cur_anif22) 'cur_ani22 is the current pointer to the current fireball frame
end if

if fireball_state="FIREBALL" and hadoken_speed="SLOW" then
if P1_projectile_facing="RIGHT" then
GET_ANIMATION_RYU "FIREBALLSLOW",animation_pointers(),frame_delays1(),frame_count1,return_string1 
end if

if P1_projectile_facing="LEFT" then
GET_ANIMATION_LEFT_RYU "FIREBALLSLOW",animation_pointers(),frame_delays1(),frame_count1,return_string1 
end if

cur_pxwi=cur_anif22
cur_ani22=animation_pointers(cur_anif22) 'cur_ani22 is the current pointer to the current fireball frame
end if

if P1_facing="RIGHT" then
GET_ANIMATION_RYU current_state1,animation_pointers(),frame_delays1(),frame_count1,return_string1 'Get Current Animation Frames
'current_state1 holds the name of a series of animations to be pulled from GET_ANIMATION_RYU
else
GET_ANIMATION_LEFT_RYU current_state1,animation_pointers(),frame_delays1(),frame_count1,return_string1    
end if    

cur_xwi=current_frame1
cur_ani=animation_pointers(current_frame1) 'cur_ani is the current pointer to the current animation frame to be displayed
'===============================================================================
P1_state=current_state1
'Current States Summary String Array============================================
''states_ryu(1)=current_state1+" "+input_state2+" "+input_state3+" "+str(current_frame1)+" "+new_state1
'states_ryu(1)=current_state1+"   "+second_state+" "+i_state+" "+attack+"*"+input_status+"*"+str(jump_count)+" "+pstate+" "+str(current_frame1)+" "+fireball_state+hadoken_speed+" "+str(cur_anif22)+" "+third_state
'states_ryu(1)=current_state1+"   "+second_state+" "+i_state+" "+attack+"*"+input_status+"*"+str(jump_count)+" "+pstate+" "+str(current_frame1)
'states_ryu(2)=third_state
'states_ryu(3)=fireball_state+hadoken_speed+" "+str(cur_anif22)
'states_ryu(2)=d_state
'states_ryu(3)=t_array1(1)+" "+t_array1(2)+" "+t_array1(3)+" "+t_array1(4)+" "+t_array1(5)+" "+t_array1(6)+" "+t_array1(7)+" "
states_ryu(1)="current_frame1="+str(current_frame1)
states_ryu(2)="current_state1="+current_state1
states_ryu(3)="second_state="+second_state
states_ryu(4)="third_state="+third_state
states_ryu(5)="i_state="+i_state
states_ryu(6)="attack="+attack
states_ryu(7)="input_status="+input_status
states_ryu(8)="input_state1="+input_state1+"  input_state2="+input_state2+"  input_state3="+input_state3
states_ryu(9)="jump_count="+str(jump_count)
states_ryu(10)="pstate="+pstate+"  d_state="+d_state+"  d_state2="+d_state2+"  P1_facing="+P1_facing
states_ryu(11)="fireball_state="+fireball_state+"  hadoken_speed="+hadoken_speed+"  tatsu_speed="+tatsu_speed+"  cur_anif22="+str(cur_anif22)
states_ryu(12)="com_state2="+com_state2
'===============================================================================
if d_state="ON GROUND" and pd_state<>"ON GROUND" then og_ts=timer 
'If not on the ground in the previous loop then get a time stamp for the last time character was on the ground 
'This is used to prevent motions from being buffered in mid-air

END SUB
'===============================================================================


