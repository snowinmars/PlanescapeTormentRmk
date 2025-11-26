// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_CTZN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_CTZN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67990 /* ~Osobnik ten mierzy cię przez moment wściekłym spojrzeniem, a potem odwraca się z powrotem do tłumu. Najwyraźniej rozmowa, którą właśnie mu przerwałeś, jest dla niego znacznie bardziej wartościowa, niż twoje towarzystwo.~ */
  IF ~~ THEN REPLY #67993 /* ~"Mam tylko kilka pytań..."~ */ GOTO 1
  IF ~~ THEN REPLY #67994 /* ~"Zatem żegnaj...~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67991 /* ~Odpowiedź jest szybka, krótka i niecierpliwa. "Przeszkadzasz mi." Wraca do rozmowy. "Ależ oczywiście, że nie..."~ */
  IF ~~ THEN REPLY #67992 /* ~"Zatem dobrze. Żegnaj."~ */ EXIT
END
