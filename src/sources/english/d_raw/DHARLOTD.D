// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1857 /* ~The woman stumbles into you, then takes a step back, looking up at you with a half-smile. She smells like a distillery.~ */
  IF ~~ THEN REPLY #1893 /* ~"Uh... Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #1894 /* ~"Watch where you're going, woman!"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1895 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1896 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #1897 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #1898 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61582 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1858 /* ~"Hell-*oooo*..." She waves at you, then breaks into a stream of giggles. "Hell-ooo, big cutter..." She starts laughing again.~ */
  IF ~~ THEN REPLY #7486 /* ~"Are you okay?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7487 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7488 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7489 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7490 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61583 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1859 /* ~She squints at you, puts her hands on her hips, and bends over enough to give you a bird's eye view of her bosom. "Don't I *look* okay to ya, cutter?! Well?" She shakes herself, causing numerous jiggles, then starts laughing again. "Ye're the one who looks ta be needing some love n' care!" She pokes you in the chest with her finger for emphasis.~ */
  IF ~~ THEN REPLY #7491 /* ~"You offering?"~ */ GOTO 3
  IF ~~ THEN REPLY #7492 /* ~"Yeah, anyway. Look, maybe you can help me. I had some questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7493 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7494 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7495 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7496 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61584 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1860 /* ~She gives you a mock-stern gaze. "Ya I might be, iffen ye be makin' the right offer." She presses up against you. "What'll it be?"~ */
  IF ~~ THEN REPLY #7497 /* ~"No thanks. I had some questions, though..."~ */ GOTO 6
  IF ~~ THEN REPLY #7498 /* ~"No thanks."~ */ GOTO 4
  IF ~~ THEN REPLY #7499 /* ~"Sure."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7500 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7501 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7502 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7503 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61585 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #1861 /* ~She pouts. "Pox on ye, then! See if ye get any better than me, lookin' like you do."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7504 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7505 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7506 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7507 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61586 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #1862 /* ~"All right then." She stares you up and down, then seems to sober up a little. "Eh... nay, nay, I think ye'd be more than I could handle, ye would."~ */
  IF ~~ THEN REPLY #7508 /* ~"All right, then. I had some questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7509 /* ~"I see... Farewell, then."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7510 /* ~"I see... Farewell, then."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7511 /* ~"I see... Farewell, then."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7512 /* ~"I see... Farewell, then."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61587 /* ~"I see... Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.0 5.0
  SAY #1863 /* ~"Oh, so ye think *I* can help *you?!* Aye, aren't ya a demanding cutter! Well, sweep me off me feet with such flattery!" She smiles.~ */
  IF ~~ THEN REPLY #7513 /* ~"Can you tell me about this city?"~ */ GOTO 7
  IF ~~ THEN REPLY #7514 /* ~"Can you tell me about this area?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7515 /* ~"I'm looking for a journal. Have you seen it?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7516 /* ~"I'm looking for someone named Pharod. Do you know where I could find him?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7517 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7518 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7519 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7520 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61588 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.3 9.0 9.3
  SAY #1864 /* ~"Yes!" She gives a drunken laugh.~ */
  IF ~~ THEN REPLY #7521 /* ~"Yes, what?"~ */ GOTO 9
  IF ~~ THEN REPLY #7522 /* ~"I had some other questions..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7523 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7524 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7525 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7526 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61589 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 6.2 9.1 9.2
  SAY #1865 /* ~"Nooooo!" She seems quite amused by the word and taps you on the chest to emphasize it. "No! No!"~ */
  IF ~~ THEN REPLY #7527 /* ~"Uh... I had some other questions..."~ */ GOTO 9
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7528 /* ~"Never mind, then."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7529 /* ~"Never mind, then."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7530 /* ~"Never mind, then."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7531 /* ~"Never mind, then."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61590 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0
  SAY #1866 /* ~"Yesssssshhh?" She squints at you. "Whazzit?"~ */
  IF ~~ THEN REPLY #7532 /* ~"Can you tell me about this city?"~ */ GOTO 7
  IF ~~ THEN REPLY #7533 /* ~"Can you tell me about this area?"~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7534 /* ~"I'm looking for a journal. Have you seen it?"~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7535 /* ~"I'm looking for someone named Pharod. Do you know where I could find him?"~ */ GOTO 7
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7536 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7537 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
PartyGoldGT(0)
~ THEN REPLY #7538 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
PartyGoldGT(0)
~ THEN REPLY #7539 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXTERN ~DANNAH~ 54
  IF ~  PartyGold(0)
~ THEN REPLY #61591 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.3 1.2 2.3 3.4 4.1 5.2 6.5 7.3 8.2 9.5
  SAY #1867 /* ~You are about to turn away when you stop in your tracks. You suddenly have a feeling that something is *wrong*... and with this feeling comes a realization that this woman's drunkenness is just an act. As you take a closer look at her, you see the harlot tucking something into her sleeve... it looks like something of yours.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7540 /* ~Grab her hand.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7541 /* ~Grab her hand.~ */ GOTO 11
  IF ~~ THEN REPLY #7542 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7543 /* ~Bait the woman into pick pocketing you again, and observe her technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7545 /* ~Bait the woman into pick pocketing you again, and observe her technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7546 /* ~Bait the woman into pick pocketing you again, and observe her technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7547 /* ~Attack her. ~ */ DO ~Help()
~ EXIT
  IF ~~ THEN REPLY #7548 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 16.1 17.1
  SAY #1868 /* ~Your hand snaps out and wraps around her wrist in a crushing grip. She immediately sobers up, desperately tries to yank her hand free and starts screaming at the top of her lungs.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7549 /* ~Quietly: "Stop screaming, or I'll remove your lungs."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7550 /* ~"Be quiet! Dammit, woman, be silent!"~ */ GOTO 14
  IF ~~ THEN REPLY #7551 /* ~Snap her neck with your free hand.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7552 /* ~Let her go.~ */ DO ~Help()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 16.0 17.0
  SAY #1869 /* ~She pulls her hand back before you can grab it. Her drunk expression vanishes, and she starts screaming at the top of her lungs.~ */
  IF ~~ THEN REPLY #7553 /* ~"All right then..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 16.2 17.2
  SAY #1870 /* ~The woman's drunk expression evaporates, and she starts screaming at the top of her lungs.~ */
  IF ~~ THEN REPLY #7554 /* ~"All right then..."~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #1871 /* ~She continues to struggle in your grip, shouting for help. You can barely believe the lungpower this woman has... it's making your ears ring. ~ */
  IF ~~ THEN REPLY #7555 /* ~Attack her.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7556 /* ~Snap her neck with your free hand.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7557 /* ~Let her go.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #1872 /* ~She continues to struggle in your grip, shouting for help. You can barely believe the lungpower this woman has... it's rattling your ears. ~ */
  IF ~~ THEN REPLY #7558 /* ~Attack her.~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7559 /* ~Snap her neck with your free hand.~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7560 /* ~Let her go.~ */ DO ~Enemy()
Help()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.4 1.3 2.4 3.5 4.2 5.3 6.6 7.4 8.3 9.6
  SAY #1873 /* ~Maybe it is your own pick-pocketing skill that causes you to be on your guard, but as you turn to leave, you instinctively check your purse... and notice the harlot removing her hand from it. She doesn't seem to know you saw her, however.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7561 /* ~Grab her hand.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7562 /* ~Grab her hand.~ */ GOTO 11
  IF ~~ THEN REPLY #7563 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7564 /* ~Bait the woman into pick pocketing you again, and observe her technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7566 /* ~Bait the woman into pick pocketing you again, and observe her technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Drunk_Harlot_Technique","GLOBAL",0)
~ THEN REPLY #7567 /* ~Bait the woman into pick pocketing you again, and observe her technique.~ */ DO ~TakePartyGold(5)
SetGlobal("Drunk_Harlot_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 17
  IF ~~ THEN REPLY #7568 /* ~Attack her. ~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7569 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.3 10.4 10.5 16.3 16.4 16.5
  SAY #1874 /* ~You lean in close, laughing along with her, and you watch as her hand darts to your purse again... her technique seems to be distracting the mark with her drunken chatter (and her bosom) while she lifts the coins from his purse. The sleeves of her dress look to be long and baggy on purpose to hide any stolen items quickly. You make a mental note of her technique... even as her hands make another grab for your purse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7571 /* ~Grab her hand.~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7572 /* ~Grab her hand.~ */ GOTO 11
  IF ~~ THEN REPLY #7573 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 13
  IF ~~ THEN REPLY #7574 /* ~Attack her. ~ */ DO ~Enemy()
Help()
~ EXIT
  IF ~~ THEN REPLY #7575 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #1875 /* ~There must be *something* in your tone, because she stops cold and looks at you with large, frightened eyes. ~ */
  IF ~~ THEN REPLY #7576 /* ~"Return what you stole from me. Now."~ */ DO ~GivePartyGold(100)
~ GOTO 19
  IF ~~ THEN REPLY #7577 /* ~Snap her neck with your free hand.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7578 /* ~Let her go, then leave.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1876 /* ~She nods. She peels back her long, baggy sleeves to reveal a small, padded bag hanging from her wrist. It looks like she can palm coins and drop them into the bag; the padding muffles any clinking the coins would make. Without a word, she gives you the bag... it's filled with a few dozen copper commons.~ */
  IF ~~ THEN REPLY #7579 /* ~"We're even. Now, I never want to see you again. Understand?"~ */ GOTO 22
  IF ~~ THEN REPLY #7580 /* ~Bluff: "Give me everything else you have, and I'll let you live."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_1","GLOBALLaw",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7581 /* ~Truth: "Give me everything else you have, and I'll let you live."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-1)
GiveGoldForce(20)
~ GOTO 20
  IF ~~ THEN REPLY #7582 /* ~Nod your thanks, then snap her neck with your free hand.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7583 /* ~Let her go, then leave.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #1877 /* ~She reaches into her garter strap and pulls forth another bag, which she hands to you. It's filled with copper commons, which you empty into your purse.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7584 /* ~"I meant *everything,* so give me *everything.*"~ */ DO ~GiveItemCreate("Ear01",Protagonist,1,0,0)
GiveItem("Knife",Protagonist)
GiveItem("Stiletto",Protagonist)
~ GOTO 21
  IF ~~ THEN REPLY #7585 /* ~"I never want to see you again. Understand?"~ */ GOTO 22
  IF ~~ THEN REPLY #7586 /* ~Nod your thanks, then snap her neck with your free hand.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7587 /* ~Let her go, then leave.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1878 /* ~She reaches slowly down into her boot and pulls forth a strange, slender-looking dagger, which she hands to you hilt first. She then reaches into her other boot, pulls forth *another* dagger - more wicked than the first, with a wider blade - which she hands to you, hilt-first again. She then tosses her head, revealing a small earring that was hidden by her mass of hair. She snaps it off and passes it to you. ~ */
  IF ~~ THEN REPLY #7588 /* ~"Fair enough. Now, I never want to see you again. Understand?"~ */ GOTO 22
  IF ~~ THEN REPLY #7589 /* ~Nod your thanks, then snap her neck with your free hand.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7590 /* ~Let her go, then leave.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 20.1 21.0
  SAY #1879 /* ~She nods. ~ */
  IF ~~ THEN REPLY #7591 /* ~Snap her neck with your free hand.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Drunk_Harlot_3","GLOBALLaw",-2)
IncrementGlobalOnceEx("GLOBALEvil_Drunk_Harlot_2","GLOBALGood",-2)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 23
  IF ~~ THEN REPLY #7592 /* ~Let her go, then leave.~ */ DO ~SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 11.2 14.1 15.1 18.1 19.3 20.2 21.1 22.0
  SAY #1880 /* ~Her eyes widen as your hand constricts around her neck, and she claws desperately at your fingers... before she can break free, there is a *snap* and her struggles stop.~ */
  IF ~  Global("Choke_Dustman","GLOBAL",0)
Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #7593 /* ~Drop her.~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 25
  IF ~  GlobalGT("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #7594 /* ~Drop her.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ GOTO 24
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
Global("Choke_Dustman","GLOBAL",0)
~ THEN REPLY #32766 /* ~Drop her.~ */ DO ~SetGlobal("Choke_Drunk_Harlot","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #1881 /* ~You release her, and she slumps to the ground. She was far easier to kill than the Dustmen. You feel a strange shiver as you look at her body... you *know* you've killed others this way. You desperately try to cling to the memory, but it slips away, submerging into your unconscious.~ */
  IF ~~ THEN REPLY #7595 /* ~Leave.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #1882 /* ~You release her, and she slumps to the ground. You feel a strange shiver as you look at her broken body... you *know* you've killed others this way. With this thought comes the stirring of a memory, but it is not strong enough to surface.~ */
  IF ~~ THEN REPLY #7596 /* ~Leave.~ */ DO ~GiveExperience(Protagonist,250)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #106497 /* ~The woman nods and runs away hurriedly.  You don't expect to see her again.~ */
  IF ~~ THEN REPLY #7596 /* ~Leave.~ */ DO ~Enemy()
GivePartyGold(100)
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #106497 /* ~The woman nods and runs away hurriedly.  You don't expect to see her again.~ */
  IF ~~ THEN REPLY #7596 /* ~Leave.~ */ DO ~Enemy()
SetGlobal("Remove_Drunk_Harlot","GLOBAL",1)
EscapeArea()
~ EXIT
END
