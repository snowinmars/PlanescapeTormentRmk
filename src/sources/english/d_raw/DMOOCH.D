// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOOCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOOCH~

IF ~  Global("Mochai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3078 /* ~"I'm going, I'm going! You don't have to pester me!"~ */
  IF ~~ THEN REPLY #10577 /* ~"Just making sure. Get moving."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,INT)
~ THEN BEGIN 1 // from:
  SAY #10578 /* ~You see someone dressed as a female Dustman with a half-empty glass in her right hand. As you near her, she calls out to you. "Um, you. Over here..." You notice that there's something wrong about her... and your exposure to the Dustmen leads you to believe that she's just too lively to be a real member of the faction.~ */
  IF ~~ THEN REPLY #10579 /* ~Approach her.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10580 /* ~Leave her alone.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10581 /* ~Leave her alone.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #10582 /* ~You see a female Dustman. As you near her, she calls out to you. "Um, you. Over here..."~ */
  IF ~~ THEN REPLY #10583 /* ~Approach her.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10584 /* ~Leave her alone.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10585 /* ~Leave her alone.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Mooch","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #10586 /* ~"Umm... what d'you want?"~ */
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10587 /* ~"Barkis says it's time for you to settle your tab. Pay up."~ */ GOTO 9
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10588 /* ~"You're not really a Dustman, are you?"~ */ GOTO 8
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10589 /* ~"I want more money to keep your Dustman charade a secret."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10590 /* ~"I want even more money to keep your Dustman charade a secret."~ */ GOTO 21
  IF ~~ THEN REPLY #10591 /* ~"I want the answers to some questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10592 /* ~"Nothing."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #10593 /* ~"Too good to hang out with, um, the likes of a Dustman, aye? Buy me a drink and I'll leave you 'lone."~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10594 /* ~"Very well. Here are five coins. Now leave me alone."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10595 /* ~"You're not really a Dustman, are you?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10596 /* ~"Barkis says it's time for you to settle your tab. Pay up."~ */ GOTO 9
  IF ~~ THEN REPLY #10597 /* ~"I don't think so. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0
  SAY #10598 /* ~"Hey, cutter... buy a lady a drink?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10599 /* ~"You're not really a Dustman, are you?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10600 /* ~"Barkis says it's time for you to settle your tab. Pay up."~ */ GOTO 9
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Very well. Here are five coins."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10601 /* ~"Who are you?"~ */ GOTO 24
  IF ~~ THEN REPLY #10602 /* ~"What is this place?"~ */ GOTO 25
  IF ~~ THEN REPLY #10603 /* ~"Tell me about the other patrons here."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10604 /* ~"Who's the burning corpse?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
Global("Mochai","GLOBAL",1)
CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10605 /* ~Poison her drink with the embalming fluid.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10606 /* ~Poison her drink with the embalming fluid.~ */ GOTO 15
  IF ~~ THEN REPLY #10607 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.2 12.0
  SAY #10608 /* ~"My thanks, cutter... may you find the True Death." She pockets your money and looks nervously off toward the front of the bar.~ */
  IF ~~ THEN REPLY #10609 /* ~"Give me some answers for my jink now."~ */ GOTO 7
  IF ~~ THEN REPLY #10610 /* ~"Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.4 6.0 9.2 10.1 12.1 13.3 13.4 14.3 14.4 15.2 18.0 19.0 20.1 21.0 24.0 25.0 26.0 27.0
  SAY #10611 /* ~"What, um, do you want to know?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10612 /* ~"You're not really a Dustman, are you?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10613 /* ~"Barkis says it's time for you to settle your tab. Pay up."~ */ GOTO 9
  IF ~~ THEN REPLY #10614 /* ~"Who are you?"~ */ GOTO 24
  IF ~~ THEN REPLY #10615 /* ~"What is this place?"~ */ GOTO 25
  IF ~~ THEN REPLY #10616 /* ~"Tell me about the other patrons here."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10617 /* ~"Who's the burning corpse?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10618 /* ~Poison her drink with the embalming fluid.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10619 /* ~Poison her drink with the embalming fluid.~ */ GOTO 15
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10620 /* ~"I want more money to keep your Dustman charade a secret."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10621 /* ~"I want even more money to keep your Dustman charade a secret."~ */ GOTO 21
  IF ~~ THEN REPLY #10622 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 4.1 5.0 7.0
  SAY #10623 /* ~She looks around nervously, and seems to sober right up. "Why, um, why do you say that?"~ */
  IF ~~ THEN REPLY #10624 /* ~"Because you don't act like a Dustie, and you're not offering contracts. In fact, you're taking money in instead of giving it out for that corpse labor they do at the Mortuary."~ */ GOTO 10
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10625 /* ~"Because I'm a Dustman myself."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.2 5.1 7.1
  SAY #10626 /* ~She jumps a little, and her nervous tension becomes full-fledged anxiety. "What are you going to do?"~ */
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10627 /* ~"Ask you to go pay up. Now."~ */ GOTO 11
  IF ~  GlobalGT("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10628 /* ~"Ask you to go pay up. Now."~ */ GOTO 22
  IF ~~ THEN REPLY #10629 /* ~"Nothing, yet. Answer some questions for me."~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #10630 /* ~She stifles a squeak of terror, and hastens to explain, "No, no, no no no. I'm not a Dustman. I just found these robes in the street and I didn't have enough money to get good clothes and I, uh, heard there was a Dustman thief around, but you could probably find him somewhere else in the southwest part of the Hive. I saw him, but I hid from him. Please don't hurt me."~ */
  IF ~~ THEN REPLY #10631 /* ~"Give me some money and I'll let you go."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_One","GLOBALGood",-1)
IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(50)
~ GOTO 19
  IF ~~ THEN REPLY #10632 /* ~"I'm not planning on it. You ought to know that you're not pulling it off too well. Now answer some questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10633 /* ~"I won't. Yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #10634 /* ~"Umm... I can't afford it. Can you spot me just ten percent? I'll, um, give it to him and he knows I'll pay the rest."~ */
  IF ~~ THEN REPLY #10635 /* ~"How much do you need?"~ */ GOTO 13
  IF ~~ THEN REPLY #10636 /* ~"I don't think so. I'm not a charity. Can you think of another way to pay him?"~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Mochai","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #10637 /* ~"Spare a few coins for a drink, cutter?"~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Very well. Here are five coins."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10639 /* ~"No. Answer some questions for me, instead."~ */ GOTO 7
  IF ~~ THEN REPLY #10640 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 22.0
  SAY #10641 /* ~"Um, I think I need about a hundred coins to get started on that debt."~ */
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10642 /* ~Poison her drink with the embalming fluid.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10643 /* ~Poison her drink with the embalming fluid.~ */ GOTO 15
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10644 /* ~"I'll lend you the money. Here. Take it and pay up. Now."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Lie: "I'd lend you the money, but I don't have it. Answer some other questions, will you?"~ */ GOTO 7
  IF ~  PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Truth: "I'd lend you the money, but I don't have it. Answer some other questions, will you?"~ */ GOTO 7
  IF ~~ THEN REPLY #10652 /* ~"I'll be back with some money."~ */ EXIT
  IF ~~ THEN REPLY #10645 /* ~"Can you think of another solution?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.6 22.1
  SAY #10646 /* ~"Another way to pay? Ha." She smiles sadly. "You could always, um, kill me."~ */
  IF ~  PartyHasItem("Embalm")
~ THEN REPLY #10647 /* ~Distract her: "I could, but... what's that over there?"~ */ GOTO 15
  IF ~~ THEN REPLY #10648 /* ~"I could, but I'd rather find another solution."~ */ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10649 /* ~"I'll just lend you that money. Now go pay up."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  False()
PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Lie: "I'd lend you the money, but I don't have it. Answer some other questions, will you?"~ */ GOTO 7
  IF ~  False()
PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Truth: "I'd lend you the money, but I don't have it. Answer some other questions, will you?"~ */ GOTO 7
  IF ~  False()
~ THEN REPLY #10652 /* ~"I'll be back with some money."~ */ EXIT
  IF ~~ THEN REPLY #10653 /* ~"I'll be back later."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.7 5.8 7.6 7.7 13.0 13.1 14.0
  SAY #10654 /* ~"Over where?" She whips her head around to stare where you're pointing, and pauses for a moment as she focuses her drink-addled eyes. "I don't see anything."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Poison her drink with the embalming fluid.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Poison her drink with the embalming fluid.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #10656 /* ~"Never mind. Answer some questions for me, will you?"~ */ GOTO 7
  IF ~~ THEN REPLY #10657 /* ~"It must have been nothing. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10658 /* ~You swiftly pour the embalming fluid into her half-empty glass in the moment she's looking away. The stench rises immediately, but she doesn't seem to notice. She turns back around and downs her poisoned beverage in one swallow. "Um, what was it? What was I s'posed to see?" Suddenly, she begins choking.~ */
  IF ~~ THEN REPLY #10659 /* ~"Your death. Farewell, Mochai."~ */ DO ~Kill(Myself)
DestroyPartyItem("Embalm",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #10660 /* ~"Um... what are you doing?" She sees you readying your bottle of embalming fluid, and watches you suspiciously.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10661 /* ~"Just putting my bottle on the table. I brought my own drink."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10662 /* ~"Just putting my bottle on the table. I brought my own drink."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10663 /* ~"Just putting my bottle on the table. I brought my own drink."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10664 /* ~"Relax the peery attitude. I'm digging through my stuff and reminding myself what I'm carrying."~ */ GOTO 18
  IF ~~ THEN REPLY #10665 /* ~"Nothing that concerns you."~ */ GOTO 18
  IF ~~ THEN REPLY #10666 /* ~"Nothing. I have an engagement elsewhere. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1 17.0 17.1 17.2 17.3 17.4
  SAY #10667 /* ~She looks at you for a moment longer, swaying where she stands, and then says, "Um, all right. Did you want something else?"~ */
  IF ~~ THEN REPLY #10668 /* ~"Yes. Some answers."~ */ GOTO 7
  IF ~~ THEN REPLY #10669 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.0
  SAY #10670 /* ~"I can give you fifty coins. Please... don't tell anyone."~ */
  IF ~~ THEN REPLY #10671 /* ~"We'll see. Now answer some other questions for me."~ */ GOTO 7
  IF ~~ THEN REPLY #10672 /* ~"Fifty? I want more."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(25)
~ GOTO 20
  IF ~~ THEN REPLY #10673 /* ~"We'll see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2 7.8 19.1
  SAY #10674 /* ~"Um, you want more? I can't, um, I can't afford as much as last time. I can, um, give you twenty-five coins, though."~ */
  IF ~~ THEN REPLY #10675 /* ~"I want more."~ */ GOTO 21
  IF ~~ THEN REPLY #10676 /* ~"This will do... for now. Answer some more questions in the meantime."~ */ GOTO 7
  IF ~~ THEN REPLY #10677 /* ~"This will have to do... for now. I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.3 7.9 20.0
  SAY #10678 /* ~"Well, um, that's too bad. Because, um, I can't give you any more. I just don't have, um, any money."~ */
  IF ~~ THEN REPLY #10679 /* ~"That's too bad. Answer some questions for me."~ */ GOTO 7
  IF ~~ THEN REPLY #10680 /* ~"That's too bad. We'll see what comes of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY #10681 /* ~She looks at you bitterly. "I can't. Some, um, berk took all my money. I'd need a loan or, um, something to pay him off now."~ */
  IF ~~ THEN REPLY #10682 /* ~"How much do you need?"~ */ GOTO 13
  IF ~~ THEN REPLY #10683 /* ~"I don't think so. I'm not a charity. Can you think of another way to pay him?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 13.2 14.2
  SAY #10684 /* ~She pockets your jink, glances briefly toward the door, almost as if she's weighing her chances of dashing out, sighs heavily as she realizes there's no chance, and begins to walk glumly toward the bar. "Um, my thanks, I suppose."~ */
  IF ~~ THEN REPLY #10685 /* ~"Don't mention it. And don't even think about heading for the door until you've paid up."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3 7.2
  SAY #10686 /* ~"Me? I'm Mochai. I just like to, um, drink here, and, umm..." She loses her train of thought momentarily. "I'm just a person, you know?"~ */
  IF ~~ THEN REPLY #10687 /* ~"I see. Answer something else for me, then."~ */ GOTO 7
  IF ~~ THEN REPLY #10688 /* ~"I see. Farewell, then, Mochai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 7.3
  SAY #10689 /* ~"Smold'rin' Corpse Tavern. Can't ya read? You, um, more bubbed than I am?"~ */
  IF ~~ THEN REPLY #10690 /* ~"Forget it. Tell me something else."~ */ GOTO 7
  IF ~~ THEN REPLY #10691 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.5 7.4
  SAY #10692 /* ~"Dunno. They're just, um, people. I don't deal much with people. 'Less they're buying me a drink..." She looks at you hopefully.~ */
  IF ~~ THEN REPLY #10693 /* ~"I see. Give me some other answers."~ */ GOTO 7
  IF ~~ THEN REPLY #10694 /* ~"I can see why. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.6 7.5
  SAY #10695 /* ~"He's, um, not a corpse. He's, um, some crazy wizard. Ask around. They'll tell you the story."~ */
  IF ~~ THEN REPLY #10696 /* ~"Very well. Then answer some other questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10697 /* ~"Farewell."~ */ EXIT
END
