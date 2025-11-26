// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMMOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMMOURN~

IF ~  Global("Widow_Pissed","AR0200",0)
~ THEN BEGIN 0 // from:
  SAY #34081 /* ~A sense of great loss hangs over this elderly woman like a dark cloak. As you watch her, a long, sad sigh escapes her lips.~ */
  IF ~~ THEN REPLY #34082 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #34083 /* ~Leave the woman be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34084 /* ~She looks up at your face, cloudy eyes squinting and straining to see you clearly. "Forgive me, young cutter, but I'm an old woman and don't see so well... do I know ye?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #34085 /* ~"No."~ */ GOTO 2
  IF ~~ THEN REPLY #34086 /* ~"Perhaps, but I don't know you."~ */ GOTO 2
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #34087 /* ~"We've run across one another before, that's all."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34088 /* ~She mulls your answer over for a moment, nodding. "What was it ye wanted, then?"~ */
  IF ~~ THEN REPLY #34089 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #34090 /* ~"Nothing, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34091 /* ~"Questions?" Her expression curdles. "Oh, no... ye're an 'adventurer,' aren't ye? Name, job, and all that rot, eh? Well I won't have it! Off with ye!"~ */
  IF ~~ THEN REPLY #34092 /* ~"I'm not an adventurer."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34093 /* ~"No, I'm not... not really, at least..."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34094 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #34095 /* ~"Bar that!" The woman jabs her finger at you. "I've watched the Dustmen put the name o' me husband, damn his soul, me son and both me daughters on their Memorial, 'adventurers' all o' them! Why, I swung quite a sword *meself* in the day, so's I knows one when I meets one!" The old woman seems to be working herself into a fit; her face has become flushed and flecks of spittle fly from her lips as she howls at you.~ */
  IF ~~ THEN REPLY #34096 /* ~Let her continue her tirade.~ */ GOTO 5
  IF ~~ THEN REPLY #34097 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34098 /* ~"I'll bet ye've got all *sorts* o' barmy questions!" She mimics your heroic stance: "Greetin's, I have some questions... can ye tell me about this place? Who's the Lady o' Pain? I'm lookin' fer the magic Girdle o' Swank Iron, have ye seen it? Do ye know where a portal ta the 2,817th Plane o' the Abyss might be? Do ye know where the Holy Flamin' Frost-Brand Gronk-Slayin' Vorpal Hammer o' Woundin' an' Returnin' an' Shootin'-Lightnin'-Out-Yer-Bum is?" She spits. "Dung, all o' it! Only gets ye in the dead-book! I ought ta kick ye in the shins fer even pesterin' a poor ol' woman about it all! Now go away an' leaves me in peace!"~ */
  IF ~~ THEN REPLY #34099 /* ~Leave.~ */ EXIT
END

IF ~  Global("Widow_Pissed","AR0200",1)
~ THEN BEGIN 6 // from:
  SAY #34100 /* ~As the old woman squints at your face, her expression becomes sour. "Nay, nay, nay! Not ye again! I won't have another word with ye, so git! *GIT!*"~ */
  IF ~~ THEN REPLY #34101 /* ~Leave.~ */ EXIT
END
