// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FINGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~FINGER~

IF ~  Global("Finger","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #17479 /* ~This is a well-decayed and nearly meatless finger bone from a humanoid of roughly your size. There is still some sort of odd ring on the finger. It is an intricate thing, sculpted with dozens of tiny, ornate flanges and decorative protrusions.~ */
  IF ~~ THEN REPLY #17485 /* ~Pull the ring from the finger.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #17486 /* ~Put the finger bone away.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ EXIT
END

IF ~  Global("Finger","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17480 /* ~You pull out the old finger bone to examine it once more. It is a decayed and nearly meatless finger bone from a humanoid of roughly your size. There is still some sort of odd ring on the finger. It is an intricate thing, sculpted with dozens of tiny, ornate flanges and decorative protrusions.~ */
  IF ~~ THEN REPLY #17487 /* ~Pull the ring from the finger.~ */ GOTO 2
  IF ~~ THEN REPLY #17488 /* ~Put the finger bone away.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17481 /* ~Try as you might, you cannot remove the ring. It's almost as if the ring's sharp edges have dug into the lifeless finger itself and refuse to release it. You have an odd feeling about it, however...~ */
  IF ~  HPLT(Protagonist,5)
~ THEN REPLY #17489 /* ~Remove your own finger, replace it with the finger bone.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 3
  IF ~  HPGT(Protagonist,4)
~ THEN REPLY #17490 /* ~Remove your own finger, replace it with the finger bone.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 4
  IF ~~ THEN REPLY #17491 /* ~Put the finger bone away.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17482 /* ~You place the ring finger of your left hand into your mouth, close your eyes, take a deep breath, and bite down as hard as you can. There is a sickening *crunch* and you are overcome with the taste and smell of blood. Unfortunately, your body was in no condition to receive further punishment and you collapse to the ground, dying.~ */
  IF ~~ THEN REPLY #17492 /* ~Done.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #17483 /* ~You place the ring finger of your left hand into your mouth, close your eyes, take a deep breath, and bite down as hard as you can. There is a sickening *crunch* and you are overcome with the taste and smell of blood. You spit the bloody finger out and place the rotted, ring-laden finger bone against the gushing stump...~ */
  IF ~~ THEN REPLY #17493 /* ~Continue...~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17484 /* ~At first, nothing happens, and you are horrified at the thought of what you've just done. Suddenly, though, you feel a strange tingling sensation as bones fuse and tendons re-knit. In moments, the rotting finger bone has become a living part of your body, though it still throbs painfully. The jagged ring suddenly loosens and slips off into the palm of your hand...~ */
  IF ~~ THEN REPLY #17494 /* ~Done.~ */ DO ~TransformPartyItem("Finger","Jring",1,0,0)
~ EXIT
END
