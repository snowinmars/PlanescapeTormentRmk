// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_PIMP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_PIMP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67973 /* ~Krzepki strażnik Klątwy omiata cię spojrzeniem od stóp do głów. "To na pewno nie ze mną chcesz sobie uciąć pogawędkę, śmiałku, ale z nimi." Wskazuje na grupkę atrakcyjnych, ale trochę wyzywająco i nieprzystojnie wyglądających kobiet, zgromadzonych w komnacie za jego plecami. "Tylko bądź dla nich miły, śmiałku... Kobietki nie lubią brutali."~ */
  IF ~~ THEN REPLY #67975 /* ~"Mylisz się, to nie z nimi, a z tobą chcę porozmawiać."~ */ GOTO 1
  IF ~~ THEN REPLY #67976 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67974 /* ~Strażnik potrząsa głową a przez wąską szparę w jego hełmie możesz dostrzec, jak przewraca oczami. Nie odzywa się już ani słowem.~ */
  IF ~~ THEN REPLY #67977 /* ~Odejdź.~ */ EXIT
END
