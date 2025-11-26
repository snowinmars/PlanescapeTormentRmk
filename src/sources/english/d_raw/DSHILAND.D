// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHILAND.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHILAND~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45742 /* ~"Blast! I almost had it that time. Don't you know it's dangerous to interrupt spell casters while they are evoking a spell? Luckily for you I was only practicing. Well, what is it you want?"~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45743 /* ~"I wish to learn more about this box."~ */ GOTO 5
  IF ~~ THEN REPLY #45744 /* ~"My apologies for disturbing you. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 3 4 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45745 /* ~"And yet another interruption! A person cannot even find privacy within one's own home. Please leave, before I summon the guards... or better yet, I'll try out a new spell I've been toying with." ~ */
  IF ~  Global("FedEx","Global",3)
PartyHasItem("DBox")
~ THEN REPLY #45748 /* ~"I wish to learn more about this box."~ */ GOTO 5
  IF ~~ THEN REPLY #45749 /* ~"My apologies for disturbing you. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",3)
~ THEN BEGIN 2 // from:
  SAY #45750 /* ~"You have already taken enough of my time. Please leave." ~ */
  IF ~~ THEN REPLY #45751 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 16 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45752 /* ~"There's a rumor going around the Hive that you killed the fiend that was trapped in Moridor's Box. I don't suppose you managed to gather and save any pieces of it?"~ */
  IF ~~ THEN REPLY #45753 /* ~"What kind of person are you that would collect such things?"~ */ GOTO 15
  IF ~~ THEN REPLY #45754 /* ~"Uh... no, I didn't." ~ */ GOTO 15
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 4 // from:
  SAY #45755 /* ~"Rumor has it that you managed to destroy Moridor's Box. I guess congratulations are in order. Still, it's too bad I couldn't decipher all the spells that were used to contain the fiend."~ */
  IF ~~ THEN REPLY #45756 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.0
  SAY #45757 /* ~You hold out Moridor's Box for Shilandra to examine. "Ah yes! I remember this box well; I acquired it some time ago. What do you wish to know about it?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45758 /* ~"Who did you get this from?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45759 /* ~"You seem to know something about magic. Can you tell me what spells have been put on this box?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45760 /* ~"Do you know the history behind this box?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 6 // from: 7.1 9.0 10.0 11.1 12.0 13.0
  SAY #45761 /* ~"What else do you wish to know?"~ */
  IF ~  Global("Q1","Global",0)
~ THEN REPLY #45762 /* ~"Where did you get this from?"~ */ DO ~SetGlobal("Q1","Global",1)
~ GOTO 7
  IF ~  Global("Q2","Global",0)
~ THEN REPLY #45763 /* ~"You seem to know something about magic. Can you tell me what spells have been put on this box?"~ */ DO ~SetGlobal("Q2","Global",1)
~ GOTO 8
  IF ~  Global("Q3","Global",0)
Global("Q2","Global",1)
~ THEN REPLY #45764 /* ~"Can you safely remove the spells on this box?"~ */ DO ~SetGlobal("Q3","Global",1)
~ GOTO 10
  IF ~  Global("Q4","Global",0)
~ THEN REPLY #45765 /* ~"Do you know the history behind this box?"~ */ DO ~SetGlobal("Q4","Global",1)
~ GOTO 13
  IF ~  Global("Q1","Global",1)
Global("Q2","Global",1)
Global("Q3","Global",1)
Global("Q4","Global",1)
~ THEN REPLY #45766 /* ~"Is there a way to safely dispose of Moridor's Box without hurting anyone?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #45767 /* ~"Hmmm... Let me think. I don't recall whom I got it from. I just remember I was down in the marketplace looking for some spell components when some person offered me this box. After testing the box, I found it to be cursed, but was intrigued by the spells woven into the box, and so I purchased it anyway."~ */
  IF ~~ THEN REPLY #45768 /* ~"If you were so intrigued by the box, what made you decide to give it away?"~ */ GOTO 11
  IF ~~ THEN REPLY #45769 /* ~"I've more questions I wish to ask..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #45770 /* ~"For many years I studied the box and tried to learn its secrets. Spell upon spell upon spell has been woven into it. To my amazement, my studies revealed that all the spells are of the type used to confine fiends."~ */
  IF ~~ THEN REPLY #45771 /* ~"Fiends? You mean there are fiends trapped within this box..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45772 /* ~"No! Not fiends. A fiend. And judging by the sophistication and power of these spells, it would have to be one of significant standing and power in its realm."~ */
  IF ~~ THEN REPLY #45773 /* ~"I've more questions I wish to ask..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #45774 /* ~"Seeking to remove yourself from this box, eh? That spell is the worst of them all. Basically, that particular spell draws energy from the current owner of the box and uses it to power one of the spells of confinement. That isn't the worst of it. The fiend inside can smell this energy and would more than likely hunt down that person should it escape. It's really a no-win situation to own that box. Either it drains you dry of your energy, or the fiend within kills you."~ */
  IF ~~ THEN REPLY #45775 /* ~"I see. If you don't mind I'd like to ask you some more questions..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #45776 /* ~"I was young and brash back then. In my relentless pursuit of knowledge, I carelessly undid one of the spells. Look closely at the box, it was like new when I had it. The signs of decay are an indication that the spells are weakening. I realized I was in danger if I kept the box any longer. So I held a contest to get rid of it."~ */
  IF ~~ THEN REPLY #45777 /* ~"A contest?"~ */ GOTO 12
  IF ~~ THEN REPLY #45778 /* ~"I've more questions I wish to ask..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45779 /* ~"It was the most expedient way to rid myself of it. I simply invited all the bashers in the Hive to fight each other to determine who was the best. Bashers are notorious for having big muscles and not much upstairs, if you know what I mean. They came like flies to honey. I offered some money and the box as a prize. I believe some basher named Brasken won the contest."~ */
  IF ~~ THEN REPLY #45780 /* ~"I've more questions I wish to ask..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 13 // from: 5.2 6.3
  SAY #45781 /* ~"The only thing I have been able to learn is its name. It is called Moridor's Box. As to who this Moridor is or the origins of the box, I do not know."~ */
  IF ~~ THEN REPLY #45782 /* ~"I've more questions I wish to ask..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 6.4
  SAY #45783 /* ~"I am not strong enough to fight or banish such a creature. It's been ages since I've been there, but there was a cathedral located in the middle of the Alley of Dangerous Angles. A priest or someone who gains their power from a higher source might be able to help you."~ */
  IF ~~ THEN REPLY #45784 /* ~"You've been a great help. Thanks."~ */ DO ~SetGlobal("FedEx","Global",4)
SetGlobal("Delta","Global",2)
SetGlobal("Epsilon","Global",1)
AddexperienceParty(250)
~ JOURNAL #60388 /* ~Shilandra has told me much about Moridor's Box... and much of it I did not wish to hear. It seems that this box contains a fiend high in the ranks of fiend-kind. Worse yet, the spells that bind this fiend are weakening. I fear that soon it may escape and seek retribution for its imprisonment. Shilandra has suggested that I visit a cathedral located in the middle of the Alley of Dangerous Angles. It's hoped that a higher source of power will intervene and banish the fiend before it escapes.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.1
  SAY #45785 /* ~"I guess one not skilled in the art of magic would not understand. Certain parts are much prized as components for creating spells. If you'll excuse me, I need to practice this spell a little bit more."~ */
  IF ~~ THEN REPLY #45786 /* ~"Farewell."~ */ DO ~SetGlobal("Shil","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shil","Global",1)
~ THEN BEGIN 16 // from:
  SAY #45787 /* ~"I've nothing more to say to you."~ */
  IF ~~ THEN REPLY #45788 /* ~"Farewell."~ */ EXIT
END
