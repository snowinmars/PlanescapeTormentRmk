// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGTOWNIE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGTOWNIE~

IF ~  GlobalLT("Gehreleth_Dead","AR0900",2)
~ THEN BEGIN 0 // from:
  SAY #67872 /* ~Die Augen dieser Person sind angsterfüllt, während die Gehreless über die Menge herfallen. "Rette uns, bitte!"~ */
  IF ~~ THEN REPLY #67873 /* ~"Ich werde sehen, was ich tun kann..."~ */ EXIT
END

IF ~  GlobalGT("Gehreleth_Dead","AR0900",1)
~ THEN BEGIN 1 // from:
  SAY #67874 /* ~"Danke! Wenn du nicht gewesen wärst, hätten sie uns in Stücke gerissen!"~ */
  IF ~~ THEN REPLY #67875 /* ~"Ich weiß. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END
