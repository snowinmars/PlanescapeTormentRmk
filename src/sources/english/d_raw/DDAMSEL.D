// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAMSEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAMSEL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2207 /* ~You see a pretty young woman. Her hair is in disarray and the bodice of her dress is torn. She looks about in desperation and then notices you. ~ */
  IF ~~ THEN REPLY #2208 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #2209 /* ~Ignore her.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0
  SAY #51524 /* ~She runs up to you and grabs your arm. You notice the front of her dress is stained with blood. "Help me, cutter! Please! They're killing my sister!" She begins to tug on your arm.~ */
  IF ~~ THEN REPLY #51525 /* ~"Who?"~ */ GOTO 2
  IF ~~ THEN REPLY #51526 /* ~"I'll help you, take me to her."~ */ GOTO 12
  IF ~~ THEN REPLY #51527 /* ~"I don't have time for this, farewell."~ */ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51528 /* ~She looks around wildly. "This drunken man who followed us from one of the taverns... we thought he meant no harm... please, cutter, there is no more time! Help us!"~ */
  IF ~  CheckStatGT(Protagonist,10,INT)
~ THEN REPLY #51529 /* ~"Wait, first you said *they* were killing your sister, and now you say *he* is killing her. Which is it?"~ */ GOTO 3
  IF ~~ THEN REPLY #51530 /* ~"Why did he attack her?"~ */ GOTO 10
  IF ~~ THEN REPLY #51531 /* ~"I'll help you, take me to her."~ */ GOTO 12
  IF ~~ THEN REPLY #51532 /* ~"I don't have time for this, farewell."~ */ GOTO 13
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51533 /* ~She stares at you, unsure of what to say. "I... I'm distraught... I made a mistake." She glances at the blood that stains her dress. "Please help me, cutter!"~ */
  IF ~~ THEN REPLY #51534 /* ~Examine the blood on her dress.~ */ GOTO 4
  IF ~~ THEN REPLY #51535 /* ~"I don't have time for this, farewell."~ */ GOTO 13
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.0
  SAY #51536 /* ~You glance down at her dress and look at the blood. Although it does appear to be real, it has completely dried. It must be hours old.~ */
  IF ~~ THEN REPLY #51537 /* ~"That blood is hours old... What are you up to?"~ */ GOTO 5
  IF ~~ THEN REPLY #51538 /* ~"No, I'll be going now. Farewell."~ */ GOTO 13
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51539 /* ~You see her eyes flick to the bloodstains and then back to you. You think you can hear a hint of nervousness in her voice. "You are mistaken, cutter, please help me! My sister lies dying while we tarry!"~ */
  IF ~~ THEN REPLY #51540 /* ~Truth: "You're up to something. Tell me what's going on or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Damsel_1","GLOBALGood",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51541 /* ~Bluff: "You're up to something. Tell me what's going on or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Damsel_1","GLOBALLaw",-1)
SetGlobal("Know_Ambush","AR0400",1)
AddexperienceParty(500)
~ GOTO 6
  IF ~~ THEN REPLY #51542 /* ~"I don't have time for this, farewell."~ */ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #51543 /* ~She looks into your eyes and then glances at the scars that cover your body. She swallows nervously and you see her pale before your eyes. "I... I'm supposed to lure people into an alley nearby. They're waiting there... to take your jink..." She looks at you apprehensively.~ */
  IF ~~ THEN REPLY #51544 /* ~"Let me give you some advice..."~ */ GOTO 7
  IF ~~ THEN REPLY #51545 /* ~"Get out of here and don't come back..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #51546 /* ~She gazes at you in silence then nods her head.~ */
  IF ~~ THEN REPLY #51547 /* ~"Don't pick someone like me as your mark. Choose some drunken fop who looks like he's never seen a battle in his life..."~ */ GOTO 8
  IF ~~ THEN REPLY #51548 /* ~"Never mind, farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51549 /* ~She nods once curtly.~ */
  IF ~~ THEN REPLY #51550 /* ~"And make sure he looks like he has more than a couple coins to his name... Now get out of here."~ */ GOTO 9
  IF ~~ THEN REPLY #51551 /* ~"Never mind, farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #51552 /* ~She nods curtly and then backs away from you. She hesitates for a moment and turns to leave. "Thank you, cutter." She sprints off.~ */
  IF ~~ THEN REPLY #51553 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #51554 /* ~"When she found he didn't have any coin, she said she wouldn't bed him! And then he drew a knife..." She looks at the front of her dress, and then tugs at your arm again.~ */
  IF ~~ THEN REPLY #51555 /* ~Examine the blood on her dress.~ */ GOTO 4
  IF ~~ THEN REPLY #51556 /* ~"I don't have time for this, farewell."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 0.1
  SAY #51557 /* ~"Please, cutter, don't ignore me. I need help!"~ */
  IF ~~ THEN REPLY #51558 /* ~"What do you want of me?"~ */ GOTO 1
  IF ~~ THEN REPLY #51559 /* ~Continue to ignore her.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 1.1 2.2
  SAY #51560 /* ~A look of relief washes over her face. She tugs at your arm. "This way, cutter."~ */
  IF ~~ THEN REPLY #51561 /* ~Follow her.~ */ DO ~SetGlobal("Damsel_Ambush","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.2 2.3 3.1 4.1 5.2 10.1 11.1
  SAY #51562 /* ~As you walk away the woman continues weeping and crying out.~ */
  IF ~~ THEN REPLY #51563 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END
