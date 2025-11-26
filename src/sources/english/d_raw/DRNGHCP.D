// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38437 /* ~This female ghoul carries herself with greater authority than those around her. Her eyes seem clearer and less feral, too. "Can I... help you, meat?"~ */
  IF ~~ THEN REPLY #38438 /* ~"Who are you? What are you doing here?"~ */ GOTO 1
  IF ~~ THEN REPLY #38439 /* ~"What is this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #38440 /* ~"No, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #38441 /* ~"I? I am... Alaina. These are my ghoulss. We are sscoutss and hunterss. We sseek more territory... we sseek more *food.* And now that I have ansswered your questionss... what are YOU doing here?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38442 /* ~"I am looking for a bronze sphere."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38443 /* ~"I am looking for a decanter of water."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38444 /* ~"I am looking for a crypt rife with traps."~ */ GOTO 5
  IF ~~ THEN REPLY #38445 /* ~"I'm just wandering."~ */ GOTO 6
  IF ~~ THEN REPLY #38446 /* ~"I don't know."~ */ GOTO 7
END

IF ~~ THEN BEGIN 2 // from: 0.1 8.1
  SAY #38447 /* ~"Thiss iss the Drowned Nationss. Thiss iss a hunting ground for uss. Thiss... iss where we, the hunterss, rule. What do you want here?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38448 /* ~"I am looking for a bronze sphere."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38449 /* ~"I am looking for a decanter of water."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38450 /* ~"I am looking for a crypt rife with traps."~ */ GOTO 5
  IF ~~ THEN REPLY #38451 /* ~"I'm just wandering."~ */ GOTO 6
  IF ~~ THEN REPLY #38452 /* ~"I don't know."~ */ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.2
  SAY #38453 /* ~"A bronze... ssphere? We have found... no ssuch thing. Search the far reachess of this place and you may find what you sseek."~ */
  IF ~~ THEN REPLY #38454 /* ~"I had a few more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #38455 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.3
  SAY #38456 /* ~"We have not found the ssource of the water here, but it seems most damp to the easst. Search there, and you may find it."~ */
  IF ~~ THEN REPLY #38457 /* ~"I had a few more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #38458 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 8.4
  SAY #38459 /* ~"There are cryptss all around uss, and we protect their inhabitantss... I will not tell you."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38460 /* ~"It is very important to me that I find it."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38461 /* ~"It is very important that I find it."~ */ GOTO 10
  IF ~~ THEN REPLY #38462 /* ~"Very well. Then answer some other questions for me..."~ */ GOTO 8
  IF ~~ THEN REPLY #38463 /* ~"All right. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #38464 /* ~"Thiss... iss not a good place to wander. Much danger there is. We have marked out the boundariess of safety with totemss... sstray not beyond them and you sshould remain ssafe. Watch for the denizenss here - they are deadly, and sswarm in increassing numberss."~ */
  IF ~~ THEN REPLY #38465 /* ~"What denizens would those be?"~ */ GOTO 11
  IF ~~ THEN REPLY #38466 /* ~"Thanks. I had a few more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #38467 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4
  SAY #38468 /* ~"Don't know? Don't know? Perhapss... you ought to leave. This place iss... dangerouss... to meat creaturess."~ */
  IF ~~ THEN REPLY #38469 /* ~"Dangerous? Dangerous how?"~ */ GOTO 11
  IF ~~ THEN REPLY #38470 /* ~"I just had a few questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #38471 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0 4.0 5.2 6.1 7.1 9.0 10.0 11.0 12.0
  SAY #38472 /* ~"I will ... ansswer what I can."~ */
  IF ~~ THEN REPLY #38473 /* ~"Who are you? What are you doing here?"~ */ GOTO 1
  IF ~~ THEN REPLY #38474 /* ~"What can you tell me of this place?"~ */ GOTO 2
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38475 /* ~"I am looking for a bronze sphere."~ */ GOTO 3
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38476 /* ~"I am looking for a decanter of water."~ */ GOTO 4
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38477 /* ~"I am looking for a crypt rife with traps."~ */ GOTO 5
  IF ~~ THEN REPLY #38478 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #38479 /* ~The ghoul captain eyes you coolly, evaluating you. "Ssseek it to the sssouth and easst. Do not disturb the other inhabitantsss of thesse cryptss or you shall *ssuffer.*"~ */
  IF ~~ THEN REPLY #38480 /* ~"My thanks. I had a few more questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #38481 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #38482 /* ~The ghoul captain eyes you, heat growing in her eyes. "I care *NOT* how much it meanss to you, meat creature. I will tell you *NOT.*"~ */
  IF ~~ THEN REPLY #38483 /* ~"Fine, fine. Just answer some other questions for me, then."~ */ GOTO 8
  IF ~~ THEN REPLY #38484 /* ~"Tell me or you die."~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38485 /* ~"Thanks for your time, anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.0
  SAY #38486 /* ~"This place hass been overrun... with trocopotacas, white, horned creaturesss with boundlessss appetitess and cruel disspositionss. Many vargouilless make their homess here ass well, their number ever growing from foolsss who venture thisss far into the catacombsss."~ */
  IF ~~ THEN REPLY #38487 /* ~"I see... can you answer some other questions for me?"~ */ GOTO 8
  IF ~~ THEN REPLY #38488 /* ~"Thanks for the tips. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38489 /* ~"You have returned, yess? What is it you want?"~ */
  IF ~~ THEN REPLY #38490 /* ~"I wanted the answers to some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #38491 /* ~"Nothing. Farewell."~ */ EXIT
END
