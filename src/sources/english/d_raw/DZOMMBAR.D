// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2583 /* ~The zombie gazes at you with vacant eyes. His lips have been stitched closed, and bandages are wrapped several places around his body. The faint smell of alcohol emanates from the corpse.~ */
  IF ~~ THEN REPLY #2587 /* ~"So... seen anything interesting around here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2588 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #2589 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #2591 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2584 /* ~The zombie continues to stare at you.~ */
  IF ~~ THEN REPLY #2590 /* ~"All right then. Great talking to you. Farewell."~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2585 /* ~This zombie makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~~ THEN REPLY #2586 /* ~"Farewell then."~ */ EXIT
END
