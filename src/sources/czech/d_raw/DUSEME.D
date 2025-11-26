// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUSEME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DUSEME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Tenhle starší muž zírá do svého korbele piva, do jeho rysů je vepsaná beznaděj. Džbánek je podivný, popsaný zvláštními runami a je pokrytý jinovatkou. Muž se na tebe podíval. "Zdravím... pane." Vypadá trochu opile.~ */
  IF ~~ THEN REPLY #3023 /* ~Tetování Vzdoru~ */ EXIT
  IF ~~ THEN REPLY #7234 /* ~"Něco špatného?"~ */ EXIT
END
