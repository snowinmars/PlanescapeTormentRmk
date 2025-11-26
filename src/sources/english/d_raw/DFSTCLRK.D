// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSTCLRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSTCLRK~

IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49532 /* ~The attractive young woman smiles pleasantly. "Something I might help you with, sir?"~ */
  IF ~~ THEN REPLY #49533 /* ~"How would I get into one of these rooms?"~ */ GOTO 1
  IF ~~ THEN REPLY #49534 /* ~"Could I rest here?"~ */ GOTO 2
  IF ~~ THEN REPLY #49535 /* ~"Not at the moment. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49536 /* ~"You'd have to be a member of the Society of Sensation, sir, approved by Splinter. He's just inside the entrance to the Festhall, if you'd like to speak with him."~ */
  IF ~~ THEN REPLY #49537 /* ~"Could I rest here, though?"~ */ GOTO 2
  IF ~~ THEN REPLY #49538 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #49539 /* ~"The Civic Festhall often rents out any unused chambers by the evening; you could certainly rest there, should one be available. Shall I check for you, sir?"~ */
  IF ~~ THEN REPLY #49540 /* ~"Yes, please do."~ */ DO ~StartStore("Festhall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64176 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
HasItem("PCs_Key",Myself)
~ THEN BEGIN 3 // from:
  SAY #49541 /* ~The attractive young woman smiles pleasantly. "Greetings, sir." She closes her eyes and flips through a large ledger, stopping at what seems to be a random page and opening her eyes once more. "Ah... here's your room key..." She hands you a small key. "The easternmost chamber's been waiting quite some time for your return. Would you like to rest now, sir?"~ */
  IF ~~ THEN REPLY #49542 /* ~"Yes, that'd be nice."~ */ DO ~GiveItem("PCs_Key",Protagonist)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49543 /* ~"No... but what do you mean, 'waiting for my return'?"~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #49544 /* ~"Not right now. Farewell."~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #49545 /* ~The clerk gives you a strange look. "My ledger indicates that this is your key, sir, and has been for a good, long time. If that is not so, then perhaps I'm merely mistaken. Would you like to rest now, sir?"~ */
  IF ~~ THEN REPLY #49546 /* ~"Yes, that'd be nice."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49547 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
!HasItem("PCs_Key",Myself)
~ THEN BEGIN 5 // from:
  SAY #49548 /* ~The attractive young woman smiles pleasantly. "Greetings, sir. Would you like to rest, now?"~ */
  IF ~~ THEN REPLY #49549 /* ~"Yes, that'd be nice."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49550 /* ~"Not right now. Farewell."~ */ EXIT
END
