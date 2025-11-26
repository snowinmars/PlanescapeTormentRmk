// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNONAME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNONAME~

IF ~  Global("NoName","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23470 /* ~This rotting, female corpse is shaking her head and moaning sadly. As you approach, however, she turns and holds her hands out to you, as if asking for aid.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23518 /* ~"Greetings..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23519 /* ~"Greetings..."~ */ DO ~SetGlobal("NoName","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #23520 /* ~Leave the zombie alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 18.1
  SAY #23491 /* ~The zombie moans softly in reply: "Ggnhuuu... fnnnnuuugh?" With each exhalation, the stench of rotting meat fills the air.~ */
  IF ~~ THEN REPLY #23521 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #23522 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #23492 /* ~"Stuuuhhh... mmmaaa-uuhrrr?" You can't make out the zombie's moans, but it seems like she's asking you something.~ */
  IF ~~ THEN REPLY #23523 /* ~"I can't understand you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 18.0
  SAY #23493 /* ~The zombie moans softly in reply. Only your skills in conversing with the dead allow you to understand her: "Naaame? Mmmyyy nnnaaame?"~ */
  IF ~~ THEN REPLY #23524 /* ~"No... is that why you're so distressed?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_NoName_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #23525 /* ~"No, I don't. Should I?"~ */ GOTO 4
  IF ~~ THEN REPLY #23526 /* ~"No. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #23527 /* ~"No. I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #23494 /* ~"Fffooorgot mmmyyy nnnaaame... mmmyyy nnnaaame!" Her milky eyes well with a black, rheumy substance - a corpse's only tears.~ */
  IF ~~ THEN REPLY #23528 /* ~"Can I help you find your name again?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23529 /* ~"Why don't you just choose a new name?"~ */ GOTO 8
  IF ~~ THEN REPLY #23530 /* ~"Why is it so important to you?"~ */ GOTO 7
  IF ~~ THEN REPLY #23531 /* ~"Too bad. I still had questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_NoName_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #23532 /* ~"Hope you find it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 7.1 15.0
  SAY #23495 /* ~The corpse nods slowly. "Mmmyyy toomb..." She points southwards. "Waaatttery catacooombsss..."~ */
  IF ~~ THEN REPLY #23533 /* ~"But how will I know it?"~ */ JOURNAL #23566 /* ~A zombie asked me to find her name. She said it should be inscribed upon her tomb - one next to a 'spiked chest' bolted to the floor - in the Drowned Nations catacombs, south and west of the Dead Nations where I met her.~ */ GOTO 6
  IF ~~ THEN REPLY #23534 /* ~"I'll go find it, then. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #23537 /* ~"Perhaps I'll seek it out. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #23496 /* ~"Chessst... ssspiiiked chessst, booolllted dooowwwn... nnnear mmmyyy tooomb..."~ */
  IF ~~ THEN REPLY #23539 /* ~"Why don't you just choose a new name?"~ */ GOTO 8
  IF ~~ THEN REPLY #23543 /* ~"Why is it so important to you?"~ */ GOTO 7
  IF ~~ THEN REPLY #23545 /* ~"I'll go find it, then. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #23547 /* ~"Perhaps I'll seek it out. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1 19.3
  SAY #23497 /* ~She holds up her decaying hands for you to examine. Even as you do so, a fingernail drops off, hitting the tiles with a soft *click.* "Rrrotting awaaay... sssooon, nooothing left... nooothing but booones and a naaame..."~ */
  IF ~~ THEN REPLY #23557 /* ~"I've no name, myself. I'm certain you can get by without, as well."~ */ GOTO 14
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23560 /* ~"Can I help you find your name, then?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23573 /* ~"Why don't you just choose a new name?"~ */ GOTO 8
  IF ~~ THEN REPLY #23576 /* ~"I see. I had some questions..."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23579 /* ~"Hope you find it. Farewell."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23582 /* ~"I'll keep looking, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 6.0 7.2 15.1 19.2 23.0
  SAY #23498 /* ~She stands there, watching you silently.~ */
  IF ~~ THEN REPLY #23586 /* ~"Did you understand? You can choose a new name."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #23499 /* ~She shakes her head, backing away as if frightened. "But... nnnooo..."~ */
  IF ~~ THEN REPLY #23588 /* ~"Can't you see how you've changed? Would your true name fit you any longer?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #23500 /* ~She pauses, putting her hands to her cheeks. The corpse bites her lower lip.~ */
  IF ~~ THEN REPLY #23591 /* ~"Yes, see? You can let your old name go, now. Become something new."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #23501 /* ~"But... whhhooo? Whhhaaat naaame?" She appears confused, overwhelmed.~ */
  IF ~~ THEN REPLY #23593 /* ~"Anything you like. Anything."~ */ GOTO 12
  IF ~~ THEN REPLY #23594 /* ~"You'll think of one. Farewell."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #23502 /* ~She stands quietly for a time, staring at the floor. Suddenly, she raises her head. "Yoouuu... naaame? Naaammme mmmeee?"~ */
  IF ~~ THEN REPLY #23599 /* ~Think of a name for her.~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #67827 /* ~I made up a name for the nameless zombie; she seemed quite pleased with it.~ */ GOTO 13
  IF ~~ THEN REPLY #23602 /* ~"I think it would be best were you to choose your own. Farewell."~ */ DO ~SetGlobal("NoName","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 19.1
  SAY #23504 /* ~You think of a name but, before you can speak it, the zombie hushes you, drawing close and cupping a hand over her ear. You whisper the name to her... the corpse nods, then smiles. "Yeeesss... thhhaaank yooouuu..."~ */
  IF ~~ THEN REPLY #23603 /* ~"Of course. I still had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #23606 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0
  SAY #23506 /* ~"Hhhooow caaan yooouuu feeelll... whooole?"~ */
  IF ~~ THEN REPLY #23608 /* ~Truth: "Perhaps you're right, but I think it's more than my name I'm missing."~ */ GOTO 15
  IF ~~ THEN REPLY #23610 /* ~Lie: "I do feel whole, name or no."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_1","GLOBALLaw",-1)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #23507 /* ~The zombie simply shakes her head quietly.~ */
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23617 /* ~"Can I help you find your name, then?"~ */ DO ~SetGlobal("NoName","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #23618 /* ~"Why don't you just choose a new name?"~ */ GOTO 8
  IF ~~ THEN REPLY #23620 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~  !Global("NoName","GLOBAL",2)
~ THEN REPLY #23622 /* ~"Hope you find it, then. Farewell."~ */ EXIT
  IF ~  Global("NoName","GLOBAL",2)
~ THEN REPLY #23625 /* ~"I'll keep looking. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 4.3 7.3 13.0 15.2 19.4 20.1 21.0 22.0
  SAY #23508 /* ~There is a long pause. "Uuuuhhh?" The zombie shrugs, one of her shoulders not quite rising as high as the other. "Assssk Mmmary, Ssstale Mssaaaary."~ */
  IF ~~ THEN REPLY #23631 /* ~"Tell me about... Stale Mary."~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 17
  IF ~~ THEN REPLY #23634 /* ~"Perhaps I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #23509 /* ~"Ssshhhee leeeads usss. Wwwaaatches uuusss."~ */
  IF ~~ THEN REPLY #23637 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",1)
~ THEN BEGIN 18 // from:
  SAY #23510 /* ~As the zombie faces you, a glint of recognition flashes in her dead eyes. "Uuuhhhn." She holds her rotting hands out to you, as if asking for aid.~ */
  IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN REPLY #23640 /* ~"Greetings..."~ */ GOTO 3
  IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN REPLY #23645 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #23646 /* ~Leave the zombie alone.~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #23511 /* ~As the zombie faces you, a glint of recognition flashes in her dead eyes. "Mmyyy nnnaaame... yooouuu fffiiind mmmyyy naaame?"~ */
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23650 /* ~Truth: "I found the tomb, but the name was... ruined. Illegible."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_NoName_1","GLOBALLaw",1)
~ JOURNAL #23659 /* ~I told the nameless zombie that the name on her tomb was illegible... she became distraught.~ */ GOTO 23
  IF ~  Global("DN_Read_Tomb","GLOBAL",1)
~ THEN REPLY #23653 /* ~Lie: "Yes, your name is... uh..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_NoName_2","GLOBALLaw",-1)
SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23660 /* ~I lied and told the nameless zombie that the name on her tomb was legible, giving her one I made up. She was pleased with it.~ */ GOTO 13
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23655 /* ~"No... but why don't you just choose a new name?"~ */ GOTO 8
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23656 /* ~"Not yet. Why is it so important to you?"~ */ GOTO 7
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23657 /* ~"Not yet, but I had some questions..."~ */ GOTO 16
  IF ~  Global("DN_Read_Tomb","GLOBAL",0)
~ THEN REPLY #23658 /* ~"No, but I'll keep looking."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #23512 /* ~The corpse beckons to you eagerly when she notices you. "Nnnaaame! I chossse aaa nnnaaame..."~ */
  IF ~~ THEN REPLY #23661 /* ~"Is that so? What did you choose?"~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~The nameless zombie finally took my advice and chose a name for herself, 'Leicha.'~ */ GOTO 21
  IF ~~ THEN REPLY #23662 /* ~"Good, I'm glad for you. I had some questions..."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~The nameless zombie finally took my advice and chose a name for herself, 'Leicha.'~ */ GOTO 16
  IF ~~ THEN REPLY #23663 /* ~"That's good. I'll take my leave, now... farewell."~ */ DO ~SetGlobal("NoName","GLOBAL",4)
AddexperienceParty(5000)
~ JOURNAL #23664 /* ~The nameless zombie finally took my advice and chose a name for herself, 'Leicha.'~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #23513 /* ~"Llleeeiiichaaa..."~ */
  IF ~~ THEN REPLY #23665 /* ~"Interesting... it fits, somehow. I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #23666 /* ~"That's good. Farewell, Leicha."~ */ EXIT
END

IF ~  Global("NoName","GLOBAL",4)
~ THEN BEGIN 22 // from:
  SAY #23514 /* ~The corpse shuffles towards you, smiling. "Thhhaaank yooouuu... hhheeelping mmmeee with mmmyyy naaame..."~ */
  IF ~~ THEN REPLY #23667 /* ~"Of course. I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #23668 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0
  SAY #23515 /* ~"N...n...nooo..." The zombie holds her shaking head in her hands. "Caaannn nnnot beee..."~ */
  IF ~~ THEN REPLY #23669 /* ~"Why don't you just choose a new name?"~ */ GOTO 8
  IF ~~ THEN REPLY #23670 /* ~"My apologies... farewell."~ */ DO ~SetGlobal("NoName","GLOBAL",5)
~ EXIT
END

IF ~  Global("NoName","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #23516 /* ~This female zombie is staring off into the distance, slack-jawed.~ */
  IF ~~ THEN REPLY #23671 /* ~"I had some questions..."~ */ GOTO 25
  IF ~~ THEN REPLY #23672 /* ~Leave her alone.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23517 /* ~The corpse is utterly silent... she does not acknowledge you.~ */
  IF ~~ THEN REPLY #23673 /* ~Leave her alone.~ */ EXIT
END
