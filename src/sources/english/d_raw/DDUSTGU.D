// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTGU~

IF ~~ THEN BEGIN 0 // from:
  SAY #385 /* ~You see a stern-looking man in black robes. He is staring at you suspiciously.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #388 /* ~"Greetings."~ */ EXTERN ~DMORTE~ 77
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #389 /* ~"Greetings."~ */ EXTERN ~DMORTE~ 79
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #390 /* ~"Greetings."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4119 /* ~"Greetings."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4120 /* ~Act as if you belong here, ignoring him and passing on by.~ */ GOTO 1
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4146 /* ~Try to ignore him, pass on by.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY #386 /* ~The Dustman frowns as you pass... it looks like he is about to call out to you, then stops himself. Your bearing may have made him hold his tongue.~ */
  IF ~~ THEN REPLY #387 /* ~Continue on by.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY #1407 /* ~The Dustman frowns as you pass, then addresses you. "You there - state your business."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1409 /* ~"I seem to have gotten turned around in these halls. Are there any guides around who can direct visitors?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #1410 /* ~"I... seem to be lost."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #1411 /* ~"My business is my own. You would do well to mind your OWN affairs, Dustman."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1412 /* ~Lean in as if to whisper something to him, then snap his neck.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1413 /* ~Lean in as if to whisper something to him, then snap his neck.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1408 /* ~"My only business is that I am bound for the exit. I mean to cause no trouble."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4147 /* ~"Nothing. I was lost, but I am heading for the exit now."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.5 12.0 12.5 19.1 19.6
  SAY #1414 /* ~The Dustman frowns. He seems skeptical. "There are guides that can direct you in the antechamber. Do not wander the Mortuary unescorted."~ */
  IF ~~ THEN REPLY #1415 /* ~"Thank you for your assistance. I will go speak to the guide."~ */ EXIT
  IF ~~ THEN REPLY #1416 /* ~"I'll wander wherever I want to... you would do well to mind your own affairs, Dustman."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.6 12.1 12.6 19.2 19.7
  SAY #1417 /* ~"You do indeed look lost." The Dustman's eyes narrow to slits, and his hand falls to the dagger by his side. "Wait here while I summon the other guards to direct you out." He looks as if he is about to call out. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1418 /* ~Snap his neck before he can call out.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2536 /* ~Snap his neck before he can call out.~ */ GOTO 7
  IF ~~ THEN REPLY #4148 /* ~"Call your friends, Dustie... I look forward to meeting them."~ */ GOTO 11
  IF ~~ THEN REPLY #4149 /* ~Run for it.~ */ GOTO 11
  IF ~~ THEN REPLY #4150 /* ~Wait.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 12.2 19.3
  SAY #4121 /* ~The Dustman's eyes narrow to slits, and his hand falls to the dagger by his side. He looks as if he is about to summon the other guards. ~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4151 /* ~Snap his neck before he can call out.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4152 /* ~Snap his neck before he can call out.~ */ GOTO 7
  IF ~~ THEN REPLY #4153 /* ~"Call your friends, Dustie... I look forward to meeting them."~ */ GOTO 11
  IF ~~ THEN REPLY #4154 /* ~Run for it.~ */ GOTO 11
  IF ~~ THEN REPLY #4155 /* ~Wait.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.3 12.4 19.4
  SAY #4122 /* ~As you lean in to 'whisper' to him, the Dustman leans in as well. As he comes within arm's reach, your hands clamp onto his temples, and you twist his head sharply to the left. ~ */
  IF ~~ THEN REPLY #4156 /* ~"Can't have you alerting your friends..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 14.0
  SAY #4123 /* ~Before the Dustman can utter another word, your hands clamp onto his temples, and you twist his head sharply to the left. ~ */
  IF ~~ THEN REPLY #4157 /* ~"Can't have you alerting your friends..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #4124 /* ~There is a *crack,* and the Dustman falls limp in your arms. ~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4158 /* ~"Better you than me, Dustie."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4159 /* ~"Better you than me, Dustie."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #4125 /* ~To your surprise, the act seemed instinctual, as if you had done it many times before... with this thought comes the stirring of a memory, but it is not strong enough to surface.~ */
  IF ~~ THEN REPLY #4160 /* ~Tuck the body into the shadows, then continue on.~ */ DO ~Kill(Myself)
Deactivate(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4 4.0 5.0 12.3 14.1 19.5
  SAY #4126 /* ~You are not fast enough, and the Dustman dodges as you lunge for him. Taking a step back, he claps his hands together sharply three times. In response, a great iron bell starts tolling throughout the Mortuary.~ */
  IF ~~ THEN REPLY #4161 /* ~"I hope you've made peace with your gods, Dustman..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 4.3 4.4 5.2 5.3 5.4 14.2 14.3
  SAY #4127 /* ~The Dustman claps his hands together sharply three times. In response, an iron bell starts tolling throughout the Mortuary.~ */
  IF ~~ THEN REPLY #4162 /* ~"I hope you've made peace with your gods, Dustman..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 0.3
  SAY #4128 /* ~The Dustman frowns as you address him. "What is your business here?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4163 /* ~"I seem to have gotten turned around in these halls. Are there any guides around who can direct visitors?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4164 /* ~"I... seem to be lost."~ */ GOTO 4
  IF ~~ THEN REPLY #4165 /* ~"My business is my own. You would do well to mind your OWN affairs, Dustman."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4166 /* ~Lean in as if to whisper something to him, then snap his neck.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4167 /* ~Lean in as if to whisper something to him, then snap his neck.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4168 /* ~"My only business is that I am bound for the exit. I mean to cause no trouble."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4169 /* ~"Nothing. I was lost, but I am heading for the exit now."~ */ GOTO 4
END

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #4129 /* ~You see a stern-looking man in black robes. He is looking straight ahead. He doesn't even seem to be aware of you.~ */
  IF ~~ THEN REPLY #4170 /* ~"Greetings."~ */ GOTO 14
  IF ~~ THEN REPLY #4171 /* ~Shamble by.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4130 /* ~The Dustman guard jumps in surprise as you address him, then takes a step back. "You are no zombie... who are you... and how did you get in here?" ~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4172 /* ~Snap his neck before he can call out.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4173 /* ~Snap his neck before he can call out.~ */ GOTO 10
  IF ~~ THEN REPLY #4174 /* ~"I can explain... you see, it all started when I woke up from the dead on one of your slabs... there was this talking skull, and..."~ */ GOTO 11
  IF ~~ THEN REPLY #4175 /* ~Run for it.~ */ GOTO 11
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY #4131 /* ~You see a stern-looking man in black robes. As he sees you, he nods.~ */
  IF ~~ THEN REPLY #4176 /* ~"Greetings."~ */ GOTO 16
  IF ~~ THEN REPLY #4177 /* ~Return the nod, continue walking.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #4132 /* ~"Greetings, fellow initiate."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4178 /* ~"Perhaps you can help me. I seem to be lost. Can you direct me?"~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4179 /* ~"I... seem to be lost."~ */ GOTO 17
  IF ~~ THEN REPLY #4180 /* ~"Carry on, fellow initiate."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #4133 /* ~"There are guides in the antechamber. They should be able to direct you, initiate."~ */
  IF ~~ THEN REPLY #4181 /* ~"Thank you. I will seek them out."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY #61284 /* ~You tuck the limp body into the shadows.~ */
  IF ~~ THEN REPLY #61285 /* ~Continue on.~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #66691 /* ~You see a stern-looking man in black robes. He is glaring at you suspiciously. "You - state your business."~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66692 /* ~"I am a new Initiate of the Dustmen faction. I am just touring the Mortuary."~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66693 /* ~"I seem to have gotten turned around in these halls. Are there any guides around who can direct visitors?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66694 /* ~"I... seem to be lost." ~ */ GOTO 4
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66695 /* ~"My business is my own. You would do well to mind your OWN affairs, Dustman."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66696 /* ~Lean in as if to whisper something to him, then snap his neck.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66697 /* ~Lean in as if to whisper something to him, then snap his neck.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66698 /* ~"My only business is that I am bound for the exit. I mean to cause no trouble."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66699 /* ~"Nothing. I was lost, but I am heading for the exit now."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #66700 /* ~The guard stares at you for a moment, then nods. "Take care you do not disturb anyone's duties while you are here."~ */
  IF ~~ THEN REPLY #66701 /* ~"Very well. I will take my leave, now."~ */ EXIT
END
