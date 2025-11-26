// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43023 /* ~Diese Person trainiert verschiedene Angriffsvarianten an einer hölzernen Übungspuppe. Sie scheint viel zu beschäftigt zu sein, als daß sie mit dir reden könnte.~ */
  IF ~~ THEN REPLY #43024 /* ~Geh weg.~ */ EXIT
END
