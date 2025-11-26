// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLYLFN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLYLFN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #18505 /* ~This weaselly-looking fellow is skulking about the garbage like a tattered shadow. He feigns not to notice you, but you can feel him stealing glances at you from the corners of his eyes. Suddenly, he beckons to you: "Hssst. You. Hsssst! Ey!"~ */
  IF ~~ THEN REPLY #18506 /* ~Approach him.~ */ GOTO 58
  IF ~~ THEN REPLY #18507 /* ~Ignore the man, continue on your way.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #18508 /* ~This weaselly-looking fellow is skulking about the garbage like a tattered shadow. Seeing you and Morte, he beckons to you: "Hsssssst... ey! Th'skull. Where ye get the skull, ey? Me skull, it is! Give it backta me."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #18509 /* ~This weaselly-looking fellow is skulking about the garbage like a tattered shadow. Seeing Annah, his eyes widen; he sucks phlegm between his yellowed teeth, as if in anticipation of a meal. "Hsssst...ey! Jink-jink fer the slip, ey? Pretty, pretty." He licks his cracked, scabby lips.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 108
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #18510 /* ~"Eh. Whatta want?!"~ */
  IF ~~ THEN REPLY #18511 /* ~"I'm looking for some information..."~ */ GOTO 23
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 4 // from:
  SAY #18512 /* ~"Eh, now how's me skull?" He laughs, a wheezing, horrible sound.~ */
  IF ~~ THEN REPLY #18513 /* ~"I'm looking for some information..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18514 /* ~"Thief! Ye vulture, scabby gull, stealin', pickin' at other's things, takin' thems! Give me the skull! Mine! It's mine!"~ */
  IF ~~ THEN REPLY #18515 /* ~"This is not your skull."~ */ GOTO 6
  IF ~~ THEN REPLY #18516 /* ~Truth: "Go on, take the skull."~ */ GOTO 9
  IF ~~ THEN REPLY #18517 /* ~Attack him as soon as he's off-guard: "Go on, take the skull."~ */ GOTO 10
  IF ~~ THEN REPLY #18518 /* ~"What proof do you have that this is your skull?"~ */ GOTO 12
  IF ~~ THEN REPLY #18519 /* ~Truth: "If you can prove to me the skull's yours, then I'll give it to you. It's only fair."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18520 /* ~"I'll buy the skull from you. Fair?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18521 /* ~"Who are you?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18522 /* ~"Just forget you ever saw it. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18523 /* ~"Just forget you ever saw it. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0 13.0 16.6 19.2
  SAY #18524 /* ~"Ye callin' me a *liar,* ey? Skull's *mine!* Mine!" He mumbles for a moment, eyes rolling and darting. "Ye the thief, spittin' lies... I'll gut ye."~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18525 /* ~"Touch me, and you'll be regretting it the short few moments before you die."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18526 /* ~"I wouldn't try it."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18527 /* ~"Go on, try it. See what happens."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18528 /* ~"Just forget you ever saw it. Farewell."~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18529 /* ~"Just forget you ever saw it. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18530 /* ~"Touch me, and you'll be regretting it the short few moments before you die."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18531 /* ~"I wouldn't try it."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18532 /* ~"Go on, try it. See what happens."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18533 /* ~"Just forget you ever saw it. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18534 /* ~"Just forget you ever saw it. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #18546 /* ~The man glances at you, eyes narrow. He doesn't look too sure of his chances - he mumbles a bit, but doesn't do anything. "Me skull. Ye're a thief. A thief. Stealin'..."~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18547 /* ~"Get lost, mongrel."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18548 /* ~"Get lost, mongrel."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~~ THEN REPLY #18549 /* ~Truth: "Go on, then. Take the skull."~ */ GOTO 9
  IF ~~ THEN REPLY #18550 /* ~Attack him as soon as he's off-guard: "Go on, then. Take the skull."~ */ GOTO 10
  IF ~~ THEN REPLY #18551 /* ~"What proof do you have that this is your skull?"~ */ GOTO 12
  IF ~~ THEN REPLY #18552 /* ~Truth: "If you can prove to me the skull's yours, then I'll give it to you. It's only fair."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18553 /* ~"I'll buy the skull from you. Fair?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18554 /* ~"Who are you?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18555 /* ~"Just forget you ever saw it. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18556 /* ~"Just forget you ever saw it. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.5 6.6 6.7
  SAY #18557 /* ~The man glances at you, eyes narrow. Suddenly, he attacks!~ */
  IF ~~ THEN REPLY #18558 /* ~Meet his attack.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18559 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.2 12.1 13.1 19.0
  SAY #18560 /* ~He chuckles dryly and smiles. As he reaches for Morte, there is a *snap!* and the man's hand whips back. The man begins screaming: "Aiggghhhh! AIGHHH! I'll *kill* ye! *Kill* ye!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.3 12.2 13.2 19.1
  SAY #18561 /* ~He chuckles dryly and smiles. He reaches for Morte, but before you can move to attack him, there is a *snap!* and the man's hand whips back. The man begins screaming: "Aiggghhhh! AIGHHH! I'll *kill* ye! *Kill* ye!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18562 /* ~The man, biting his lip from the pain, glares at you. Suddenly, he attacks!~ */
  IF ~~ THEN REPLY #18563 /* ~Meet his attack.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18564 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3 5.4 7.4 7.5 13.3 13.4
  SAY #18565 /* ~He stares at you for a moment, like you're addled. "It's pikin' mine, talkin' proof, don't-know-nothin'! Gives me the skull back, nows!"~ */
  IF ~~ THEN REPLY #18566 /* ~"This is not your skull."~ */ GOTO 6
  IF ~~ THEN REPLY #18567 /* ~Truth: "Go on, then. Take the skull."~ */ GOTO 9
  IF ~~ THEN REPLY #18568 /* ~Attack him as soon as he's off-guard: "Go on, then. Take the skull."~ */ GOTO 10
  IF ~~ THEN REPLY #18569 /* ~"I'll buy the skull from you. Fair?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18570 /* ~"Who are you?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18571 /* ~"Just forget you ever saw it. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18572 /* ~"Just forget you ever saw it. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.6 7.7 12.4
  SAY #18573 /* ~"Skull's mine, mine, ey! Give it ta me, I'll forgit ye stole it." He mumbles, his narrowed eyes darting.~ */
  IF ~~ THEN REPLY #18574 /* ~"This is not your skull."~ */ GOTO 6
  IF ~~ THEN REPLY #18575 /* ~Truth: "Go on, take the skull."~ */ GOTO 9
  IF ~~ THEN REPLY #18576 /* ~Attack him as soon as he's off-guard: "Go on, take the skull."~ */ GOTO 10
  IF ~~ THEN REPLY #18577 /* ~"What proof do you have that this is your skull?"~ */ GOTO 12
  IF ~~ THEN REPLY #18578 /* ~Truth: "If you can prove to me the skull's yours, then I'll give it to you. It's only fair."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18579 /* ~"I'll buy the skull from you. Fair?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18580 /* ~"Just forget you ever saw it. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18581 /* ~"Just forget you ever saw it. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.5 7.6 12.3 13.5
  SAY #18582 /* ~His eyes narrow, his lips pulling away from crooked, stained teeth in a twisted sneer. "Skull's... skull a *lotta* jink. You ken pay? Means a lot ta me, that skull."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 191
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18583 /* ~The man hisses angrily at Morte: "Is that any way ta talk ta me, yer owner?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 192
END

IF ~~ THEN BEGIN 16 // from:
  SAY #18584 /* ~The man turns to you, teeth bared and angrier than ever. "Oh, it's gonna cost... gonna cost to settle the matter."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #18585 /* ~Give him one copper coin.~ */ DO ~TakePartyGold(1)
~ GOTO 17
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18586 /* ~Give him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18587 /* ~Give him fifty coppers.~ */ DO ~TakePartyGold(50)
~ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18588 /* ~Give him one hundred coppers.~ */ DO ~TakePartyGold(100)
~ GOTO 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18589 /* ~Give him five hundred coppers.~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  PartyGold(0)
~ THEN REPLY #18590 /* ~"I don't have any copper to give you."~ */ GOTO 19
  IF ~~ THEN REPLY #18591 /* ~"Forget the offer. This isn't your skull, and you're not getting it."~ */ GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #18592 /* ~"It's a start... now cough up the rest, an' I'll be on my way."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 193
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2 16.3 16.4
  SAY #18593 /* ~"Ey... that'll settle it between us." He sneers horribly. "Steal from me again, though..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 194
END

IF ~~ THEN BEGIN 19 // from: 16.5
  SAY #18594 /* ~"Then return me skull, thief! Give it back! Give it, give it to me!"~ */
  IF ~~ THEN REPLY #18595 /* ~Truth: "Very well. Take it."~ */ GOTO 9
  IF ~~ THEN REPLY #18596 /* ~Attack him as soon as he's off-guard: "Very well. Take it."~ */ GOTO 10
  IF ~~ THEN REPLY #18597 /* ~"No. It's not yours to take."~ */ GOTO 6
  IF ~~ THEN REPLY #18598 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #18599 /* ~"Never ya mind... there'll be trouble, ye ken be sure. Trouble!"~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18600 /* ~"Don't make the mistake of presuming I paid you out of fear or weakness... you could end up dead."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18601 /* ~"Don't make the mistake of presuming I paid you out of fear or weakness... you could end up dead."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18602 /* ~"Don't make the mistake of presuming I paid you out of fear or weakness... you could end up dead."~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18603 /* ~"Don't make the mistake of presuming I paid you out of fear or weakness... you could end up dead."~ */ GOTO 22
  IF ~~ THEN REPLY #18604 /* ~"I see. I had some questions..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18605 /* ~"Ah, 'trouble.' Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18606 /* ~"Ah, 'trouble.' Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18607 /* ~"Hmph." He narrows his eyes, but says nothing more. He looks uneasy.~ */
  IF ~~ THEN REPLY #18608 /* ~"I had some questions..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18609 /* ~"Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18610 /* ~"Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 20.3
  SAY #18611 /* ~"Pah! Rattle yer bone-box somewheres else. Away with ye. Dirty thief. Stealin' thief..." He starts to walk past you.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18612 /* ~Leave.~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18613 /* ~Leave.~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.0 4.0 20.4 21.0 58.0 59.0
  SAY #18614 /* ~He sneers. "Chant's not cheap." He rubs two yellowed fingers together. "Jink-jink?" His eyes, constantly rolling and darting as he speaks to you, seem to fall on your coin-purse frequently.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18615 /* ~Hand him a couple coins.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18616 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18617 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18618 /* ~"You'll get nothing. Spill the chant."~ */ GOTO 27
  IF ~~ THEN REPLY #18619 /* ~"Uh... why are your fingers yellow?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18620 /* ~"Forget I asked. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18621 /* ~"Forget I asked. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 27.1 30.0
  SAY #18622 /* ~He scoffs. "Chant's not *cheap.* You deaf? *Lissen* when I talks to you."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18623 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18624 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18625 /* ~"You'll get nothing. Spill the chant."~ */ GOTO 27
  IF ~~ THEN REPLY #18626 /* ~"Uh... why are your fingers yellow?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18627 /* ~"Forget I asked. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18628 /* ~"Forget I asked. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 27.2 30.1
  SAY #18629 /* ~He studies the coins for a moment, then squints at you. "I knows some. Whatcha' want ta know?"~ */
  IF ~~ THEN REPLY #18630 /* ~"Tell me about Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18631 /* ~"Tell me about Collectors."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18632 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18633 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18634 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18635 /* ~"Nothing, never mind. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18636 /* ~"Nothing, never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 24.1 27.3 30.2
  SAY #18637 /* ~"Talk. I lissen, mebbe I have some things to say..."~ */
  IF ~~ THEN REPLY #18638 /* ~"Tell me about Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18639 /* ~"Tell me about Collectors."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18640 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18641 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18642 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18643 /* ~"Nothing, never mind. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18644 /* ~"Nothing, never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3 24.2 30.3
  SAY #18645 /* ~"I'll spill nothin'." He sneers at you, then points at himself. "I know the chant, you *don't.* You got jink, you know the chant, too - see?"~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18646 /* ~Grab him, shake him up a bit.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_3","GLOBALGood",-1)
~ GOTO 54
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18647 /* ~Hand him a couple coins.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18648 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18649 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18650 /* ~"Uh... why are your fingers yellow?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18651 /* ~"Forget I asked, then. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18652 /* ~"Forget I asked, then. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4 24.3 27.4
  SAY #18653 /* ~"Eh? Come again?" His eyes narrow to slits; he peers at you sideways though them.~ */
  IF ~~ THEN REPLY #18654 /* ~"On second thought, I don't want to know. Never mind."~ */ GOTO 30
  IF ~~ THEN REPLY #18655 /* ~"Your fingers: they're yellow. Why?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18656 /* ~"Never mind. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18657 /* ~"Never mind. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #18658 /* ~"A little somethin' I picked up from a corpse... a lil' corpse-rot, ta hear tells."~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.0
  SAY #18659 /* ~"Don't mind it... jink for chant, 'member? Jink-jink?" He holds out his palms, thrusting them towards you.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18660 /* ~Hand him a couple coins.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18661 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18662 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18663 /* ~"You'll get nothing. Spill the chant."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18664 /* ~"Forget I asked. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18665 /* ~"Forget I asked. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.0 26.0 33.2 34.1 35.1 39.0 40.0
  SAY #18666 /* ~"This pikin' city, ye sod... the lil' ring, lil' ring, city in a ring. Center of the big rings."~ */
  IF ~~ THEN REPLY #18667 /* ~"Tell me more about the city."~ */ GOTO 32
  IF ~~ THEN REPLY #18668 /* ~"What about this area?"~ */ GOTO 32
  IF ~~ THEN REPLY #18669 /* ~"Tell me about Collectors."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18670 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18671 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18672 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18673 /* ~"That's all I wished to know. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18674 /* ~"That's all I wished to know. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #18675 /* ~"Wastin' me time an' yer jink, ye are. Throwin' it aways... find a tout fer such questions."~ */
  IF ~~ THEN REPLY #18676 /* ~"Tell me about Collectors."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18677 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18678 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18679 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18680 /* ~"I'll find one, then. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18681 /* ~"I'll find one, then. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.1 26.1 31.2 32.0 39.1 40.1
  SAY #18682 /* ~"Aye?" Looks confused. "What about 'em?"~ */
  IF ~~ THEN REPLY #18683 /* ~"What do they do?"~ */ GOTO 34
  IF ~~ THEN REPLY #18684 /* ~"Are you one?"~ */ GOTO 35
  IF ~~ THEN REPLY #18685 /* ~"Tell me about Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18686 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18687 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18688 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18689 /* ~"That's all I wished to know. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18690 /* ~"That's all I wished to know. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #18691 /* ~He looks at you like you're addled. "Scrape up the deaders. Drop 'em off at the Dusties' place, get some jink fer the journey. So?"~ */
  IF ~~ THEN REPLY #18692 /* ~"Are you one?"~ */ GOTO 35
  IF ~~ THEN REPLY #18693 /* ~"Tell me about Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18694 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18695 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18696 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18697 /* ~"That's all I wished to know. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18698 /* ~"That's all I wished to know. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #18699 /* ~"Mebbe. On occasion. What's that matter?"~ */
  IF ~~ THEN REPLY #18700 /* ~"What do they do?"~ */ GOTO 34
  IF ~~ THEN REPLY #18701 /* ~"Tell me about Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18702 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18703 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18704 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18705 /* ~"It doesn't. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18706 /* ~"It doesn't. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 26.2 31.3 32.1 33.3 34.2 35.2 39.2 40.2
  SAY #18707 /* ~He narrows his eyes suddenly. "Eh..." He cocks his head, studying you. "Pharod... knowin' about him n' jawbonin' about him... *not* cheap. Get ye put in the dead-book, no, no, *not* cheap."~ */
  IF ~~ THEN REPLY #18708 /* ~"Do you know where he is?"~ */ GOTO 37
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18709 /* ~Offer him five more coins.~ */ GOTO 38
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18710 /* ~"Forget I asked, then. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18711 /* ~"Forget I asked, then. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18712 /* ~He nods, then looks around. "That chant... *not* cheap."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18713 /* ~Offer him five more coins.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #18714 /* ~He looks around, then leans close to hiss into your ear: "Go to the east part of the square an' wait - I'll meet ye there in an hour's time. Don't wanna be seen with ye any longer. No more questions now... get-get!" He makes to move past you.~ */
  IF ~~ THEN REPLY #18715 /* ~"Wait-"~ */ GOTO 62
  IF ~~ THEN REPLY #18716 /* ~Let him go.~ */ GOTO 62
END

IF ~~ THEN BEGIN 39 // from: 25.4 26.4 31.5 32.3 33.5 34.4 35.4 40.3
  SAY #18717 /* ~"Filthy, sore-ridden *witch!*" He spits, and makes a half-circle over his heart. "Pox be on that mongrel crone! May a *hunderd-hunderd* diseases rot her innards. Ya want ta spit at her, she's got her ratnest in a hut off a' the Square, along the boards runnin' across the trash. Seek her if ye want, but don't be talkin' ta me again afters!"~ */
  IF ~~ THEN REPLY #18718 /* ~"Tell me about Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18719 /* ~"Tell me about Collectors."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18720 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18721 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18722 /* ~"That's all I wished to know. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18723 /* ~"That's all I wished to know. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 25.3 26.3 31.4 32.2 33.4 34.3 35.3 39.3
  SAY #18724 /* ~"Eh... maybe... maybe... no. Haven't seen it, haven't seen any books." ~ */
  IF ~~ THEN REPLY #18725 /* ~"Tell me about Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18726 /* ~"Tell me about Collectors."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18727 /* ~"I'm looking for a man named Pharod."~ */ GOTO 36
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18728 /* ~"Tell me about Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18729 /* ~"That's all I wished to know. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18730 /* ~"That's all I wished to know. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.7 6.3 6.8 7.0 7.8 12.5 13.6 20.5 21.1 22.0 23.5 24.4 25.5 26.5 27.5 28.2 30.4 31.6 32.4 33.6 34.5 35.5 36.2 39.4 40.4 58.1 59.1
  SAY #18731 /* ~You suddenly notice that Yellow-Fingers is standing too close to you and that his hand darts out, as if trying to pluck your purse.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18732 /* ~Grab his hand.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18733 /* ~Grab his hand.~ */ GOTO 42
  IF ~  Global("Yellow_PP","GLOBAL",0)
~ THEN REPLY #18734 /* ~Observe the attempt carefully.~ */ DO ~GiveExperience(Protagonist,200)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
SetGlobal("Yellow_PP","GLOBAL",1)
TakePartyGold(5)
~ GOTO 57
  IF ~~ THEN REPLY #18735 /* ~"What are you doing?"~ */ GOTO 50
  IF ~~ THEN REPLY #18736 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1 57.1
  SAY #18737 /* ~He leaps backwards and begins to flee!~ */
  IF ~~ THEN REPLY #18738 /* ~"Damn..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 57.0
  SAY #18739 /* ~You grab his hand. Yellow-Fingers looks startled. "Ey! Ey! What ye doin'! Let go!" He struggles, but can't break your grip.~ */
  IF ~~ THEN REPLY #18740 /* ~Truth: "You were robbing me. I'm going to kill you."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18741 /* ~Bluff: "You were robbing me. I'm going to kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 50.3
  SAY #18742 /* ~"Ey! Ey! Now 'old on! Mistake, mistake! We ken settle this without bringin' the dead-book inta it!"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18743 /* ~"I'll spare your life for some information."~ */ GOTO 45
  IF ~~ THEN REPLY #18744 /* ~"Give me everything you've got and I'll let you live."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18745 /* ~"Just get out of here, and don't ever let me see you again."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #18746 /* ~He nods vigorously. "Yes, yes, ask! Questions, go!"~ */
  IF ~~ THEN REPLY #18747 /* ~"Tell me where the man named Pharod is."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #18748 /* ~"Ey..." He looks uncomfortable. "That's dangerous chant, Pharod is. A little jink goes a long way... ey?"~ */
  IF ~~ THEN REPLY #18749 /* ~"You seem to forget your circumstances. Tell me... now."~ */ GOTO 47
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18750 /* ~Give him three coppers.~ */ DO ~TakePartyGold(3)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #18751 /* ~"Eh... well, I know his case ain't here, up top... but it's close, close-by, just hid. He's here an' there, always movin' about... must have a somewheres he comes and goes through. Gots to be a body 'round here who knows where the hole is... but it ain't me."~ */
  IF ~~ THEN REPLY #18752 /* ~Truth: "I think you're lying. Spill the chant, or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_1","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #18753 /* ~Bluff: "I think you're lying. Spill the chant, or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_2","GLOBALLaw",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0 47.1
  SAY #18754 /* ~"Ey..." He licks his lips and looks around. "Now, now... ey... there's a gate, ey? Look toward the northwest corner of the Square... I'm bettin' that's where that ol' serpent is holed up. Don't know how ta get past the gate, though."~ */
  IF ~~ THEN REPLY #18755 /* ~"Now give me everything you've got."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18756 /* ~"Get out of here... and never let me see you again."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 48.0
  SAY #18757 /* ~He nods. Fear and loathing in his eyes, Yellow-Fingers passes you a few handfuls of copper.~ */
  IF ~~ THEN REPLY #18758 /* ~"Get out of here... and never let me see you again."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.3 57.2
  SAY #18759 /* ~He frowns, and squints at you like you're addled. "Ey? What?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18760 /* ~"Why are you robbing me? I'll give you what you need."~ */ EXTERN ~DMORTE~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18761 /* ~"Why are you robbing me? I'll give you what you need."~ */ GOTO 51
  IF ~~ THEN REPLY #18762 /* ~Truth: "You were robbing me. I'm going to kill you."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18763 /* ~Bluff: "You were robbing me. I'm going to kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #18765 /* ~"You were robbing me. Leave, and don't let me see you again."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #18764 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #18766 /* ~Yellow-fingers looks at you incredulously. "I could use a lotta jink. I'm nearly starving, so I am... life on the streets of the Hive is none too pretty."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18767 /* ~Give him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18768 /* ~Give him ten coppers.~ */ DO ~TakePartyGold(10)
~ GOTO 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18769 /* ~Give him fifty coppers.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18770 /* ~Give him one hundred coppers.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #18771 /* ~"I take it back. Leave, and don't let me see you again."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #18772 /* ~Yellow-fingers looks at you incredulously. "I could use a lotta jink. I'm nearly starving, so I am... life on the streets of the Hive is none too pretty."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 196
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 51.3
  SAY #18773 /* ~"Ey... thank ye kindly. Generous of you. May the Lady's shadow pass ye by."~ */
  IF ~~ THEN REPLY #18774 /* ~"Just don't try and rob me again. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 27.0
  SAY #18775 /* ~Your hands dart out and grab his soiled robes - he's thin, light enough for you to lift him off the ground a ways and shake him. "Gaaah! I'll gives the chant, I will! Just let me down!"~ */
  IF ~~ THEN REPLY #18776 /* ~Toss him down in a heap.~ */ GOTO 55
  IF ~~ THEN REPLY #18777 /* ~Set him down, but don't let go.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #18778 /* ~You send him hurtling backwards, but as he crashes into the ground he comes out of the tumble into a blind sprint!~ */
  IF ~~ THEN REPLY #18779 /* ~"Damn..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #18780 /* ~As you're lowering Yellow-Fingers, he gives you a swift kick to the shin; you drop him, and in the half-second it takes you to recover he's already off and running.~ */
  IF ~~ THEN REPLY #18781 /* ~"Damn..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 41.2
  SAY #18782 /* ~You watch closely as Yellow-Fingers' deft fingers slide into your coin purse... and out again, probably with several coins in their grasp. Despite the quickness of it all, there was a certain familiarity to it, and you're certain you could do the same with a bit of practice.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18783 /* ~Grab his hand.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18784 /* ~Grab his hand.~ */ GOTO 42
  IF ~~ THEN REPLY #18785 /* ~"What are you doing?"~ */ GOTO 50
  IF ~~ THEN REPLY #18786 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66861 /* ~Ignore it and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.0
  SAY #18787 /* ~"I ken see ye were lookin' at me... whatta want? Eh?"~ */
  IF ~~ THEN REPLY #18788 /* ~"I had some questions..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18789 /* ~"Nothing. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18790 /* ~"Nothing. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #18791 /* ~"Ey, now. Simmer down, tail slip." He turns to you. "I ken see ye were lookin' at me... whatta want? Eh?"~ */
  IF ~~ THEN REPLY #18792 /* ~"I had some questions..."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18793 /* ~"Nothing. Farewell."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18794 /* ~"Nothing. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #18795 /* ~"Ey, now. Simmer down, tail slip." He turns to you, and suddenly notices Morte. "Ey! Th'skull. Where ye get the skull, ey? Me skull, it is! Give it backta me."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF ~~ THEN BEGIN 61 // from:
  SAY #54287 /* ~Yellow-Fingers scampers off, mumbling sourly all the while.~ */
  IF ~~ THEN REPLY #54288 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 38.0 38.1
  SAY #54786 /* ~As you watch Yellow-Fingers hurriedly scamper off, you're struck with the feeling that you won't be seeing him again anytime soon.~ */
  IF ~~ THEN REPLY #54787 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END
