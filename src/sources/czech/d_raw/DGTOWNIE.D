// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGTOWNIE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGTOWNIE~

IF ~  GlobalLT("Gehreleth_Dead","AR0900",2)
~ THEN BEGIN 0 // from:
  SAY #67872 /* ~Jeho oči jsou plné strachu, odráží se v nich masakr, způsobený gethrelety v davu. "Zachraň nás, prosím!"~ */
  IF ~~ THEN REPLY #67873 /* ~"Uvidím, co s tím půjde udělat..."~ */ EXIT
END

IF ~  GlobalGT("Gehreleth_Dead","AR0900",1)
~ THEN BEGIN 1 // from:
  SAY #67874 /* ~"Děkuju ti! Bez tebe by nás roztrhali na kusy!"~ */
  IF ~~ THEN REPLY #67875 /* ~"Já vím. Sbohem."~ */ DO ~EscapeArea()
~ EXIT
END
