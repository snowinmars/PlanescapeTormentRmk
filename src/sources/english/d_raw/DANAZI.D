// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAZI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAZI~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #3024 /* ~You see a sickly githzerai woman. She is hunched and bent, and her constant coughing is obviously a source of pain to her - she holds a handkerchief that is practically soaking with blood, tissue, and phlegm to her face. She spies you and hisses.~ */
  IF ~~ THEN REPLY #3025 /* ~"Greetings."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42426 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42427 /* ~"What can you tell me of this place?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42428 /* ~"I have no questions for you. Farewell."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #42429 /* ~An'azi blinks at you, her rheumy eyes tearing, and hisses a few words at Dak'kon.~ */
  IF ~~ THEN REPLY #42430 /* ~"What did she say?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ EXTERN ~DDAKKON~ 132
  IF ~~ THEN REPLY #42431 /* ~"Kill her, Dak'kon. Make it hurt."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DDAKKON~ 126
  IF ~~ THEN REPLY #42432 /* ~"Dak'kon, put her out of her misery. She's obviously in too much pain, and she will not survive much longer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DDAKKON~ 130
  IF ~~ THEN REPLY #42433 /* ~"Let's get out of here, Dak'kon. Say farewell."~ */ EXTERN ~DDAKKON~ 128
  IF ~~ THEN REPLY #42434 /* ~Put her out of her misery.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #42435 /* ~Stab her for fun.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_2","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 0.3
  SAY #42436 /* ~She stares at you, and speaks a few mumbled words to Dak'kon.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 124
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 3 // from:
  SAY #42467 /* ~You see a sickly githzerai woman. She is hunched and bent, and her constant coughing is obviously a source of pain to her - she holds to her face a handkerchief that is practically soaking with blood, tissue, and phlegm. She spies you and hisses.~ */
  IF ~~ THEN REPLY #42468 /* ~"Greetings."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42469 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42470 /* ~"What can you tell me of this place?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42471 /* ~"Would you like some healing? Is there anything I can do for you?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #42472 /* ~"What's wrong with you?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #42473 /* ~"I have no questions for you. Farewell."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 4 // from:
  SAY #42474 /* ~The elderly githzerai woman looks, if possible, even worse off than before. She attempts to hiss at you, but is stopped by a fit of bloody coughing.~ */
  IF ~~ THEN REPLY #42475 /* ~"Would you like some healing? Is there anything I can do for you?"~ */ GOTO 6
  IF ~~ THEN REPLY #42476 /* ~"What's wrong with you?"~ */ GOTO 9
  IF ~~ THEN REPLY #42477 /* ~"Is it possible you could answer some questions for me?"~ */ GOTO 7
  IF ~~ THEN REPLY #42478 /* ~"Farewell, old woman."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 3.2 3.5
  SAY #42479 /* ~She coughs and coughs, filling her damp handkerchief with sodden tissue. Her eyes glare malice at you.~ */
  IF ~~ THEN REPLY #42480 /* ~"Would you like some healing? Is there anything I can do for you?"~ */ GOTO 6
  IF ~~ THEN REPLY #42481 /* ~"What's wrong with you?"~ */ GOTO 9
  IF ~~ THEN REPLY #42482 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3 4.0 5.0
  SAY #42483 /* ~She coughs. She waves her hands at you dismissively. She huddles into her rags, clearly wishing to be left to die alone.~ */
  IF ~~ THEN REPLY #42484 /* ~"Are you in pain? Is there *anything* I can do for you?"~ */ GOTO 7
  IF ~~ THEN REPLY #42485 /* ~Give her some coins.~ */ GOTO 8
  IF ~~ THEN REPLY #42486 /* ~"Look, just answer a few questions for me..."~ */ GOTO 7
  IF ~~ THEN REPLY #42487 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.2
  SAY #42488 /* ~She coughs out a few phrases in a language you don't know, and doubles over in agony as another coughing fit wracks her body.~ */
  IF ~~ THEN REPLY #42489 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #42490 /* ~She dashes the coins from your hand, sending them spilling across the street. She gives you another weak hiss.~ */
  IF ~~ THEN REPLY #42491 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.1 5.1
  SAY #42492 /* ~She gestures weakly in the air above her. She points toward the Foundry, toward the trash, toward the coal heaps, and then at her chest. As if to emphasize her words, another fit of coughing wracks her and leaves her with bloodied lips.~ */
  IF ~~ THEN REPLY #42493 /* ~"It's the smog?"~ */ GOTO 10
  IF ~~ THEN REPLY #42494 /* ~"Is there some sort of healing I can offer?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42495 /* ~She nods her head and heaves out another wet cough.~ */
  IF ~~ THEN REPLY #42496 /* ~"Is there some sort of healing I can offer?"~ */ GOTO 11
  IF ~~ THEN REPLY #42497 /* ~"I can do nothing for you, then. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #42498 /* ~Her eyes grow somber as she points to your weapon, and then to herself.~ */
  IF ~~ THEN REPLY #42499 /* ~"You wish me to kill you?"~ */ GOTO 12
  IF ~~ THEN REPLY #42500 /* ~"I will not do that for you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #42501 /* ~She shakes her head as vigorously as she can manage, and pays for it with a vicious coughing fit. She points firmly to your weapon. Her yellowed eyes show no fear.~ */
  IF ~~ THEN REPLY #42502 /* ~"Very well, then. I wish you luck in the next life."~ */ GOTO 14
  IF ~~ THEN REPLY #42503 /* ~"I will not do that for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 12.1 14.1
  SAY #42504 /* ~She spits a bloodied gob of phlegm at your feet as you turn away from her.~ */
  IF ~~ THEN REPLY #42505 /* ~Leave her alone.~ */ EXIT
  IF ~~ THEN REPLY #42506 /* ~Kill her.~ */ DO ~AddexperienceParty(4000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.4 1.5 12.0
  SAY #42507 /* ~She faces you bravely, unafraid, awaiting the killing stroke.~ */
  IF ~~ THEN REPLY #42508 /* ~Put her out of her misery.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #42509 /* ~"I cannot do this for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42510 /* ~With a swift stroke, you dispatch her. Her body crumples to the hard street - but somehow she seems grateful.~ */
  IF ~~ THEN REPLY #42511 /* ~"Farewell, githzerai."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill(Myself)
~ JOURNAL #67286 /* ~I killed a sick githzerai woman in the Lower Ward today. She was having trouble breathing the thick air of the Ward, and seemed unafraid of death.~ */ EXIT
END
