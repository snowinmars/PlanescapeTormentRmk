// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUCHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DUCHO~

IF ~  True()
True()
~ THEN BEGIN 0 // from:
  SAY #49968 /* ~This beautiful, seductively attired prostitute is a far cry from those you saw in the Hive. She smells of expensive perfumes, and the lines of her face are subtly accentuated with lightly painted lines of soft, warm colors. She smiles as you approach her and curtseys gracefully. "Greetings, good sir. Seeking to quench a lust Mistress Grace's Brothel cannot satisfy, I hope?"~ */
  IF ~  Global("AR0605_Visited","GLOBAL",0)
~ THEN REPLY #61436 /* ~"I don't know about any 'Brothel,' but I'm up for whatever you're offering."~ */ GOTO 4
  IF ~  Global("AR0605_Visited","GLOBAL",1)
~ THEN REPLY #61437 /* ~"Yes, I am."~ */ GOTO 4
  IF ~  Global("Morte_UCHO","GLOBAL",1)
~ THEN REPLY #61438 /* ~"I'm not, but I think Morte here might be..."~ */ GOTO 9
  IF ~~ THEN REPLY #61439 /* ~"No... but I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #61440 /* ~"No thanks. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY #49972 /* ~She puts her finger to your lips to hush you. "There is but a single question I answer, good sir, and the answer is this: 'Yes, for only five hundred coins.'"~ */
  IF ~~ THEN REPLY #49973 /* ~"Five hundred? That's quite a bit..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61441 /* ~"Sounds good. Yes, let's go."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61442 /* ~"Sounds good. Yes, let's go."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61443 /* ~"Sounds good. Yes, let's go."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61444 /* ~"I don't have enough, actually."~ */ GOTO 7
  IF ~~ THEN REPLY #61445 /* ~"No thanks. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.5 3.7 4.5
  SAY #49975 /* ~"A pity. Please return should you have a change of heart, good sir - I'll be eagerly awaiting you. Farewell."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #49976 /* ~Leave.~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61446 /* ~Leave.~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61447 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #49977 /* ~She smiles. "Oh, I assure you, good sir..." She leans in close, to whisper warmly in your ear: "'tis worth every last copper."~ */
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #49978 /* ~"Sounds good. Yes, let's go."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61448 /* ~"Sounds good. Yes, let's go."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61449 /* ~"Sounds good. Yes, let's go."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61450 /* ~"I don't have enough, actually."~ */ GOTO 7
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61451 /* ~"I doubt it. Farewell."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61452 /* ~"I doubt it. Farewell."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61453 /* ~"I doubt it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #61454 /* ~"No thanks. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1
  SAY #61401 /* ~"'Tis but five hundred coins, good sir, and I shall pleasure you in a thousand ways..." She tilts her head coyly and gives you a mischievous smile. "Will you come with me, then?"~ */
  IF ~~ THEN REPLY #61459 /* ~"Five hundred? That's quite a bit..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61455 /* ~"I'm all for that. Let's go."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61456 /* ~"I'm all for that. Let's go."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61457 /* ~"I'm all for that. Let's go."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61458 /* ~"I don't have enough, actually."~ */ GOTO 7
  IF ~~ THEN REPLY #61460 /* ~"No thanks. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #61402 /* ~The courtesan smirks, then curtseys. "Perhaps another time, good sir, when you are not in the company of your... friend. Farewell."~ */
  IF ~~ THEN REPLY #61461 /* ~"Damn it, Annah... fine. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #61462 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61403 /* ~The courtesan draws back, fear in her eyes. Once she's out of Annah's reach, she draws herself together and sneers at the tiefling. "This isn't some Hive gutter you've got the run of, half-breed... another step towards me and I'll have a brace of Harmonium chasing your wagging tail out of the Ward!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 286
END

IF ~~ THEN BEGIN 7 // from: 1.4 3.3 4.4
  SAY #61404 /* ~"A pity. Please return should your situation... change, good sir - I'll be eagerly awaiting you. Farewell."~ */
  IF ~~ THEN REPLY #61463 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 3.0 4.1
  SAY #61405 /* ~"Well, then... I most certainly hope you enjoyed yourself, good sir."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61464 /* ~"Don't worry; I most certainly did. Farewell."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61465 /* ~"Don't worry; I most certainly did. Farewell."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61466 /* ~"Don't worry; I most certainly did. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY #61406 /* ~The young woman examines Morte critically for a time, then nods. "Yes... yes, I think I could do that. Well, I could certainly come up with... something. All for the same fee, of course - a petty five hundred commons."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61467 /* ~"Of course. Here you are..."~ */ DO ~TakePartyGold(500)
IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
~ EXTERN ~DMORTE~ 601
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61468 /* ~"Sorry, Morte; not enough funds. Let's go."~ */ EXIT
  IF ~~ THEN REPLY #61469 /* ~"Actually, Morte - we've to get going. Farewell, miss."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61407 /* ~The courtesan finally returns, Morte bobbing dizzily along beside her. He's coated with a glossy sheen - as if he'd been waxed and buffed - and has a red smudge on his crown in the shape of a pair of lips. "Your... mimir? ...seemed to enjoy himself, good sir."~ */
  IF ~~ THEN REPLY #61470 /* ~"Morte?"~ */ EXTERN ~DMORTE~ 602
  IF ~~ THEN REPLY #61471 /* ~"Good. Farewell."~ */ EXIT
END
