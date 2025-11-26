// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGUARD~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27728 /* ~This large, red-armored figure is standing in place, apparently guarding the stairs beside him. You dimly recall that his ornate armor marks him as an officer of the Harmonium, one who provides law enforcement for the city.~ */
  IF ~~ THEN REPLY #27898 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #27900 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27923 /* ~The man casually motions back towards the street. "Move along, sir."~ */
  IF ~~ THEN REPLY #27924 /* ~"What are you doing here?"~ */ GOTO 11
  IF ~~ THEN REPLY #27925 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #27926 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.1 12.1 13.1 14.0
  SAY #27927 /* ~"No use asking here, sir. Move along."~ */
  IF ~~ THEN REPLY #27928 /* ~"What are you doing here?"~ */ GOTO 11
  IF ~~ THEN REPLY #27929 /* ~"I just need a few answers..."~ */ GOTO 3
  IF ~~ THEN REPLY #27930 /* ~"I need your help..."~ */ GOTO 4
  IF ~~ THEN REPLY #27931 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27932 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #27933 /* ~He shakes his head. "Speak to a citizen, then. I've a job to do here... and I won't neglect it to speak with you or anyone else, sir. Now move along."~ */
  IF ~~ THEN REPLY #27934 /* ~"Can you tell me what you're doing here, at least?"~ */ GOTO 11
  IF ~~ THEN REPLY #27935 /* ~"But I need your help..."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 4
  IF ~~ THEN REPLY #27936 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27937 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #27938 /* ~He hefts his weapon. "You need help? Has a crime been committed?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27939 /* ~"Well... no. I just had some questions."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27940 /* ~"Well... no. I just had some questions."~ */ GOTO 6
  IF ~~ THEN REPLY #27941 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27942 /* ~He sighs. "I understand you've got questions, and in another time, in another place, I'd be inclined to help. But-" He pauses to peer suspiciously down the stairway. "But this is neither, so... just move along, sir. Now."~ */
  IF ~~ THEN REPLY #27943 /* ~"Can you tell me what you're doing here, at least?"~ */ GOTO 11
  IF ~~ THEN REPLY #27944 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27945 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27946 /* ~"Look, berk, I've a-" He pauses to peer suspiciously down the stairway, then returns his attention to you. "I've certain tasks set to me, and I'm not getting them done while I talk with some addle-coved sod who's looking for so-and-so or wants directions to who-knows-where. Move along."~ */
  IF ~~ THEN REPLY #27947 /* ~"Can you tell me what you're doing here, at least?"~ */ GOTO 11
  IF ~~ THEN REPLY #27948 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27949 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 5.1 6.1
  SAY #27950 /* ~He shrugs, his armor clanking with the movement. "You're free to stand here, but not to pester the law. I'd suggest you leave, before there's any... trouble. Farewell."~ */
  IF ~~ THEN REPLY #27951 /* ~"Can you tell me what you're doing here, at least?"~ */ GOTO 11
  IF ~~ THEN REPLY #27952 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27953 /* ~This Harmonium officer looks to be guarding the stairs beside him. You think you may have encountered this particular man before, but with the great helms and identical Harmonium armor it's difficult to tell one from another.~ */
  IF ~~ THEN REPLY #27954 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #27955 /* ~Leave the officer alone.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27956 /* ~You recognize this man as a member of the Harmonium, a faction that's been out for you lately. He doesn't seem to have noticed you, yet.~ */
  IF ~~ THEN REPLY #27957 /* ~"Greetings..."~ */ GOTO 10
  IF ~~ THEN REPLY #27958 /* ~Leave before he sees you.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27959 /* ~You see the man's eyes widen through the slits in his helm. "It's him!" He prepares to charge you, bellowing: "Get this man, alive or dead!"~ */
  IF ~~ THEN REPLY #27960 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 5.0 6.0 7.0
  SAY #27961 /* ~He points towards the stairs beside him, which look to descend straight beneath the city. "Guarding this stairway, sir."~ */
  IF ~~ THEN REPLY #27962 /* ~"Why? Where's it lead?"~ */ GOTO 12
  IF ~~ THEN REPLY #27963 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #27964 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #27965 /* ~"To the Realm Below." Seeing your expression, he continues. "UnderSigil, you may have heard it called."~ */
  IF ~~ THEN REPLY #27966 /* ~"Any reason you're keeping people from entering the place?"~ */ GOTO 13
  IF ~~ THEN REPLY #27967 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #27968 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #27969 /* ~He chuckles softly, the plates of his armor rattling with the movement. "I'm watching for anything that comes *out,* sir. Things that don't *belong* in Sigil proper."~ */
  IF ~~ THEN REPLY #27970 /* ~"What sort of things are down there?"~ */ GOTO 14
  IF ~~ THEN REPLY #27971 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #27972 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #27973 /* ~"Don't concern yourself with it." He regards you curiously for a moment. "You're considering going down there, aren't you? Well, be most cautious. Rumors abound of the worst sorts of creatures living Down Below."~ */
  IF ~~ THEN REPLY #27974 /* ~"Thanks. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #27975 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END
