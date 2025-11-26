// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELYCE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DELYCE~

IF ~  Global("Elyce","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #21865 /* ~This panic-stricken young woman runs up to you, breathless, tears streaming down her face. "Please, sir! Ye've got ta help me stop them! They'll *kill* each other, they will!"~ */
  IF ~~ THEN REPLY #33509 /* ~"What's going on?"~ */ GOTO 1
  IF ~~ THEN REPLY #33510 /* ~"Sorry, not my problem. Farewell."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33499 /* ~"'Tis me brother and me lover... they're fightin'! 'Tis just harsh words, now, but I just know they'll be bleedin' each other in a moment! Help me stop them, I beg of ye!"~ */
  IF ~~ THEN REPLY #33511 /* ~"I'll speak to them right now..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #33512 /* ~"I can stop them, but I don't work for nothing..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #33513 /* ~"Sorry, not my problem. Farewell."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33500 /* ~"One thousand thanks, blood! They're right over there!"~ */
  IF ~~ THEN REPLY #33514 /* ~"I'll return when I've spoken to them."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #33501 /* ~"I can give ye jink, blood... at least a hundred common's worth... just stop them!"~ */
  IF ~~ THEN REPLY #33515 /* ~"I'll return when I've spoken to them."~ */ DO ~SetGlobal("Elyce","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #33516 /* ~"On second thought, it's not really my concern. Farewell."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",1)
~ THEN BEGIN 4 // from:
  SAY #33502 /* ~"I thank ye, cutter, fer stoppin' that fight. I was so afraid one o' them'd kill the other, and I'd hate to lose either me brother or me dear Maeth."~ */
  IF ~~ THEN REPLY #33517 /* ~"It was no problem. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #33518 /* ~"A show of gratitude would be appreciated, then..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 7.1
  SAY #33503 /* ~The woman's expression darkens in an instant. "Where do ye think ye are, cutter, the Lady's Ward? Had I any jink I'd be spendin' it on food fer me family! So sorry I can't *reward* ye... my gratitude'll have to do." The woman scowls and looks away from you.~ */
  IF ~~ THEN REPLY #33519 /* ~Leave.~ */ EXIT
END

IF ~  Global("Elyce","AR0400",3)
~ THEN BEGIN 6 // from:
  SAY #33504 /* ~"Please, cutter! Stop them!"~ */
  IF ~~ THEN REPLY #33520 /* ~"I'll try..."~ */ EXIT
  IF ~~ THEN REPLY #33521 /* ~"Actually, I've decided it's not really my concern. Farewell."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 7 // from:
  SAY #33505 /* ~"I thank ye, cutter, fer stoppin' that fight. I was so afraid one o' them'd kill the other, and I'd hate to lose either me brother or me dear Maeth."~ */
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33522 /* ~"It was my pleasure to help. Farewell."~ */ EXIT
  IF ~  Global("Good_Elyce_1","GLOBAL",1)
~ THEN REPLY #33523 /* ~"A show of gratitude would be appreciated, then..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Elyce_1","GLOBALGood",-1)
Enemy()
~ GOTO 5
  IF ~  Global("Evil_Elyce_1","GLOBAL",1)
~ THEN REPLY #33524 /* ~"Of course. I'll take my reward, now..."~ */ DO ~SetGlobal("Elyce","AR0400",5)
GiveItemCreate("TsilBra",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #33506 /* ~She nods, and removes a tarnished silver bracelet from the folds of her clothing. "Here ye are, cutter... me only treasure. Either's life was worth it to me, though..." The woman sighs sadly.~ */
  IF ~~ THEN REPLY #33525 /* ~"Wait... here, take it back. Keep your bracelet."~ */ DO ~TakePartyItemNum("TsilBra",1)
IncrementGlobalOnceEx("GLOBALGood_Elyce_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #33526 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #33507 /* ~The woman's eyes light up. "I thank ye, cutter! May the Lady's shadows pass ye over!"~ */
  IF ~~ THEN REPLY #33527 /* ~"Sure... farewell."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",5)
~ THEN BEGIN 10 // from:
  SAY #33508 /* ~"Thank ye again, cutter, fer stoppin' that fight."~ */
  IF ~~ THEN REPLY #33528 /* ~"Not a problem. Farewell."~ */ EXIT
END
