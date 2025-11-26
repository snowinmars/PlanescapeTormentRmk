// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38099 /* ~Diese Inschrift sieht wie die Anleitungen auf deinem Rücken aus, die Morte dir in der Leichenhalle vorgelesen hat:

Ich weiß, daß du dich so fühlst, als hättest du 'n paar Eimer Styx-Wasser getrunken, aber du mußt dich KONZENTRIEREN. In deinem Besitz sollte sich ein JOURNAL befinden, das ein wenig Licht in das Dunkel dieser Angelegenheit bringen sollte. PHAROD sollte dir den restlichen Plausch liefern können, wenn er nicht bereits im Totenbuch steht.~ */
  IF ~~ THEN REPLY #53675 /* ~Mach weiter und frische deine Erinnerung auf.~ */ GOTO 1
  IF ~  Global("Inscr_2","GLOBAL",0)
~ THEN REPLY #53676 /* ~Ignoriere den Rest der Inschrift und untersuche die Tafel.~ */ GOTO 3
  IF ~~ THEN REPLY #53677 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53678 /* ~"Verlier das Journal nicht oder wir landen wieder im Styx. Und was auch geschieht, erzähl KEINEM, WER du bist oder WAS dir widerfahren ist. Sonst schicken sie dich im Handumdrehen auf eine Pilgerfahrt ins Krematorium. Tu, was ich dir sage: LIES das Journal, und dann FINDE Pharod."~ */
  IF ~  Global("Morte_Warning","GLOBAL",0)
~ THEN REPLY #53679 /* ~Weiter.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #53680 /* ~Weiter.~ */ GOTO 5
  IF ~~ THEN REPLY #53681 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53682 /* ~Zu deiner Überraschung steht da noch eine Zeile, eine, die dir Morte in der Leichenhalle nicht vorgelesen hat. 'Trau dem Totenschädel nicht.'~ */
  IF ~~ THEN REPLY #53683 /* ~Untersuche die Tafel.~ */ GOTO 3
  IF ~~ THEN REPLY #53684 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 5.0
  SAY #53685 /* ~Die Tafel ist so gefertigt, daß sie in der Wand verschwinden kann.~ */
  IF ~~ THEN REPLY #53686 /* ~Drücke gegen dieTafel.~ */ DO ~SetGlobal("Inscr_2","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53687 /* ~Laß die Tafel in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53688 /* ~Die Tafel läßt sich ganz leicht in die Wand schieben. Da hörst du ein Klicken von dem Sarkophag hinter dir.~ */
  IF ~~ THEN REPLY #53689 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #53690 /* ~Da steht noch eine Zeile: 'Trau dem Totenschädel nicht.'~ */
  IF ~~ THEN REPLY #53691 /* ~Untersuche die Tafel.~ */ GOTO 3
  IF ~~ THEN REPLY #53692 /* ~Wende dich von der Inschrift ab.~ */ EXIT
END
