// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33542 /* ~This thug wears a dark scowl like some grotesque mask. He narrows his eyes as you approach him.~ */
  IF ~~ THEN REPLY #33545 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #33546 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33543 /* ~"Shut yer pikin' hole, ye ugly bastard! No one said ye could talks ta me! Now sod off, afore I tires of yer face an' bleeds ye!"~ */
  IF ~~ THEN REPLY #33544 /* ~"Try it, and you'll get a few new holes of your own."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33547 /* ~Leave.~ */ EXIT
END
