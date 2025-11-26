// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERERAT~

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23941 /* ~Le rat-garou siffle. "Huuumain ! Meurrrt !" Il saute sur sa victime.~ */
  IF ~~ THEN REPLY #23946 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23947 /* ~Fuis.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #23942 /* ~Le rat-garou siffle. "Huuumain ! Meurrrt !" Il saute sur sa victime.~ */
  IF ~~ THEN REPLY #23948 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23949 /* ~Fuis.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #23943 /* ~Le rat-garou te siffle, mais réprime son envie de t'attaquer. Il recule furtivement, en gardant un œil sur toi.~ */
  IF ~~ THEN REPLY #23950 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("CR_Vic","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #23944 /* ~Le rat humanoïde te siffle et secoue la tête alors que tu essaies de communiquer avec lui. Il semble avoir perdu l'envie de parler aux humains.~ */
  IF ~~ THEN REPLY #23951 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("Zap","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #23945 /* ~Le rat-garou siffle. "Huuumain ! Meurrrt !" Il saute sur sa victime.~ */
  IF ~~ THEN REPLY #23952 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23953 /* ~Fuis.~ */ EXIT
END

IF ~  CreatureInArea("AR0508")
~ THEN BEGIN 5 // from:
  SAY #67268 /* ~Le rat-garou se met à siffler mais se retient d'attaquer. Au lieu de cela, il recule lentement, sans te quitter des yeux.~ */
  IF ~~ THEN REPLY #67269 /* ~"Dans ce cas, au revoir."~ */ EXIT
END
