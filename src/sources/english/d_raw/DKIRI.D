// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIRI~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #59069 /* ~You see a pretty young woman. Her face is flushed and bruised, her hair in disarray. Although her clothes are nice, they are torn in several places. She is moving through the streets warily, glancing over her shoulder occasionally.~ */
  IF ~~ THEN REPLY #59070 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #59071 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #59072 /* ~She jumps at your greeting and whips around to face you. As her eyes travel along your scars, a look of concern crosses her face. "Hello, cutter. I'm Kiri, what can I do for you?"~ */
  IF ~~ THEN REPLY #59073 /* ~"You seem rather nervous, what's wrong?"~ */ GOTO 2
  IF ~~ THEN REPLY #59074 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #59075 /* ~She frowns at you then shrugs. "There are people here who don't like me. I try to avoid them whenever possible."~ */
  IF ~~ THEN REPLY #59076 /* ~"Why don't they like you?"~ */ GOTO 3
  IF ~~ THEN REPLY #59077 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #59078 /* ~"I'm a harlot. I'm young, pretty, and... good at what I do." She smiles. "The other girls said I was taking business away from them. So, they beat me up and told me not to show my face around here anymore. Said they'd make sure I wasn't pretty any more if they caught me here."~ */
  IF ~~ THEN REPLY #59079 /* ~"Then why did you come back?"~ */ GOTO 4
  IF ~~ THEN REPLY #59080 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59081 /* ~She laughs. "The jink, what else? I can't leave and set up elsewhere without jink and I can't earn jink if I'm not here. I'm pretty much trapped." She sighs and looks away. "I'd do *anything* if I could get my hands on some decent jink..."~ */
  IF ~~ THEN REPLY #59083 /* ~"Anything?"~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 5 // from: 12.0
  SAY #59084 /* ~She considers your words carefully before answering. "Sure, cutter. I can handle that kind of work. Are you offering a contract?"~ */
  IF ~~ THEN REPLY #59085 /* ~"No, I was just curious."~ */ GOTO 6
  IF ~~ THEN REPLY #59086 /* ~"I know someone who might want her husband dead. He has a taste for harlots and she doesn't like it."~ */ DO ~SetGlobal("Know_Kiri","GLOBAL",2)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #59087 /* ~She shrugs. "Well, as I said, I need jink and I'm willing to do anything."~ */
  IF ~~ THEN REPLY #59088 /* ~"I'll remember that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #59089 /* ~She laughs. "Likes harlots, does he? Well, I guess I'd be perfect for the job." She pauses. "Who's the target?"~ */
  IF ~~ THEN REPLY #59090 /* ~"Carl Parfidor."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #59091 /* ~She frowns as she thinks then nods her head. "I know Carl... and his wife." She hesitates for a moment more then shrugs. "Tell Roberta that if she wants Carl dead, I'll do it."~ */
  IF ~~ THEN REPLY #59092 /* ~"Don't you want to know what the job pays?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #59093 /* ~She smiles wickedly. "No, not really. If she cheats me, I'll put her in the dead-book also. Right next to dear Carl... You can tell her that."~ */
  IF ~~ THEN REPLY #59094 /* ~"I just might. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #59095 /* ~You see the harlot, Kiri. She is watching her surroundings carefully. When she sees you, she smiles at your approach. "Hello again, cutter. What can I do for you?"~ */
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #59096 /* ~"You seem rather nervous, what's wrong?"~ */ GOTO 2
  IF ~  Global("Know_Kiri","GLOBAL",1)
~ THEN REPLY #59097 /* ~"When we talked before, you said you'd be willing to do anything for money."~ */ GOTO 12
  IF ~  Global("Know_Kiri","GLOBAL",2)
Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #59098 /* ~"I've talked to Roberta. She wants Carl dead and she wants you to handle it."~ */ DO ~SetGlobal("Carl_Snuffed","GLOBAL",1)
~ JOURNAL #59100 /* ~I hired the harlot, Kiri, to kill Carl Parfidor. She says she will take care of the matter immediately.~ */ GOTO 11
  IF ~~ THEN REPLY #59099 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.2
  SAY #59101 /* ~She smiles at you. "You can tell Roberta that she just bought Carl an entry in the dead-book. I'll go take care of it now."~ */
  IF ~~ THEN REPLY #59102 /* ~"Very well, farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.0 10.1
  SAY #61394 /* ~She looks you over carefully before answering. "Sure, cutter, anything... if the price is right. You got something in mind?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61395 /* ~"Would you be willing to kill someone?"~ */ JOURNAL #59002 /* ~The harlot, Kiri, is willing to do anything for money, even kill someone. Maybe she would be willing to kill Carl Parfidor for Roberta. ~ */ GOTO 5
  IF ~~ THEN REPLY #61396 /* ~"Not really, I was just curious. Farewell."~ */ JOURNAL #61397 /* ~The harlot, Kiri, says she is willing to do anything for money... I'll have to keep that in mind, maybe I'll have a use for her.~ */ EXIT
END
