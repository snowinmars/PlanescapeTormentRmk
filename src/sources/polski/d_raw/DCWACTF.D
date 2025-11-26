// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28158 /* ~Ta atrakcyjna młoda kobieta uważnie przygląda się parze aktorów.~ */
  IF ~~ THEN REPLY #28164 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #28165 /* ~Zostaw kobietę w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28159 /* ~Kobieta odwraca się do ciebie, ale aktorzy wciąż przykuwają większość jej uwagi. Mówi szeptem: "Witaj, panie. Czy długo już oglądasz? Ten po prawej nie jest zły, ale jego partnerowi przydałoby się trochę więcej treningu, prawda?"~ */
  IF ~~ THEN REPLY #28166 /* ~"Nie jestem pewien."~ */ GOTO 2
  IF ~~ THEN REPLY #28167 /* ~"Tak, on jest kiepskim aktorem."~ */ GOTO 2
  IF ~~ THEN REPLY #28168 /* ~"Nie, sądzę, że właściwie to jest całkiem niezłym aktorem."~ */ GOTO 2
  IF ~~ THEN REPLY #28169 /* ~"Nieważne... Mam kilka pytań..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28160 /* ~Kobieta tylko przytakuje, po czym wraca do oglądania aktorów.~ */
  IF ~~ THEN REPLY #28170 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #28171 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28161 /* ~Marszczy się, mówiąc ściszonym głosem: "Proszę pana, trochę manier: oglądam przedstawienie. Żegnam."~ */
  IF ~~ THEN REPLY #28172 /* ~"Tylko kilka pytań..."~ */ GOTO 4
  IF ~~ THEN REPLY #28173 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28162 /* ~Wciąż mówi cicho, ale używa nieco groźniejszego tonu: "Proszę, aby się pan uciszył, albo opuścił to miejsce, gdyż inaczej będę zmuszona zawołać straże."~ */
  IF ~~ THEN REPLY #28174 /* ~"Dobrze, zawołaj ich."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28175 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28163 /* ~Kobieta przytakuje na powitanie ale gestem prosi o ciszę.~ */
  IF ~~ THEN REPLY #28176 /* ~"Mam kilka pytań..."~ */ GOTO 3
  IF ~~ THEN REPLY #68100 /* ~Odejdź.~ */ EXIT
END
