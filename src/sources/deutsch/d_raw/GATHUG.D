// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~GATHUG~

IF ~  GlobalGT("Krystall","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #34576 /* ~"Mir wurde gesagt, du hast freien Durchgang durch das Gebiet der Klingenengel, Dussel. Aber mißbrauch das nicht."~ */
  IF ~~ THEN REPLY #34577 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",0)
~ THEN BEGIN 1 // from:
  SAY #34578 /* ~"Halt, keinen Schritt weiter. Es kommt gleich wer, der sich deiner annimmt."~ */
  IF ~~ THEN REPLY #34579 /* ~"Verlaß dich nicht drauf. Wenn er hier auftaucht, bin ich längst weg."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34580 /* ~"Wie wär's, wenn wir ihm zur Begrüßung dein Blut anbieten? Ich werde gleich etwas davon vergießen."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34581 /* ~"Ist gut. Ich warte hier."~ */ EXIT
END

IF ~  Global("Paid_RA","AR0301",1)
~ THEN BEGIN 2 // from:
  SAY #34582 /* ~"Du hast gezahlt, nun kannste deiner Wege ziehen. Nutz deine Freiheit, so lange du sie noch hast."~ */
  IF ~~ THEN REPLY #34583 /* ~"Danke, das mach ich. Leb wohl."~ */ EXIT
END
