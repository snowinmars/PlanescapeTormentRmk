// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2293 /* ~You see a woman dressed in faded, patched-up clothes. She glances at you as you approach, but turns away quickly, as if unwilling to make eye contact with you.~ */
  IF ~~ THEN REPLY #2294 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #2295 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2296 /* ~The woman glances at you again, gives you an ice-cold look, then turns away. ~ */
  IF ~~ THEN REPLY #2297 /* ~"Uh... miss?"~ */ GOTO 2
  IF ~~ THEN REPLY #2298 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2299 /* ~She turns again... and this time, you see a dagger in her hand. "Leave me be, dog, or I'll be jabbin' this where they'll never be finding it!"~ */
  IF ~~ THEN REPLY #2300 /* ~"Calm down... I just had some questions I wanted to ask you."~ */ GOTO 3
  IF ~~ THEN REPLY #2301 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2302 /* ~She makes a semi-circle over her heart with her free hand, as if to ward off evil. "I have nothin' to say to ye! Be gone with ye!" ~ */
  IF ~~ THEN REPLY #2303 /* ~Attack her.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #2304 /* ~Leave.~ */ EXIT
END
