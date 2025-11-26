// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28177 /* ~Ten mężczyzna patrzy na parę występujących aktorów.~ */
  IF ~~ THEN REPLY #28178 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #28193 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28179 /* ~Mężczyzna odwraca się do ciebie, ale aktorzy wciąż przykuwają większość jego uwagi. Mówi szeptem: "Tak, witaj. Więc co myślisz? Ten po prawej nie jest zły, ale jego partnerowi przydałoby się trochę więcej treningu, prawda?"~ */
  IF ~~ THEN REPLY #28180 /* ~"Nie jestem pewien."~ */ GOTO 2
  IF ~~ THEN REPLY #28190 /* ~"Tak, on jest kiepskim aktorem."~ */ GOTO 2
  IF ~~ THEN REPLY #28191 /* ~"Nie, sądzę, że właściwie to jest całkiem niezłym aktorem."~ */ GOTO 2
  IF ~~ THEN REPLY #28192 /* ~"Nieważne... Mam kilka pytań..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28181 /* ~"Hmmm." Mężczyzna wraca do oglądania aktorów.~ */
  IF ~~ THEN REPLY #28182 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #28189 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28183 /* ~Marszczy się, mówiąc ściszonym głosem: "Nie teraz. Oglądam ich przedstawienie. Żegnam pana."~ */
  IF ~~ THEN REPLY #28184 /* ~"Tylko kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #28188 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28185 /* ~Wciąż mówi cicho, ale używa nieco groźniejszego tonu: "Nie. Zostaw mnie w spokoju, panie, bo inaczej będę zmuszony zawołać straże."~ */
  IF ~~ THEN REPLY #28186 /* ~"Dobrze, zawołaj ich."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28187 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28194 /* ~Mężczyzna przytakuje na powitanie ale gestem prosi o ciszę.~ */
  IF ~~ THEN REPLY #28195 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #68101 /* ~Odejdź.~ */ EXIT
END
