// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCPR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCPR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #10089 /* ~You see a young woman wearing cheap clothes, cheap perfume, and a painted-on smile. She notices your attention and smiles.~ */
  IF ~~ THEN REPLY #10090 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #10091 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10092 /* ~She steps closer to you, lays one hand on your shoulder and slips the other behind you to land on the small of your back. She smiles and moves the hand on your shoulder slowly down your arm. "Well now, ain't you the strong one, cutter. I like a strong man who can take what he wants." She suddenly pulls you up against her. "So tell me... what is it you want?"~ */
  IF ~~ THEN REPLY #10093 /* ~"Uh... Just answers to some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10094 /* ~"Never mind. I must be going."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10095 /* ~She looks you in the eyes and her smile seems to deepen. "I'm not here to talk. You sure that's what you want?" ~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10096 /* ~This woman is a little too aggressive. Something is not right.~ */ GOTO 3
  IF ~  PartyGoldGT(10)
~ THEN REPLY #10097 /* ~"Well... Maybe I could use some entertainment.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldLT(10)
~ THEN REPLY #10098 /* ~"Well... Maybe I could use some entertainment.~ */ GOTO 10
  IF ~~ THEN REPLY #10099 /* ~"Never mind. I must leave now."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10100 /* ~You think that something with this woman just isn't right, so you push her away from you. As you do there is a tugging at your side. You look down in time to see her *empty* hand coming out of your purse. She seems in a hurry to leave now and steps away from you.~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10101 /* ~Grab her.~ */ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #10102 /* ~Grab her.~ */ GOTO 9
  IF ~~ THEN REPLY #10103 /* ~Let her go.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10104 /* ~You deftly grab her by the wrist. She begins to struggle and desperately tries to pull away from you. "Let go of me, berk, or I'll scream for the guards!"~ */
  IF ~~ THEN REPLY #10105 /* ~"Go ahead and scream. You'll be dead before anyone arrives."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pros3_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #10106 /* ~"Go ahead and scream. I don't think anyone in this town will give a damn."~ */ GOTO 5
  IF ~~ THEN REPLY #10107 /* ~Let her go.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #10108 /* ~She looks at you intently for a moment and then stops struggling. "Please let me go. You caught me before I peeled you."~ */
  IF ~~ THEN REPLY #10109 /* ~"Give me all your coin and you can leave."~ */ GOTO 6
  IF ~~ THEN REPLY #10110 /* ~"Fine, but don't let me catch you around here again. Understand?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10111 /* ~She nods her head and reaches into her purse. She pulls out a small hand full of coins and offers them to you. "Please, cutter. I won't be able to eat if you take my jink. Please just let me go."~ */
  IF ~~ THEN REPLY #10112 /* ~Take the money and let her go.~ */ DO ~GivePartyGold(10)
~ GOTO 7
  IF ~~ THEN REPLY #10113 /* ~Take the money and kill her.~ */ DO ~GivePartyGold(10)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10114 /* ~Let her go.~ */ DO ~EscapeArea()
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10115 /* ~You take the coins and pocket them. She continues to stare at you for a moment, then turns and slowly walks away. ~ */
  IF ~~ THEN REPLY #10116 /* ~Let her go.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 5.1 6.2
  SAY #10117 /* ~You let go of her and wave her off. She stares at you for a moment then gives you a weak smile. "My thanks, cutter." She turns and slowly walks away.~ */
  IF ~~ THEN REPLY #10118 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.1
  SAY #10119 /* ~You try to grab her wrist but she deftly avoids you. She jumps away from you and turns to run.~ */
  IF ~~ THEN REPLY #10120 /* ~Attack her.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #10121 /* ~Let her go.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.2
  SAY #10122 /* ~She releases you from her clutches, steps away, and smiles at you. "Sorry, cutter. I changed my mind. Good day." She turns and leaves.~ */
  IF ~~ THEN REPLY #10123 /* ~Let her go.~ */ EXIT
END
