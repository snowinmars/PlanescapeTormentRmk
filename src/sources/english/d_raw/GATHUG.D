// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GATHUG~

IF ~  GlobalGT("Krystall","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34576 /* ~"They tell me y'get free passage through Razor Angel territory now, berk. Don't abuse it."~ */
  IF ~~ THEN REPLY #34577 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34578 /* ~"Stand right here. Someone'll be comin' to talk t'you."~ */
  IF ~~ THEN REPLY #34579 /* ~"Don't count on it. I'll be long gone before he shows up."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34580 /* ~"Why not greet him with your blood? I'll spill some first."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34581 /* ~"Fine. I'll wait here."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34582 /* ~"Y'paid, y'get to go free. Enjoy it while it lasts."~ */
  IF ~~ THEN REPLY #34583 /* ~"Thanks, I will. Farewell."~ */ EXIT
END
