// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELOBRAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DELOBRAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #46012 /* ~This old woman examines you closely with her sharp, gray eyes... first your face, then your arms and various tattoos. "Greetings, scarred one. Come to speak with Elobrande, have ye? Come to have yer fortune told, mayhap, for a paltry five coins?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #46013 /* ~"Yes... tell me my fortune..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #46014 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #46015 /* ~"No thanks. Farewell, Elobrande."~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #46016 /* ~Elobrande places your coins in her belt pouch and takes your hands. She quietly studies your palms, frowning deeply. At long last, she speaks. "Some rare folk are what's called fateless, ye see. They wander through their lives doing as they see fit, creating their own destinies. Ye have no fortune to tell, scarred one... none at all. I've nothing to tell ye... and so here is yer coin." She returns your five coppers.~ */
  IF ~~ THEN REPLY #46017 /* ~"I... see. I had some questions..."~ */ GOTO 2
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46018 /* ~"Farewell, then."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #51349 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 5.1
  SAY #46019 /* ~"I do not speak of things mundane, scarred one."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46020 /* ~"Maybe you'll speak of this, then: I read that scroll, and it was trapped."~ */ GOTO 6
  IF ~  PartyGoldGT(4)
Global("CW_Fortune","AR0600",0)
~ THEN REPLY #46021 /* ~"Then tell me my fortune..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46022 /* ~"In that case, farewell."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #46023 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.2
  SAY #46024 /* ~"Hold ye one moment, scarred one..." Elobrande reaches out, touching your arm. "My mother gave me something once, long ago... a scroll, sealed with wax. A hooded man had entrusted it to her, and said that a man such as ye would one day unwittingly come to claim it. Here... I would have ye take it, now."~ */
  IF ~~ THEN REPLY #46025 /* ~"What is it?"~ */ DO ~GiveItemCreate("ScTrap",Protagonist,1,0,0)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46026 /* ~Elobrande shakes her head, frowning. "I do not know. She was sworn never to read the thing, and I obeyed her request to leave the seal unbroken, myself. The man had paid her handsomely to take the scroll, but warned her of the direst consequences should she open it."~ */
  IF ~~ THEN REPLY #46027 /* ~"Thanks, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #46028 /* ~You see Elobrande, the fortune-teller. "I greet ye once more, scarred one."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46029 /* ~"I read that scroll - it was trapped."~ */ GOTO 6
  IF ~~ THEN REPLY #46030 /* ~"I had some questions, Elobrande..."~ */ GOTO 2
  IF ~~ THEN REPLY #46031 /* ~"I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0
  SAY #46032 /* ~Elobrande looks confused. "I... I don't know what to say to ye, scarred one..."~ */
  IF ~~ THEN REPLY #46033 /* ~"You could start by saying how, exactly, you came by the thing."~ */ GOTO 7
  IF ~~ THEN REPLY #46034 /* ~"There's nothing *to* say, really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46035 /* ~"As I told ye, scarred one... it was given to me by my mother. A hooded man had given it to her some fifty years past, paying her well but bidding her to never read it, whatever the circumstances." Elobrande sighs, looking away for a moment. "A user of magic, she was, powerful in the Art, but frightened of this man just the same. She had said his eyes - all she could see of him, really - hinted at madness, and that the flesh around them was puckered and gray... like yours. I know nothing more of him."~ */
  IF ~~ THEN REPLY #46036 /* ~"That'll have to do, then. Farewell."~ */ EXIT
END
