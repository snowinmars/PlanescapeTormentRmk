// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER7~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17734 /* ~Dieser dürre junge Mann - ein Tuchhändler - ruft allen Passanten nervös lächelnd etwas zu. Er scheint keine Notiz von dir zu nehmen.~ */
  IF ~~ THEN REPLY #17744 /* ~"Sei gegrüßt..."~ */ GOTO 2
  IF ~~ THEN REPLY #17745 /* ~Laß den Händler in Ruhe.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17736 /* ~"Willkommen. Was darf ich Euch diesmal zeigen?"~ */
  IF ~~ THEN REPLY #17746 /* ~"Nein, ich brauche keinen Stoff. Aber ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #17747 /* ~"Nein, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17737 /* ~"Welch Freude, Euch zu sehen! Was darf ich Euch heute zeigen? Pelze? Seidenstoffe? Baumwolle?"~ */
  IF ~~ THEN REPLY #17748 /* ~"Nichts, ich brauche keinen Stoff. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #17749 /* ~"Nichts, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17738 /* ~"Aber sicher, fragt nur. Alles, was Ihr wollt." Er bemüht sich zu lächeln, um einen guten Eindruck zu machen.~ */
  IF ~~ THEN REPLY #17750 /* ~"Erzähl mir was über diese Gegend."~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17751 /* ~"Ich suche einen Mann namens Pharod."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17752 /* ~"Ich suche ein Journal, das ich verloren habe."~ */ GOTO 4
  IF ~~ THEN REPLY #17753 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #17739 /* ~"Oh!" Er macht ein enttäuschtes Gesicht. "Ich... ich... na ja, ich dachte, Ihr wolltet mich was über die... Stoffe fragen."~ */
  IF ~~ THEN REPLY #17754 /* ~"Stoff?"~ */ GOTO 5
  IF ~~ THEN REPLY #17755 /* ~"Nein. Kannst du meine Frage beantworten?"~ */ GOTO 6
  IF ~~ THEN REPLY #17756 /* ~"Dann vergiß, daß ich gefragt habe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17741 /* ~Die Miene des Händlers hellt sich auf. "Ja, Stoffe! Alles, was Euer Herz begehrt, mein Freund! Sucht Ihr was Bestimmtes?"~ */
  IF ~~ THEN REPLY #17757 /* ~"Nein, aber kannst du meine Frage beantworten?"~ */ GOTO 6
  IF ~~ THEN REPLY #17758 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #17742 /* ~Er runzelt die Stirn und schüttelt den Kopf. "Ähm... nein." Plötzlich scheint er eine Erleuchtung zu haben und macht dich gestikulierend auf seine Stoffballen aufmerksam: "Tuche?"~ */
  IF ~~ THEN REPLY #17759 /* ~"Nein. Leb wohl."~ */ EXIT
END
