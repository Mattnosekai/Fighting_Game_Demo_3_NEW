#include once "mb_sound_lib2.bi"


'###############################################################################
declare sub SOUND_KIM(commandz as string)

'###############################################################################
'===============================================================================
SUB STANDING_KIM1(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref third_state as string)
static fp as integer 

if d_state="ON GROUND" and input_status="ON" and i_state="Standing" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 4) as double

frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.2
frame_delays(4)=.2
'frame_delays(5)=.1
'frame_delays(6)=.1

if fp=0 or pstate<>"STANDING" then
fp=1    
t=timer    
frame_count=4
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
SUB WALKING_BACK_KIM(byref rx as integer,byref ry as integer,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)

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

MOVE_CHARACTER rx,ry,"KIM","WALKBACK"

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
SUB WALKING_FORWARD_KIM(byref rx as integer,byref ry as integer,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
 
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

MOVE_CHARACTER rx,ry,"KIM","WALKFORWARD"
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
SUB CROUCHING_KIM(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
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
dim frame_delays(1 to 2) as double

frame_delays(1)=.1
frame_delays(2)=.1
'frame_delays(3)=.1


if fp=0 then
fp=1    
t=timer    
frame_count=2
current_frame2=1
end if    

if mid(pstate,1,9)="CROUCHING" then current_frame2=2:current_frame1=2:exit sub


if i_state="C" then
if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1
if current_frame2>frame_count then 
current_frame2=2 
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
SUB WINPOSE_KIM1(byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref attack as string)
static fp as integer 

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="WIN" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 4) as double
static count as integer

frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.2


  

if fp=0 then
SOUND_KIM "KIMWON"    
fp=1    
t=timer    
frame_count=4
current_frame2=1
current_frame1=1
count=0
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
SUB CROUCHING_PUNCH_KIM(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="CROUCHINGPUNCH" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 3) as double

frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
'frame_delays(4)=.1
'frame_delays(5)=.1 


if fp=0 or pstate<>"CROUCHINGPUNCH" then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_KIM "SWING" 'Punching Sound
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
SUB CROUCHING_PUNCH2_KIM(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
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

frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
 


if fp=0 or pstate<>"CROUCHINGPUNCH2" then
fp=1    
t=timer    
frame_count=3
current_frame2=1
SOUND_KIM "LPUNCH" 'Light Punching Sound
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
SUB CROUCHING_KICK2_KIM(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
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
SOUND_KIM "SWING" 'Light Kicking Sound
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
SUB CROUCHING_KICK_KIM(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and input_status="OFF" and attack="NO" and current_state1="CROUCHINGKICK" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 7) as double

frame_delays(1)=.05
frame_delays(2)=.05
frame_delays(3)=.05
frame_delays(4)=.2
frame_delays(5)=.05 
frame_delays(6)=.05
frame_delays(7)=.05

if fp=0 or pstate<>"CROUCHINGKICK" then
fp=1    
t=timer    
frame_count=7
current_frame2=1
SOUND_KIM "KICK" 'Kicking Sound
SOUND_KIM "HA"
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
SUB STANDING_PUNCH_KIM(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer 

if d_state="ON GROUND" and current_state1="STANDINGPUNCH" then'input_status="OFF" and attack="NO" and current_state1="STANDINGPUNCH" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 4) as double

frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.25
frame_delays(3)=.1

if fp=0 then
fp=1    
t=timer    
frame_count=4
current_frame2=1
SOUND_KIM "HUA"
SOUND_KIM "SWING" 'Punching Sound 
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
SUB STANDING_LPUNCH_KIM(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
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
SOUND_KIM "LPUNCH" 'Light Punching Sound  
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
SUB STANDING_KICK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and current_state1="STANDINGKICK" then'and input_status="OFF" and attack="NO" and current_state1="STANDINGKICK" then
else
fp=0    
exit sub    
end if  

static t as double 
static current_frame2 as integer
static frame_count as integer
dim frame_delays(1 to 13) as double

frame_delays(1)=.05
frame_delays(2)=.1'.2
frame_delays(3)=.05
frame_delays(4)=.15
frame_delays(5)=.05
frame_delays(6)=.05
frame_delays(7)=.05
frame_delays(8)=.05
frame_delays(9)=.1
frame_delays(10)=.2
frame_delays(11)=.1
frame_delays(12)=.05
frame_delays(13)=.05


if fp=0 then 
fp=1    
t=timer    
frame_count=13
current_frame2=1
SOUND_KIM "KICK"

input_status="OFF"
attack="NO"
end if    


if (timer-t)>=frame_delays(current_frame2) then
t=timer
current_frame2=current_frame2+1

if current_frame2=4 then
SOUND_KIM "ACHA" 'Kim yelling "acha!" Sound
MOVE_CHARACTER rx,ry,"KIM","KICK" 
end if    

if current_frame2>=8 and current_frame2<=9 then 
MOVE_CHARACTER rx,ry,"KIM","KICK"    
end if    

if current_frame2=10 then MOVE_CHARACTER rx,ry,"KIM","KICK2"
if current_frame2=11 then MOVE_CHARACTER rx,ry,"KIM","KICK3"


if current_frame2=10 then
SOUND_KIM "KICK"
SOUND_KIM "ACHA" 'Kim yelling "acha!" Sound    
end if    

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
SUB STANDING_KICK2_KIM(byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string)
static fp as integer

if d_state="ON GROUND" and current_state1="STANDINGKICK2" then'and input_status="OFF" and attack="NO" and current_state1="STANDINGKICK" then
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
frame_delays(3)=.1
frame_delays(4)=.2
frame_delays(5)=.1

if fp=0 then
fp=1    
t=timer    
frame_count=5
current_frame2=1
SOUND_KIM "ACHA"
SOUND_KIM "KICK" 'Kicking Sound
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
SUB TRANSLATE_INPUT_TO_CURRENT_STATE_KIM(byref current_state1 as string, byref attack as string, byref i_state as string, byref input_state1 as string,byref input_status as string, byref d_state as string,byref d_state2 as string,byref hangetsu as string, byref hienzan as string)
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
case "HANGETSU"
if d_state="ON GROUND" and input_status="ON" and hangetsu="YES" then
i_state="HANGETSU"
input_status="OFF"
hangetsu="NO"
attack="NO"
end if
case "HIENZAN"
if d_state="ON GROUND" and input_status="ON" and hienzan="YES" and attack="YES" then 
i_state="HIENZAN"
input_status="OFF"
hienzan="NO"
attack="NO"
d_state="IN AIR"
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
case "HANGETSU"
current_state1="HANGETSU"  
case "HIENZAN"
current_state1="HIENZAN"
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
SUB GET_ANIMATION_KIM(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
static standing_kim (1 to 4) as sprite
static walkback_kim (1 to 6) as sprite
static walkforward_kim (1 to 6) as sprite
static crouch_kim (1 to 2) as sprite
static jumping_kim (1 to 4) as sprite
static jumpingforward_kim (1 to 7) as sprite
static jumpingback_kim (1 to 7) as sprite
static standingpunch_kim (1 to 4) as sprite
static standinglpunch_kim (1 to 3) as sprite
static crouchingpunch_kim (1 to 3) as sprite
static crouchinglpunch_kim (1 to 3) as sprite
static jumpingpunch_kim (1 to 4) as sprite
static standingkick_kim (1 to 13) as sprite
static standinglkick_kim (1 to 5) as sprite
static crouchingkick_kim (1 to 7) as sprite
static crouchinglkick_kim (1 to 3) as sprite
static jumpingkick_kim (1 to 5) as sprite
static jumpingkick2_kim (1 to 5) as sprite
static jumpinglkick_kim (1 to 4) as sprite 
static jumpinglkick2_kim (1 to 4) as sprite 
static jumpingpunch2_kim (1 to 3) as sprite
static winpose_kim(1 to 4) as sprite
static hangetsu_kim(1 to 13) as sprite
static hienzan_kim(1 to 10) as sprite

static last_command as string
dim i as integer

select case commandz
case "LC"
'return last command
return_string=last_command
case "STANDING"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=standing_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
case "WALKBACK"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkback_kim(i).spritebuf
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
ani_pointers(i)=walkforward_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1   
case "CROUCH"
frame_counts=2
for i=1 to frame_counts
ani_pointers(i)=crouch_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
case "JUMPING"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumping_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
case "JUMPINGBACK"
frame_counts=7
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingback_kim(i).spritebuf
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
frame_counts=7
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingforward_kim(i).spritebuf
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
case "STANDINGPUNCH"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=standingpunch_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
case "STANDINGLPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standinglpunch_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "CROUCHINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchingpunch_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.2
case "CROUCHINGPUNCH2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglpunch_kim(i).spritebuf
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGPUNCH","JUMPINGFORWARDPUNCH","JUMPINGBACKPUNCH"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.003
frame_delays(3)=.003
case "JUMPINGPUNCH2","JUMPINGFORWARDPUNCH2","JUMPINGBACKPUNCH2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch2_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.6
frame_delays(3)=.1
case "STANDINGKICK"
frame_counts=13
for i=1 to frame_counts
ani_pointers(i)=standingkick_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
frame_delays(7)=.1
frame_delays(8)=.1
frame_delays(9)=.1
frame_delays(10)=.1
frame_delays(11)=.1
frame_delays(12)=.1
frame_delays(13)=.1
case "STANDINGKICK2"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=standinglkick_kim(i).spritebuf
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05 
frame_delays(4)=.05 
frame_delays(5)=.05 
case "CROUCHINGKICK"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=crouchingkick_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
frame_delays(7)=.1
case "CROUCHINGKICK2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglkick_kim(i).spritebuf
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGLKICK"  
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick_kim(i).spritebuf
next
frame_delays(1)=.1
case "JUMPINGKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGKICK2","JUMPINGFORWARDKICK","JUMPINGBACKKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick2_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGFORWARDKICK2","JUMPINGBACKKICK2" 
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick2_kim(i).spritebuf
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
case "WIN"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=winpose_kim(i).spritebuf
next    
frame_delays(1)=.2   
frame_delays(2)=.2 
frame_delays(3)=.2 
frame_delays(4)=.2 
case "HIENZAN"
frame_counts=10
for i=1 to frame_counts
ani_pointers(i)=hienzan_kim(i).spritebuf
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
case "HANGETSU"
frame_counts=13
for i=1 to frame_counts
ani_pointers(i)=hangetsu_kim(i).spritebuf
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
frame_delays(12)=.6 
frame_delays(13)=.6 
case "LOAD"
LOAD_SPRITE hienzan_kim(1),"graphics/kim/kim_1100-0.bmp" 
LOAD_SPRITE hienzan_kim(2),"graphics/kim/kim_1100-1.bmp" 
LOAD_SPRITE hienzan_kim(3),"graphics/kim/kim_1100-2.bmp" 
LOAD_SPRITE hienzan_kim(4),"graphics/kim/kim_1100-3.bmp" 
LOAD_SPRITE hienzan_kim(5),"graphics/kim/kim_1100-4.bmp" 
LOAD_SPRITE hienzan_kim(6),"graphics/kim/kim_1100-5.bmp" 
LOAD_SPRITE hienzan_kim(7),"graphics/kim/kim_1100-6.bmp" 
LOAD_SPRITE hienzan_kim(8),"graphics/kim/kim_1100-7.bmp" 
LOAD_SPRITE hienzan_kim(9),"graphics/kim/kim_41-2.bmp" 
LOAD_SPRITE hienzan_kim(10),"graphics/kim/kim_11-0.bmp" 
'****    
LOAD_SPRITE hangetsu_kim(1),"graphics/kim/kim_1000-0.bmp"   
LOAD_SPRITE hangetsu_kim(2),"graphics/kim/kim_1000-1.bmp"  
LOAD_SPRITE hangetsu_kim(3),"graphics/kim/kim_1000-2.bmp"  
LOAD_SPRITE hangetsu_kim(4),"graphics/kim/kim_1000-3.bmp"  
LOAD_SPRITE hangetsu_kim(5),"graphics/kim/kim_1000-4.bmp"  
LOAD_SPRITE hangetsu_kim(6),"graphics/kim/kim_1000-5.bmp"  
LOAD_SPRITE hangetsu_kim(7),"graphics/kim/kim_1000-6.bmp"  
LOAD_SPRITE hangetsu_kim(8),"graphics/kim/kim_1000-7.bmp"  
LOAD_SPRITE hangetsu_kim(9),"graphics/kim/kim_1000-8.bmp"  
LOAD_SPRITE hangetsu_kim(10),"graphics/kim/kim_1000-9.bmp"  
LOAD_SPRITE hangetsu_kim(11),"graphics/kim/kim_1000-10.bmp"  
LOAD_SPRITE hangetsu_kim(12),"graphics/kim/kim_1000-11.bmp"  
LOAD_SPRITE hangetsu_kim(13),"graphics/kim/kim_11-0.bmp"  
'****    
LOAD_SPRITE standing_kim(1),"graphics/kim/kim_0-0.bmp"
LOAD_SPRITE standing_kim(2),"graphics/kim/kim_0-1.bmp"
LOAD_SPRITE standing_kim(3),"graphics/kim/kim_0-2.bmp"
LOAD_SPRITE standing_kim(4),"graphics/kim/kim_0-3.bmp"
'****
LOAD_SPRITE walkback_kim(1),"graphics/kim/kim_21-0.bmp"
LOAD_SPRITE walkback_kim(2),"graphics/kim/kim_21-1.bmp"
LOAD_SPRITE walkback_kim(3),"graphics/kim/kim_21-2.bmp"
LOAD_SPRITE walkback_kim(4),"graphics/kim/kim_21-3.bmp"
LOAD_SPRITE walkback_kim(5),"graphics/kim/kim_21-4.bmp"
LOAD_SPRITE walkback_kim(6),"graphics/kim/kim_21-5.bmp"
'****
LOAD_SPRITE walkforward_kim(1),"graphics/kim/kim_20-0.bmp"
LOAD_SPRITE walkforward_kim(2),"graphics/kim/kim_20-1.bmp"
LOAD_SPRITE walkforward_kim(3),"graphics/kim/kim_20-2.bmp"
LOAD_SPRITE walkforward_kim(4),"graphics/kim/kim_20-3.bmp"
LOAD_SPRITE walkforward_kim(5),"graphics/kim/kim_20-4.bmp"
LOAD_SPRITE walkforward_kim(6),"graphics/kim/kim_20-5.bmp"
'****
LOAD_SPRITE crouch_kim(1),"graphics/kim/kim_11-0.bmp"
LOAD_SPRITE crouch_kim(2),"graphics/kim/kim_11-1.bmp"
'****
LOAD_SPRITE jumping_kim(1),"graphics/kim/kim_41-0.bmp"
LOAD_SPRITE jumping_kim(2),"graphics/kim/kim_41-1.bmp"
LOAD_SPRITE jumping_kim(3),"graphics/kim/kim_41-2.bmp"
LOAD_SPRITE jumping_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE jumpingforward_kim(1),"graphics/kim/kim_42-0.bmp"
LOAD_SPRITE jumpingforward_kim(2),"graphics/kim/kim_42-1.bmp"
LOAD_SPRITE jumpingforward_kim(3),"graphics/kim/kim_42-2.bmp"
LOAD_SPRITE jumpingforward_kim(4),"graphics/kim/kim_42-3.bmp"
LOAD_SPRITE jumpingforward_kim(5),"graphics/kim/kim_42-4.bmp"
LOAD_SPRITE jumpingforward_kim(6),"graphics/kim/kim_42-5.bmp"
LOAD_SPRITE jumpingforward_kim(7),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE jumpingback_kim(1),"graphics/kim/kim_43-0.bmp"
LOAD_SPRITE jumpingback_kim(2),"graphics/kim/kim_43-1.bmp"
LOAD_SPRITE jumpingback_kim(3),"graphics/kim/kim_43-2.bmp"
LOAD_SPRITE jumpingback_kim(4),"graphics/kim/kim_43-3.bmp"
LOAD_SPRITE jumpingback_kim(5),"graphics/kim/kim_43-4.bmp"
LOAD_SPRITE jumpingback_kim(6),"graphics/kim/kim_43-5.bmp"
LOAD_SPRITE jumpingback_kim(7),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE standingpunch_kim(1),"graphics/kim/kim_200-0.bmp"
LOAD_SPRITE standingpunch_kim(2),"graphics/kim/kim_200-1.bmp"
LOAD_SPRITE standingpunch_kim(3),"graphics/kim/kim_200-2.bmp"
LOAD_SPRITE standingpunch_kim(4),"graphics/kim/kim_200-3.bmp"
'****
LOAD_SPRITE crouchingpunch_kim(1),"graphics/kim/kim_400-0.bmp"
LOAD_SPRITE crouchingpunch_kim(2),"graphics/kim/kim_400-1.bmp"
LOAD_SPRITE crouchingpunch_kim(3),"graphics/kim/kim_400-0.bmp"
'****
LOAD_SPRITE jumpingpunch_kim(1),"graphics/kim/kim_600-0.bmp"
LOAD_SPRITE jumpingpunch_kim(2),"graphics/kim/kim_600-1.bmp"
LOAD_SPRITE jumpingpunch_kim(3),"graphics/kim/kim_600-2.bmp"
LOAD_SPRITE jumpingpunch_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE standingkick_kim(1),"graphics/kim/kim_220-0.bmp"
LOAD_SPRITE standingkick_kim(2),"graphics/kim/kim_220-1.bmp"
LOAD_SPRITE standingkick_kim(3),"graphics/kim/kim_220-2.bmp"
LOAD_SPRITE standingkick_kim(4),"graphics/kim/kim_220-3.bmp"
LOAD_SPRITE standingkick_kim(5),"graphics/kim/kim_220-4.bmp"
LOAD_SPRITE standingkick_kim(6),"graphics/kim/kim_220-5.bmp"
LOAD_SPRITE standingkick_kim(7),"graphics/kim/kim_220-6.bmp"
LOAD_SPRITE standingkick_kim(8),"graphics/kim/kim_230-0.bmp"
LOAD_SPRITE standingkick_kim(9),"graphics/kim/kim_230-1.bmp"
LOAD_SPRITE standingkick_kim(10),"graphics/kim/kim_230-2.bmp"
LOAD_SPRITE standingkick_kim(11),"graphics/kim/kim_230-3.bmp"
LOAD_SPRITE standingkick_kim(12),"graphics/kim/kim_230-4.bmp"
LOAD_SPRITE standingkick_kim(13),"graphics/kim/kim_230-5.bmp"
'****
LOAD_SPRITE standinglkick_kim(1),"graphics/kim/kim_210-0.bmp"
LOAD_SPRITE standinglkick_kim(2),"graphics/kim/kim_210-1.bmp"
LOAD_SPRITE standinglkick_kim(3),"graphics/kim/kim_210-2.bmp"
LOAD_SPRITE standinglkick_kim(4),"graphics/kim/kim_210-3.bmp"
LOAD_SPRITE standinglkick_kim(5),"graphics/kim/kim_210-4.bmp"
'****
LOAD_SPRITE crouchingkick_kim(1),"graphics/kim/kim_420-0.bmp"
LOAD_SPRITE crouchingkick_kim(2),"graphics/kim/kim_420-1.bmp"
LOAD_SPRITE crouchingkick_kim(3),"graphics/kim/kim_420-2.bmp"
LOAD_SPRITE crouchingkick_kim(4),"graphics/kim/kim_420-3.bmp"
LOAD_SPRITE crouchingkick_kim(5),"graphics/kim/kim_420-2.bmp"
LOAD_SPRITE crouchingkick_kim(6),"graphics/kim/kim_420-1.bmp"
LOAD_SPRITE crouchingkick_kim(7),"graphics/kim/kim_420-0.bmp"
'****
LOAD_SPRITE crouchinglkick_kim(1),"graphics/kim/kim_410-0.bmp"
LOAD_SPRITE crouchinglkick_kim(2),"graphics/kim/kim_410-1.bmp"
LOAD_SPRITE crouchinglkick_kim(3),"graphics/kim/kim_410-0.bmp"
'****
LOAD_SPRITE jumpingkick2_kim(1),"graphics/kim/kim_630-0.bmp"
LOAD_SPRITE jumpingkick2_kim(2),"graphics/kim/kim_630-1.bmp"
LOAD_SPRITE jumpingkick2_kim(3),"graphics/kim/kim_630-2.bmp"
LOAD_SPRITE jumpingkick2_kim(4),"graphics/kim/kim_630-3.bmp"
LOAD_SPRITE jumpingkick2_kim(5),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE jumpinglkick2_kim(1),"graphics/kim/kim_310-0.bmp"
LOAD_SPRITE jumpinglkick2_kim(2),"graphics/kim/kim_310-1.bmp"
LOAD_SPRITE jumpinglkick2_kim(3),"graphics/kim/kim_310-2.bmp"
LOAD_SPRITE jumpinglkick2_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE jumpinglkick_kim(1),"graphics/kim/kim_310-0.bmp"
LOAD_SPRITE jumpinglkick_kim(2),"graphics/kim/kim_310-1.bmp"
LOAD_SPRITE jumpinglkick_kim(3),"graphics/kim/kim_310-2.bmp"
LOAD_SPRITE jumpinglkick_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE jumpingkick_kim(1),"graphics/kim/kim_630-0.bmp"
LOAD_SPRITE jumpingkick_kim(2),"graphics/kim/kim_630-1.bmp"
LOAD_SPRITE jumpingkick_kim(3),"graphics/kim/kim_630-2.bmp"
LOAD_SPRITE jumpingkick_kim(4),"graphics/kim/kim_630-3.bmp"
LOAD_SPRITE jumpingkick_kim(5),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE standinglpunch_kim(1),"graphics/kim/kim_300-0.bmp"
LOAD_SPRITE standinglpunch_kim(2),"graphics/kim/kim_300-1.bmp"
LOAD_SPRITE standinglpunch_kim(3),"graphics/kim/kim_300-0.bmp"
'**** 
LOAD_SPRITE jumpingpunch2_kim(1),"graphics/kim/kim_260-0.bmp"
LOAD_SPRITE jumpingpunch2_kim(2),"graphics/kim/kim_260-1.bmp"
LOAD_SPRITE jumpingpunch2_kim(3),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE crouchinglpunch_kim(1),"graphics/kim/kim_400-0.bmp"
LOAD_SPRITE crouchinglpunch_kim(2),"graphics/kim/kim_400-1.bmp"
LOAD_SPRITE crouchinglpunch_kim(3),"graphics/kim/kim_400-0.bmp" 
'**** 
LOAD_SPRITE winpose_kim(1),"graphics/kim/kim_185-0.bmp"
LOAD_SPRITE winpose_kim(2),"graphics/kim/kim_185-1.bmp"
LOAD_SPRITE winpose_kim(3),"graphics/kim/kim_185-2.bmp"
LOAD_SPRITE winpose_kim(4),"graphics/kim/kim_185-3.bmp"
'****
case "FREE"
ImageDestroy hangetsu_kim(1).spritebuf  
ImageDestroy hangetsu_kim(2).spritebuf 
ImageDestroy hangetsu_kim(3).spritebuf 
ImageDestroy hangetsu_kim(4).spritebuf 
ImageDestroy hangetsu_kim(5).spritebuf 
ImageDestroy hangetsu_kim(6).spritebuf 
ImageDestroy hangetsu_kim(7).spritebuf 
ImageDestroy hangetsu_kim(8).spritebuf 
ImageDestroy hangetsu_kim(9).spritebuf 
ImageDestroy hangetsu_kim(10).spritebuf 
ImageDestroy hangetsu_kim(11).spritebuf 
ImageDestroy hangetsu_kim(12).spritebuf 
ImageDestroy hangetsu_kim(13).spritebuf 
'****
ImageDestroy hienzan_kim(1).spritebuf
ImageDestroy hienzan_kim(2).spritebuf 
ImageDestroy hienzan_kim(3).spritebuf 
ImageDestroy hienzan_kim(4).spritebuf 
ImageDestroy hienzan_kim(5).spritebuf 
ImageDestroy hienzan_kim(6).spritebuf 
ImageDestroy hienzan_kim(7).spritebuf 
ImageDestroy hienzan_kim(8).spritebuf 
ImageDestroy hienzan_kim(9).spritebuf 
ImageDestroy hienzan_kim(10).spritebuf 
'****     
ImageDestroy standing_kim(1).spritebuf   
ImageDestroy standing_kim(2).spritebuf   
ImageDestroy standing_kim(3).spritebuf   
ImageDestroy standing_kim(4).spritebuf   
'**** 
ImageDestroy walkback_kim(1).spritebuf   
ImageDestroy walkback_kim(2).spritebuf   
ImageDestroy walkback_kim(3).spritebuf  
ImageDestroy walkback_kim(4).spritebuf   
ImageDestroy walkback_kim(5).spritebuf   
ImageDestroy walkback_kim(6).spritebuf   
'****
ImageDestroy walkforward_kim(1).spritebuf   
ImageDestroy walkforward_kim(2).spritebuf   
ImageDestroy walkforward_kim(3).spritebuf   
ImageDestroy walkforward_kim(4).spritebuf   
ImageDestroy walkforward_kim(5).spritebuf   
ImageDestroy walkforward_kim(6).spritebuf   
'****
ImageDestroy crouch_kim(1).spritebuf   
ImageDestroy crouch_kim(2).spritebuf   
'****
ImageDestroy jumping_kim(1).spritebuf   
ImageDestroy jumping_kim(2).spritebuf   
ImageDestroy jumping_kim(3).spritebuf   
ImageDestroy jumping_kim(4).spritebuf   
'****
ImageDestroy jumpingforward_kim(1).spritebuf   
ImageDestroy jumpingforward_kim(2).spritebuf   
ImageDestroy jumpingforward_kim(3).spritebuf   
ImageDestroy jumpingforward_kim(4).spritebuf   
ImageDestroy jumpingforward_kim(5).spritebuf   
ImageDestroy jumpingforward_kim(6).spritebuf 
ImageDestroy jumpingforward_kim(7).spritebuf 
'****
ImageDestroy jumpingback_kim(1).spritebuf   
ImageDestroy jumpingback_kim(2).spritebuf   
ImageDestroy jumpingback_kim(3).spritebuf   
ImageDestroy jumpingback_kim(4).spritebuf   
ImageDestroy jumpingback_kim(5).spritebuf   
ImageDestroy jumpingback_kim(6).spritebuf 
ImageDestroy jumpingback_kim(7).spritebuf 
'****
ImageDestroy standingpunch_kim(1).spritebuf   
ImageDestroy standingpunch_kim(2).spritebuf   
ImageDestroy standingpunch_kim(3).spritebuf  
ImageDestroy standingpunch_kim(4).spritebuf 
'****
ImageDestroy crouchingpunch_kim(1).spritebuf   
ImageDestroy crouchingpunch_kim(2).spritebuf   
ImageDestroy crouchingpunch_kim(3).spritebuf   
'****
ImageDestroy jumpingpunch_kim(1).spritebuf   
ImageDestroy jumpingpunch_kim(2).spritebuf   
ImageDestroy jumpingpunch_kim(3).spritebuf  
ImageDestroy jumpingpunch_kim(4).spritebuf 
'****
ImageDestroy standingkick_kim(1).spritebuf 
ImageDestroy standingkick_kim(2).spritebuf
ImageDestroy standingkick_kim(3).spritebuf
ImageDestroy standingkick_kim(4).spritebuf
ImageDestroy standingkick_kim(5).spritebuf
ImageDestroy standingkick_kim(6).spritebuf
ImageDestroy standingkick_kim(7).spritebuf
ImageDestroy standingkick_kim(8).spritebuf
ImageDestroy standingkick_kim(9).spritebuf
ImageDestroy standingkick_kim(10).spritebuf
ImageDestroy standingkick_kim(11).spritebuf
ImageDestroy standingkick_kim(12).spritebuf
ImageDestroy standingkick_kim(13).spritebuf
'****
ImageDestroy standinglkick_kim(1).spritebuf
ImageDestroy standinglkick_kim(2).spritebuf
ImageDestroy standinglkick_kim(3).spritebuf
ImageDestroy standinglkick_kim(4).spritebuf
ImageDestroy standinglkick_kim(5).spritebuf
'****
ImageDestroy crouchingkick_kim(1).spritebuf
ImageDestroy crouchingkick_kim(2).spritebuf
ImageDestroy crouchingkick_kim(3).spritebuf
ImageDestroy crouchingkick_kim(4).spritebuf
ImageDestroy crouchingkick_kim(5).spritebuf
ImageDestroy crouchingkick_kim(6).spritebuf
ImageDestroy crouchingkick_kim(7).spritebuf
'****
ImageDestroy crouchinglkick_kim(1).spritebuf   
ImageDestroy crouchinglkick_kim(2).spritebuf   
ImageDestroy crouchinglkick_kim(3).spritebuf 
'****
ImageDestroy jumpinglkick_kim(1).spritebuf 
ImageDestroy jumpinglkick_kim(2).spritebuf 
ImageDestroy jumpinglkick_kim(3).spritebuf 
ImageDestroy jumpinglkick_kim(4).spritebuf 
'****
ImageDestroy jumpinglkick2_kim(1).spritebuf 
ImageDestroy jumpinglkick2_kim(2).spritebuf 
ImageDestroy jumpinglkick2_kim(3).spritebuf 
ImageDestroy jumpinglkick2_kim(4).spritebuf 
'****
ImageDestroy jumpingkick_kim(1).spritebuf   
ImageDestroy jumpingkick_kim(2).spritebuf   
ImageDestroy jumpingkick_kim(3).spritebuf 
ImageDestroy jumpingkick_kim(4).spritebuf
ImageDestroy jumpingkick_kim(5).spritebuf
'****
ImageDestroy standinglpunch_kim(1).spritebuf   
ImageDestroy standinglpunch_kim(2).spritebuf   
ImageDestroy standinglpunch_kim(3).spritebuf   
'****
ImageDestroy jumpingpunch2_kim(1).spritebuf   
ImageDestroy jumpingpunch2_kim(2).spritebuf
ImageDestroy jumpingpunch2_kim(3).spritebuf 
'****
ImageDestroy crouchinglpunch_kim(1).spritebuf
ImageDestroy crouchinglpunch_kim(2).spritebuf
ImageDestroy crouchinglpunch_kim(3).spritebuf
'****
ImageDestroy winpose_kim(1).spritebuf
ImageDestroy winpose_kim(2).spritebuf
ImageDestroy winpose_kim(3).spritebuf
ImageDestroy winpose_kim(4).spritebuf
'****
case else
end select
if commandz="LC" then
else
last_command=commandz    
end if    
END SUB
'===============================================================================
SUB GET_ANIMATION_LEFT_KIM(commandz as string,ani_pointers() as any ptr,frame_delays() as double,byref frame_counts as integer,return_string as string)
static standing_kim (1 to 4) as sprite
static walkback_kim (1 to 6) as sprite
static walkforward_kim (1 to 6) as sprite
static crouch_kim (1 to 2) as sprite
static jumping_kim (1 to 4) as sprite
static jumpingforward_kim (1 to 7) as sprite
static jumpingback_kim (1 to 7) as sprite
static standingpunch_kim (1 to 4) as sprite
static standinglpunch_kim (1 to 3) as sprite
static crouchingpunch_kim (1 to 3) as sprite
static crouchinglpunch_kim (1 to 3) as sprite
static jumpingpunch_kim (1 to 4) as sprite
static standingkick_kim (1 to 13) as sprite
static standinglkick_kim (1 to 5) as sprite
static crouchingkick_kim (1 to 7) as sprite
static crouchinglkick_kim (1 to 3) as sprite
static jumpingkick_kim (1 to 5) as sprite
static jumpingkick2_kim (1 to 5) as sprite
static jumpinglkick_kim (1 to 4) as sprite 
static jumpinglkick2_kim (1 to 4) as sprite 
static jumpingpunch2_kim (1 to 3) as sprite
static winpose_kim(1 to 4) as sprite
static hangetsu_kim(1 to 13) as sprite
static hienzan_kim(1 to 10) as sprite

static last_command as string
dim i as integer

select case commandz
case "LC"
'return last command
return_string=last_command
case "STANDING"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=standing_kim(i).spritebuf
cur_xwidth(i)=standing_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
case "WALKBACK"
frame_counts=6
for i=1 to frame_counts
ani_pointers(i)=walkback_kim(i).spritebuf
cur_xwidth(i)=walkback_kim(i).xwidth
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
ani_pointers(i)=walkforward_kim(i).spritebuf
cur_xwidth(i)=walkforward_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1   
case "CROUCH"
frame_counts=2
for i=1 to frame_counts
ani_pointers(i)=crouch_kim(i).spritebuf
cur_xwidth(i)=crouch_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
case "JUMPING"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumping_kim(i).spritebuf
cur_xwidth(i)=jumping_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
case "JUMPINGBACK"
frame_counts=7
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingback_kim(i).spritebuf
cur_xwidth(i)=jumpingback_kim(i).xwidth
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
frame_counts=7
dim i as integer
for i=1 to frame_counts
ani_pointers(i)=jumpingforward_kim(i).spritebuf
cur_xwidth(i)=jumpingforward_kim(i).xwidth
next
frame_delays(1)=.2
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1  
frame_delays(7)=.1 
case "STANDINGPUNCH"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=standingpunch_kim(i).spritebuf
cur_xwidth(i)=standingpunch_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
case "STANDINGLPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=standinglpunch_kim(i).spritebuf
cur_xwidth(i)=standinglpunch_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1 
case "CROUCHINGPUNCH"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchingpunch_kim(i).spritebuf
cur_xwidth(i)=crouchingpunch_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.2
case "CROUCHINGPUNCH2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglpunch_kim(i).spritebuf
cur_xwidth(i)=crouchinglpunch_kim(i).xwidth
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGPUNCH","JUMPINGFORWARDPUNCH","JUMPINGBACKPUNCH"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch_kim(i).spritebuf
cur_xwidth(i)=jumpingpunch_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.003
frame_delays(3)=.003
case "JUMPINGPUNCH2","JUMPINGFORWARDPUNCH2","JUMPINGBACKPUNCH2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=jumpingpunch2_kim(i).spritebuf
cur_xwidth(i)=jumpingpunch2_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.6
frame_delays(3)=.1
case "STANDINGKICK"
frame_counts=13
for i=1 to frame_counts
ani_pointers(i)=standingkick_kim(i).spritebuf
cur_xwidth(i)=standingkick_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
frame_delays(7)=.1
frame_delays(8)=.1
frame_delays(9)=.1
frame_delays(10)=.1
frame_delays(11)=.1
frame_delays(12)=.1
frame_delays(13)=.1
case "STANDINGKICK2"
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=standinglkick_kim(i).spritebuf
cur_xwidth(i)=standinglkick_kim(i).xwidth
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05 
frame_delays(4)=.05 
frame_delays(5)=.05 
case "CROUCHINGKICK"
frame_counts=7
for i=1 to frame_counts
ani_pointers(i)=crouchingkick_kim(i).spritebuf
cur_xwidth(i)=crouchingkick_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.25
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
frame_delays(6)=.1
frame_delays(7)=.1
case "CROUCHINGKICK2"
frame_counts=3
for i=1 to frame_counts
ani_pointers(i)=crouchinglkick_kim(i).spritebuf
cur_xwidth(i)=crouchinglkick_kim(i).xwidth
next
frame_delays(1)=.05
frame_delays(2)=.1
frame_delays(3)=.05
case "JUMPINGLKICK"  
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick_kim(i).spritebuf
cur_xwidth(i)=jumpinglkick_kim(i).xwidth
next
frame_delays(1)=.1
case "JUMPINGKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick_kim(i).spritebuf
cur_xwidth(i)=jumpingkick_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.1
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGKICK2","JUMPINGFORWARDKICK","JUMPINGBACKKICK" 
frame_counts=5
for i=1 to frame_counts
ani_pointers(i)=jumpingkick2_kim(i).spritebuf
cur_xwidth(i)=jumpingkick2_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
frame_delays(5)=.1
case "JUMPINGFORWARDKICK2","JUMPINGBACKKICK2" 
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=jumpinglkick2_kim(i).spritebuf
cur_xwidth(i)=jumpinglkick2_kim(i).xwidth
next
frame_delays(1)=.1
frame_delays(2)=.2
frame_delays(3)=.1
frame_delays(4)=.1
case "WIN"
frame_counts=4
for i=1 to frame_counts
ani_pointers(i)=winpose_kim(i).spritebuf
cur_xwidth(i)=winpose_kim(i).xwidth
next    
frame_delays(1)=.2   
frame_delays(2)=.2 
frame_delays(3)=.2 
frame_delays(4)=.2 
case "HIENZAN"
frame_counts=10
for i=1 to frame_counts
ani_pointers(i)=hienzan_kim(i).spritebuf
cur_xwidth(i)=hienzan_kim(i).xwidth
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
case "HANGETSU"
frame_counts=13
for i=1 to frame_counts
ani_pointers(i)=hangetsu_kim(i).spritebuf
cur_xwidth(i)=hangetsu_kim(i).xwidth
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
frame_delays(12)=.6 
frame_delays(13)=.6 
case "LOAD"
LOAD_SPRITE_LEFT hienzan_kim(1),"graphics/kim/kim_1100-0.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(2),"graphics/kim/kim_1100-1.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(3),"graphics/kim/kim_1100-2.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(4),"graphics/kim/kim_1100-3.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(5),"graphics/kim/kim_1100-4.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(6),"graphics/kim/kim_1100-5.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(7),"graphics/kim/kim_1100-6.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(8),"graphics/kim/kim_1100-7.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(9),"graphics/kim/kim_41-2.bmp" 
LOAD_SPRITE_LEFT hienzan_kim(10),"graphics/kim/kim_11-0.bmp" 
'****    
LOAD_SPRITE_LEFT hangetsu_kim(1),"graphics/kim/kim_1000-0.bmp"   
LOAD_SPRITE_LEFT hangetsu_kim(2),"graphics/kim/kim_1000-1.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(3),"graphics/kim/kim_1000-2.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(4),"graphics/kim/kim_1000-3.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(5),"graphics/kim/kim_1000-4.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(6),"graphics/kim/kim_1000-5.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(7),"graphics/kim/kim_1000-6.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(8),"graphics/kim/kim_1000-7.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(9),"graphics/kim/kim_1000-8.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(10),"graphics/kim/kim_1000-9.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(11),"graphics/kim/kim_1000-10.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(12),"graphics/kim/kim_1000-11.bmp"  
LOAD_SPRITE_LEFT hangetsu_kim(13),"graphics/kim/kim_11-0.bmp"  
'****    
LOAD_SPRITE_LEFT standing_kim(1),"graphics/kim/kim_0-0.bmp"
LOAD_SPRITE_LEFT standing_kim(2),"graphics/kim/kim_0-1.bmp"
LOAD_SPRITE_LEFT standing_kim(3),"graphics/kim/kim_0-2.bmp"
LOAD_SPRITE_LEFT standing_kim(4),"graphics/kim/kim_0-3.bmp"
'****
LOAD_SPRITE_LEFT walkback_kim(1),"graphics/kim/kim_21-0.bmp"
LOAD_SPRITE_LEFT walkback_kim(2),"graphics/kim/kim_21-1.bmp"
LOAD_SPRITE_LEFT walkback_kim(3),"graphics/kim/kim_21-2.bmp"
LOAD_SPRITE_LEFT walkback_kim(4),"graphics/kim/kim_21-3.bmp"
LOAD_SPRITE_LEFT walkback_kim(5),"graphics/kim/kim_21-4.bmp"
LOAD_SPRITE_LEFT walkback_kim(6),"graphics/kim/kim_21-5.bmp"
'****
LOAD_SPRITE_LEFT walkforward_kim(1),"graphics/kim/kim_20-0.bmp"
LOAD_SPRITE_LEFT walkforward_kim(2),"graphics/kim/kim_20-1.bmp"
LOAD_SPRITE_LEFT walkforward_kim(3),"graphics/kim/kim_20-2.bmp"
LOAD_SPRITE_LEFT walkforward_kim(4),"graphics/kim/kim_20-3.bmp"
LOAD_SPRITE_LEFT walkforward_kim(5),"graphics/kim/kim_20-4.bmp"
LOAD_SPRITE_LEFT walkforward_kim(6),"graphics/kim/kim_20-5.bmp"
'****
LOAD_SPRITE_LEFT crouch_kim(1),"graphics/kim/kim_11-0.bmp"
LOAD_SPRITE_LEFT crouch_kim(2),"graphics/kim/kim_11-1.bmp"
'****
LOAD_SPRITE_LEFT jumping_kim(1),"graphics/kim/kim_41-0.bmp"
LOAD_SPRITE_LEFT jumping_kim(2),"graphics/kim/kim_41-1.bmp"
LOAD_SPRITE_LEFT jumping_kim(3),"graphics/kim/kim_41-2.bmp"
LOAD_SPRITE_LEFT jumping_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingforward_kim(1),"graphics/kim/kim_42-0.bmp"
LOAD_SPRITE_LEFT jumpingforward_kim(2),"graphics/kim/kim_42-1.bmp"
LOAD_SPRITE_LEFT jumpingforward_kim(3),"graphics/kim/kim_42-2.bmp"
LOAD_SPRITE_LEFT jumpingforward_kim(4),"graphics/kim/kim_42-3.bmp"
LOAD_SPRITE_LEFT jumpingforward_kim(5),"graphics/kim/kim_42-4.bmp"
LOAD_SPRITE_LEFT jumpingforward_kim(6),"graphics/kim/kim_42-5.bmp"
LOAD_SPRITE_LEFT jumpingforward_kim(7),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingback_kim(1),"graphics/kim/kim_43-0.bmp"
LOAD_SPRITE_LEFT jumpingback_kim(2),"graphics/kim/kim_43-1.bmp"
LOAD_SPRITE_LEFT jumpingback_kim(3),"graphics/kim/kim_43-2.bmp"
LOAD_SPRITE_LEFT jumpingback_kim(4),"graphics/kim/kim_43-3.bmp"
LOAD_SPRITE_LEFT jumpingback_kim(5),"graphics/kim/kim_43-4.bmp"
LOAD_SPRITE_LEFT jumpingback_kim(6),"graphics/kim/kim_43-5.bmp"
LOAD_SPRITE_LEFT jumpingback_kim(7),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT standingpunch_kim(1),"graphics/kim/kim_200-0.bmp"
LOAD_SPRITE_LEFT standingpunch_kim(2),"graphics/kim/kim_200-1.bmp"
LOAD_SPRITE_LEFT standingpunch_kim(3),"graphics/kim/kim_200-2.bmp"
LOAD_SPRITE_LEFT standingpunch_kim(4),"graphics/kim/kim_200-3.bmp"
'****
LOAD_SPRITE_LEFT crouchingpunch_kim(1),"graphics/kim/kim_400-0.bmp"
LOAD_SPRITE_LEFT crouchingpunch_kim(2),"graphics/kim/kim_400-1.bmp"
LOAD_SPRITE_LEFT crouchingpunch_kim(3),"graphics/kim/kim_400-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingpunch_kim(1),"graphics/kim/kim_600-0.bmp"
LOAD_SPRITE_LEFT jumpingpunch_kim(2),"graphics/kim/kim_600-1.bmp"
LOAD_SPRITE_LEFT jumpingpunch_kim(3),"graphics/kim/kim_600-2.bmp"
LOAD_SPRITE_LEFT jumpingpunch_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT standingkick_kim(1),"graphics/kim/kim_220-0.bmp"
LOAD_SPRITE_LEFT standingkick_kim(2),"graphics/kim/kim_220-1.bmp"
LOAD_SPRITE_LEFT standingkick_kim(3),"graphics/kim/kim_220-2.bmp"
LOAD_SPRITE_LEFT standingkick_kim(4),"graphics/kim/kim_220-3.bmp"
LOAD_SPRITE_LEFT standingkick_kim(5),"graphics/kim/kim_220-4.bmp"
LOAD_SPRITE_LEFT standingkick_kim(6),"graphics/kim/kim_220-5.bmp"
LOAD_SPRITE_LEFT standingkick_kim(7),"graphics/kim/kim_220-6.bmp"
LOAD_SPRITE_LEFT standingkick_kim(8),"graphics/kim/kim_230-0.bmp"
LOAD_SPRITE_LEFT standingkick_kim(9),"graphics/kim/kim_230-1.bmp"
LOAD_SPRITE_LEFT standingkick_kim(10),"graphics/kim/kim_230-2.bmp"
LOAD_SPRITE_LEFT standingkick_kim(11),"graphics/kim/kim_230-3.bmp"
LOAD_SPRITE_LEFT standingkick_kim(12),"graphics/kim/kim_230-4.bmp"
LOAD_SPRITE_LEFT standingkick_kim(13),"graphics/kim/kim_230-5.bmp"
'****
LOAD_SPRITE_LEFT standinglkick_kim(1),"graphics/kim/kim_210-0.bmp"
LOAD_SPRITE_LEFT standinglkick_kim(2),"graphics/kim/kim_210-1.bmp"
LOAD_SPRITE_LEFT standinglkick_kim(3),"graphics/kim/kim_210-2.bmp"
LOAD_SPRITE_LEFT standinglkick_kim(4),"graphics/kim/kim_210-3.bmp"
LOAD_SPRITE_LEFT standinglkick_kim(5),"graphics/kim/kim_210-4.bmp"
'****
LOAD_SPRITE_LEFT crouchingkick_kim(1),"graphics/kim/kim_420-0.bmp"
LOAD_SPRITE_LEFT crouchingkick_kim(2),"graphics/kim/kim_420-1.bmp"
LOAD_SPRITE_LEFT crouchingkick_kim(3),"graphics/kim/kim_420-2.bmp"
LOAD_SPRITE_LEFT crouchingkick_kim(4),"graphics/kim/kim_420-3.bmp"
LOAD_SPRITE_LEFT crouchingkick_kim(5),"graphics/kim/kim_420-2.bmp"
LOAD_SPRITE_LEFT crouchingkick_kim(6),"graphics/kim/kim_420-1.bmp"
LOAD_SPRITE_LEFT crouchingkick_kim(7),"graphics/kim/kim_420-0.bmp"
'****
LOAD_SPRITE_LEFT crouchinglkick_kim(1),"graphics/kim/kim_410-0.bmp"
LOAD_SPRITE_LEFT crouchinglkick_kim(2),"graphics/kim/kim_410-1.bmp"
LOAD_SPRITE_LEFT crouchinglkick_kim(3),"graphics/kim/kim_410-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingkick2_kim(1),"graphics/kim/kim_630-0.bmp"
LOAD_SPRITE_LEFT jumpingkick2_kim(2),"graphics/kim/kim_630-1.bmp"
LOAD_SPRITE_LEFT jumpingkick2_kim(3),"graphics/kim/kim_630-2.bmp"
LOAD_SPRITE_LEFT jumpingkick2_kim(4),"graphics/kim/kim_630-3.bmp"
LOAD_SPRITE_LEFT jumpingkick2_kim(5),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT jumpinglkick2_kim(1),"graphics/kim/kim_310-0.bmp"
LOAD_SPRITE_LEFT jumpinglkick2_kim(2),"graphics/kim/kim_310-1.bmp"
LOAD_SPRITE_LEFT jumpinglkick2_kim(3),"graphics/kim/kim_310-2.bmp"
LOAD_SPRITE_LEFT jumpinglkick2_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT jumpinglkick_kim(1),"graphics/kim/kim_310-0.bmp"
LOAD_SPRITE_LEFT jumpinglkick_kim(2),"graphics/kim/kim_310-1.bmp"
LOAD_SPRITE_LEFT jumpinglkick_kim(3),"graphics/kim/kim_310-2.bmp"
LOAD_SPRITE_LEFT jumpinglkick_kim(4),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT jumpingkick_kim(1),"graphics/kim/kim_630-0.bmp"
LOAD_SPRITE_LEFT jumpingkick_kim(2),"graphics/kim/kim_630-1.bmp"
LOAD_SPRITE_LEFT jumpingkick_kim(3),"graphics/kim/kim_630-2.bmp"
LOAD_SPRITE_LEFT jumpingkick_kim(4),"graphics/kim/kim_630-3.bmp"
LOAD_SPRITE_LEFT jumpingkick_kim(5),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT standinglpunch_kim(1),"graphics/kim/kim_300-0.bmp"
LOAD_SPRITE_LEFT standinglpunch_kim(2),"graphics/kim/kim_300-1.bmp"
LOAD_SPRITE_LEFT standinglpunch_kim(3),"graphics/kim/kim_300-0.bmp"
'**** 
LOAD_SPRITE_LEFT jumpingpunch2_kim(1),"graphics/kim/kim_260-0.bmp"
LOAD_SPRITE_LEFT jumpingpunch2_kim(2),"graphics/kim/kim_260-1.bmp"
LOAD_SPRITE_LEFT jumpingpunch2_kim(3),"graphics/kim/kim_11-0.bmp"
'****
LOAD_SPRITE_LEFT crouchinglpunch_kim(1),"graphics/kim/kim_400-0.bmp"
LOAD_SPRITE_LEFT crouchinglpunch_kim(2),"graphics/kim/kim_400-1.bmp"
LOAD_SPRITE_LEFT crouchinglpunch_kim(3),"graphics/kim/kim_400-0.bmp" 
'**** 
LOAD_SPRITE_LEFT winpose_kim(1),"graphics/kim/kim_185-0.bmp"
LOAD_SPRITE_LEFT winpose_kim(2),"graphics/kim/kim_185-1.bmp"
LOAD_SPRITE_LEFT winpose_kim(3),"graphics/kim/kim_185-2.bmp"
LOAD_SPRITE_LEFT winpose_kim(4),"graphics/kim/kim_185-3.bmp"
'****
case "FREE"
ImageDestroy hangetsu_kim(1).spritebuf  
ImageDestroy hangetsu_kim(2).spritebuf 
ImageDestroy hangetsu_kim(3).spritebuf 
ImageDestroy hangetsu_kim(4).spritebuf 
ImageDestroy hangetsu_kim(5).spritebuf 
ImageDestroy hangetsu_kim(6).spritebuf 
ImageDestroy hangetsu_kim(7).spritebuf 
ImageDestroy hangetsu_kim(8).spritebuf 
ImageDestroy hangetsu_kim(9).spritebuf 
ImageDestroy hangetsu_kim(10).spritebuf 
ImageDestroy hangetsu_kim(11).spritebuf 
ImageDestroy hangetsu_kim(12).spritebuf 
ImageDestroy hangetsu_kim(13).spritebuf 
'****
ImageDestroy hienzan_kim(1).spritebuf
ImageDestroy hienzan_kim(2).spritebuf 
ImageDestroy hienzan_kim(3).spritebuf 
ImageDestroy hienzan_kim(4).spritebuf 
ImageDestroy hienzan_kim(5).spritebuf 
ImageDestroy hienzan_kim(6).spritebuf 
ImageDestroy hienzan_kim(7).spritebuf 
ImageDestroy hienzan_kim(8).spritebuf 
ImageDestroy hienzan_kim(9).spritebuf 
ImageDestroy hienzan_kim(10).spritebuf 
'****     
ImageDestroy standing_kim(1).spritebuf   
ImageDestroy standing_kim(2).spritebuf   
ImageDestroy standing_kim(3).spritebuf   
ImageDestroy standing_kim(4).spritebuf   
'**** 
ImageDestroy walkback_kim(1).spritebuf   
ImageDestroy walkback_kim(2).spritebuf   
ImageDestroy walkback_kim(3).spritebuf  
ImageDestroy walkback_kim(4).spritebuf   
ImageDestroy walkback_kim(5).spritebuf   
ImageDestroy walkback_kim(6).spritebuf   
'****
ImageDestroy walkforward_kim(1).spritebuf   
ImageDestroy walkforward_kim(2).spritebuf   
ImageDestroy walkforward_kim(3).spritebuf   
ImageDestroy walkforward_kim(4).spritebuf   
ImageDestroy walkforward_kim(5).spritebuf   
ImageDestroy walkforward_kim(6).spritebuf   
'****
ImageDestroy crouch_kim(1).spritebuf   
ImageDestroy crouch_kim(2).spritebuf   
'****
ImageDestroy jumping_kim(1).spritebuf   
ImageDestroy jumping_kim(2).spritebuf   
ImageDestroy jumping_kim(3).spritebuf   
ImageDestroy jumping_kim(4).spritebuf   
'****
ImageDestroy jumpingforward_kim(1).spritebuf   
ImageDestroy jumpingforward_kim(2).spritebuf   
ImageDestroy jumpingforward_kim(3).spritebuf   
ImageDestroy jumpingforward_kim(4).spritebuf   
ImageDestroy jumpingforward_kim(5).spritebuf   
ImageDestroy jumpingforward_kim(6).spritebuf 
ImageDestroy jumpingforward_kim(7).spritebuf 
'****
ImageDestroy jumpingback_kim(1).spritebuf   
ImageDestroy jumpingback_kim(2).spritebuf   
ImageDestroy jumpingback_kim(3).spritebuf   
ImageDestroy jumpingback_kim(4).spritebuf   
ImageDestroy jumpingback_kim(5).spritebuf   
ImageDestroy jumpingback_kim(6).spritebuf 
ImageDestroy jumpingback_kim(7).spritebuf 
'****
ImageDestroy standingpunch_kim(1).spritebuf   
ImageDestroy standingpunch_kim(2).spritebuf   
ImageDestroy standingpunch_kim(3).spritebuf  
ImageDestroy standingpunch_kim(4).spritebuf 
'****
ImageDestroy crouchingpunch_kim(1).spritebuf   
ImageDestroy crouchingpunch_kim(2).spritebuf   
ImageDestroy crouchingpunch_kim(3).spritebuf   
'****
ImageDestroy jumpingpunch_kim(1).spritebuf   
ImageDestroy jumpingpunch_kim(2).spritebuf   
ImageDestroy jumpingpunch_kim(3).spritebuf  
ImageDestroy jumpingpunch_kim(4).spritebuf 
'****
ImageDestroy standingkick_kim(1).spritebuf 
ImageDestroy standingkick_kim(2).spritebuf
ImageDestroy standingkick_kim(3).spritebuf
ImageDestroy standingkick_kim(4).spritebuf
ImageDestroy standingkick_kim(5).spritebuf
ImageDestroy standingkick_kim(6).spritebuf
ImageDestroy standingkick_kim(7).spritebuf
ImageDestroy standingkick_kim(8).spritebuf
ImageDestroy standingkick_kim(9).spritebuf
ImageDestroy standingkick_kim(10).spritebuf
ImageDestroy standingkick_kim(11).spritebuf
ImageDestroy standingkick_kim(12).spritebuf
ImageDestroy standingkick_kim(13).spritebuf
'****
ImageDestroy standinglkick_kim(1).spritebuf
ImageDestroy standinglkick_kim(2).spritebuf
ImageDestroy standinglkick_kim(3).spritebuf
ImageDestroy standinglkick_kim(4).spritebuf
ImageDestroy standinglkick_kim(5).spritebuf
'****
ImageDestroy crouchingkick_kim(1).spritebuf
ImageDestroy crouchingkick_kim(2).spritebuf
ImageDestroy crouchingkick_kim(3).spritebuf
ImageDestroy crouchingkick_kim(4).spritebuf
ImageDestroy crouchingkick_kim(5).spritebuf
ImageDestroy crouchingkick_kim(6).spritebuf
ImageDestroy crouchingkick_kim(7).spritebuf
'****
ImageDestroy crouchinglkick_kim(1).spritebuf   
ImageDestroy crouchinglkick_kim(2).spritebuf   
ImageDestroy crouchinglkick_kim(3).spritebuf 
'****
ImageDestroy jumpinglkick_kim(1).spritebuf 
ImageDestroy jumpinglkick_kim(2).spritebuf 
ImageDestroy jumpinglkick_kim(3).spritebuf 
ImageDestroy jumpinglkick_kim(4).spritebuf 
'****
ImageDestroy jumpinglkick2_kim(1).spritebuf 
ImageDestroy jumpinglkick2_kim(2).spritebuf 
ImageDestroy jumpinglkick2_kim(3).spritebuf 
ImageDestroy jumpinglkick2_kim(4).spritebuf 
'****
ImageDestroy jumpingkick_kim(1).spritebuf   
ImageDestroy jumpingkick_kim(2).spritebuf   
ImageDestroy jumpingkick_kim(3).spritebuf 
ImageDestroy jumpingkick_kim(4).spritebuf
ImageDestroy jumpingkick_kim(5).spritebuf
'****
ImageDestroy standinglpunch_kim(1).spritebuf   
ImageDestroy standinglpunch_kim(2).spritebuf   
ImageDestroy standinglpunch_kim(3).spritebuf   
'****
ImageDestroy jumpingpunch2_kim(1).spritebuf   
ImageDestroy jumpingpunch2_kim(2).spritebuf
ImageDestroy jumpingpunch2_kim(3).spritebuf 
'****
ImageDestroy crouchinglpunch_kim(1).spritebuf
ImageDestroy crouchinglpunch_kim(2).spritebuf
ImageDestroy crouchinglpunch_kim(3).spritebuf
'****
ImageDestroy winpose_kim(1).spritebuf
ImageDestroy winpose_kim(2).spritebuf
ImageDestroy winpose_kim(3).spritebuf
ImageDestroy winpose_kim(4).spritebuf
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

'SUB mb_kb_clear_p1t
''clear Player 1's keyboard buffer timers only
'dim as integer i
'ibuff_p1_c=1
'for i=1 to 30
''kb_p1(i)=""
'kts_p1(i)=0
'next
'END SUB
'===============================================================================
function hangetsu_motion_check_p1_left(byref hangetsu_speed as string,og_ts as double) as integer 
'Facing LEFT hangetsu motion detection

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
hangetsu_motion_check_p1_left=0
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
if time_stamp_kp1(4)>time_stamp_kp1(2) then et=time_stamp_kp1(4)':hangetsu_speed="SLOW"
if (et-st)<=.2 then hc=1
hct=hcte-hcts
end if
end if

end if
end if

if hc=1 and hct<=.2 and time_stamp_kp1(2)>st and st>og_ts then

mb_kb_clear_p1
hangetsu_motion_check_p1_left=1
exit function
end if 

if hc=1 and hct<=.2 and time_stamp_kp1(4)>st then
hangetsu_speed="SLOW"
mb_kb_clear_p1
hangetsu_motion_check_p1_left=1
exit function
end if 

end if
end if


else
    
end if    
next

hangetsu_motion_check_p1_left=0
end function
'=============================================================================== 
function hienzan_motion_check_p1(og_ts as double) as integer
hienzan_motion_check_p1=0    
if tts_u_p1(9)>=.5 and timer-time_stamp_kp1(9)<=.1 and (timer-og_ts)>=.25  then hienzan_motion_check_p1=1
end function
'=============================================================================== 
function hangetsu_motion_check_p1(byref hangetsu_speed as string,og_ts as double) as integer  
'Facing RIGHT hangetsu motion detection

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
hangetsu_motion_check_p1=0
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
if time_stamp_kp1(4)>time_stamp_kp1(2) then et=time_stamp_kp1(4)':hangetsu_speed="SLOW"
if (et-st)<=.2 then hc=1
hct=hcte-hcts
end if
end if
'end if
end if
end if

if hc=1 and hct<=.2 and time_stamp_kp1(2)>st and st>og_ts then

mb_kb_clear_p1
hangetsu_motion_check_p1=1':SOUND_KIM "HANGETSU"
exit function
end if 

if hc=1 and hct<=.2 and time_stamp_kp1(4)>st then
hangetsu_speed="SLOW"
mb_kb_clear_p1
hangetsu_motion_check_p1=1
exit function
end if 

end if
end if


else
    
end if    
next

hangetsu_motion_check_p1=0
end function
'=============================================================================== 
SUB SOUND_KIM(commandz as string)
static as integer hWave(12),sound(12),lasts
dim i as integer
select case ucase(commandz)
case "LOAD"
LOAD_MP3_TO_MEM "sounds/Jubei_Punch1.mp3",hWave(0),sound(0),@sound(0)
LOAD_MP3_TO_MEM "sounds/Kim_won2.mp3",hWave(1),sound(1),@sound(1)
LOAD_MP3_TO_MEM "sounds/Jubei_Jumping.mp3",hWave(2),sound(2),@sound(2)
LOAD_MP3_TO_MEM "sounds/Kim_Hienzan.mp3",hWave(3),sound(3),@sound(3) 
LOAD_MP3_TO_MEM "sounds/Kim_Hangetsu.mp3",hWave(4),sound(4),@sound(4) 
LOAD_MP3_TO_MEM "sounds/Ryu_Lpunch.mp3",hWave(5),sound(5),@sound(5) 
LOAD_MP3_TO_MEM "sounds/Ryu_Lkick.mp3",hWave(6),sound(6),@sound(6)
LOAD_MP3_TO_MEM "sounds/Jubei_Landing.mp3",hWave(7),sound(7),@sound(7) 
LOAD_MP3_TO_MEM "sounds/Kim_Kick.mp3",hWave(8),sound(8),@sound(8) 
LOAD_MP3_TO_MEM "sounds/Kim_Hua.mp3",hWave(9),sound(9),@sound(9)
LOAD_MP3_TO_MEM "sounds/Kim_Acha.mp3",hWave(10),sound(10),@sound(10)
LOAD_MP3_TO_MEM "sounds/Kim_Ha.mp3",hWave(11),sound(11),@sound(11)
case "FREE"
for i=0 to 11
FREE_SOUND_MEMORY hWave(i)
next
case "HA"
PLAY_SOUND_MC sound(11)   
lasts=11
case "KICK"
PLAY_SOUND_MC sound(8)  
lasts=8
case "HUA"
PLAY_SOUND_MC sound(9)  
lasts=9
case "ACHA"
PLAY_SOUND_MC sound(10)  
lasts=10
case "SWING"
PLAY_SOUND_MC sound(0)  
lasts=0
case "KIMWON"
STOP_SOUND sound(1)    
PLAY_SOUND sound(1) 
lasts=1
case "JUMPING"
PLAY_SOUND_MC sound(2) 
lasts=2
case "LANDING"
PLAY_SOUND_MC sound(7) 
lasts=7
case "HIENZAN"
STOP_SOUND sound(3)    
PLAY_SOUND sound(3) 
lasts=3
case "HANGETSU"
STOP_SOUND sound(4)    
PLAY_SOUND sound(4) 
lasts=4
case "LPUNCH"
PLAY_SOUND_MC sound(5) 
lasts=5  
case "LKICK"
PLAY_SOUND_MC sound(6) 
lasts=6
case "STOP"
STOP_SOUND sound(lasts)    
case else
end select
END SUB
'===============================================================================  
SUB CONTROL_P1_KIM(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref d_state as string,byref hangetsu as string,byref lhts as double,byref hienzan as string,byref attack as string,byref hangetsu_speed as string,byref hienzan_speed as string,byref og_ts as double)
static t as double   
static fp as integer
static as string togk
static as string pk2
static i as integer
static p_keys(1 to 10) as integer 'previously pressed keys



if fp=0 then t=timer
if fp=0 then fp=1

input_state="NOTHING"



mb_keyboard_buffer_sort kts_p1(),kb_p1()


if d_state="ON GROUND" and hienzan="YES" and attack="YES" then 
if kcs_p1(2)=1 and kcs_p1(7)=1 then'Hienzan Motion Check  

if hienzan_motion_check_p1(og_ts)=1 then input_state="HIENZAN"

exit sub
end if  
end if 

if d_state="ON GROUND" and hienzan="YES" and attack="YES" then 
if kcs_p1(4)=1 and kcs_p1(7)=1 then'Hienzan Motion Check SLOW  

if hienzan_motion_check_p1(og_ts)=1 then input_state="HIENZAN"
hienzan_speed="SLOW"
exit sub
end if  
end if  

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


if hangetsu="YES" then
if hangetsu_motion_check_p1(hangetsu_speed,og_ts)=1  then 'Hangetsu Motion Check  
mb_kb_clear_p1 
input_state="HANGETSU"
exit sub
end if 

 

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
SUB CONTROL_P1_LEFT_KIM(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref d_state as string,byref hangetsu as string,byref lhts as double,byref hienzan as string,byref attack as string,byref hangetsu_speed as string,byref hienzan_speed as string,byref og_ts as double)
static t as double 
static fp as integer
static as string togk
static as string pk2
static i as integer
static p_keys(1 to 10) as integer 'previously pressed keys



if fp=0 then t=timer
if fp=0 then fp=1

input_state="NOTHING"

if d_state="ON GROUND" and hienzan="YES" and attack="YES" then 
if kcs_p1(2)=1 and kcs_p1(7)=1 then'Hienzan Motion Check  

if hienzan_motion_check_p1(og_ts)=1 then input_state="HIENZAN"

exit sub
end if  
end if 

if d_state="ON GROUND" and hienzan="YES" and attack="YES" then 
if kcs_p1(4)=1 and kcs_p1(7)=1 then'Hienzan Motion Check SLOW  

if hienzan_motion_check_p1(og_ts)=1 then input_state="HIENZAN"
hienzan_speed="SLOW"
exit sub
end if  
end if 

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
if hangetsu="YES" then
if hangetsu_motion_check_p1_left(hangetsu_speed,og_ts)=1  then 'Hangetsu Motion Check  
mb_kb_clear_p1 
input_state="HANGETSU"
exit sub
end if 
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
SUB JUMPING_FORWARD_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGFORWARD" and third_state<>"JUMPING" and third_state<>"JUMPINGBACK" then 
else 
fp=0    
exit sub    
end if


static count as integer 

static t as double
static t2 as double
dim frame_delay(1 to 7) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
'frame_delay(8)=.05
'frame_delay(9)=.05
'frame_delay(10)=.05
static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer

static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'Distance from ground
static current_frame2 as integer

if fp=0 then
'Initialize Jump
SOUND_KIM "JUMPING" 'Jumping Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
third_state="JUMPINGFORWARD"
current_state1="JUMPINGFORWARD"
rf="RISING"

count=0
t=timer
t2=timer
jumping_distance=200 '400 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40
efc=1
wall2=610
fp=1
end if

if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="RISING" and count<30 then
current_frame2=1
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDRISING"
end if
end if    

if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="RISING" and count>=30 and count<80 then
current_frame2=2
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDRISING"
end if
end if

if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="RISING" and count>=80 and count<100 then
current_frame2=3
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDRISING"
end if
end if

if count>=100 then rf="FALLING"

if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="FALLING" and count>=100 and count<110 then
current_frame2=4
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDFALLING"
end if
end if
    
if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="FALLING" and count>=110 and count<140 then
current_frame2=5
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDFALLING"
end if
end if

if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and rf="FALLING" and count>=140 and dbf>1 then
current_frame2=6
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDFALLING"
end if
end if



if current_state1="JUMPINGFORWARD" and d_state="IN AIR" and dbf<=1 then
if current_frame2=6 then
SOUND_KIM "LANDING" 'Landing Sound    
end if    
current_frame2=7
if (timer-t)>=.2 then
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
SUB JUMPING_BACK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGBACK" and third_state<>"JUMPING" and third_state<>"JUMPINGFORWARD" then 
else
fp=0    
exit sub    
end if

static count as integer 

static t as double
static t2 as double
dim frame_delay(1 to 7) as double
frame_delay(1)=.05
frame_delay(2)=.05
frame_delay(3)=.05
frame_delay(4)=.05
frame_delay(5)=.05
frame_delay(6)=.05
frame_delay(7)=.05
'frame_delay(8)=.05
'frame_delay(9)=.05
'frame_delay(10)=.05
static jumping_distance as integer
static rf as string 'Rise and Fall status

static wall2 as integer

dim ground as integer
ground=GET_GROUND'Y Axis location of the ground
static distance_increment1 as integer
static distance_increment2 as integer

static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'Distance from ground
static current_frame2 as integer

if fp=0 then
'Initialize Jump
SOUND_KIM "JUMPING" 'Jumping Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
third_state="JUMPINGBACK"
current_state1="JUMPINGBACK"
rf="RISING"

count=0
t=timer
t2=timer
jumping_distance=200 '400 Pixels Up
distance_increment1=1 'X Axis increment
distance_increment2=2 'Y Axis increment

min_d=40
efc=1
wall2=610
fp=1
end if

if current_state1="JUMPINGBACK" and d_state="IN AIR" and rf="RISING" and count<30 then
current_frame2=1
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKRISING"
end if
end if    

if current_state1="JUMPINGBACK" and d_state="IN AIR" and rf="RISING" and count>=30 and count<80 then
current_frame2=2
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKRISING"
end if
end if

if current_state1="JUMPINGBACK" and d_state="IN AIR" and rf="RISING" and count>=80 and count<100 then
current_frame2=3
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKRISING"
end if
end if

if count>=100 then rf="FALLING"

if current_state1="JUMPINGBACK" and d_state="IN AIR" and rf="FALLING" and count>=100 and count<110 then
current_frame2=4
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKFALLING"
end if
end if
    
if current_state1="JUMPINGBACK" and d_state="IN AIR" and rf="FALLING" and count>=110 and count<140 then
current_frame2=5
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKFALLING"
end if
end if

if current_state1="JUMPINGBACK" and d_state="IN AIR" and rf="FALLING" and count>=140 and dbf>1 then
current_frame2=6
if (timer-t)>=.004 then
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKFALLING"
end if
end if



if current_state1="JUMPINGBACK" and d_state="IN AIR" and dbf<=1 then
if current_frame2=6 then
SOUND_KIM "LANDING" 'Landing Sound    
end if    
current_frame2=7
if (timer-t)>=.2 then
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


if d_state="IN AIR" and rf="RISING" and current_state1="JUMPINGBACK" then input_status="ON":attack="YES"
if d_state="IN AIR" and rf="FALLING" and current_state1="JUMPINGBACK" and dbf>min_d then input_status="ON":attack="YES"
if d_state="IN AIR" and rf="FALLING" and current_state1="JUMPINGBACK" and dbf<min_d then input_status="OFF":attack="NO"

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'===============================================================================  
SUB JUMPING_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
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
dim frame_delay(1 to 3) as double
frame_delay(1)=.1
frame_delay(2)=.1
frame_delay(3)=.2
'frame_delay(4)=.2
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1
static jumping_distance as integer
static rf as string 'Rise and Fall status
static re_entry as string


dim ground as integer
ground=GET_GROUND'400 'Y Axis location of the ground
static distance_increment as integer
static total_movement as integer
static upward as integer
static downward as integer
static dbf as integer 'Y axis distance before ground, at or below this a punch or kick is no longer allowed when falling
static min_d as integer 'Y axis minimum distance above ground to punch or kick when falling
static efc as integer 'extra frame counter for falling animation frames
dbf=GET_GROUND-ry'Distance from ground
static half_way as integer
static total_way as integer

if d_state="ON GROUND" and fp=0 then'and input_status="ON" and pstate<>"JUMPING" then'fp=0 then
'Initialize Jump
SOUND_KIM "JUMPING" 'Jumping Sound
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
jumping_distance=400 '300 Pixels Up
distance_increment=2 'Y Axis increment
half_way=int((jumping_distance/2)/distance_increment)
total_way=int(jumping_distance/distance_increment)
total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
upward=int(total_movement/4)
downward=(upward+1)
min_d=40
efc=2
rf="RISING"
end if


if third_state="JUMPINGPUNCH" or third_state="JUMPINGKICK" or third_state="JUMPINGPUNCH2" then

count=jump_count
rf=second_state
input_status="OFF"
attack="NO"

end if     




if rf="RISING" and d_state="IN AIR" and count<half_way then 

'rf="RISING" 
current_frame2=1
if (timer-t)>=.004 then

count=count+1
t=timer

MOVE_CHARACTER rx,ry,"KIM","JUMPINGRISING"
end if
end if

if rf="RISING" and count>=half_way then rf="FALLING"


if (count+30)>half_way and count<(half_way+30) then current_frame2=2
if count>=(half_way+30) and current_frame2<>4 then current_frame2=3    

    
if rf="FALLING" and d_state="IN AIR" and dbf>1 then
if (timer-t)>=.004 then

count=count+1
t=timer

MOVE_CHARACTER rx,ry,"KIM","JUMPINGFALLING"
end if    
end if    


if rf="FALLING" and d_state="IN AIR" and dbf<=1 then
if current_frame2=3 then 
SOUND_KIM "LANDING" 'Landing Sound

end if    

current_frame2=4
if (timer-t)>=.2 then
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
SUB JUMPING_FORWARD_PUNCH_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGFORWARDPUNCH" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "HUA"
SOUND_KIM "SWING" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=3 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>3 then current_frame2=3
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDPUNCHRISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDPUNCHFALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=3 then
SOUND_KIM "LANDING"    
end if    
current_frame2=4
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
rf=""
third_state=""
end if
end if



jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB 
'=============================================================================== 
SUB JUMPING_FORWARD_PUNCH2_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer  

if current_state1="JUMPINGFORWARDPUNCH2" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "HA"
SOUND_KIM "KICK" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=2 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>2 then current_frame2=2
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDPUNCH2RISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDPUNCH2FALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=2 then
SOUND_KIM "LANDING"    
end if    
current_frame2=3
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf 



END SUB
'===============================================================================
SUB JUMPING_BACK_PUNCH_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKPUNCH" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "HUA"
SOUND_KIM "SWING" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=3 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>3 then current_frame2=3
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKPUNCHRISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKPUNCHFALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=3 then
SOUND_KIM "LANDING"    
end if    
current_frame2=4
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
end if
end if

jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB
'===============================================================================
SUB JUMPING_BACK_PUNCH2_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKPUNCH2" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "HA"
SOUND_KIM "KICK" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=2 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>2 then current_frame2=2
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKPUNCH2RISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKPUNCH2FALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=2 then
SOUND_KIM "LANDING"    
end if    
current_frame2=3
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf 




END SUB
'=============================================================================== 
SUB JUMPING_FORWARD_KICK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer 

if current_state1="JUMPINGFORWARDKICK" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "KICK"
SOUND_KIM "ACHA" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=4 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>4 then current_frame2=4
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDKICKRISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDKICKFALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=4 then
SOUND_KIM "LANDING"    
end if    
current_frame2=5
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
rf=""
third_state=""
end if
end if



jump_count=count
second_state=rf
current_frame1=current_frame2

END SUB 
'=============================================================================== 
SUB JUMPING_FORWARD_LKICK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer 

if current_state1="JUMPINGFORWARDKICK2" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
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
frame_delay(3)=.1
frame_delay(4)=.2
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "KICK"
SOUND_KIM "ACHA" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=3 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>3 then current_frame2=3
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDKICK2RISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGFORWARDKICK2FALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=3 then
SOUND_KIM "LANDING"    
end if    
current_frame2=4
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf 

END SUB 
'===============================================================================
SUB JUMPING_BACK_KICK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKKICK" and third_State<>"JUMPING" then 'and d_state="IN AIR" then 
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "KICK"
SOUND_KIM "ACHA" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=4 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>4 then current_frame2=4
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKKICKRISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKKICKFALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=4 then
SOUND_KIM "LANDING"    
end if    
current_frame2=5
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
rf=""
third_state=""
end if
end if



jump_count=count
second_state=rf
current_frame1=current_frame2


END SUB 
'===============================================================================
SUB JUMPING_BACK_LKICK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer   

if current_state1="JUMPINGBACKKICK2" and third_State<>"JUMPING" then  
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
frame_delay(3)=.1
frame_delay(4)=.2
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "KICK"
SOUND_KIM "ACHA" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=3 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>3 then current_frame2=3
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKKICK2RISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGBACKKICK2FALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=3 then
SOUND_KIM "LANDING"    
end if    
current_frame2=4
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf 

END SUB
'=============================================================================== 
SUB JUMPING_PUNCH_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "HUA"
SOUND_KIM "SWING" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=3 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>3 then current_frame2=3
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGPUNCHRISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGPUNCHFALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=3 then
SOUND_KIM "LANDING"    
end if    
current_frame2=4
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf 
END SUB
'=============================================================================== 
SUB JUMPING_PUNCH2_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
'This is a kick animation that happens through a punch button, just like in Fatal Fury 2 for Kim.
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
frame_delay(4)=.1
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "HA"
SOUND_KIM "KICK" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=2 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>2 then current_frame2=2
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGPUNCH2RISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGPUNCH2FALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=2 then
SOUND_KIM "LANDING"    
end if    
current_frame2=3
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf 
END SUB 
'=============================================================================== 
SUB JUMPING_LKICK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
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
frame_delay(3)=.1
frame_delay(4)=.2
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "KICK"
SOUND_KIM "ACHA" 'Punching Sound
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=3 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>3 then current_frame2=3
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGLKICKRISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGLKICKFALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=3 then
SOUND_KIM "LANDING"    
end if    
current_frame2=4
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf 

END SUB
'===============================================================================
SUB JUMPING_KICK_KIM(byref rx as integer,byref ry as integer,byref attack as string,byref pstate as string,byref i_state as string,byref current_state1 as string,byref current_frame1 as integer,byref d_state as string,byref input_status as string,byref second_state as string,byref jump_count as integer,byref third_state as string)
static fp as integer    
 
if current_state1="JUMPINGKICK" and d_state="IN AIR" then'and third_state="JUMPING" then  
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
frame_delay(3)=.1
frame_delay(4)=.2
'frame_delay(5)=.05
'frame_delay(6)=.03
'frame_delay(7)=0
'frame_delay(8)=.1
'frame_delay(9)=.1
'frame_delay(10)=.1

'frame_delay2(1)=.1
'frame_delay2(2)=.2
'frame_delay2(3)=.1

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
SOUND_KIM "KICK"
SOUND_KIM "ACHA" '
d_state="IN AIR"
input_status="OFF"
attack="NO"
count=jump_count 'jump_count is the current count of passes in the jump cycle

rf=second_state
if rf="" then rf="RISING"
t=timer
t2=timer
t3=timer
jumping_distance=400 '400 Pixels Up
distance_increment=2 'Y Axis increment
'total_movement=int((jumping_distance/distance_increment)*2) 'It is always times 2 because half of the movement is going up and half is going back down
'upward=int(total_movement/4)
'downward=(upward+1)
min_d=40
efc=2
true_frame=1
current_frame2=1
end if

if count<100 then rf="RISING"
if count>=100 then rf="FALLING"

if current_frame2>=4 then
    else
if (timer-t3)>=frame_delay(current_frame2) then
t3=timer
current_frame2=current_frame2+1
if current_frame2>4 then current_frame2=4
end if    
end if

if rf="RISING" and count<100 then
'Rising
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGKICKRISING"
end if
end if

if count=100 then rf="FALLING":count=count+1':sleep

if rf="FALLING" and count>=100 and dbf>1 then
'Falling
if (timer-t)>=.004 then
'current_frame2=current_frame2+1
'if current_frame2>3 then current_frame2=3
input_status="OFF"
count=count+1
t=timer
MOVE_CHARACTER rx,ry,"KIM","JUMPINGKICKFALLING"
end if
end if




if d_state="IN AIR" and dbf<=1 and rf="FALLING" then
if current_frame2=4 then
SOUND_KIM "LANDING"    
end if    
current_frame2=5
if (timer-t)>=.1 then
 
input_status="ON"
count=0
rf=""
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
second_state=""
rf=""
third_state=""
jump_count=0
fp=0
end if
end if

current_frame1=current_frame2
jump_count=count
second_state=rf

END SUB
'===============================================================================
SUB HIENZAN_KIM(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame1 as integer,byref current_state1 as string,byref attack as string,byref i_state as string,byref hienzan as string,byref hienzan_speed as string)
static fp as integer

if current_state1="HIENZAN" then 
hienzan="NO"
else 
fp=0    
exit sub    
end if


static current_frame2 as integer
static t as double
static t2 as double
static t3 as double
static t4 as double
dim frame_delay(1 to 10) as double
dim dbf as integer
dbf=get_ground-ry

if hienzan_speed="SLOW" then
frame_delay(1)=.05'.1
frame_delay(2)=.05'.1
frame_delay(3)=.05'.2
frame_delay(4)=.05'.1
frame_delay(5)=.1'.05
frame_delay(6)=.05'.03
frame_delay(7)=.05'0
frame_delay(8)=.05'.1
frame_delay(9)=.05'.1
frame_delay(10)=.05'.1
else
frame_delay(1)=.05'.1
frame_delay(2)=.05'.1
frame_delay(3)=.05'.2
frame_delay(4)=.05'.1
frame_delay(5)=.2'.05
frame_delay(6)=.05'.03
frame_delay(7)=.05'0
frame_delay(8)=.05'.1
frame_delay(9)=.05'.1
frame_delay(10)=.05'.1
end if


if fp=0 then 'Set variables for first entry
fp=1    
t3=timer
t=timer
t2=0
SOUND_KIM "HIENZAN"
'sleep
'sleep
'sleep
'sleep
d_state="IN AIR" 
input_status="OFF"
attack="NO"
hienzan="NO"
current_frame2=1
end if

if (timer-t)>.04 and current_frame2<9 then
t=timer
if current_frame2>=2 and current_frame2<=4 then 
if hienzan_speed="" then MOVE_CHARACTER rx,ry,"KIM","HIENZAN1"
if hienzan_speed="SLOW" then MOVE_CHARACTER rx,ry,"KIM","HIENZAN1S"
end if
if current_frame2=5 then t2=t2+1
'if t2>2 and hienzan_speed="" and current_frame2<9 then MOVE_CHARACTER rx,ry,"KIM","HIENZAN1":t2=0
'if current_frame2=9 and dbf>1 then current_frame2=9:t2=t2+1
'if dbf>1 and current_frame2=9 then MOVE_CHARACTER rx,ry,"KIM","HIENZAN5"
end if

if (timer-t)>.004 and current_frame2>=9 then
t=timer
if dbf>1 and current_frame2=9 and hienzan_speed="" then MOVE_CHARACTER rx,ry,"KIM","HIENZAN6"
if dbf>1 and current_frame2=9 and hienzan_speed="SLOW" then MOVE_CHARACTER rx,ry,"KIM","HIENZAN6S"
end if    


if current_frame2=9 then
    t4=timer
    
    else
d_state="IN AIR"
if (timer-t3)>=frame_delay(current_frame2) then
if hienzan_speed="SLOW" then
select case current_frame2
case 2
MOVE_CHARACTER rx,ry,"KIM","HIENZAN2S"
case 4
MOVE_CHARACTER rx,ry,"KIM","HIENZAN3S"
case 5 to 6
MOVE_CHARACTER rx,ry,"KIM","HIENZAN4S"
end select      
    else
select case current_frame2
case 2
MOVE_CHARACTER rx,ry,"KIM","HIENZAN2"
case 4
MOVE_CHARACTER rx,ry,"KIM","HIENZAN3"
case 5 to 6
MOVE_CHARACTER rx,ry,"KIM","HIENZAN4"    
end select    
end if

t3=timer
'if current_frame2=9 then sleep
current_frame2=current_frame2+1
t=timer
end if    
end if



if current_frame2>=9 and dbf<=1 then
'sleep
'sleep
'sleep 
'sleep
if current_frame2=9 then SOUND_KIM "LANDING"
current_frame2=10
if (timer-t4)>=.1 then

hienzan="YES"
hienzan_speed=""
input_status="ON"
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
current_frame2=1
fp=0
end if
end if
   

current_frame1=current_frame2
     
END SUB
'=============================================================================== 
SUB HANGETSU_KIM(byref rx as integer,byref ry as integer,byref d_state as string,byref input_status as string,byref current_frame1 as integer,byref current_state1 as string,byref attack as string,byref i_state as string,byref hangetsu as string,byref hangetsu_speed as string)
static fp as integer

if current_state1="HANGETSU" then 
hangetsu="NO"
else 
fp=0    
exit sub    
end if


static current_frame2 as integer
static t as double
static t3 as double
dim frame_delay(1 to 13) as double

if hangetsu_speed="SLOW" then
frame_delay(1)=.1'.1
frame_delay(2)=.05'.1
frame_delay(3)=.05'.2
frame_delay(4)=.05'.1
frame_delay(5)=.05'.05
frame_delay(6)=.05'.03
frame_delay(7)=.05'0
frame_delay(8)=.05'.1
frame_delay(9)=.05'.1
frame_delay(10)=.1'.1
frame_delay(11)=.05'.1
frame_delay(12)=.05'.1
frame_delay(13)=.05
else
frame_delay(1)=.15'.1
frame_delay(2)=.05'.1
frame_delay(3)=.05'.2
frame_delay(4)=.05'.1
frame_delay(5)=.05'.05
frame_delay(6)=.05'.03
frame_delay(7)=.05'0
frame_delay(8)=.05'.1
frame_delay(9)=.05'.1
frame_delay(10)=.15'.1
frame_delay(11)=.1'.1
frame_delay(12)=.1'.1
frame_delay(13)=.1
end if


if fp=0 then 'Set variables for first entry
fp=1    
t3=timer
SOUND_KIM "HANGETSU"
d_state="IN AIR" 
input_status="OFF"
attack="NO"
hangetsu="NO"
current_frame2=1
end if



if current_frame2>=13 then
    else
d_state="IN AIR"
if (timer-t3)>=frame_delay(current_frame2) then
if hangetsu_speed="SLOW" then
select case current_frame2
case 2
MOVE_CHARACTER rx,ry,"KIM","HANGETSU1S"
case 3
MOVE_CHARACTER rx,ry,"KIM","HANGETSU2S"
case 4
MOVE_CHARACTER rx,ry,"KIM","HANGETSU3S"
case 5
MOVE_CHARACTER rx,ry,"KIM","HANGETSU4S"
case 6
MOVE_CHARACTER rx,ry,"KIM","HANGETSU5S"
case 7
MOVE_CHARACTER rx,ry,"KIM","HANGETSU6S"
case 8
MOVE_CHARACTER rx,ry,"KIM","HANGETSU7S"
end select      
    else
select case current_frame2
case 2
MOVE_CHARACTER rx,ry,"KIM","HANGETSU1"
case 3
MOVE_CHARACTER rx,ry,"KIM","HANGETSU2"
case 4
MOVE_CHARACTER rx,ry,"KIM","HANGETSU3"
case 5
MOVE_CHARACTER rx,ry,"KIM","HANGETSU4"
case 6
MOVE_CHARACTER rx,ry,"KIM","HANGETSU5"
case 7
MOVE_CHARACTER rx,ry,"KIM","HANGETSU6"
case 8
MOVE_CHARACTER rx,ry,"KIM","HANGETSU7"
end select    
end if
t3=timer
current_frame2=current_frame2+1
'if current_frame2>=12 then current_frame2=12
t=timer
end if    
end if

if current_frame2>=13 then
current_frame2=13
if (timer-t)>=.1 then

hangetsu="YES"
hangetsu_speed=""
input_status="ON"
t=timer
ry=GET_GROUND'ground
d_state="ON GROUND"
current_state1="STANDING"
i_state="Standing"
attack="YES"
current_frame2=1
fp=0
end if
end if
   

current_frame1=current_frame2
     
END SUB
'===============================================================================
'###############################################################################
'###############################################################################
'AI/Computer Controls===========================================================

'===============================================================================
SUB COM_KIM_SK(byref attack as string,byref d_state as string,byref input_state as string,byref input_state3 as string,byref com_state as string)
static fp as integer
static t as double
if fp=0 then
t=timer
fp=1
if attack="YES" and d_state="ON GROUND" then 
    input_state="KICK":input_state3="KICK"
end if
end if

if (timer-t)>=.4 and fp=1 then
fp=0
input_state="NOTHING"
input_state3=""
com_state=""
end if    
END SUB
'===============================================================================
SUB COM_KIM_WB2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM_RJA(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref d_state as string,byref com_state as string)
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
SUB COM_KIM_SOW(byref d_state as string,byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM_5HZ(byref rx as integer,byref input_state as string,byref hienzan as string,byref hienzan_speed as string,byref attack as string,byref com_state as string)
'5 Hienzans

static fp as integer
static count as integer
dim r as integer
if fp=0 then
fp=1
count=0
end if    

if hienzan="YES" and attack="YES" then

if P1_facing="RIGHT" and (get_wall_right-rx)<=30 then P1_facing="LEFT"    
if P1_facing="LEFT" and (rx)<=30 then P1_facing="RIGHT" 


count=count+1
input_state="HIENZAN"
r=int(RND*2)+1
if r=1 then hienzan_speed=""
if r=2 then hienzan_speed="SLOW"
end if



if count>5 then
fp=0
count=0
input_state="NOTHING"
com_state=""
end if    
    
END SUB
'===============================================================================
SUB COM_KIM_FOOTWORK1(byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM_3H(byref rx as integer,byref input_state as string,byref attack as string,byref hangetsu_speed as string,byref com_state as string)
'3 Hangetsus
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
input_state="HANGETSU"
r=int(RND*3)+1
count=count+1
select case r
case 1
hangetsu_speed="SLOW"
case else
hangetsu_speed=""    
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
SUB COM_KIM_RSA(byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref attack as string,byref hangetsu as string,byref hangetsu_speed as string,byref hienzan as string,byref hienzan_speed as string,byref com_state as string)
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
if hangetsu="YES" then input_state="HANGETSU":hangetsu_speed=""
case 22
if hangetsu="YES" then input_state="HANGETSU":hangetsu_speed="SLOW"
case 23
if hienzan="YES" then input_state="HIENZAN":hienzan_speed=""
case 24
if hienzan="YES" then input_state="HIENZAN":hienzan_speed="SLOW"
case 25
if hienzan="YES" then input_state="HIENZAN":hienzan_speed=""
case 26
if hienzan="YES" then input_state="HIENZAN":hienzan_speed="SLOW"
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
SUB COM_KIM_J2BW(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM_W2BW(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM_WF2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM_JF2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM_JB2COS(byref rx as integer,byref input_state as string,byref input_state2 as string,byref com_state as string)
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
SUB COM_KIM(byref rx as integer,byref ry as integer,byref current_state1 as string,byref d_state as string,byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref hangetsu_speed as string,byref hangetsu as string,byref hienzan as string,byref attack as string,byref hienzan_speed as string) 
'Computer/AI Controlled Kim
static com_state as string
static ccount as integer
static ccount2 as integer
static ccount3 as integer
static ccount4 as integer
static fp as integer
static r as integer
static pcs as string


pcs=com_state
'com_state=""
if com_state="" then
input_state="NOTHING"
input_state2=""
input_state3=""
ccount=ccount+1

r=int(RND*30)+1



if ccount=5 then 
    
com_state="5HZ"
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
com_state="RSA"
case 8 to 14
com_state="3H"
case 15
com_state="FOOTWORK1"
case 16
com_state="5HZ"
case 17
com_state="SOW"
case 18
com_state="RJA"
case 19 to 25
com_state="SK"    
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


com_state2=com_state
select case com_state
case "WF2COS"
COM_KIM_WF2COS rx,input_state,input_state2,com_state
case "WB2COS"
COM_KIM_WB2COS rx,input_state,input_state2,com_state    
case "JF2COS"
COM_KIM_JF2COS rx,input_state,input_state2,com_state     
case "JB2COS"
COM_KIM_JB2COS rx,input_state,input_state2,com_state     
case "W2BW"
COM_KIM_W2BW rx,input_state,input_state2,com_state    
case "J2BW"
COM_KIM_J2BW rx,input_state,input_state2,com_state
case "RSA"
COM_KIM_RSA d_state,input_state,input_state2,input_state3,attack,hangetsu,hangetsu_speed,hienzan,hienzan_speed,com_state
case "3H"
COM_KIM_3H rx,input_state,attack,hangetsu_speed,com_state 
case "FOOTWORK1"
COM_KIM_FOOTWORK1 input_state,input_state2,com_state
case "5HZ"
COM_KIM_5HZ rx,input_state,hienzan,hienzan_speed,attack,com_state    
case "SOW"
COM_KIM_SOW d_state,input_state,input_state2,com_state   
case "RJA"
COM_KIM_RJA input_state,input_state2,input_state3,attack,d_state,com_state    
case "SK"
COM_KIM_SK attack,d_state,input_state,input_state3,com_state      
end select

END SUB
'###############################################################################
'###############################################################################
'===============================================================================
SUB STATE_KIM(byref rx as integer,byref ry as integer,byref cur_ani as any ptr,states_kim() as string,byref hadoken_active as string,byref hx as integer,byref hy as integer,byref cur_ani22 as any ptr,byref obj_list as string,byref obj_desc as string,byref cur_anif22 as integer)
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

 static hangetsu as string
 static hangetsu_speed as string
 static hienzan as string
 static hienzan_speed as string

 static attack as string
 static second_state as string
 static third_state as string

 static jump_count as integer
 static lhts as double

 static og_ts as double 'ON GROUND time stamp
 static pd_state as string 'Previous d_state

if fp=0 then
fp=1
i_state="Standing"
current_state1="STANDING"

d_state="ON GROUND"
d_state2=""

input_status="ON"

attack="YES"

current_frame1=1

hangetsu="YES"
hienzan="YES"

pstate=""
second_state=""

hangetsu_speed=""
hienzan_speed=""
og_ts=timer
end if
pstate=current_state1 'Previous State before next loop
pd_state=d_state 'Previous d_state before next loop


'Handle Input===================================================================
if AI_Control="ON" then
'AI/Computer Controlled Kim 
'COM_RYU rx,ry,current_state1,d_state,input_state1,input_state2,input_state3,hadoken_speed,fireball_state,hadoken,shoryuken,attack,shoryuken_speed,tatsu_speed,tatsu
COM_KIM rx,ry,current_state1,d_state,input_state1,input_state2,input_state3,hangetsu_speed,hangetsu,hienzan,attack,hienzan_speed 
else
if P1_facing="RIGHT" then
'CONTROL_P1_KIM input_state1,input_state2,input_state3,hadoken_speed,d_state,fireball_state,hangetsu,lhts,hienzan,attack,hangetsu_speed,hienzan_speed,og_ts
CONTROL_P1_KIM input_state1,input_state2,input_state3,d_state,hangetsu,lhts,hienzan,attack,hangetsu_speed,hienzan_speed,og_ts
'Get Keyboard Input
else
'Get Keyboard Input for facing left
'CONTROL_P1_LEFT_KIM input_state1,input_state2,input_state3,hadoken_speed,d_state,fireball_state,hangetsu,lhts,hienzan,attack,hangetsu_speed,hienzan_speed,og_ts
'CONTROL_P1_LEFT_KIM(byref input_state as string,byref input_state2 as string,byref input_state3 as string,byref d_state as string,byref hangetsu as string,byref lhts as double,byref hienzan as string,byref attack as string,byref hangetsu_speed as string,byref hienzan_speed as string,byref og_ts as double)
CONTROL_P1_LEFT_KIM input_state1,input_state2,input_state3,d_state,hangetsu,lhts,hienzan,attack,hangetsu_speed,hienzan_speed,og_ts
end if    
end if

TRANSLATE_INPUT_TO_CURRENT_STATE_KIM current_state1,attack,i_state,input_state1,input_status,d_state,d_state2,hangetsu,hienzan
'TRANSLATE_INPUT_TO_CURRENT_STATE_KIM current_state1,attack,i_state,input_state1,input_status,d_state,d_state2,hangetsu,hienzan
'Translate input to current state
'===============================================================================


'Standing=======================================================================
STANDING_KIM1 pstate,i_state,current_state1,current_frame1,d_state,input_status,third_state
'=============================================================================== 

 

'Crouching Punch================================================================
CROUCHING_PUNCH_KIM attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching Light Punch==========================================================
CROUCHING_PUNCH2_KIM attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching Kick=================================================================
CROUCHING_KICK_KIM attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching Light Kick===========================================================
CROUCHING_KICK2_KIM attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Crouching======================================================================
CROUCHING_KIM pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Punch=================================================================
STANDING_PUNCH_KIM attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Light Punch===========================================================
STANDING_LPUNCH_KIM attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Kick==================================================================
STANDING_KICK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Standing Light Kick============================================================
STANDING_KICK2_KIM attack,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================



'Walking Back===================================================================
WALKING_BACK_KIM rx,ry,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================

'Walking Forward================================================================
WALKING_FORWARD_KIM rx,ry,pstate,i_state,current_state1,current_frame1,d_state,input_status
'===============================================================================



'Jumping========================================================================
JUMPING_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Punch==================================================================
JUMPING_PUNCH_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================


'Jumping Light Punch============================================================
JUMPING_PUNCH2_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Kick===================================================================
JUMPING_KICK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Light Kick=============================================================
JUMPING_LKICK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward================================================================
JUMPING_FORWARD_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward Punch==========================================================
JUMPING_FORWARD_PUNCH_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward Light Punch====================================================
JUMPING_FORWARD_PUNCH2_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================


'Jumping Forward Kick===========================================================
JUMPING_FORWARD_KICK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Forward Light Kick=====================================================
JUMPING_FORWARD_LKICK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back===================================================================
JUMPING_BACK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Punch=============================================================
JUMPING_BACK_PUNCH_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Light Punch=======================================================
JUMPING_BACK_PUNCH2_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Kick==============================================================
JUMPING_BACK_KICK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Jumping Back Light Kick========================================================
JUMPING_BACK_LKICK_KIM rx,ry,attack,pstate,i_state,current_state1,current_frame1,d_state,input_status,second_state,jump_count,third_state
'===============================================================================

'Hangetsu=======================================================================
HANGETSU_KIM rx,ry,d_state,input_status,current_frame1,current_state1,attack,i_state,hangetsu,hangetsu_speed
'===============================================================================

'Hienzan========================================================================
HIENZAN_KIM rx,ry,d_state,input_status,current_frame1,current_state1,attack,i_state,hienzan,hienzan_speed
'===============================================================================

'Win Pose=======================================================================
WINPOSE_KIM1 pstate,i_state,current_state1,current_frame1,d_state,input_status,attack
'===============================================================================


'Animation======================================================================

if P1_facing="RIGHT" then
GET_ANIMATION_KIM current_state1,animation_pointers(),frame_delays1(),frame_count1,return_string1 'Get Current Animation Frames
'current_state1 holds the name of a series of animations to be pulled from GET_ANIMATION_KIM
else
GET_ANIMATION_LEFT_KIM current_state1,animation_pointers(),frame_delays1(),frame_count1,return_string1    
end if    

cur_xwi=current_frame1
cur_ani=animation_pointers(current_frame1) 'cur_ani is the current pointer to the current animation frame to be displayed
'===============================================================================
P1_state=current_state1

states_kim(1)="current_frame1="+str(current_frame1)
states_kim(2)="current_state1="+current_state1
states_kim(3)="second_state="+second_state
states_kim(4)="third_state="+third_state
states_kim(5)="i_state="+i_state
states_kim(6)="attack="+attack
states_kim(7)="input_status="+input_status
states_kim(8)="input_state1="+input_state1+"  input_state2="+input_state2+"  input_state3="+input_state3
states_kim(9)="jump_count="+str(jump_count)
states_kim(10)="pstate="+pstate+"  d_state="+d_state+"  d_state2="+d_state2+"  P1_facing="+P1_facing
states_kim(11)="hangetsu_state="+hangetsu+"  hangetsu_speed="+hangetsu_speed+"  hienzan_state="+hienzan+"  hienzan_speed="+hienzan_speed
states_kim(12)="com_state2="+com_state2
'===============================================================================
if d_state="ON GROUND" and pd_state<>"ON GROUND" then og_ts=timer 
'If not on the ground in the previous loop then get a time stamp for the last time character was on the ground 
'This is used to prevent motions from being buffered in mid-air

END SUB
'===============================================================================


