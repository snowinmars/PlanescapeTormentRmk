// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3206 /* ~The man's brow is deeply furrowed in concentration. As you approach, he looks to you and nods curtly. "Yes?"~ */
  IF ~~ THEN REPLY #3207 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #40689 /* ~"Nothing; I was just passing by. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40690 /* ~This serious-looking man still appears to be trying to puzzle something out. As you draw near him, he pauses his train of thought and looks to you. "Yes?"~ */
  IF ~~ THEN REPLY #40691 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #40692 /* ~"Nothing; I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.3 4.1 5.0 6.2 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0
  SAY #40693 /* ~He looks slightly annoyed, but says nothing.~ */
  IF ~~ THEN REPLY #40694 /* ~"You seem troubled..."~ */ GOTO 3
  IF ~~ THEN REPLY #40695 /* ~"What are you doing here?"~ */ GOTO 6
  IF ~~ THEN REPLY #40696 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~  Global("Ecco_Speak","GLOBAL",1)
~ THEN REPLY #40697 /* ~"What can you tell me about the silent prostitute?"~ */ GOTO 9
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40698 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 10
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40699 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 11
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40700 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 12
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40701 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 13
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40702 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 14
  IF ~~ THEN REPLY #40703 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40704 /* ~The man frowns. "No, not quite 'troubled'... I'm merely trying to puzzle out a way to win against Dolora."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40705 /* ~"Who?"~ */ GOTO 4
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #40706 /* ~"Yes, she's quite an opponent."~ */ GOTO 8
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40707 /* ~"I've yet to play against her, myself."~ */ GOTO 7
  IF ~~ THEN REPLY #40708 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40709 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.0
  SAY #40710 /* ~"Dolora is one of the prostitutes, here. Reserved, well educated, most intelligent... a mind like a razor, truly. If you fancy a challenge, try and best her in a game of strategy."~ */
  IF ~~ THEN REPLY #40711 /* ~"You've never beaten her, then?"~ */ GOTO 5
  IF ~~ THEN REPLY #40712 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40713 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40714 /* ~He shakes his head, frowning. "I used to play against a woman here named Vivian, and came to think of myself as quite skilled... but then I met Dolora. I've a strong suspicion that Vivian was allowing me to win those games, but I've never asked her."~ */
  IF ~~ THEN REPLY #40715 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40716 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #40717 /* ~"I'm resting after a resounding loss at the hands of Dolora. I feel I almost bested her this last time, though, so I'm trying to think of what I can do to win the next time we play."~ */
  IF ~  Global("Dolora","GLOBAL",0)
~ THEN REPLY #40718 /* ~"Who is Dolora?"~ */ GOTO 4
  IF ~  Global("Dolora","GLOBAL",1)
Global("Dolora_Go","AR0605",0)
~ THEN REPLY #40719 /* ~"I've yet to play against her, myself."~ */ GOTO 7
  IF ~~ THEN REPLY #40720 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40721 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.1
  SAY #40722 /* ~He nods. "Was there anything else, or...?"~ */
  IF ~~ THEN REPLY #40723 /* ~"Yes; I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40724 /* ~"No, that's all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.1
  SAY #40725 /* ~"Look, I've things to think about. So if you wouldn't mind..."~ */
  IF ~~ THEN REPLY #40726 /* ~"Wait - let me ask you something else..."~ */ GOTO 2
  IF ~~ THEN REPLY #40727 /* ~"Sorry to disturb you, then. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #40728 /* ~"Fine; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #40729 /* ~"Nothing, really."~ */
  IF ~~ THEN REPLY #40730 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40731 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4
  SAY #40732 /* ~"Ravel, you say? I've never asked her about it. Perhaps you should."~ */
  IF ~~ THEN REPLY #40733 /* ~"I had another question..."~ */ GOTO 2
  IF ~  Global("Kesai_Ask","AR0605",0)
~ THEN REPLY #40734 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #40735 /* ~"Perhaps I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.5
  SAY #40736 /* ~"No. I haven't spoken to Vivian in some time; I was unaware that she had even lost it. A pity - she *did* always have the most astoundingly erotic fragrance about her..."~ */
  IF ~~ THEN REPLY #40737 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40738 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6
  SAY #40739 /* ~"No, I do not. Anything else?"~ */
  IF ~~ THEN REPLY #40740 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40741 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.7
  SAY #40742 /* ~"No." The man smirks, then sighs. "Well, yes. She is a night hag, she was cast into one of the Lady's mazes, she's the object of over one hundred frightening children's tales... but I'll wager that's not the sort of information you're after."~ */
  IF ~~ THEN REPLY #40743 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40744 /* ~"Thanks just the same. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.8
  SAY #40745 /* ~He shakes his head. "No; I had understood there to be only nine."~ */
  IF ~~ THEN REPLY #40746 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #40747 /* ~"Farewell, then."~ */ EXIT
END
