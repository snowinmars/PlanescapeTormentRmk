// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34196 /* ~Die Oberfläche dieses Bildes... einer wilden Collage lebhafter Farben... schlägt ständig kleine Wellen, als ob es die Oberfläche eines Teiches bei leichtem Regen wäre. Eine Plakette weist es als "Wellenbewegungsstudie Nr. 7" aus.~ */
  IF ~~ THEN REPLY #42693 /* ~Berühre das Bild.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42696 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42691 /* ~Du legst deine Handflächen auf die Leinwand... Du spürst zwar nicht die Wellen selbst, doch deine Hand durchläuft sogleich ein kühles, kribbelndes Gefühl.~ */
  IF ~~ THEN REPLY #42698 /* ~Geh weg.~ */ EXIT
END
