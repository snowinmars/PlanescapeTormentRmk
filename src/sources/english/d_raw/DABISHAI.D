// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #58136 /* ~You see a red abishai. The creature is reptilian with a snake like-body, four clawed feet, leathery wings, and a draconian head. The scales covering its body are a dull shade of red. The creature stands upright on its hind legs, balancing with its prehensile tail. As you approach, its eyes narrow to slits and it begins to hiss.~ */
  IF ~~ THEN REPLY #58137 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58138 /* ~Ignore the creature.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58139 /* ~The abishai glares at you and hisses in some guttural tongue. You realize it is not speaking to you when you hear a response from somewhere behind the abishai. After a moment it cocks its head to the side and hisses at you. "What want you?"~ */
  IF ~~ THEN REPLY #58140 /* ~"I have some questions..."~ */ DO ~SetGlobal("Talk_Tek","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58141 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58142 /* ~The abishai emits a series of hisses that are soon answered from the unknown source. "No... you ssspeak Tek'elach." It gestures vaguely behind it. "He agree talk you..."~ */
  IF ~~ THEN REPLY #58143 /* ~"Why can't you answer my questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #58144 /* ~"I see. I'll go speak with this Tek'elach then."~ */ GOTO 4
  IF ~~ THEN REPLY #58145 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58146 /* ~The abishai glares at you for a moment before answering. "Tek'elach want talk you. Not I. You go."~ */
  IF ~~ THEN REPLY #58147 /* ~"I see. I'll go speak with this Tek'elach then."~ */ GOTO 4
  IF ~~ THEN REPLY #58148 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #58149 /* ~You feel a wave of heat begin to emanate from the abishai as it leans in to talk to you. "You show respect... you be careful... I watch. I kill you if you do wrong." It displays rows of razor sharp teeth as it grins evilly at you. "You understand?"~ */
  IF ~~ THEN REPLY #58150 /* ~"Yes, I understand. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #58151 /* ~"No, I'm stupid. Why don't you explain it to me."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #58152 /* ~The abishai hisses at you and reaches out to the nearby wall. Its eyes never leave yours as it digs several deep furrows into the stone with a single swipe of its claws. "Understand now? Or want up close, personal explanation?"~ */
  IF ~~ THEN REPLY #58153 /* ~"I understand perfectly. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #58154 /* ~Attack the abishai: "Let's see what you can do with a real opponent." ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  Global("Talk_Tek","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #58155 /* ~The abishai hisses at you angrily. "You told talk Tek'elach... go!"~ */
  IF ~~ THEN REPLY #58156 /* ~"All right. Farewell."~ */ EXIT
END
