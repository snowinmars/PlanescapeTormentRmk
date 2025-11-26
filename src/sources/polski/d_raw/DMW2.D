// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47953 /* ~Widzisz silnego młodego mężczyznę. Wygląda na pochłoniętego sprawdzaniem zawartości skrzyń. Nie zauważa twojego przyjścia.~ */
  IF ~~ THEN REPLY #47954 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #47955 /* ~Zignoruj go.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47956 /* ~Zerka na ciebie przez ramię, po czym wraca znowu do pracy. "Wybacz śmiałku. Nie mogę przerwać, żeby z tobą pogadać. Mam zbyt dużo roboty." Wraca do pracy.~ */
  IF ~~ THEN REPLY #47957 /* ~"Mam kilka pytań..."~ */ GOTO 2
  IF ~~ THEN REPLY #47958 /* ~"Dobrze, żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47959 /* ~Kiedy dalej z tobą rozmawia, nie przerywa pracy. "Wybacz, ale musisz poszukać kogoś innego, żeby odpowiedział ci na twoje pytania, ja po prostu nie mam na to czasu. Spróbuj z chłopcem, Lazlem, jest zwykle przy piecu."~ */
  IF ~~ THEN REPLY #47960 /* ~Odejdź.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #47961 /* ~Widzisz robotnika pracującego na targu. Zauważa twoje przyjście i marszczy brwi. "Witaj znowu, śmiałku."~ */
  IF ~~ THEN REPLY #47962 /* ~"Mam kilka pytań..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47963 /* ~Wzdycha. "Pomógłbym ci, ale nie mam czasu. Spróbuj z chłopcem, Lazlem, zwykle jest koło pieca."~ */
  IF ~~ THEN REPLY #47964 /* ~"W porządku. Żegnaj."~ */ EXIT
END
