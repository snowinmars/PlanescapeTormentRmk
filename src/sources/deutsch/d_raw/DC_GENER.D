// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_GENER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_GENER~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67980 /* ~Diese Person wendet sich dir mißmutig zu, als du sie unterbrichst. "*Kennen* wir uns? Nein... Hätt' mich auch gewundert. Und jetzt laß mich in Ruhe. Leb wohl."~ */
  IF ~~ THEN REPLY #67981 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67982 /* ~Diese Person hält inne und sieht dich an, als du versuchst, ihre Aufmerksamkeit zu erregen. "Nichts für ungut, Schleifer, aber ich rede nicht mit Fremden. Und ich will dich auch nicht kennenlernen. Such dir jemand anderen für deine Fragen, okay? Leb wohl."~ */
  IF ~~ THEN REPLY #67983 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67984 /* ~Die Person grinst und schneidet dir das Wort ab, bevor du auch nur grüßen kannst. "Ich will nichts hören. Kein Wort. Such dir jemand anderen für deine Fragespielchen, okay?"~ */
  IF ~~ THEN REPLY #67985 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67986 /* ~Die Person lächelt dich nervös an und macht eine abwehrende Handbewegung. "Ich versuche, mich von Ärger, Blut und deinesgleichen fernzuhalten, klar? Laß mich einfach in Ruhe... bitte."~ */
  IF ~~ THEN REPLY #67987 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67988 /* ~Diese Person hat dir nichts mehr zu sagen.~ */
  IF ~~ THEN REPLY #67989 /* ~Geh weg.~ */ EXIT
END
