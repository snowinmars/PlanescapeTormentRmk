// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWERNET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DWERNET~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58937 /* ~You see a burly thug. His face is scarred and creased with countless tales of violence, and his voice comes like gravel scraping over a seabed. "Wha' d'ya want, berk?"~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66327 /* ~"I've come to talk to you about Kyse, the dump caretaker."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66328 /* ~"I had a few questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #66329 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #66324 /* ~"Wha', you again?" He belches.~ */
  IF ~  Global("Caretaker","GLOBAL",2)
~ THEN REPLY #66330 /* ~"I've come to talk to you about Kyse, the dump caretaker."~ */ DO ~SetGlobal("Caretaker","GLOBAL",3)
~ GOTO 2
  IF ~~ THEN REPLY #66331 /* ~"I had a few questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #66332 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #66325 /* ~"Aww, has the poor li'l man heard we coming for his money?" He scratches himself. "You go back and tell him he's givin' it up or he's a dead man. Go on, now."~ */
  IF ~~ THEN REPLY #66333 /* ~"I had a few questions, first..."~ */ GOTO 3
  IF ~~ THEN REPLY #66334 /* ~"Fine. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #66326 /* ~"I ain't a stinkin' tout. You want someone to answer questions, ask someone who cares. I don't. Now git out of here 'fore I put my boys on you."~ */
  IF ~  Global("Caretaker","GLOBAL",3)
~ THEN REPLY #66335 /* ~"Fine, then. Farewell."~ */ DO ~EscapeArea()
~ EXIT
  IF ~  GlobalLT("Caretaker","GLOBAL",3)
~ THEN REPLY #66336 /* ~"Fine, then. Farewell."~ */ EXIT
END
