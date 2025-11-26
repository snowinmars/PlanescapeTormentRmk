// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20029 /* ~The haggard woman glances at you with terror in her features, and before you can speak to her, she flees.~ */
  IF ~~ THEN REPLY #20030 /* ~"So long, then..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20031 /* ~The woman looks at you with fear, her eyes wide. "Stay away from me, berk, and ye'll not be harmed!"~ */
  IF ~~ THEN REPLY #20032 /* ~"Calm down. I just wanted to know who you are."~ */ GOTO 2
  IF ~~ THEN REPLY #20033 /* ~"Hey, relax. What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #20034 /* ~"What are you so afraid of?"~ */ GOTO 5
  IF ~~ THEN REPLY #20035 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20036 /* ~"Who I am?" She laughs bitterly. "Might as well ask for a grain of sand's name, cutter, because that's about as important as I am." ~ */
  IF ~~ THEN REPLY #20037 /* ~"That's an uplifting viewpoint. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #20038 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20039 /* ~"Go on... what did ye want to know?"~ */
  IF ~~ THEN REPLY #20040 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #20041 /* ~"What are you doing?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20042 /* ~"What are you afraid of?"~ */ GOTO 5
  IF ~~ THEN REPLY #20043 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20044 /* ~"What am I doing? Why, just tryin' to eke out a hard-scrabble life under Ragpicker's Square and steering clear of those who put me here in the first place. That's what I'm doing."~ */
  IF ~~ THEN REPLY #20045 /* ~"Very well. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #20046 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20047 /* ~"I'm just makin' sure ye're not one o' them creatures what tore Pharod apart."~ */
  IF ~~ THEN REPLY #20048 /* ~"Creatures? What creatures?"~ */ GOTO 6
  IF ~~ THEN REPLY #20049 /* ~"Pharod's dead?"~ */ GOTO 6
  IF ~~ THEN REPLY #20050 /* ~"I had some other questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #20051 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20052 /* ~"Aye, they was creatures of night and darkness, creatures of non-light, that swept their cold way through here and disappeared into Pharod's court. The echoes o' the scream still linger, seems like..."~ */
  IF ~~ THEN REPLY #20053 /* ~"All right. Tell me something else, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #20054 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20055 /* ~She wipes her running nose on her sleeve. "What d'ya want this time?"~ */
  IF ~~ THEN REPLY #20056 /* ~"I wanted some answers."~ */ GOTO 3
  IF ~~ THEN REPLY #20057 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20058 /* ~You see a haggard woman, her care-lined face showing every scar the years have left upon her. Her eyes are knowing and tired, and she sniffles as she speaks: "What is it ye're wanting from me?"~ */
  IF ~~ THEN REPLY #20059 /* ~"Just the answers to some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #20060 /* ~"Nothing. Farewell."~ */ EXIT
END
