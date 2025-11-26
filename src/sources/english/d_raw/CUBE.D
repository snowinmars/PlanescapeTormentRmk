// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CUBE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~CUBE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #21494 /* ~This small metal toy is a replica of a cube-like creature with huge eyes on one of its faces. The toy has two legs, two arms, two folding wings, and at least eighteen points of articulation. Maybe it's a collector's item.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42933 /* ~Manipulate the toy and look for some sort of effect.~ */ GOTO 6
  IF ~~ THEN REPLY #21495 /* ~Move the arms and make sword-fighting noises.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22827 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48743 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22828 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ GOTO 5
  IF ~~ THEN REPLY #22829 /* ~Put the cube away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 5.0
  SAY #22831 /* ~The toy *clicks* and *whirrs* as you move its clockwork joints. Within moments, the tiny cube has vanquished every imaginary opponent you have sent against it, and settled back to its normal position. ~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42934 /* ~Manipulate the toy and look for some sort of effect.~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #22832 /* ~Wave its arms and make cheering noises.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #22833 /* ~Wave its arms and make cheering noises.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #22834 /* ~Wave its arms and make cheering noises.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #22835 /* ~Wave its arms and make cheering noises.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22836 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48744 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22837 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket. ~ */ GOTO 5
  IF ~~ THEN REPLY #22838 /* ~Put the cube away.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #22839 /* ~Hordes of imaginary creatures cheer the cube's victory. You can almost see a tiny oily tear brimming on one of its eyes... it is a hero, the greatest cube ever to roam the planes, and everyone loves it. ~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42935 /* ~Manipulate the toy and look for some sort of effect.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #22840 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48745 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ GOTO 4
  IF ~  Global("Modron_Cube","GLOBAL",0)
Global("Know_Cube","GLOBAL",1)
~ THEN REPLY #22841 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22842 /* ~Put the cube away for future battles against the multiverse.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22843 /* ~Put the cube away for future battles against the multiverse.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 3 // from: 1.4
  SAY #22844 /* ~Hordes of imaginary creatures from across the planes cheer the cube's victory. You can almost see a tiny oily tear brimming on one of its eyes... it is a hero, the greatest cube ever to roam the planes, and everyone loves it. In your mind, Fall-from-Grace and Annah hug it and shower it with kisses.~ */
  IF ~  Global("Know_Cube_Puzzle","GLOBAL",1)
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #42937 /* ~Manipulate the toy and look for some sort of effect.~ */ GOTO 6
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42936 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ DO ~GenerateModronMaze()
~ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48746 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ GOTO 4
  IF ~  Global("Know_Cube","GLOBAL",1)
Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #22865 /* ~Bend the left knee until the leg forms a fifteen-degree angle, unfold both wings to maximum extension, then rotate the right arm 180 degrees in its socket.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #22866 /* ~Sigh, put the cube away for future battles against the multiverse.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #22867 /* ~Sigh, put the cube away for future battles against the multiverse.~ */ EXTERN ~DMORTE~ 221
END

IF ~~ THEN BEGIN 4 // from: 0.2 0.3 1.5 1.6 2.1 2.2 3.1 3.2
  SAY #22846 /* ~There is a *whirrrr,* a *click,* then a blinding white light suddenly explodes in your hands...~ */
  IF ~~ THEN REPLY #22847 /* ~"Wh...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.7 2.3 3.3 10.3
  SAY #22868 /* ~There is a *whirrrr,* a *click,* then a *click-click-click,* then a low *whirrr.* Nothing happens. ~ */
  IF ~~ THEN REPLY #22869 /* ~Console yourself by moving the arms and making sword-fighting noises.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Cube_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22848 /* ~"Well that didn't work. I'll put you away and try again in a new location."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 2.0 3.0
  SAY #42938 /* ~You bend, twist and rotate the toy's various points of articulation, noting that the limbs often suddenly revert to their original position. Finally, as you bend its left knee, the toy makes an odd *pop!* and shudders in your hands...~ */
  IF ~~ THEN REPLY #42940 /* ~Rotate the left arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42942 /* ~Rotate the right arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42943 /* ~Extend the left wing.~ */ GOTO 9
  IF ~~ THEN REPLY #42944 /* ~Extend the right wing.~ */ GOTO 7
  IF ~~ THEN REPLY #42947 /* ~Bend the right knee.~ */ GOTO 7
  IF ~~ THEN REPLY #42949 /* ~Put the cube away.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.3 6.4 7.0 7.1 7.2 7.3 7.5 8.0 8.1 8.3 8.4 9.0 9.1 9.3 10.0 10.4
  SAY #42950 /* ~The toy's limbs suddenly revert to their original positions with a soft *click.*~ */
  IF ~~ THEN REPLY #42952 /* ~Rotate the left arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42954 /* ~Rotate the right arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42955 /* ~Extend the left wing.~ */ GOTO 7
  IF ~~ THEN REPLY #42956 /* ~Extend the right wing.~ */ GOTO 7
  IF ~~ THEN REPLY #42957 /* ~Bend the left knee.~ */ GOTO 8
  IF ~~ THEN REPLY #42959 /* ~Bend the right knee.~ */ GOTO 7
  IF ~~ THEN REPLY #42961 /* ~Put the cube away.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.4
  SAY #42962 /* ~The toy makes an odd *pop!* and shudders in your hands.~ */
  IF ~~ THEN REPLY #42964 /* ~Rotate the left arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42966 /* ~Rotate the right arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42967 /* ~Extend the left wing.~ */ GOTO 9
  IF ~~ THEN REPLY #42968 /* ~Extend the right wing.~ */ GOTO 7
  IF ~~ THEN REPLY #42971 /* ~Bend the right knee.~ */ GOTO 7
  IF ~~ THEN REPLY #42973 /* ~Put the cube away.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 8.2
  SAY #42974 /* ~The toy makes a soft *whir* sound.~ */
  IF ~~ THEN REPLY #42976 /* ~Rotate the left arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42978 /* ~Rotate the right arm.~ */ GOTO 7
  IF ~~ THEN REPLY #42980 /* ~Extend the right wing.~ */ GOTO 10
  IF ~~ THEN REPLY #42983 /* ~Bend the right knee.~ */ GOTO 7
  IF ~~ THEN REPLY #42985 /* ~Put the cube away.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #42986 /* ~The toy *hmmmms* slightly, growing warm to the touch.~ */
  IF ~~ THEN REPLY #42987 /* ~Rotate the left arm.~ */ GOTO 7
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",1)
~ THEN REPLY #42990 /* ~Rotate the right arm.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
GenerateModronMaze()
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",1)
Global("EnginInMaze","GLOBAL",0)
~ THEN REPLY #48747 /* ~Rotate the right arm.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Modron_Cube","GLOBAL",0)
~ THEN REPLY #43099 /* ~Rotate the right arm.~ */ DO ~SetGlobal("Know_Cube","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42995 /* ~Bend the right knee.~ */ GOTO 7
  IF ~~ THEN REPLY #42997 /* ~Put the cube away.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2
  SAY #42998 /* ~There is a *whirrrr,* a *click,* then a blinding white light suddenly explodes in your hands...~ */
  IF ~~ THEN REPLY #42999 /* ~"Wh...!"~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",0)
TeleportParty("AR13FY",[483.543],14)
~ EXIT
END
