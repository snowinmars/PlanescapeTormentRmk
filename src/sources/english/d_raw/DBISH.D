// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBISH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBISH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 13 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34107 /* ~As you enter the room, a large, heavy-set man gets up from his chair and approaches you. "'LO there! Name's Bish. Who might ya be?"~ */
  IF ~~ THEN REPLY #34123 /* ~"I have no name."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #34124 /* ~Lie: "My name is 'Adahn.'" ~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 2
  IF ~~ THEN REPLY #34125 /* ~"None of your business."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 3
  IF ~~ THEN REPLY #34126 /* ~Ignore the man and continue on.~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #34108 /* ~"Wha' ya mean you don't have a name? Ya just come back from Styx-swimmin' ya clueless sod?!" You notice Bish slowly moving his hand towards his weapon. "Or are ya jus' not tellin' me? Hiding something, methinks."~ */
  IF ~~ THEN REPLY #34127 /* ~"Look, I'm telling you the truth. I don't know my name."~ */ DO ~IncrementGlobal("Law","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34128 /* ~"I've got nothing to hide, and I don't want to cause any trouble. I just want to pass through."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~~ THEN REPLY #34129 /* ~Lie: "Okay, okay... my name is 'Adahn.'"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34130 /* ~"I just want to pass through."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34131 /* ~"If you don't stand aside right now, there'll be hell to pay."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34132 /* ~"If you don't stand aside right now, there'll be hell to pay."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34133 /* ~"I'm looking for a man named Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34134 /* ~"I'm looking for a journal."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #34135 /* ~"I was told I could locate Pharod around these parts."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~~ THEN REPLY #34136 /* ~"None of your business."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
  IF ~~ THEN REPLY #34137 /* ~Attack Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66908 /* ~Ignore Bish and continue on.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 4.1
  SAY #34109 /* ~"Adh-what?" Bish stares blankly at you, then shakes his head violently. "I never seen ya before and Pharod didn't tell me about no 'Adahn' comin' around." You notice his hand moving slowly towards his weapon. "Ya best be tellin' me what ye're doin' here, berk."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66904 /* ~"Perhaps Pharod's confidence in you does not extend as far as you might think."~ */ DO ~AddexperienceParty(1200)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34138 /* ~"I'm looking for a man named Pharod."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34139 /* ~"I'm looking for a journal."~ */ GOTO 6
  IF ~~ THEN REPLY #34140 /* ~"None of your business."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34141 /* ~"I've got nothing to hide, and I don't want to cause any trouble. I just want to pass through."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34142 /* ~"I just want to pass through."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34143 /* ~"If you don't stand aside right now, there'll be hell to pay."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34144 /* ~"If you don't stand aside right now, there'll be hell to pay."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34145 /* ~Attack Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34146 /* ~Ignore Bish and continue on.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.9 1.11 2.3 2.9 4.2 4.4 7.3 7.9
  SAY #34110 /* ~Bish suddenly draws his weapon. "Fine. Ye're not willin' to be straight with me, I'll just beat it outta ya."~ */
  IF ~~ THEN REPLY #34147 /* ~"Just try it..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #34111 /* ~As you turn to walk away, Bish moves to block your path. "I ask ya one more time, berk! What's yer NAME?!"~ */
  IF ~~ THEN REPLY #34148 /* ~"I don't know what my name is."~ */ GOTO 1
  IF ~~ THEN REPLY #34149 /* ~Lie: "My name is 'Adahn.'"~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~~ THEN REPLY #34150 /* ~"None of your business!"~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #34151 /* ~Attack Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34152 /* ~Continue to ignore Bish and try and move around him.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.6 2.1 7.1
  SAY #34112 /* ~"If Pharod was wantin' to see ya, I'd know about it." Bish suddenly draws his weapon. "I'm tired of playin' guessin' games with ya, berk. I'll just loot ya dead body for answers."~ */
  IF ~~ THEN REPLY #34153 /* ~"I don't think so..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7 2.2 7.2
  SAY #34113 /* ~"Are ya sayin' ya been 'ere before? Journal or no journal, I never seen ya in my life. Says to me that ya been snoopin' around under my nose, it does." Bish suddenly draws his weapon. "Hope it was worth ya life, berk."~ */
  IF ~~ THEN REPLY #34154 /* ~"Whatever..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #34114 /* ~Bish throws his hands up in the air in frustration. "Forget it, berk! Not important anymore, anyhow." He shakes his head back and forth. "More important is what ya doin' down here?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66906 /* ~"I was told I could find Pharod around these parts."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34155 /* ~"I'm looking for a man named Pharod."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34156 /* ~"I'm looking for a journal."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 6
  IF ~~ THEN REPLY #34157 /* ~"None of your business."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34158 /* ~"I don't want to cause any trouble. I just want to pass through."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34159 /* ~"I just want to pass through."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34160 /* ~"If you don't stand aside right now, there will be hell to pay."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34161 /* ~"If you don't stand aside right now, there will be hell to pay."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34162 /* ~Attack Bish.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34163 /* ~Ignore Bish and continue on.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.1 2.4 7.4
  SAY #34115 /* ~Bish frowns at you. "Alright. Ya can go on." As you start to make your way past Bish, he leans over and quietly warns you. "But know this, berk. Ya go causing trouble down there, I go crushin' yer skull if I see ya again."~ */
  IF ~~ THEN REPLY #34164 /* ~"Farewell..."~ */ EXIT
  IF ~~ THEN REPLY #34165 /* ~"I'll do what I want..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.5 7.5
  SAY #34116 /* ~Bish shakes his head. "We all want a lot of things, cutter." He bellows with laughter. "I don't know ya, I don't like ya, so I make a deal. Yer money or yer head."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #34166 /* ~"My money then."~ */ DO ~TakePartyGold(10000)
~ GOTO 12
  IF ~  PartyGold(0)
~ THEN REPLY #34167 /* ~"My money then."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 14
  IF ~~ THEN REPLY #34168 /* ~"I'll give you neither!"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4 2.6 7.6
  SAY #34117 /* ~"Ye're more clueless than I thought, cutter!" Bish shrugs. "Alright then ya scrawny boy, lesss have at ya!"~ */
  IF ~~ THEN REPLY #34169 /* ~"I'll show you clueless..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.5 2.7 7.7
  SAY #34118 /* ~Bish snarls. "Ya look like a proper basha, ya do." He nods at you before producing his weapon. "But ya not be bashin' yer way out of this one."~ */
  IF ~~ THEN REPLY #34170 /* ~"I beg to differ..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #34119 /* ~Bish conducts a thorough search of your belongings. "I should still be takin' yer head since it seems to be all ye're worth! Now get on with ya. I'm warnin' ya too, ya make any trouble down there, I'll hunt ya down and beat what's left of ya!"~ */
  IF ~~ THEN REPLY #34171 /* ~"I'm on my way."~ */ EXIT
  IF ~~ THEN REPLY #34172 /* ~"Bastard..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #34120 /* ~You see Bish tending to his post. As you approach, he glances your way and nods. "'Lo. Be on your way and quickly."~ */
  IF ~~ THEN REPLY #34173 /* ~"Will do."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #34121 /* ~Bish searches through your belongings for copper... only to come up empty. "Did ya mean to waste my time or were ya thinkin yer lint was worth somethin'?" Bish brandishes his weapon. "Be lookin' like I'll have to trade ya dead body instead!"~ */
  IF ~~ THEN REPLY #34174 /* ~"I dare you..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Buried_Attack","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #34122 /* ~Bish flips around to meet your greeting with his weapon drawn! "Wha did I tell ya, berk? Ya go bashin' down there, now I go bashin' on ya skull!"~ */
  IF ~~ THEN REPLY #34175 /* ~"Whatever..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0
  SAY #66905 /* ~Bish snorts at you. "Well, you tell him he'd best be readjusting those thoughts if he expects my men and me to keep watch over this bleedin' sinkhole." He sheathes his weapon and motions at a trapdoor located on the floor. "On with ya."~ */
  IF ~~ THEN REPLY #66910 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.8 7.0
  SAY #66907 /* ~Bish eyes you suspiciously. "Pharod usually fills me in on visitors, and I don't recall the likes of you being mentioned." He quickly glances you over before giving an apathetic shrug. "Ehh, ya don't look like anything the guards couldn't handle. On with ya."~ */
  IF ~~ THEN REPLY #66909 /* ~"Farewell."~ */ EXIT
END
