// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOADY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOADY~

IF ~  GlobalLT("Sarhava","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #32066 /* ~Młody szlachcic uśmiecha się szyderczo na twój widok, ale nie odzywa się.~ */
  IF ~~ THEN REPLY #32067 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #32073 /* ~Daj mu spokój.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #32069 /* ~Najwyraźniej szlachcic obrał sobie za punkt honoru kompletne ignorowanie twojej obecności.~ */
  IF ~~ THEN REPLY #32074 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #32070 /* ~Młody szlachcic unika twojego spojrzenia, ale na twój widok zaśmiewa się ukradkiem, potrząsając głową.~ */
  IF ~~ THEN REPLY #32075 /* ~"Witaj..."~ */ GOTO 3
  IF ~~ THEN REPLY #32076 /* ~Daj mu spokój.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32071 /* ~Młodzieniec przewraca oczami i odprawia cię gestem dłoni, ani słowem nie próbując odwzajemnić twojego powitania.~ */
  IF ~~ THEN REPLY #32077 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Sarhava","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY #32072 /* ~Młody szlachcic grzecznie odkłania się, ale jest jak najdalszy od wciągania się w konwersacje z tobą.~ */
  IF ~~ THEN REPLY #32078 /* ~Odejdź.~ */ EXIT
END
