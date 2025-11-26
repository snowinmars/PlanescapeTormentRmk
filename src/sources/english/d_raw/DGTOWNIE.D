// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGTOWNIE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGTOWNIE~

IF ~  GlobalLT("Gehreleth_Dead","AR0900",2)
~ THEN BEGIN 0 // from:
  SAY #67872 /* ~This person's eyes are wild with fear as the gehreleths lay waste to the crowd. "Save us, please!"~ */
  IF ~~ THEN REPLY #67873 /* ~"I'll see what I can do..."~ */ EXIT
END

IF ~  GlobalGT("Gehreleth_Dead","AR0900",1)
~ THEN BEGIN 1 // from:
  SAY #67874 /* ~"Thank you! Without you, they would have torn us apart!"~ */
  IF ~~ THEN REPLY #67875 /* ~"I know. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END
