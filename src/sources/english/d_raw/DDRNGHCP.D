// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38515 /* ~This female ghoul carries herself with greater authority than those around her. Her eyes seem clearer and less feral, too. "Can I... help you, meat?"~ */
  IF ~~ THEN REPLY #38516 /* ~"Who are you? What are you doing here?"~ */ GOTO 1
  IF ~~ THEN REPLY #38565 /* ~"What is this place?"~ */ GOTO 4
  IF ~~ THEN REPLY #38566 /* ~"No, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0
  SAY #38517 /* ~"I? I am... Alaina. These are my ghoulss. We are sscoutss and hunterss. We sseek more territory... we sseek more *food.* And now that I have ansswered your questionss... what are YOU doing here?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38518 /* ~"I am looking for a bronze sphere."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38561 /* ~"I am looking for a decanter of water."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38562 /* ~"I am looking for a crypt rife with traps."~ */ GOTO 6
  IF ~~ THEN REPLY #38563 /* ~"I'm just wandering."~ */ GOTO 9
  IF ~~ THEN REPLY #38564 /* ~"I don't know."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0
  SAY #38519 /* ~"A bronze... ssphere? We have found... no ssuch thing. Search the far reachess of this place and you may find what you sseek."~ */
  IF ~~ THEN REPLY #38520 /* ~"I had a few more questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #38560 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.2 7.0 8.0 9.1 10.0 11.1 12.0
  SAY #38521 /* ~"I will ... ansswer what I can."~ */
  IF ~~ THEN REPLY #38522 /* ~"Who are you? What are you doing here?"~ */ GOTO 1
  IF ~~ THEN REPLY #38523 /* ~"What can you tell me of this place?"~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38556 /* ~"I am looking for a bronze sphere."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38557 /* ~"I am looking for a decanter of water."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38558 /* ~"I am looking for a crypt rife with traps."~ */ GOTO 6
  IF ~~ THEN REPLY #38559 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.1
  SAY #38524 /* ~"Thiss iss the Drowned Nationss. Thiss iss a hunting ground for uss. Thiss... iss where we, the hunterss, rule. What do you want here?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38525 /* ~"I am looking for a bronze sphere."~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38526 /* ~"I am looking for a decanter of water."~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38530 /* ~"I am looking for a crypt rife with traps."~ */ GOTO 6
  IF ~~ THEN REPLY #38543 /* ~"I'm just wandering."~ */ GOTO 9
  IF ~~ THEN REPLY #38551 /* ~"I don't know."~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 4.1
  SAY #38527 /* ~"We have not found the ssource of the water here, but it seems most damp to the easst. Search there, and you may find it."~ */
  IF ~~ THEN REPLY #38528 /* ~"I had a few more questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #38529 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.4 4.2
  SAY #38531 /* ~"There are cryptss all around uss, and we protect their inhabitantss... I will not tell you."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38532 /* ~"It is very important to me that I find it."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38536 /* ~"It is very important that I find it."~ */ GOTO 8
  IF ~~ THEN REPLY #38541 /* ~"Very well. Then answer some other questions for me..."~ */ GOTO 3
  IF ~~ THEN REPLY #38542 /* ~"All right. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #38533 /* ~The ghoul captain eyes you coolly, evaluating you. "Ssseek it to the sssouth and easst. Do not disturb the other inhabitantsss of thesse cryptss or you shall *ssuffer.*"~ */
  IF ~~ THEN REPLY #38534 /* ~"My thanks. I had a few more questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #38535 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #38537 /* ~The ghoul captain eyes you, heat growing in her eyes. "I care *NOT* how much it meanss to you, meat creature. I will tell you *NOT.*"~ */
  IF ~~ THEN REPLY #38538 /* ~"Fine, fine. Just answer some other questions for me, then."~ */ GOTO 3
  IF ~~ THEN REPLY #38539 /* ~"Tell me or you die."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38540 /* ~"Thanks for your time, anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 4.3
  SAY #38544 /* ~"Thiss... iss not a good place to wander. Much danger there is. We have marked out the boundariess of safety with totemss... sstray not beyond them and you sshould remain ssafe. Watch for the denizenss here - they are deadly, and sswarm in increassing numberss."~ */
  IF ~~ THEN REPLY #38545 /* ~"What denizens would those be?"~ */ GOTO 10
  IF ~~ THEN REPLY #38549 /* ~"Thanks. I had a few more questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #38550 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #38546 /* ~"This place hass been overrun... with trocopotacas, white, horned creaturesss with boundlessss appetitess and cruel disspositionss. Many vargouilless make their homess here ass well, their number ever growing from foolsss who venture thisss far into the catacombsss."~ */
  IF ~~ THEN REPLY #38547 /* ~"I see... can you answer some other questions for me?"~ */ GOTO 3
  IF ~~ THEN REPLY #38548 /* ~"Thanks for the tips. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.4 4.4
  SAY #38552 /* ~"Don't know? Don't know? Perhapss... you ought to leave. This place iss... dangerouss... to meat creaturess."~ */
  IF ~~ THEN REPLY #38553 /* ~"Dangerous? Dangerous how?"~ */ GOTO 10
  IF ~~ THEN REPLY #38554 /* ~"I just had a few questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #38555 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38567 /* ~"You have returned, yess? What is it you want?"~ */
  IF ~~ THEN REPLY #38568 /* ~"I wanted the answers to some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #38569 /* ~"Nothing. Farewell."~ */ EXIT
END
