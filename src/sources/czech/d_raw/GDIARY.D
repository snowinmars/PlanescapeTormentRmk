// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GDIARY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~GDIARY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #30104 /* ~Knihu tvoří stříbrné plíšky tenké jako papír.  Na obálce je rytina ženy a na boku knihy je malý zámek, který vzdoruje všem tvým pokusům o otevření..~ */
  IF ~~ THEN REPLY #50095 /* ~"No, stejně jsem to nechtěl číst... tedy, alespoň zatím ne."~ */ EXIT
END
