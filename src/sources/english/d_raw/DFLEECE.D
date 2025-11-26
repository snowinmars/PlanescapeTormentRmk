// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFLEECE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFLEECE~

IF ~  Global("Fleece","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1754 /* ~You see a man who is looking around at the buildings with some confusion. He looks lost and is mumbling to himself.~ */
  IF ~~ THEN REPLY #1755 /* ~"Greetings."~ */ DO ~SetGlobal("Fleece","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #1756 /* ~Pass on by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1757 /* ~The man looks relieved. "At *last!* I beg your indulgence, good sir, I seem to have gotten turned around in this maze of streets..." He chuckles uncomfortably. "I'm afraid this area of the city is somewhat..." He glances around apprehensively. "...unknown to me. The residents seem most unwilling to extend aid to a visitor..." He looks at you hopefully. "Could I prevail upon you to help me, perchance?"~ */
  IF ~~ THEN REPLY #1758 /* ~"Depends on the kind of help you need."~ */ GOTO 2
  IF ~~ THEN REPLY #1759 /* ~"Certainly. Where are you trying to go?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fleece_1","GLOBALGood",1)
~ GOTO 2
  IF ~~ THEN REPLY #1760 /* ~"You're on your own. If I were you, I'd get out of this area as soon as you can."~ */ GOTO 9
  IF ~~ THEN REPLY #1761 /* ~"I don't have the time to help you right now... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 27.0
  SAY #1762 /* ~"I seek the house of my Aunt Marguerite. She is reported to dwell in a house close to the Mortuary, but the street layout seems to have changed since my last visit... do you know of the house of which I speak?"~ */
  IF ~~ THEN REPLY #1763 /* ~Lie: "I do. I can direct you there... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1764 /* ~Truth: "I'm afraid that I have never heard of such a place."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Fleece_2","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #1765 /* ~"I cannot help you. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1766 /* ~"Ah, that is fair, indeed. To hear last tell, she had her home near the Mortuary." His eyes narrow, as if studying you. "Do you know exactly where her home is?"~ */
  IF ~~ THEN REPLY #2246 /* ~Lie: "She is south and east of the Mortuary, near one of the mausoleums."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_3","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #2247 /* ~"I'm sorry, did you say 'Aunt Marguerite'? I misunderstood you, and was thinking of someone else."~ */ GOTO 6
  IF ~~ THEN REPLY #2248 /* ~"Oh, wait. I thought you were asking about one of the brothels around here. Never mind."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_3","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2249 /* ~The man shakes his head. "Oh, nay, nay... she is not *that* close, surely. Perhaps you are thinking of someone else." The man looks about, then turns back to you. "I shall see if someone else knows. I thank you for your time, good sir."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2250 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2251 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2252 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2253 /* ~"Farewell."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2254 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #2255 /* ~The man frowns in disappointment. "Ah, I suppose it would have been too much good fortune to hope that you would know of such a place." He nods slightly in thanks. "Well, I thank you for your time, good sir; it is most welcome on these streets."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2256 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2257 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2258 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2259 /* ~"Farewell."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2260 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2261 /* ~"An easy mistake, I'm sure, good sir. I thank you for your time, then."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2262 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2263 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2264 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2265 /* ~"Farewell."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2266 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #2267 /* ~The man blinks in surprise. "Eh... nay, nay." He smiles uneasily. "My aunt does not engage in those sort of pursuits."~ */
  IF ~~ THEN REPLY #2268 /* ~"That's not what *I* hear."~ */ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2269 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2270 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #2271 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #2272 /* ~"Farewell."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #2273 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #2274 /* ~The man seems confused. "I... will take my leave of you, good sir."~ */
  IF ~~ THEN REPLY #2275 /* ~"Say hello to your Aunt for me. Tell her I'll come back soon."~ */ EXIT
  IF ~~ THEN REPLY #2540 /* ~Let him go... this time.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2 1.3 2.2 27.1
  SAY #2541 /* ~The man frowns in disappointment. "Ah... well, I thank you for your time, sir; good day."~ */
  IF ~  !NearbyDialog("DAnnah")
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #2542 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
~ THEN REPLY #7614 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
~ THEN REPLY #7615 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",9)
~ THEN REPLY #7616 /* ~"Farewell."~ */ EXTERN ~DANNAH~ 63
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",10)
~ THEN REPLY #7617 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 5.1 6.1 7.2 9.1
  SAY #7618 /* ~You are about to turn away, when you suddenly have a feeling that something is amiss. Suspicious, you glance at the man again, just in time to see him withdrawing his hand from your purse... you can't be sure, but you think he might have taken something from you.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7619 /* ~Grab his hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7620 /* ~Grab his hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7621 /* ~"Hey! What do you think you're doing?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7622 /* ~Bait the man into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7624 /* ~Bait the man into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7625 /* ~Bait the man into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7626 /* ~Attack him.~ */ DO ~SetGlobal("Remove_Fleece","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7627 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 15.1 16.1
  SAY #7628 /* ~Your hand snaps out and wraps around his wrist in a crushing grip. The man gives a yelp, and desperately tries to yank it free.~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #7629 /* ~Quietly: "Stop struggling, or I'll keep your hand."~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #7630 /* ~"Stop struggling, dammit!"~ */ GOTO 14
  IF ~~ THEN REPLY #7631 /* ~Attack him.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7632 /* ~Let him go.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 15.0 16.0
  SAY #7633 /* ~You are not fast enough; he yanks his hand back before you can grab it. With a yelp, he bolts, running down the street.~ */
  IF ~~ THEN REPLY #7634 /* ~"All right then..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 15.2 16.2
  SAY #7635 /* ~The man jumps in surprise, then starts running.~ */
  IF ~~ THEN REPLY #7636 /* ~"All right then..."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY #7637 /* ~He continues to struggle in your grip. It's getting difficult to hold him.~ */
  IF ~~ THEN REPLY #7638 /* ~Attack him.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7639 /* ~Punch him with your free hand, get his attention.~ */ GOTO 23
  IF ~~ THEN REPLY #7640 /* ~Let him go.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.2 5.2 6.2 7.3 9.2
  SAY #7641 /* ~Maybe it is your own pick-pocketing skill that causes you to be on your guard, but as you turn to leave, you instinctively check your purse... and notice the man removing his hand from it. He doesn't seem to know you saw him, however.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7642 /* ~Grab his hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7643 /* ~Grab his hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7644 /* ~"Hey! What do you think you're doing?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7645 /* ~Bait the man into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7647 /* ~Bait the man into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Fleece_Technique","GLOBAL",0)
~ THEN REPLY #7648 /* ~Bait the man into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Fleece_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 16
  IF ~~ THEN REPLY #7649 /* ~Attack him. ~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7650 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.3 10.4 10.5 15.3 15.4 15.5
  SAY #7651 /* ~You engage the man in light conversation and secretly study his movements. This man seems to rely on two things: one, pretending to be a high class citizen out of his element to lower the target's guard, and two, distracting the mark by having the victim point out directions... when the victim turns to point at a street or landmark, the man skims the mark's purse and tucks items into his (conveniently long) sleeves. You make a mental note of his technique... just as he makes another grab for your purse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #7652 /* ~Grab his hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #7653 /* ~Grab his hand.~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7654 /* ~"Hey! What do you think you're doing?!"~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #7655 /* ~Attack him. ~ */ DO ~Enemy()
SetGlobal("Remove_Fleece","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7656 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.0
  SAY #7657 /* ~There must be *something* in your tone, because he stops struggling instantly. He seems to wilt beneath your gaze. ~ */
  IF ~~ THEN REPLY #7658 /* ~"Return what you stole from me. Now."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7659 /* ~Let him go, then leave.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #7660 /* ~He nods and begins to empty his pockets. He gives you a handful of coins, far more than he stole from you... the total must come to a few dozen copper commons.~ */
  IF ~~ THEN REPLY #7661 /* ~"No, you keep the rest... I only want what you stole from me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fleece_2","GLOBALLaw",1)
TakePartyGold(25)
~ GOTO 19
  IF ~~ THEN REPLY #7662 /* ~"We're even. Now, I never want to see you again. Understand?"~ */ GOTO 21
  IF ~~ THEN REPLY #7663 /* ~Bluff: "Give me everything else you have, and I won't kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_4","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7664 /* ~Truth: "Give me everything else you have, and I won't kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_5","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_4","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #7665 /* ~Nod your thanks, then attack him.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7666 /* ~Let him go, then leave.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7667 /* ~He looks at you in surprise, as if you are tricking him. Then he shrugs, and he puts the excess back into his pockets.~ */
  IF ~~ THEN REPLY #7668 /* ~"We're even. Now, I never want to see you again. Understand?"~ */ GOTO 21
  IF ~~ THEN REPLY #7669 /* ~Attack him.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7671 /* ~Let him go, then leave.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.3
  SAY #7670 /* ~"Eh..." He swallows. "Cutter, that's it. Nothing more."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #7672 /* ~"I meant *everything,* so give me *everything.*"~ */ GOTO 28
  IF ~~ THEN REPLY #7673 /* ~"Fine. I never want to see you again. Understand?"~ */ GOTO 21
  IF ~~ THEN REPLY #7674 /* ~"Then your life's run out. Prepare to die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7675 /* ~Let him go, then leave.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1 28.0
  SAY #7676 /* ~He nods. ~ */
  IF ~~ THEN REPLY #7677 /* ~Punch him, make sure he understands.~ */ GOTO 22
  IF ~~ THEN REPLY #7678 /* ~Attack him.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7679 /* ~Let him go, then leave.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 25.0
  SAY #7680 /* ~Your punch smashes into his jaw and sends him sprawling across the cobblestones. Cupping his jaw with his hand, he groans and staggers to his feet. It looks like you knocked some of his teeth out.~ */
  IF ~~ THEN REPLY #7681 /* ~"Now get out of here."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 14.1
  SAY #7682 /* ~The left hook snaps his neck to the side, and he yelps again. Slightly unsteady now, he turns around to look at you, holding the side of his face with his free hand. ~ */
  IF ~~ THEN REPLY #7683 /* ~"Have I got your attention?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7684 /* ~He nods, dumbly.~ */
  IF ~~ THEN REPLY #7685 /* ~"Give me back everything you stole from me."~ */ DO ~GivePartyGold(10000)
~ GOTO 18
  IF ~~ THEN REPLY #7686 /* ~"I don't care that you stole from me... as long as I never see you again. Ever. Understand?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #7687 /* ~He nods again.~ */
  IF ~~ THEN REPLY #7688 /* ~Punch him, make sure he understands.~ */ GOTO 22
  IF ~~ THEN REPLY #7689 /* ~Attack him.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7690 /* ~Let him go, then leave.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~  Global("Fleece","GLOBAL",1)
~ THEN BEGIN 26 // from:
  SAY #7691 /* ~You see the same man as before... he still looks lost and is mumbling as he looks at the buildings.~ */
  IF ~~ THEN REPLY #7692 /* ~"Greetings."~ */ GOTO 27
  IF ~~ THEN REPLY #7693 /* ~Pass him by.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #7694 /* ~He jumps as you speak to him; he looks nervous. "Eh... well met again, sir." He looks hopeful. "I don't suppose I could I prevail upon you to direct me?"~ */
  IF ~~ THEN REPLY #7695 /* ~"Direct you where again?"~ */ GOTO 2
  IF ~~ THEN REPLY #7696 /* ~"No, not today."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 20.0
  SAY #7697 /* ~"I mean it! I don't have anything more!"~ */
  IF ~~ THEN REPLY #7698 /* ~"Fine. I never want to see you again. Understand?"~ */ GOTO 21
  IF ~~ THEN REPLY #7699 /* ~"Then your life's run out. Prepare to die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fleece_6","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Fleece_5","GLOBALGood",-1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #7700 /* ~Let him go, then leave.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END
