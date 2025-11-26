// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33556 /* ~"O jé! Podívej se na *to*!"~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33557 /* ~"Hrm... vypadá to, jakoby Spalovačům utekla jedna mrtvola." Muži se zasmáli.~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #33558 /* ~"A proč bychom *měli*, eh?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33579 /* ~"Protože jestli ne, zabiju vás oba."~ */ EXTERN ~DTHUGT1~ 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33580 /* ~"Protože jestli ne, zabiju vás oba."~ */ EXTERN ~DTHUGT1~ 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33581 /* ~"Protože nestojím o problémy... jen mě nech projít."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33582 /* ~"Protože nestojím o problémy... jen mě nech projít."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33559 /* ~"Aj, kámo... jen si děláme srandu."~ */
  IF ~~ THEN REPLY #33583 /* ~"No... Zabiju vás oba."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Taunter_1","GLOBALGood",-1)
SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #33584 /* ~Nechej je jít.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #33560 /* ~Oba muži vytáhli nože...~ */
  IF ~~ THEN REPLY #33585 /* ~Bojuj s nimi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33586 /* ~Uteč.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #33561 /* ~"Žádný problémy?! No tak to je blbý, páč-"~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT1~ 5
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #33562 /* ~"Žádný problémy?! No tak to je blbý, páč si právě do nějakejch naběh!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT1~ 6
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33563 /* ~"Eh..." Muž se podíval na svého přítele. "Hej, kámo, nemyslíš si, že je..."~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY #33564 /* ~Muž ustoupil o krok. "Zaplítat se s mrtvolou Spalovačů přináší smůlu, kámo... pojďme..." Oba muži spěchají pryč.~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
END
