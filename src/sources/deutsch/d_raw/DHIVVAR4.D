// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48991 /* ~Du triffst auf eine mollige Frau, die ihrer Arbeit nachgeht. Sie bemerkt dich nicht, als du den Raum betrittst.~ */
  IF ~~ THEN REPLY #48993 /* ~"Sei gegrüßt."~ */ GOTO 2
  IF ~~ THEN REPLY #48994 /* ~Laß die Frau in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48995 /* ~"Du schon wieder... Wie ich sehe, hast du deine schlechten Manieren immer noch nich' abgelegt."~ */
  IF ~~ THEN REPLY #48996 /* ~"Hmm... Hierher wollt ich gar nicht."~ */ GOTO 4
  IF ~~ THEN REPLY #48997 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48998 /* ~"Was willst du in meinem Haus? Hast du keine Manieren? Man dringt nich' einfach so mir nichts dir nichts in anderer Leute Häuser ein!"~ */
  IF ~~ THEN REPLY #48999 /* ~"Tut mir leid. Ich hab nicht gewußt, daß hier jemand wohnt."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49000 /* ~"Nun, jetzt weißt du's. Und jetzt geh bitte, und mach die Tür hinter dir zu. Ich hab noch einiges an Arbeit zu erledigen, und ich kann keine Störungen mehr gebrauchen. Auf Wiedersehen."~ */
  IF ~~ THEN REPLY #49001 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49002 /* ~"Dann geh dahin, wo du hin willst, und laß mich in Ruhe!"~ */
  IF ~~ THEN REPLY #49003 /* ~"Leb wohl."~ */ EXIT
END
