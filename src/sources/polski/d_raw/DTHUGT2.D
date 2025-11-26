// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33556 /* ~"O rany! Patrzta na *to*!"~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33557 /* ~"Hmm... wygląda jak truposz, co uciekł Grabarzom!" Mężczyzna złośliwie chichocze.~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #33558 /* ~"A to niby *dlaczego*, co?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33579 /* ~"Bo jak nie przestaniecie, zabiję was obu."~ */ EXTERN ~DTHUGT1~ 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33580 /* ~"Bo jak nie przestaniecie, zabiję was obu."~ */ EXTERN ~DTHUGT1~ 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33581 /* ~"Bo nie chcę żadnych kłopotów... chcę tylko przejść."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33582 /* ~"Bo nie chcę żadnych kłopotów... chcę tylko przejść."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33559 /* ~"Tak, śmiałku... to żarty, tylko żarty."~ */
  IF ~~ THEN REPLY #33583 /* ~"Cóż... zabiję was obu."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Taunter_1","GLOBALGood",-1)
SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #33584 /* ~Pozwól im odejść.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #33560 /* ~Obydwaj wyciągają noże...~ */
  IF ~~ THEN REPLY #33585 /* ~Walcz.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33586 /* ~Uciekaj.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #33561 /* ~"Nie chcesz kłopotów?! Cóż, niedobrze, bo..."~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT1~ 5
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #33562 /* ~"Nie chcesz kłopotów?! Cóż, niedobrze, bo właśnie się w nie wpakowałeś!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT1~ 6
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33563 /* ~"Ech..." Mężczyzna patrzy na swego kompana. "No co ty, stary, chyba nie myślisz, że on naprawdę..."~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY #33564 /* ~Mężczyzna cofa się o krok. "Lepiej nie mieć nic wspólnego z jednym z Grabarskich truposzy, stary... chodźmy..." Obaj odwracają się i pośpiesznie odchodzą.~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
END
