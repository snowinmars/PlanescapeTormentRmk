// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DESPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DESPEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53634 /* ~Dieser Mensch ist wohl etwas verärgert, weil du ihn von der Verurteilung und Exekution ablenkst, die gleich stattfinden wird. "Ja?"~ */
  IF ~~ THEN REPLY #57408 /* ~"Was geht hier vor sich?"~ */ GOTO 1
  IF ~~ THEN REPLY #57409 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57410 /* ~"Eine große, gemeine., blutige Hinrichtung, wenn es nach *uns* geht." Sie grinsen und wippen mit den Augenbrauen.~ */
  IF ~~ THEN REPLY #57411 /* ~"Was hat der Angeklagte getan?"~ */ GOTO 2
  IF ~~ THEN REPLY #57412 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57413 /* ~Sie zucken die Schultern. "Na und? Schuldig, schuldig, schuldig, schuldig, klar? Sonst kriegen wir doch nie Blut zu sehen!" Sie reiben sich erwartungsvoll die Hände.~ */
  IF ~~ THEN REPLY #57414 /* ~"Ihr verurteilt aus *Spaß* jemanden zum Tode?"~ */ GOTO 3
  IF ~~ THEN REPLY #57415 /* ~"Stimmt. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57416 /* ~Sie rollen mit den Augen. "Ich verurteile *niemanden*, du Dussel - das ist die Aufgabe des Richters. Wenn du irgendein Problem hast, sprich mit ihm. Und jetzt laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #57417 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #57418 /* ~Diese Person wirft dir nur einen genervten Blick zu. "Laß mich in Ruhe, okay? Ich beantworte deine Fragen nicht, also zieh Leine."~ */
  IF ~~ THEN REPLY #57419 /* ~Geh weg.~ */ EXIT
END
