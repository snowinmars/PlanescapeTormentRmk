// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~BATHUG~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34568 /* ~"Y'paid by killing that bitch Krystall. Good enough for the boss. I still think we oughta shiv ye. G'wan... get out of here."~ */
  IF ~~ THEN REPLY #34569 /* ~"Touching. Farewell."~ */ EXIT
END

IF ~  Global("Paid_DAS","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34570 /* ~"We'll be wanting some coin from ye soon enough. Coin or blood. Go talk t' the tolltaker - and don't you be tryin' t' skip out on it. Fair enough?"~ */
  IF ~~ THEN REPLY #34571 /* ~"I don't think so."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34572 /* ~"Very well."~ */ EXIT
  IF ~~ THEN REPLY #34573 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Paid_DAS","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34574 /* ~"Ye've paid, so why don't ye pike off? Don't need ye around no more."~ */
  IF ~~ THEN REPLY #34575 /* ~"Whatever. Farewell."~ */ EXIT
END
