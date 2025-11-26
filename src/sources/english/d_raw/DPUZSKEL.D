// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPUZSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPUZSKEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20282 /* ~This skeleton is muttering to itself, occasionally pausing to scratch its skull. It is old enough so that no meat is left on its bones... only a few colored rags.~ */
  IF ~~ THEN REPLY #20296 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #20297 /* ~Leave the skeleton alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20283 /* ~It nods a greeting in return, but does not reply to you.~ */
  IF ~~ THEN REPLY #20298 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #20299 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20284 /* ~The skeleton looks up at you and grunts in frustration. "Not now! Forgive me, but I've the most *horrid* riddle on my mind and I can't puzzle it out!"~ */
  IF ~~ THEN REPLY #20300 /* ~"What's the riddle?"~ */ GOTO 3
  IF ~~ THEN REPLY #20301 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20285 /* ~It seems surprised. "Oh? Going to give it a try, art thou?"~ */
  IF ~~ THEN REPLY #20302 /* ~"Yes, go ahead."~ */ DO ~SetGlobal("DN_Riddle","AR1500",1)
~ GOTO 4
  IF ~~ THEN REPLY #20303 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.3
  SAY #20286 /* ~"Very well. This is from a chortling buffoon of a bone-bag thou may well find nearby. It refuses to give me the answer, and it's *killing* me!"~ */
  IF ~~ THEN REPLY #20304 /* ~"Go on, then..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20287 /* ~It nods. "Think of words which end in '-GRY.' Angry and hungry are two of them. There are but three words in the Common Tongue... what is the third word? The word is something that one uses every day. If thou hast listened carefully, I have already told thee what it is."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20305 /* ~"Of course you have. It's 'tongue.'"~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
AddexperienceParty(6250)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20306 /* ~"It's... uh... hmm."~ */ GOTO 9
  IF ~~ THEN REPLY #20307 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 10.0 12.0 12.1 13.0
  SAY #20288 /* ~It seems incredulous. "'Tis *what?* But..."~ */
  IF ~~ THEN REPLY #20308 /* ~"The first two sentences are unrelated, only there to trick you. Remember: there are three words in 'the - Common - Tongue.' The third word is 'tongue.'"~ */ GOTO 8
  IF ~~ THEN REPLY #20309 /* ~Laugh and walk away.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #20289 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20290 /* ~"That's... that's... ooh! A devious trick! Why, I have no tongue, either!" It stops, then laughs, dust billowing from its creaking jaws. "That's good, all right. I thank thee!"~ */
  IF ~~ THEN REPLY #20310 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #20291 /* ~"Stumped as well, eh? Let me know if thou should find the answer... and best of luck should thou try and get it from the chattering fool which gave it to me!"~ */
  IF ~~ THEN REPLY #20311 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  GlobalGT("DN_Riddle","AR1500",0)
GlobalLT("DN_Riddle","AR1500",3)
~ THEN BEGIN 10 // from:
  SAY #20292 /* ~The skeleton looks up. "Solve that dastardly riddle, yet?"~ */
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20312 /* ~"Yes. It's 'tongue.'"~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20313 /* ~"Yes, but I won't give you the answer."~ */ GOTO 12
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20314 /* ~Lie: "Eh... no. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20315 /* ~"No. Tell me the riddle again."~ */ GOTO 4
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20316 /* ~"No, not yet. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",3)
~ THEN BEGIN 11 // from:
  SAY #20293 /* ~"I thank thee again for solving that riddle! I imagine my 'friend' would be quite upset over it!" It chortles heartily.~ */
  IF ~~ THEN REPLY #20317 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20294 /* ~"But... but why? Come, now! Thou *must* tell me!"~ */
  IF ~  !Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20318 /* ~"Very well. It's 'tongue.'"~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20319 /* ~"Very well. It's 'tongue.'"~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20320 /* ~"I promised I wouldn't."~ */ GOTO 13
  IF ~~ THEN REPLY #20321 /* ~"Must I? Farewell."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #20295 /* ~It gnashes its teeth together in frustration. "Bah! Just like that... that... incessantly rattling dust-for-brains! And *thee!* I thank thee for *nothing!*"~ */
  IF ~~ THEN REPLY #20322 /* ~"All right, all right. It's 'tongue.'"~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~~ THEN REPLY #20323 /* ~"My apologies. Farewell."~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Evil_PuzSkel","AR1500",1)
~ THEN BEGIN 14 // from:
  SAY #68086 /* ~The skeleton crosses its arms and refuses to say even a single word.~ */
  IF ~~ THEN REPLY #68087 /* ~Leave.~ */ EXIT
END
