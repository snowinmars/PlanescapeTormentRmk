// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33042 /* ~A ragged, middle-aged Collector approaches as you enter the area. "I..." He quickly looks you over and then sneers. "...don't know you."~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33044 /* ~"Greetings."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33049 /* ~"I don't believe I've made your acquaintance, either."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33050 /* ~"Just passing through."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33051 /* ~Ignore the Collector and continue on.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #33043 /* ~The Collector continues to glare at you.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33053 /* ~"I'm looking for a man named Pharod."~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #33052 /* ~"Have you seen a journal lying around here?"~ */ GOTO 2
  IF ~~ THEN REPLY #33054 /* ~"Is there a problem?"~ */ GOTO 4
  IF ~~ THEN REPLY #33055 /* ~Ignore the Collector and continue on.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #33045 /* ~"What ye're lookin' for is no concern of mine, berk." He spits. "What is concern'n me is that ye're still breathin' in my presence."~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33058 /* ~"If you don't let me pass, Collector, one of us is going to the Mortuary and it won't be me."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33093 /* ~"If you don't let me pass, Collector, one of us is going to the Mortuary and it won't be me."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33094 /* ~"Collecting bodies before they're dead sounds like a really good way to meet the Lady."~ */ GOTO 8
  IF ~~ THEN REPLY #33095 /* ~"Then I'll leave your presence, berk."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33096 /* ~Attack the Collector.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32994 /* ~Ignore the Collector and continue on.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #33046 /* ~As you approach the Collector, he gives you a look of disgust. "No more words, cutter. You'll find them hard to barter with in these parts." The Collector draws a knife from his pocket. "I'm afraid yer corpse is yer only hard currency."~ */
  IF ~~ THEN REPLY #32995 /* ~"I don't think so..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #33047 /* ~"The problem as I be seein' it, berk... is that ya continue to breathe in my presence." He spits.~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33097 /* ~"If you don't let me pass, Collector, one of us is going to the Mortuary and it won't be me."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33101 /* ~"If you don't let me pass, Collector, one of us is going to the Mortuary and it won't be me."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33103 /* ~"Collecting bodies before they're dead sounds like a good way to meet the Lady."~ */ GOTO 8
  IF ~~ THEN REPLY #33104 /* ~"Then I'll leave your presence, berk."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33105 /* ~Attack the Collector.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33106 /* ~Ignore the Collector and continue on.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 2.5 4.3 4.5
  SAY #33048 /* ~As you turn to leave, you notice the Collector drawing a knife from one of his pockets. "Don't know what ya was thinking about by coming down 'ere, but the only place you'll be going is the Mortuary, cutter."~ */
  IF ~~ THEN REPLY #33107 /* ~"I don't think so..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0
  SAY #33090 /* ~Your threat appears to soften his demeanor. "Get out of 'ere, cutter!" He hisses. "And I'd be watchin' ya back if I were ya."~ */
  IF ~~ THEN REPLY #33108 /* ~"Likewise..."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 4.1
  SAY #33091 /* ~The Collector responds to your threat by pulling out a knife from one of his pockets. "I be disagreein' with ya, berk. It's YOU who'll soon be jink in me pockets!"~ */
  IF ~~ THEN REPLY #33109 /* ~"I dare you..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 4.2
  SAY #33092 /* ~You seem to talk some sense into the Collector, as he turns away from you. "Watch yer back, cutter. Most 'ere will talk to ya with their blade before their bone-box, and if ya stay much longer, I be doin' the same."~ */
  IF ~~ THEN REPLY #33110 /* ~"Whatever..."~ */ EXIT
END
