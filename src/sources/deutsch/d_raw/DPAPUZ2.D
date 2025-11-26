// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ2~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49588 /* ~Es scheint, als ob der Dabus dabei war, das Gebäude instand zu setzen. Mehrere neue und stabilere Bretter wurden auf die alten genagelt. Mit dem geeigneten Werkzeug könnte man die Instandsetzungen möglicherweise rückgängig machen.~ */
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #49590 /* ~Nimm das Stemmeisen zum Lösen der Bretter.~ */ DO ~SetGlobal("Alley_Puzzle_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49589 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49593 /* ~Nacheinander brichst du jedes einzelne neue Brett aus der Gebäudefassade heraus. Als du das letzte Brett abgenommen hast, gibt das Gebäude ein lautes Stöhnen von sich, da sein Gewicht sich auf seinem nun ungestützten Rahmen ungleichmäßig verteilt.~ */
  IF ~~ THEN REPLY #49603 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #58919 /* ~Das Gebäude ist so verfallen, daß es jeden Augenblick in sich zusammenzustürzen scheint. Mehrere Bretter sind kürzlich zur Unterstützung des zusammensackenden Gebäudes befestigt worden.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #58920 /* ~Untersuche das Gebäude genauer.~ */ GOTO 0
  IF ~~ THEN REPLY #58921 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #58922 /* ~Das Gemäuer ist so verfallen, daß es jeden Augenblick in sich zusammenzustürzen scheint. Die Bretter, die der Dabus angebracht hatte, wurden entfernt, so daß die Bruchbude wieder in ihrem vorherigen zerfallenen Zustand ist.~ */
  IF ~~ THEN REPLY #58923 /* ~Geh weg.~ */ EXIT
END
