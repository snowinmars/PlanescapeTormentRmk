// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVGGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVGGRD~

IF ~  !Dead("Barr")
~ THEN BEGIN 0 // from:
  SAY #56938 /* ~Der Wachposten mustert dich flüchtig mit gelangweilten, halbgeschlossenen Augen. "Falls du das Tor benutzen willst, dann ist Barr dein Schleifer..." Er nickt zu Barr hin, der vor dem Tor steht. "...wenn nicht, dann laß mich in Ruhe, ja?" Er sieht weg.~ */
  IF ~~ THEN REPLY #56939 /* ~Geh weg.~ */ EXIT
END

IF ~  Dead("Barr")
~ THEN BEGIN 1 // from:
  SAY #56940 /* ~Der Wachposten gähnt, als er dich mustert. "Ich hoffe, du wolltest nicht das Tor benutzen, Dussel... Jetzt, wo Barr tot ist, weiß keiner mehr, wie das Ding funktioniert." Er sieht weg.~ */
  IF ~~ THEN REPLY #56941 /* ~Geh weg.~ */ EXIT
END
