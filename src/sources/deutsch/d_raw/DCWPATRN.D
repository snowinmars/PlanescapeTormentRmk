// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPATRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPATRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50860 /* ~"Bitte, Herr, ich habe zu tun. Ich wäre Euch dankbar, wenn Ihr die Güte hättet, mich in Ruhe zu lassen. Lebt wohl."~ */
  IF ~~ THEN REPLY #50861 /* ~Geh weg.~ */ EXIT
END
