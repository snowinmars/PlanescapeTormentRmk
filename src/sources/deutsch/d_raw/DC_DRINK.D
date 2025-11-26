// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_DRINK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_DRINK~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67935 /* ~Als du sie unterbrichst, dreht sich diese Person verächtlich dreinblickend um. Nachdem sie dich kurz gemustert hat, weicht ihr Ausdruck einem schmallippigen Stirnrunzeln. Sie nickt dir gequält respektvoll zu, dann wendet sie sich wieder ab.~ */
  IF ~~ THEN REPLY #67936 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67937 /* ~Diese Person dreht sich um und sieht kaum von ihrem Drink empor. "Ich kann dir nicht helfen, ich kann deine Fragen nicht beantworten... Also laß mich einfach in Ruhe. Leb wohl."~ */
  IF ~~ THEN REPLY #67938 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67939 /* ~Sie dreht sich um und sieht dich zornig an. "Was? Siehst du nicht, daß ich beschäftigt bin? Wenn ich mit dir reden wollte, dann hätte ich schon selbst ein Gespräch angefangen." Sie wendet sich ab und schüttelt den Kopf.~ */
  IF ~~ THEN REPLY #67940 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67941 /* ~Diese Person dreht sich um und sieht dich nervös an. "Ich kann dir nicht verbieten, etwas zu trinken, aber ich werde nicht mit dir sprechen. Basta." Sie wendet sich ab und trinkt weiter.~ */
  IF ~~ THEN REPLY #67942 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67943 /* ~Die Person hat dir nichts mehr zu sagen.~ */
  IF ~~ THEN REPLY #67944 /* ~Geh weg.~ */ EXIT
END
