// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERERAT~

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23941 /* ~The wererat hisses at you. "Huuuuuman! Dieeee!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #23946 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23947 /* ~Flee.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #23942 /* ~The wererat hisses at you. "Huuuuuman! Dieeee!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #23948 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23949 /* ~Flee.~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
Global("CR_Vic","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #23943 /* ~The wererat hisses at you, but stays its hand from its obvious desire to attack. Instead, it slinks backward, keeping an eye on you.~ */
  IF ~~ THEN REPLY #23950 /* ~"Farewell, then."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("CR_Vic","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #23944 /* ~The humanoid rat chitters at you, and shakes its head as you try to communicate with it. It has apparently lost its desire to speak with humans.~ */
  IF ~~ THEN REPLY #23951 /* ~"Farewell, then."~ */ EXIT
END

IF ~  CreatureInArea("AR1600")
GlobalGT("Zap","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #23945 /* ~The wererat hisses at you. "Huuuuuman! Dieeee!" It leaps to the attack.~ */
  IF ~~ THEN REPLY #23952 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23953 /* ~Flee.~ */ EXIT
END

IF ~  CreatureInArea("AR0508")
~ THEN BEGIN 5 // from:
  SAY #67268 /* ~The wererat hisses at you, but stays its hand from its obvious desire to attack. Instead, it slinks backward, keeping an eye on you.~ */
  IF ~~ THEN REPLY #67269 /* ~"Farewell, then."~ */ EXIT
END
