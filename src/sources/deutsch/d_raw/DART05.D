// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34193 /* ~Dieses Bild, ein abstraktes Werk in Grün- und Lilatönen, windet und kräuselt sich unter dem Blick des Betrachters. Bei näherem Hinsehen zeigt sich, daß sich nicht die Leinwand ändert, sondern das gemalte Bild selbst. Auf einer Plakette steht: 'Kurzer Blick von den Mauern Moch'chmas.'~ */
  IF ~~ THEN REPLY #42720 /* ~Berühre das Bild.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42721 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42719 /* ~Du legst deine Hand auf das Bild... Genau wie du erwartet hattest, bewegt sich nicht die Leinwand, sondern es verändert sich die dargestellte Szene selbst.~ */
  IF ~~ THEN REPLY #42722 /* ~Geh weg.~ */ EXIT
END
