// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2826 /* ~"Wer, im Abgrund, bist du? Geh und sprich mit dem Verrotteten William. Wenn er deine Antworten nicht mag, schlitzt er dich auf. Und wenn du nicht mit ihm sprichst, schlitzen wir dich auf. Also los!"~ */
  IF ~~ THEN REPLY #3550 /* ~Verschwinde.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3551 /* ~"Bei den Mächten! Hast du nicht gehört, daß du mit dem Verrottetem William reden sollst? Du dummer, dummer Dussel. DUNKELGASSEN-SCHLITZER! GREIFT AN!"~ */
  IF ~~ THEN REPLY #3552 /* ~Lauf weg.~ */ EXIT
  IF ~~ THEN REPLY #3553 /* ~Greif ihn an.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3554 /* ~"Du hast diese Wache getötet? Gut so. Er hat wirklich unseren Stil verdorben. Sprich mit William. Er wird was Nettes für dich finden."~ */
  IF ~~ THEN REPLY #3555 /* ~Geh.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3556 /* ~"Sei still und schaff diese stinkende Wache fort! Unser Leben ist in Gefahr, Schlucker!"~ */
  IF ~~ THEN REPLY #3557 /* ~Geh.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3558 /* ~"Ich hab's ja gewußt, daß diese selbstgerechte Braut sich früher oder später abmurksen lassen würde. Geh und sprich mit dem Verrotteten William. Er hat dir was zu sagen."~ */
  IF ~~ THEN REPLY #3559 /* ~Geh.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3560 /* ~"Gibt's da nicht irgendeinen Nichtsnutz, den du umlegen kannst?"~ */
  IF ~~ THEN REPLY #3561 /* ~Geh.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3562 /* ~"Du! Stirb! DUNKELGASSEN-SCHLITZER! GREIFT AN!"~ */
  IF ~~ THEN REPLY #3563 /* ~Greif an.~ */ DO ~Enemy()
SetGlobal("0301_Bad_Angry","AR0301",1)
~ EXIT
  IF ~~ THEN REPLY #3564 /* ~Lauf weg.~ */ EXIT
END
