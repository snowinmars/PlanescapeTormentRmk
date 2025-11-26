// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36034 /* ~Du siehst eine Frau, die in aller Gemütsruhe die Marktwaren betrachtet.
~ */
  IF ~~ THEN REPLY #36035 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #36036 /* ~Beachte die Frau nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36037 /* ~Sie sieht dich an. "Ja, Schleifer?"~ */
  IF ~~ THEN REPLY #36038 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #36039 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36040 /* ~Sie winkt dich fort. "Ich hab dafür keine Zeit, Schleifer. Laß mich in Ruhe." Sie dreht sich von dir weg.~ */
  IF ~~ THEN REPLY #36041 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36042 /* ~Die Einkäuferin merkt, daß du näher kommst, und dreht dir den Rücken zu. Sie ignoriert deine Versuche, mit ihr zu reden.~ */
  IF ~~ THEN REPLY #36043 /* ~Geh.~ */ EXIT
END
