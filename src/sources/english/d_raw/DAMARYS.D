// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAMARYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAMARYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 9 13 11 even though they appear after this state */
~  GlobalLT("Nodd_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #20721 /* ~You see a young woman dressed in a tight leather bodice and leggings. She smells faintly of cheap perfume and her face, though pretty, is painted with garish make-up. She smiles coyly as she sees you. "Seeking some company, love?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22779 /* ~"Are you, by any chance, Amarysse?"~ */ GOTO 2
  IF ~~ THEN REPLY #22780 /* ~"No, but I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #22781 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #20722 /* ~"Sorry, love, I don't stand here ta answer th' questions a' passersby. Sure ye wouldn't like a lil' company, hmm?"~ */
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22782 /* ~"No, but are you Amarysse, by any chance?"~ */ GOTO 2
  IF ~~ THEN REPLY #22783 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #22784 /* ~She stares at you silently for a time, then speaks: "I was called that, once, long ago. Who are ye?"~ */
  IF ~~ THEN REPLY #22785 /* ~"I was sent to find you by Nodd, your brother. He's worried about you, and hoped I could tell him how you were."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #22786 /* ~"N... Nodd? He's alive? Where? Why didn't he come ta seek me out himself?"~ */
  IF ~~ THEN REPLY #22787 /* ~"I think he's ashamed. He's a Collector, now, living in poverty in Ragpicker's Square. He doesn't seem quite... right. In the head, I mean."~ */ JOURNAL #22632 /* ~Amarysse told me Nodd's name as a child was 'Thodus.'~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #22788 /* ~"Aye, he was a bit touched, even as a child, when his name was Thodus. Oh, I've missed him so! Ashamed, though? Ha! Me own work's no more proud! Ah, well, at least I'm doin' well fer meself - fer a Hiver, at any rate, eh? I must visit him, soon." She looks at you closely for the first time since you've spoken. "Are ye a friend a' Nodd's, or...?"~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22789 /* ~"Of a sort, yes. Why?"~ */ GOTO 5
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #61490 /* ~"Not really, no."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22790 /* ~"Not really. I'm being paid for the trouble."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ GOTO 8
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22791 /* ~Lie: "Yes, yes I am. Why?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Amarysse_1","GLOBALLaw",-1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3
  SAY #22792 /* ~"Could ye..." She frowns, biting her lip, as if considering something. "Could ye give this to him?" She steps close to you and offers a pouch of what looks to be about one hundred copper commons.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22794 /* ~"Yes, I swear I'll get it to him."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~I swore to Amarysse that I would deliver her copper to her brother, Nodd, in Ragpicker's Square.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22793 /* ~"Yes, I swear I'll get it to him."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~I swore to Amarysse that I would deliver her copper to her brother, Nodd, in Ragpicker's Square.~ */ GOTO 6
  IF ~~ THEN REPLY #22795 /* ~"Yes, I'll get it to him."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22796 /* ~"No, I'd best not. I'll tell him you'll visit soon, though. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22797 /* ~"No, I'd best not. I'll tell him you'll visit soon, though. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1 7.0 7.1
  SAY #22798 /* ~She hands you the pouch. "I thank ye. Go speak ta Nodd fer me, an' tell him how I worry about him so!"~ */
  IF ~~ THEN REPLY #22799 /* ~"I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #22800 /* ~"I'm sorry, cutter, but could I get ye ta swear it ta me? A lot a' copper, it is... fer me, at least."~ */
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22801 /* ~"Yes, I swear I'll get it to him."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",6)
GivePartyGold(100)
~ JOURNAL #22633 /* ~I swore to Amarysse that I would deliver her copper to her brother, Nodd, in Ragpicker's Square.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22802 /* ~"Yes, I swear I'll get it to him."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",7)
GivePartyGold(100)
~ JOURNAL #22633 /* ~I swore to Amarysse that I would deliver her copper to her brother, Nodd, in Ragpicker's Square.~ */ GOTO 6
  IF ~  Global("Nodd_Quest","GLOBAL",2)
~ THEN REPLY #22803 /* ~"No, I'd best not. I'll tell him you'll visit soon, though. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",4)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",3)
~ THEN REPLY #22804 /* ~"No, I'd best not. I'll tell him you'll visit soon, though. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 4.2
  SAY #22805 /* ~"Hmm. Well, I thank ye all the same. Please, go speak ta Nodd fer me, an' tell him how I worry about him so!"~ */
  IF ~~ THEN REPLY #22806 /* ~"I will. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 11 even though they appear after this state */
~  GlobalGT("Nodd_Quest","GLOBAL",3)
!Global("Nodd_Quest","GLOBAL",8)
!Global("Nodd_Quest","GLOBAL",9)
~ THEN BEGIN 9 // from:
  SAY #22807 /* ~Amarysse has a hopeful look upon her face. "Did ye speak ta Nodd, yet?"~ */
  IF ~~ THEN REPLY #22808 /* ~"No, not yet."~ */ GOTO 10
  IF ~~ THEN REPLY #22809 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #22810 /* ~"Please, then, go speak ta Nodd fer me, an' tell him how I worry about him so!"~ */
  IF ~~ THEN REPLY #22811 /* ~"I will. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Nodd_Quest","GLOBAL",8)
!Global("Chaotic_Nodd_4","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #22812 /* ~"I hear ye spoke ta Nodd fer me... I thank ye, cutter."~ */
  IF ~~ THEN REPLY #22813 /* ~"Of course... but how did you know?"~ */ GOTO 12
  IF ~~ THEN REPLY #22814 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22815 /* ~"I've many a friend in th' Hive, I do." She winks at you. "Again, I thank ye."~ */
  IF ~~ THEN REPLY #22816 /* ~"Of course. Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  GlobalGT("Nodd_Quest","GLOBAL",7)
~ THEN BEGIN 13 // from:
  SAY #22817 /* ~You see Amarysse. She hasn't noticed you, yet.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",9)
~ THEN REPLY #22818 /* ~Speak to her.~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",8)
~ THEN REPLY #22819 /* ~Speak to her.~ */ GOTO 15
  IF ~~ THEN REPLY #22820 /* ~Leave her alone.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22821 /* ~Her eyes flare with rage the moment she sees you; she is screaming and upon you, blade in hand, before you can even open your mouth to speak. "Ye bastard! Don't think I haven't heard about me poor brother... I'll kill ye!"~ */
  IF ~~ THEN REPLY #22822 /* ~Meet her attack.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22823 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #22824 /* ~Her eyes flare with rage the moment she sees you; she is screaming and upon you, blade in hand, before you can even open your mouth to speak. "Ye thievin' bastard! I've heard about what ye did! Takin' a poor workin' lass' jink an' stealin' from her brother... I'll kill ye!"~ */
  IF ~~ THEN REPLY #22825 /* ~Meet her attack.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #22826 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
