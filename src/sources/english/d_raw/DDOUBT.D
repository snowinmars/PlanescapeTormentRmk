// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOUBT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOUBT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20725 /* ~There is no meat left on the bones of this ancient, animated corpse... only a few colored rags, which seem to serve more as decoration than clothing. It is staring at the floor, shaking its head and tapping its chin thoughtfully.~ */
  IF ~~ THEN REPLY #21891 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #21892 /* ~Leave the skeleton alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #21883 /* ~It makes no response, apparently lost in thought.~ */
  IF ~~ THEN REPLY #21893 /* ~"I said, 'Greetings.'"~ */ GOTO 2
  IF ~~ THEN REPLY #21894 /* ~Leave the skeleton alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #21884 /* ~It looks up and, seeing you, sighs with a small puff of dust. "I've much on my mind, and would prefer to be left alone."~ */
  IF ~~ THEN REPLY #21895 /* ~"Is there something I could help you with?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21896 /* ~"Just the same, I have some questions I'd like answered."~ */ GOTO 3
  IF ~~ THEN REPLY #21897 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #21885 /* ~"You'll have no luck here, then, for I have no answers for thee. Leave me be."~ */
  IF ~~ THEN REPLY #21898 /* ~"Wait... is there something I could help you with?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21899 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #21886 /* ~"No. I've a difficult decision to make, 'tis all."~ */
  IF ~~ THEN REPLY #21900 /* ~"What decision is that?"~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",1)
~ JOURNAL #21902 /* ~I spoke to a skeleton who is contemplating giving up his undead status and dying forever. I imagine Soego would be very interested in speaking with him.~ */ GOTO 5
  IF ~~ THEN REPLY #21901 /* ~"I see. I'll leave you to your thoughts, then... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21887 /* ~"To continue my... 'life'... here, or to die. To finally pass into the True Death I have been told of."~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21927 /* ~"True Death?"~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21928 /* ~"It may be for the best, you know. All creatures should seek the True Death."~ */ GOTO 7
  IF ~~ THEN REPLY #21929 /* ~"I see no reason why you should give up your life."~ */ GOTO 7
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21930 /* ~"I think it may be time for you to release your hold on life."~ */ GOTO 7
  IF ~~ THEN REPLY #21931 /* ~"I'll leave you to your thoughts. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21888 /* ~"A complete absence of passion, the True Death is the true life beyond this shadow of existence. It is said that we must reach this place to free ourselves."~ */
  IF ~~ THEN REPLY #21932 /* ~"I see no reason why you should give up your life."~ */ GOTO 7
  IF ~~ THEN REPLY #21933 /* ~"I think it may be time for you to release your hold on life."~ */ GOTO 7
  IF ~~ THEN REPLY #21934 /* ~"I'll leave you to your thoughts. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 5.3 6.0 6.1
  SAY #21889 /* ~"I shall take thy words into consideration. Now, I ask thee to leave me to my thoughts. Farewell."~ */
  IF ~~ THEN REPLY #21935 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #21890 /* ~This skeleton looks troubled, shaking its head and mumbling to itself.~ */
  IF ~~ THEN REPLY #21936 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #21937 /* ~Leave the skeleton alone.~ */ EXIT
END
