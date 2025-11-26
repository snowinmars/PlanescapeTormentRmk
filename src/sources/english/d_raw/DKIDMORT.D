// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIDMORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIDMORT~

IF ~  Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #28709 /* ~"Thank the powers you're here, chief. Get me outta here."~ */
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28719 /* ~"What are you doing up there?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28720 /* ~"Why?"~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  GlobalGT("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28721 /* ~"I'm working on it, Morte. I'm working on it."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #28710 /* ~"Those wererat vermin nicked me and brought me here! Come on, boss... we got to get out of here! This place is bad news!"~ */
  IF ~~ THEN REPLY #28722 /* ~"Why don't you just float down?"~ */ GOTO 2
  IF ~~ THEN REPLY #28723 /* ~"I don't know, you look cozy up there with all the other skulls..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #28711 /* ~"I can't! I've tried! Come on, get me down before..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #28712 /* ~"Stop joking around, boss... we have to get out of here before..."~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #28713 /* ~"Oh... no." Morte whispers furiously to you. "Do NOT offend this blood, boss... he'll dead-book you faster than you can spit."~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #28714 /* ~Morte speaks up. His voice sounds miserable, scared, and deferential. It's obvious that, in Morte's opinion, this Lothar character is no one to cross. "He means me. Look, sir, just let me go and we'll let this go. Water under the Ditch, hey?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 6 // from:
  SAY #28715 /* ~Morte speaks up. "He means me. Look, sir, just let me go and we'll let this go. Water under the Ditch, hey?"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 7 // from:
  SAY #28716 /* ~"It's good enough for me, boss, and I'm the one stuck here. Let it go, all right? Just go get the skull and come back for me."~ */
  IF ~~ THEN REPLY #28724 /* ~"Fine. Lothar, I'll be back for him. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #28725 /* ~"Not good enough for ME, Morte. I'll fight you for him, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #28717 /* ~"Boss, no! He'll wipe you up!" Morte sounds absolutely terrified. "He's one of the highest high-ups in the whole damned Cage!"~ */
  IF ~~ THEN REPLY #28726 /* ~"Too bad. Give him back, Lothar."~ */ EXTERN ~DLOTHAR~ 18
  IF ~~ THEN REPLY #28727 /* ~"Fine. I'll be back for him, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #28718 /* ~"Boss, don't push it! Let it go!"~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 34
END

IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #54289 /* ~This is a dustless shelf with an empty space - skull-sized - between two grinning skulls.~ */
  IF ~~ THEN REPLY #54292 /* ~Leave it alone.~ */ EXIT
END

IF ~  GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #54290 /* ~This is a dustless shelf with an empty space - skull-sized - between two grinning skulls.~ */
  IF ~~ THEN REPLY #54291 /* ~Leave it alone.~ */ EXIT
END
