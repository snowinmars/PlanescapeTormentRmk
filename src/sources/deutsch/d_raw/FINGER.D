// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FINGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~FINGER~

IF ~  Global("Finger","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #17479 /* ~Dies ist der fast vollständig verrottete Fingerknochen eines humanoiden Wesens von ungefähr deiner Größe. Auf dem Finger steckt ein merkwürdiger, aufwendig gearbeiteter Ring mit Dutzenden von winzigen, reich verzierten Wulsten und dekorativen Vorsprüngen.~ */
  IF ~~ THEN REPLY #17485 /* ~Zieh den Ring vom Finger.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #17486 /* ~Leg den Fingerknochen beiseite.~ */ DO ~SetGlobal("Finger","GLOBAL",1)
~ EXIT
END

IF ~  Global("Finger","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17480 /* ~Du holst den alten Fingerknochen hervor, um ihn dir noch einmal genau anzusehen. Es ist der fast vollständig verrottete Fingerknochen eines humanoiden Wesens von ungefähr deiner Größe. Auf dem Finger steckt ein merkwürdiger, aufwendig gearbeiteter Ring mit Dutzenden von winzigen, reich verzierten Wulsten und dekorativen Vorsprüngen.~ */
  IF ~~ THEN REPLY #17487 /* ~Zieh den Ring vom Finger.~ */ GOTO 2
  IF ~~ THEN REPLY #17488 /* ~Leg den Fingerknochen beiseite.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #17481 /* ~So sehr du dich auch bemühst, der Ring geht nicht ab. Es ist, als hätten sich die scharfen Kanten des Rings in dem leblosen Finger festgekrallt, um ihn nie mehr loszulassen. Doch irgend etwas kommt dir merkwürdig vor...~ */
  IF ~  HPLT(Protagonist,5)
~ THEN REPLY #17489 /* ~Nimm den eigenen Finger ab und ersetze ihn durch den Fingerknochen.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 3
  IF ~  HPGT(Protagonist,4)
~ THEN REPLY #17490 /* ~Nimm den eigenen Finger ab und ersetze ihn durch den Fingerknochen.~ */ DO ~Damage(Protagonist,LOWER,4)
~ GOTO 4
  IF ~~ THEN REPLY #17491 /* ~Leg den Fingerknochen beiseite.
~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17482 /* ~Du steckst den Ringfinger deiner linken Hand in den Mund, schließt die Augen, holst tief Luft und beißt zu, so fest du kannst. Es *knirscht* entsetzlich, und plötzlich riecht und schmeckt alles nach Blut. Leider verkraftet dein Körper diese Qual nicht mehr, und du sinkst sterbend zu Boden.~ */
  IF ~~ THEN REPLY #17492 /* ~Geschafft.
~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #17483 /* ~Du steckst den Ringfinger deiner linken Hand in den Mund, schließt die Augen, holst tief Luft und beißt zu, so fest du kannst. Es *knirscht* entsetzlich, und plötzlich riecht und schmeckt alles nach Blut. Du spuckst den blutigen Finger aus und drückst den alten, beringten Finger gegen den blutüberströmten Stummel...~ */
  IF ~~ THEN REPLY #17493 /* ~Weiter...~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #17484 /* ~Zunächst passiert überhaupt nichts. Der Gedanke an das, was du soeben getan hast, erfüllt dich mit Schrecken. Doch plötzlich spürst du ein seltsames Kribbeln, als ob die Knochen und Sehnen wieder zusammenwachsen würden. Kurz darauf ist der verrottete Finger ein lebendiger Teil deines Körpers, trotz des noch pochenden Schmerzes. Der gezackte Ring löst sich plötzlich und gleitet in deine Handfläche.~ */
  IF ~~ THEN REPLY #17494 /* ~Geschafft.~ */ DO ~TransformPartyItem("Finger","Jring",1,0,0)
~ EXIT
END
