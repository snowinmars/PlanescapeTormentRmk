// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33556 /* ~"He! Guck dir *das* mal an!"~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33557 /* ~"Hm... sieht aus, als ob eine der Staubmenschen-Leichen abgehauen ist!" Der Mann gluckst los.~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #33558 /* ~"Und wieso *sollten* wir das tun, he?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33579 /* ~"Weil ich euch sonst beide umlege."~ */ EXTERN ~DTHUGT1~ 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33580 /* ~"Weil ich euch sonst beide umlege."~ */ EXTERN ~DTHUGT1~ 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33581 /* ~"Weil ich keinen Ärger will... laßt mich durch."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33582 /* ~"Weil ich keinen Ärger will... laßt mich durch."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33559 /* ~"Nun mal halblang, Schleifer... war nur'n Scherz, war nur'n Scherz."~ */
  IF ~~ THEN REPLY #33583 /* ~"Na gut... aber ich leg euch trotzdem beide um."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Taunter_1","GLOBALGood",-1)
SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #33584 /* ~Laß sie gehen.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #33560 /* ~Die beiden Männer ziehen ihre Messer...
~ */
  IF ~~ THEN REPLY #33585 /* ~Kämpfe mit ihnen.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33586 /* ~Flieh.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #33561 /* ~"Du willst keinen Ärger?! Da hast du aber Pech. Du hast dir nämlich..."~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT1~ 5
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #33562 /* ~"Du willst keinen Ärger?! Da hast du aber Pech. Du hast dir nämlich gerade welchen eingehandelt!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT1~ 6
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33563 /* ~"Äh..." Der Mann blickt zu seinem Kumpel. "Junge, du glaubst doch nicht, daß er..."~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY #33564 /* ~Der Mann macht einen Schritt nach hinten. "Bringt Unglück, sich mit einem Staubie-Totenbüchler anzulegen, Junge... laß uns veschwinden..." Beide Männer drehen sich um und laufen weg.~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
END
