// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37953 /* ~Du siehst einen Wachposten vom Harmonium. Er beobachtet dich mit gelangweiltem Gesichtsausdruck, als du dich näherst.~ */
  IF ~~ THEN REPLY #37961 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37962 /* ~Beachte den Mann nicht.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37954 /* ~Er nickt dir zu. "Sei auch du gegrüßt, Bürger."
~ */
  IF ~~ THEN REPLY #37963 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37964 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #37955 /* ~"Ich bin neu im Harmonium und in diesem Bezirk, Bürger. Ich kann dir mit deinen Fragen wohl kaum weiterhelfen." Er lächelt entschuldigend.~ */
  IF ~~ THEN REPLY #37965 /* ~"Kannst du mir wenigstens sagen, was hier los ist?"~ */ GOTO 3
  IF ~~ THEN REPLY #37966 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37956 /* ~Er nickt. "Diese Leute haben sich kleinerer Vergehen schuldig gemacht. Ihr Urteil lautet einige Jahre Knechtschaft unter Vertrag, und sie werden jetzt verkauft." Er hält inne. "Das ist alles, was ich dazu sagen kann, Bürger."~ */
  IF ~~ THEN REPLY #37967 /* ~"Ich verstehe. Kann ich dich noch etwas fragen?"~ */ GOTO 4
  IF ~~ THEN REPLY #37968 /* ~Vielen Dank. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37957 /* ~Er schüttelt den Kopf. "Ich muß im Dienst wachsam sein, Bürger. Ich muß dich bitten, weiterzugehen."~ */
  IF ~~ THEN REPLY #37969 /* ~"Schön, leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #37958 /* ~Du siehst einen Wachposten vom Harmonium. Er nickt dir zu, als du näher kommst. "Hallo, Bürger. Schön, dich wiederzusehen. Kann ich Dir behilflich sein?"~ */
  IF ~~ THEN REPLY #37970 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37960 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END
