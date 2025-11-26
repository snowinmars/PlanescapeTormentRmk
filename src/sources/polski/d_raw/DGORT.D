// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51179 /* ~Ta ogromna istota ma ponad dziewięć stóp wzrostu. Prężne mięśnie podtrzymują jej masywne ciało. Wydaje się być zajęta rozmową z dwiema podobnymi istotami stojącymi obok.~ */
  IF ~~ THEN REPLY #51180 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #51181 /* ~Zignoruj stworzenie.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51182 /* ~Odwraca się i spogląda w dół, na ciebie. Na twarzy widać wyraz zakłopotania. "Gort witać małego."~ */
  IF ~~ THEN REPLY #51183 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51184 /* ~"Nic, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51185 /* ~Obdarza cię przepraszającym spojrzeniem i potrząsa głową. "Gort nie mówić dobrze w twoja mowa. Przykro, zapytać Thorpa." Kiwa na jedno ze stworzeń obok.~ */
  IF ~~ THEN REPLY #51186 /* ~"W porządku, dziękuję."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51187 /* ~Widzisz Gorta. Patrzy na ciebie i uśmiecha się. "Gort witać cię znowu."~ */
  IF ~~ THEN REPLY #51188 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #51189 /* ~"Nieważne, żegnaj."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51190 /* ~Widzisz Gorta. Nisko się tobie kłania. "Gort witać cię, przyjacielu. Gort dziękuje za ty uratować jego życie." Odwraca się.~ */
  IF ~~ THEN REPLY #51191 /* ~Odejdź.~ */ EXIT
END
