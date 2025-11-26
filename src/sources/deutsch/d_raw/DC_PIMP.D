// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_PIMP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_PIMP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67973 /* ~Der stämmige Wachmann von Verdammnis mustert dich von Kopf bis Fuß. "Bei mir bist du an der falschen Adresse, Schleifer... Red mit denen." Er zeigt in Richtung einiger attraktiver, wenn auch etwas billig aussehender Frauen im Raum hinter ihm. "Und sei nett zu ihnen, Schleifer... Sei nicht grob zu den Damen."~ */
  IF ~~ THEN REPLY #67975 /* ~"Eigentlich wollte ich mit *dir* sprechen..."~ */ GOTO 1
  IF ~~ THEN REPLY #67976 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67974 /* ~Er schüttelt den Kopf. Durch den schmalen Schlitz in seinem Helm siehst du, wie er die Augen verdreht. Er spricht nicht mehr mit dir.~ */
  IF ~~ THEN REPLY #67977 /* ~Geh weg.~ */ EXIT
END
