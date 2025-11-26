// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAIDOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAIDOOR~

IF ~  GlobalLT("Know_Painted_Door","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #47816 /* ~What you first took to be a door in this archway is actually a painting. The artist has made use of the shadows of the overhanging arch and some subtle texturing effects to give the door the illusion of substance.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47817 /* ~"Are you sure this is the door, Annah?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47818 /* ~Close your eyes, open the door.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 1
  IF ~~ THEN REPLY #47819 /* ~Examine the door.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ GOTO 2
  IF ~~ THEN REPLY #47820 /* ~Leave the "door" alone.~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Painted_Door","GLOBALKnow_Painted_Door",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1
  SAY #47822 /* ~You close your eyes, reach for the door and fumble around... to your surprise, you find a handle. With a slight tug, the door opens. A narrow passage leads into the building, and from within, you can hear distant howling.~ */
  IF ~~ THEN REPLY #47823 /* ~"Time to head on in..."~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",3)
SetDoorLocked("ar0400d1",FALSE)
OpenDoor("ar0400d1")
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #47824 /* ~Other than the skill of the artist, there is nothing remarkable about the painting. The "door" has been painted on a rough stone wall - you can feel the stone and mortar beneath the painted wooden texture.~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47825 /* ~"Are you sure this is the door, Annah?"~ */ EXTERN ~DANNAH~ 228
  IF ~  Global("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47826 /* ~Close your eyes, open the door.~ */ GOTO 1
  IF ~~ THEN REPLY #47827 /* ~Leave the "door" alone.~ */ EXIT
END
