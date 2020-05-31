randomize timer 'seed the random number generator

dim shared P1_facing as string
dim shared P1_projectile_facing as string
dim shared cur_w as integer
dim shared cur_xwidth(1 to 100) as integer
dim shared cur_xwi as integer
dim shared cur_pxwidth(1 to 100) as integer
dim shared cur_pxwi as integer
dim shared P1_state as string
dim full_screen as string
dim shared AI_Control as string
dim shared com_state2 as string
#include once "mb_gamedev_lib1.bi"
#include once "mb_sound_lib2.bi"
#include once "mb_accurate_timing_lib.bi"
#include once "mb_keyboard_lib_zero2.bi"
#include once "MOVEMENT_1.bi"
#include once "SUBS_RYU_NEW2.bi"
#include once "SUBS_KIM.bi"
#include once "Select_Screens1.bi"

full_screen="NO" 'Yes or NO

color 10,0
dim ifs as string
input "Fullscreen Y/N ? ",ifs

select case ucase(ifs)
case "Y"
full_screen="YES"
case else
full_screen="NO"
end select

AI_Control="OFF"

if full_screen="YES" then
'640x480 resolution with 32 bit color Fullscreen    
SET_FULLSCREEN 640,480,32, "Fighting Game Demo 3 by Matt B." 
else    
'640x480 resolution with 32 bit color in Window
SET_SCREEN 640,480,32, "Fighting Game Demo 3 by Matt B." 
end if

mb_install_keyboard_handler 'this installs the keyboard handler, always call it AFTER setting the screen resolution



prepare_sound 'prepare sound library routines
'===============================================================================
'Matt's World Intro
dim as integer hWave1(4),sound1(4)
LOAD_MP3_TO_MEM "MW_1.mp3",hWave1(0),sound1(0),@sound1(0)
LOAD_MP3_TO_MEM "MW_2.mp3",hWave1(1),sound1(1),@sound1(1)
LOAD_MP3_TO_MEM "MW_4.mp3",hWave1(2),sound1(2),@sound1(2)
LOAD_MP3_TO_MEM "MW_5.mp3",hWave1(3),sound1(3),@sound1(3)
matt_no_sekai_intro2 sound1(0),sound1(1),sound1(2),sound1(3)



'===============================================================================
'Set up Background and Supporting Screeens
dim as integer hWave2(9),sound2(9)
dim bufferz3 As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) ) 
dim bufferz4 As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) )
LOAD_IMAGE bufferz3,"graphics/FGD3_Screen1.bmp" 
put (0,0),bufferz3,PSET
draw string (320,400),"Loading........"
LOAD_MP3_TO_MEM "graphics/kim/FF2_Bonus.mp3",hWave2(4),sound2(4),@sound2(4)
PLAY_SOUND sound2(4)
 
LOAD_MP3_TO_MEM "graphics/kim/FF2_KIM.mp3",hWave2(1),sound2(1),@sound2(1) 
LOAD_MP3_TO_MEM "sounds/SF_Ryu.mp3",hWave2(2),sound2(2),@sound2(2) 
LOAD_MP3_TO_MEM "graphics/kim/KOF_95_DS.mp3",hWave2(3),sound2(3),@sound2(3)
LOAD_MP3_TO_MEM "graphics/kim/FH_SNES_Select.mp3",hWave2(5),sound2(5),@sound2(5)
LOAD_MP3_TO_MEM "sounds/Selecting.mp3",hWave2(6),sound2(6),@sound2(6)
LOAD_MP3_TO_MEM "sounds/Selected.mp3",hWave2(7),sound2(7),@sound2(7)
LOAD_MP3_TO_MEM "graphics/kim/SF_Coin.mp3",hWave2(8),sound2(8),@sound2(8)
dim imagez3 as Any Ptr = ImageCreate(190, 37, RGB(0, 0, 0) )
LOAD_IMAGE imagez3,"graphics/Press_Enter1.bmp" 

dim tt as double
tt=timer
dim se as string
se="Y"
do

put bufferz4,(0,0),bufferz3,PSET    
if se="Y" then put bufferz4,(200,280),imagez3,PSET
if timer-tt>.5 then
if se="Y" then
    se="N"
else
    se="Y"
end if


tt=timer
end if

put (0,0),bufferz4,PSET
loop until inkey=chr(13) 'Loop until Enter is pressed
STOP_SOUND sound2(4)
PLAY_SOUND_MC sound2(8) 
tt=timer
do
loop until (timer-tt)>=1    

dim rgb_col as long
dim bg_select as integer
rgb_col=RGB(255,255,255) 'Default Text Color
bg_select=0
dim bufferz As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) ) 
dim imagez2 as Any Ptr = ImageCreate(128, 92, RGB(0, 0, 0) )
LOAD_IMAGE imagez2,"Matts_World_S.bmp"


'do
'SCROLL_LOGO bufferz,imagez2    
'loop until inkey=chr(27)    
Dim b_logo As Any Ptr =  ImageCreate( 640, 480, RGB(255, 255, 255) )   
LOAD_IMAGE b_logo,"Matts_World_L.bmp"

Dim kof96 As Any Ptr =  ImageCreate( 640, 480, RGB(1, 28, 255) ) 

Dim ss2 As Any Ptr =  ImageCreate( 640, 480, RGB(9, 60, 53) ) 

Dim ss22 As Any Ptr =  ImageCreate( 640, 480, RGB(204, 228, 173) )

Dim nobg As Any Ptr =  ImageCreate( 640, 480, RGB(0, 0, 0) )

Dim buffer1 As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) ) 'KOF 96 color 1 28 255 'SS2 color 9 60 53 & 204 228 173

buffer1=ss2
'===============================================================================

Dim toscreen As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) )

'LOAD_IMAGE buffer1,"graphics/kim/jubei_bg1.bmp"
'LOAD_IMAGE buffer1,"MATTS_WORLD_L.bmp"

dim z as string
dim frame_c as integer
dim animation_ptr(1 to 100) as any ptr
dim frame_d(1 to 100) as double
dim return_s as string
dim i as integer
dim t as double
dim z2 as string
dim x as integer
dim y as integer
dim cur_ani1 as any ptr
dim cur_state1 as string
dim cur_vector1 as string
dim states_ryu1(1 to 100) as string
dim states_kim1(1 to 100) as string
'These variables are related to projectiles=====================================
dim p1_projectile_active1 as string
dim px(1 to 20) as integer
dim py(1 to 20) as integer
dim cur_anif2(1 to 20) as integer
dim cur_ani2(1 to 20) as any ptr
dim obj_list1(1 to 20) as string
dim obj_desc1(1 to 20) as string
'===============================================================================
dim current_character as string

'cur_ani22() as any ptr,obj_list() as string,obj_desc() as string)

p1_projectile_active1="NO"

nok_p1=15 'A total of 15 keys are active for Player 1 
scan_codes_p1(1)=65 'A
scan_codes_p1(2)=83 'S
scan_codes_p1(3)=68 'D
scan_codes_p1(4)=70 'F  90 Z
scan_codes_p1(5)=88 'X
scan_codes_p1(6)=67 'C
scan_codes_p1(7)=38 'Up
scan_codes_p1(8)=37 'Left
scan_codes_p1(9)=40 'Down
scan_codes_p1(10)=39 'Right

scan_codes_p1(11)=13 'Enter
scan_codes_p1(12)=32 'Space Bar
scan_codes_p1(13)=76 'L
scan_codes_p1(14)=75 'K
scan_codes_p1(15)=27 'ESC

x=100
y=300
tt=0
current_character="RYU"
'===============================================================================
'Player Select
dim imagez4 as Any Ptr = ImageCreate(281, 159, RGB(0, 0, 0) )
dim imagez5 as Any Ptr = ImageCreate(281, 159, RGB(0, 0, 0) )
dim imagez7 as Any Ptr = ImageCreate(130, 25, RGB(0, 0, 0) )
LOAD_IMAGE imagez4,"graphics/Player_Select_Ryu.bmp"
LOAD_IMAGE imagez5,"graphics/Player_Select_Kim.bmp"
LOAD_IMAGE imagez7,"graphics/Player_Select_G1.bmp"
dim bufferz5 As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) )
dim imagez6 as Any Ptr = ImageCreate(281, 159, RGB(0, 0, 0) )

do
if IS_PLAYING(sound2(5))="NO" then
PLAY_SOUND sound2(5)    
end if      
if kcs_p1(8)=1 then
PLAY_SOUND_MC sound2(6)    
if current_character="RYU" then 
    current_character="KIM"
else
   current_character="RYU" 
end if
kcs_p1(8)=0
end if    

if kcs_p1(10)=1 then
PLAY_SOUND_MC sound2(6)     
if current_character="KIM" then 
    current_character="RYU"
else
   current_character="KIM" 
end if
kcs_p1(10)=0
end if

if current_character="RYU" then imagez6=imagez4
if current_character="KIM" then imagez6=imagez5

SCROLL_LOGO_BG bufferz5,imagez2
put bufferz5,(180,150),imagez6,Trans 
put bufferz5,(250,309),imagez7,Trans 
put (0,0),bufferz5,PSET

if kcs_p1(1)=1 then tt=1
if kcs_p1(2)=1 then tt=1
if kcs_p1(3)=1 then tt=1
if kcs_p1(4)=1 then tt=1
if kcs_p1(11)=1 then tt=1

loop until tt=1
STOP_SOUND sound2(5)
PLAY_SOUND_MC sound2(7)  
'===============================================================================
'How to Play 
dim howtoplay1 As Any Ptr = ImageCreate( 640, 480, RGB(0, 0, 0) )
LOAD_IMAGE howtoplay1,"graphics/HowtoPlay1.bmp"
tt=0
kcs_p1(1)=0
kcs_p1(2)=0
kcs_p1(3)=0
kcs_p1(4)=0
kcs_p1(11)=0
do
if IS_PLAYING(sound2(3))="NO" then
PLAY_SOUND sound2(3)    
end if      
SCROLL_LOGO_BG bufferz5,imagez2
put bufferz5,(0,0),howtoplay1,Trans 
put (0,0),bufferz5,PSET    
if kcs_p1(1)=1 then tt=1
if kcs_p1(2)=1 then tt=1
if kcs_p1(3)=1 then tt=1
if kcs_p1(4)=1 then tt=1
if kcs_p1(11)=1 then tt=1
loop until tt=1    
STOP_SOUND sound2(3)
'===============================================================================

dim bg_music as integer



ImageDestroy bufferz3
ImageDestroy bufferz4

select case current_character
case "RYU"
LOAD_MP3_TO_MEM "graphics/ryu/SF_Ryu.mp3",hWave2(2),sound2(2),@sound2(2)     
GET_ANIMATION_RYU "LOAD",animation_ptr(),frame_d(),frame_c,return_s
GET_ANIMATION_LEFT_RYU "LOAD",animation_ptr(),frame_d(),frame_c,return_s
SOUND_RYU "LOAD"

bg_music=2
case "KIM"
LOAD_MP3_TO_MEM "graphics/kim/FF2_KIM.mp3",hWave2(2),sound2(2),@sound2(2)    
GET_ANIMATION_KIM "LOAD",animation_ptr(),frame_d(),frame_c,return_s
GET_ANIMATION_LEFT_KIM "LOAD",animation_ptr(),frame_d(),frame_c,return_s
SOUND_KIM "LOAD"
bg_music=1
end select

P1_facing="RIGHT" 
dim xof as integer
xof=0

dim show_states as string
show_states="YES"

dim tfps as long
tfps=350
dim delay1 as double
delay1=GET_DELAY(tfps) 'Default Target 350 FPS
dim tol1 as double





do
tol1=TOP_OF_LOOP 'ALWAYS CALL THIS AT THE TOP OF THE MAIN LOOP
'=============================================================
select case bg_music
case 0
case 1    
if IS_PLAYING(sound2(1))="NO" then
PLAY_SOUND sound2(1)    
end if   
case 2
if IS_PLAYING(sound2(2))="NO" then
PLAY_SOUND sound2(2)    
end if    
case 3
if IS_PLAYING(sound2(3))="NO" then
PLAY_SOUND sound2(3)    
end if
case 4
if IS_PLAYING(sound2(4))="NO" then
PLAY_SOUND sound2(4)    
end if
case 5
if IS_PLAYING(sound2(5))="NO" then
PLAY_SOUND sound2(5)    
end if
case else
end select    
    

select case bg_select
case 0
buffer1=nobg
case 1
buffer1=b_logo    
case 2
SCROLL_LOGO_BG bufferz,imagez2
buffer1=bufferz
case 3
buffer1=kof96
case 4
buffer1=ss2
case 5
buffer1=ss22    
end select

if xof=0 then xof=cur_xwidth(cur_xwi)


'Press C to cycle through Background Stages
if kcs_p1(6)=1 then 
bg_select=bg_select+1
if bg_select=6 then bg_select=0
kcs_p1(6)=0
select case bg_select
case 0
rgb_col=RGB(255,255,255)
case 1
rgb_col=RGB(0,0,0)
case 2
rgb_col=RGB(0,0,0) 
case 3
rgb_col=RGB(255,255,255)
case 5
rgb_col=RGB(0,0,0)
case else
rgb_col=RGB(255,255,255)
end select


end if

'Press X to cycle through BG music
if kcs_p1(5)=1 then 
if bg_music>0 then 
    STOP_SOUND sound2(bg_music)
    bg_music=bg_music+1
if bg_music=6 then bg_music=0:STOP_SOUND sound2(5) 
else
   bg_music=bg_music+1 
end if    
kcs_p1(5)=0
end if

'Press K to turn AI control ON
if kcs_p1(14)=1 or inkey=chr(75) then AI_Control="ON":kcs_p1(14)=0
'Press Space Bar to turn AI control OFF
if  kcs_p1(12)=1 then AI_Control="OFF"


if kcs_p1(11)=1 then
'Press Enter to toggle direction character is facing    
if P1_state="STANDING" or P1_state="CROUCH" then
select case P1_facing
case "RIGHT"
P1_facing="LEFT"
case "LEFT"
P1_facing="RIGHT"
end select
end if
kcs_p1(11)=0    
end if    

if kcs_p1(12)=1 then
'Press Space Bar to toggle showing states on/off    
select case show_states
case "YES"
show_states="NO"
case "NO"
show_states="YES"    
end select
kcs_p1(12)=0 
end if

select case current_character
case "RYU"
STATE_RYU x,y,cur_ani1,states_ryu1(),p1_projectile_active1,px(1),py(1),cur_ani2(1),obj_list1(1),obj_desc1(1),cur_anif2(1)
case "KIM"
STATE_KIM x,y,cur_ani1,states_kim1(),p1_projectile_active1,px(1),py(1),cur_ani2(1),obj_list1(1),obj_desc1(1),cur_anif2(1)    
end select

put toscreen,(0,0),buffer1,PSET 'Clear the toscreen buffer with buffer1    
'line toscreen,(100,360)-(110,400),rgb(255,255,255),b
if P1_facing="RIGHT" then
put toscreen,(x,y),cur_ani1,Trans 'Display the current frame of animation from STATE_RYU    
end if

'cur_xwidth
if P1_facing="LEFT" then
if P1_state="STANDING" then
put toscreen,(x,y),cur_ani1,Trans
xof=cur_xwidth(cur_xwi)

else
put toscreen,(x-(cur_xwidth(cur_xwi)-xof),y),cur_ani1,Trans 'Display the current frame of animation to allow horizontal sprite flip    
end if
end if


for i=1 to 20
if obj_list1(i)="A" then

if show_states="YES" then 
draw string toscreen,(100,1),"PX="+str(px(i)),rgb_col
draw string toscreen,(100,10),"PY="+str(py(i)),rgb_col   
end if

put toscreen,(px(i),py(i)),cur_ani2(i),Trans 'if Player 1 Projecile is active then display current projectile frame of animation from STATE_RYU     

end if    
next

if show_states="YES" then
draw string toscreen,(10,1),"X="+str(x),rgb_col
draw string toscreen,(10,10),"Y="+str(y),rgb_col
if current_character="RYU" then
draw string toscreen,(10,30),states_ryu1(1),rgb_col
draw string toscreen,(10,40),states_ryu1(2),rgb_col
draw string toscreen,(10,50),states_ryu1(3),rgb_col
draw string toscreen,(10,60),states_ryu1(4),rgb_col
draw string toscreen,(10,70),states_ryu1(5),rgb_col
draw string toscreen,(10,80),states_ryu1(6),rgb_col
draw string toscreen,(10,90),states_ryu1(7),rgb_col
draw string toscreen,(10,100),states_ryu1(8),rgb_col
draw string toscreen,(10,110),states_ryu1(9),rgb_col
draw string toscreen,(10,120),states_ryu1(10),rgb_col
draw string toscreen,(10,130),states_ryu1(11),rgb_col
draw string toscreen,(10,140),states_ryu1(12),rgb_col
end if
if current_character="KIM" then
draw string toscreen,(10,30),states_kim1(1),rgb_col
draw string toscreen,(10,40),states_kim1(2),rgb_col
draw string toscreen,(10,50),states_kim1(3),rgb_col
draw string toscreen,(10,60),states_kim1(4),rgb_col
draw string toscreen,(10,70),states_kim1(5),rgb_col
draw string toscreen,(10,80),states_kim1(6),rgb_col
draw string toscreen,(10,90),states_kim1(7),rgb_col
draw string toscreen,(10,100),states_kim1(8),rgb_col
draw string toscreen,(10,110),states_kim1(9),rgb_col
draw string toscreen,(10,120),states_kim1(10),rgb_col
draw string toscreen,(10,130),states_kim1(11),rgb_col
draw string toscreen,(10,140),states_kim1(12),rgb_col
end if

end if

'UPDATE THE SCREEN toscreen is the offscreen buffer that is being used to Double Buffer
put (0,0),toscreen,PSET 'Display the toscreen buffer to the screen

'=============================================================
LOOP_SLEEP tol1,delay1 'ALWAYS CALL THIS AT THE BOTTOM OF THE MAIN LOOP
if inkey=chr(27) then exit do
loop until kcs_p1(15)=1

'FREE up Memory
ImageDestroy imagez2
ImageDestroy kof96
ImageDestroy ss2
ImageDestroy ss22
ImageDestroy nobg

if current_character="RYU" then
GET_ANIMATION_RYU "FREE",animation_ptr(),frame_d(),frame_c,return_s
GET_ANIMATION_LEFT_RYU "FREE",animation_ptr(),frame_d(),frame_c,return_s
SOUND_RYU "FREE"
end if

if current_character="KIM" then
GET_ANIMATION_KIM "FREE",animation_ptr(),frame_d(),frame_c,return_s
GET_ANIMATION_LEFT_KIM "FREE",animation_ptr(),frame_d(),frame_c,return_s
SOUND_KIM "FREE"
end if

FREE_SOUND_MEMORY hWave2(1) 
close_sound 'close the sound library
if full_screen="YES" then
setmouse 0,0,1 'Make the mouse pointer visible again if in fullscreen mode    
end if    
