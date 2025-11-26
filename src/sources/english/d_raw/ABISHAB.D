// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ABISHAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~ABISHAB~

IF ~  Global("Know_Abishai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3325 /* ~This black-scaled reptile towers to a height of eight feet - its great height, however, is offset by its thin, snake-like frame. A long prehensile tail drags behind it, and its leathery wings are hooked behind its back. A strong vinegary smell emanates from the creature... as well as a certain amount of heat. It seems to be ignoring you.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3326 /* ~"Greetings."~ */ DO ~SetGlobal("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 131
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3992 /* ~"Greetings."~ */ EXTERN ~DMORTE~ 133
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3993 /* ~"Greetings."~ */ DO ~SetGlobal("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 70
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3994 /* ~"Greetings."~ */ EXTERN ~DANNAH~ 72
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #3995 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7718 /* ~Leave the creature alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 11.0
  SAY #7719 /* ~The creature slowly turns its head down to look at you. Its scaled forehead wrinkles into a frown, then it opens its mouth, giving a low, rasping hiss. You notice that the heat radiating from the creature begins to rise.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7720 /* ~"I would speak with you for a moment."~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7721 /* ~"I would speak with you for a moment."~ */ GOTO 6
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7722 /* ~"I would speak with you for a moment."~ */ GOTO 6
  IF ~~ THEN REPLY #7723 /* ~Leave the creature alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #7724 /* ~The creature opens its mouth, displaying a row of blackened fangs. Fire begins to dance around the shoulders and arms of the creature as it gives a long, low hiss.~ */
  IF ~~ THEN REPLY #7725 /* ~"Calm yourself! I just want to talk to you."~ */ GOTO 4
  IF ~~ THEN REPLY #7726 /* ~Hiss back.~ */ GOTO 3
  IF ~~ THEN REPLY #7727 /* ~Leave the creature alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.0 5.1
  SAY #7728 /* ~The creature roars, then it launches itself at you!~ */
  IF ~~ THEN REPLY #7730 /* ~Defend yourself...~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #7731 /* ~The creature speaks in a rasping hiss; its voice sounds like two rough stones being scraped together. It hisses for a few moments, its gravelly voice rising and falling.~ */
  IF ~~ THEN REPLY #7732 /* ~"Uh... what?"~ */ GOTO 5
  IF ~~ THEN REPLY #7733 /* ~Leave the creature alone.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7734 /* ~The creature snarls. "NOTHING to sssay to you, do I." The fiend's eyes narrow to slits. "If ssstay, your warm blood will cover the ssstones."~ */
  IF ~~ THEN REPLY #7735 /* ~"I just wanted to ask you some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #7736 /* ~"Just try it, and we'll see whose blood covers the street when we're done."~ */ GOTO 3
  IF ~~ THEN REPLY #7737 /* ~Back off and leave the creature alone.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.2
  SAY #7738 /* ~The creature suddenly sniffs the air, then turns away from you with a strange hiss. It seems to have caught some unpleasant scent. ~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7739 /* ~"I said, I would speak with you."~ */ GOTO 8
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7740 /* ~"I said, I would speak with you."~ */ GOTO 7
  IF ~~ THEN REPLY #7741 /* ~Leave the creature alone.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #7742 /* ~The creature's eyes focus on Annah, then narrow to slits. It opens its mouth, displaying a row of blackened fangs as fire begins to dance around the shoulders and arms of the creature. The heat emanating from it begins to rise.~ */
  IF ~~ THEN REPLY #7743 /* ~"Hey! I'm talking to you!"~ */ GOTO 9
  IF ~~ THEN REPLY #7744 /* ~Leave the creature alone, take Annah and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #7745 /* ~The creature's eyes focus on Fall-from-Grace, then narrow to slits. It opens its mouth, displaying a row of blackened fangs as fire begins to dance around the shoulders and arms of the creature. The heat emanating from it begins to rise.~ */
  IF ~~ THEN REPLY #7746 /* ~"Hey! I'm talking to you!"~ */ GOTO 10
  IF ~~ THEN REPLY #7747 /* ~Back away, taking Fall-from-Grace with you and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #7748 /* ~The creature roars, then it launches itself at Annah!~ */
  IF ~~ THEN REPLY #7749 /* ~"Dammit...!"~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #7750 /* ~The creature roars, then it launches itself at Fall-from-Grace!~ */
  IF ~~ THEN REPLY #7751 /* ~"Dammit...!"~ */ DO ~Enemy()
Attack("Grace")
~ EXIT
END

IF ~  Global("Know_Abishai","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #7752 /* ~This black-scaled fiend towers to a height of eight feet - its great height, however, is offset by its thin, snake-like frame. A long prehensile tail drags behind it, and its leathery wings are hooked behind its back. A strong vinegary smell emanates from the fiend... as well as a certain amount of heat. It seems to be ignoring you.~ */
  IF ~~ THEN REPLY #7753 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7758 /* ~Leave the abishai alone.~ */ EXIT
END
