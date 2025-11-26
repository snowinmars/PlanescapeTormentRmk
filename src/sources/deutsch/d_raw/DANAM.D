// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33042 /* ~Ein zerlumpter Sammler mittleren Alters nähert sich dir, als du hereinkommst. "Ich..." Er mustert dich schnell und grinst dann spöttisch. "...kenne dich nicht."~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33044 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33049 /* ~"Ich kenne dich auch nicht."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33050 /* ~"Bin nur zufällig hier vorbei gekommen."~ */ DO ~SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #33051 /* ~Beachte den Sammler nicht und geh weiter.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
SetGlobal("Talked_With_Anamoli","AR0108",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #33043 /* ~Der Sammler starrt dich immer noch wütend an.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33053 /* ~"Ich suche nach einem Mann namens Pharod."~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #33052 /* ~"Hast du hier irgendwo ein Journal rumliegen sehen?"~ */ GOTO 2
  IF ~~ THEN REPLY #33054 /* ~"Hast du'n Problem?"~ */ GOTO 4
  IF ~~ THEN REPLY #33055 /* ~Beachte den Sammler nicht und geh weiter.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #33045 /* ~"Was du suchst, interessiert mich nicht, Dussel." Er spuckt dir eine Ladung seines Speichels vor die Füße. "Was mich nervt ist, daß du immer noch in meiner Gegenwart atmest."~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33058 /* ~"Wenn du mich nicht durchläßt, Sammler, geht einer von uns beiden gleich in die Leichenhalle, und ich werd's bestimmt nicht sein."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33093 /* ~Wenn du mich nicht durchläßt, Sammler, ist einer von uns beiden gleich in der Leichenhalle, und ich werd's bestimmt nicht sein."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33094 /* ~"Leichen zu sammeln, bevor sie tot sind, scheint mir ein idealer Weg zu sein, Bekanntschaft mit der Dame zu machen."~ */ GOTO 8
  IF ~~ THEN REPLY #33095 /* ~"Dann geh ich jetzt, Dussel."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33096 /* ~Greif den Sammler an.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32994 /* ~Beachte den Sammler nicht und geh weiter.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #33046 /* ~Als du dich dem Sammler näherst, wirft er dir einen angewiderten Blick zu. "Kein Wort mehr, Schleifer. Wirst merken, daß man hier schlecht Tauschhandel betreiben kann." Der Sammler zieht ein Messer aus seiner Tasche. "Leider ist deine Leiche deine einzige harte Währung."~ */
  IF ~~ THEN REPLY #32995 /* ~"Ha..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #33047 /* ~"Ja, Dussel. Mein Problem ist... daß du immer noch in meiner Gegenwart atmest." Er spuckt dir eine Ladung seines Speichels direkt vor die Füße.~ */
  IF ~  CheckStatGT(Protagonist,13,STR)
~ THEN REPLY #33097 /* ~"Wenn du mich nicht durchläßt, Sammler, geht einer von uns beiden gleich in die Leichenhalle, und ich werd's bestimmt nicht sein."~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,14,STR)
~ THEN REPLY #33101 /* ~Wenn du mich nicht durchläßt, Sammler, ist einer von uns beiden gleich in der Leichenhalle, und ich werd's bestimmt nicht sein."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33103 /* ~"Leichen zu sammeln, bevor sie tot sind, scheint mir ein idealer Weg zu sein, Bekanntschaft mit der Dame zu machen."~ */ GOTO 8
  IF ~~ THEN REPLY #33104 /* ~"Dann geh ich jetzt, Dussel."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~~ THEN REPLY #33105 /* ~Greif den Sammler an.~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33106 /* ~Beachte den Sammler nicht und geh weiter.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 2.5 4.3 4.5
  SAY #33048 /* ~Als du weggehen willst, siehst du, daß der Sammler ein Messer aus einer seiner Taschen zieht. "Weiß nicht, was du dir dabei gedacht hast, hier runter zu kommen, aber der einzige Ort, wo du hingehst, ist die Leichenhalle, Schleifer."~ */
  IF ~~ THEN REPLY #33107 /* ~"Ha..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0
  SAY #33090 /* ~Deine Drohung scheint ihn einzuschüchtern. "Verschwinde von hier, Schleifer!" Er zischt. "Und ich würde sehr wachsam sein, wenn ich du wäre."~ */
  IF ~~ THEN REPLY #33108 /* ~"Gleichfalls..."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 4.1
  SAY #33091 /* ~Der Sammler reagiert auf deine Drohung, indem er ein Messer aus einer seiner Taschen zieht. "Blödsinn, Dussel. DU bist der, der bald Klimper in meinen Taschen sein wird!"~ */
  IF ~~ THEN REPLY #33109 /* ~"Attacke..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 4.2
  SAY #33092 /* ~Der Sammler wendet sich von dir ab, aber du scheinst ihn zur Vernunft gebracht zu haben. "Sei sehr wachsam, Schleifer. Die meisten hier werden zuerst mit dem Messer und dann mit der Knochenschüssel reden, und wenn du nicht bald weg bist, werde ich das gleiche tun."~ */
  IF ~~ THEN REPLY #33110 /* ~"Ja ja..."~ */ EXIT
END
