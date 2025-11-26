// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3174 /* ~"Proszę! Ocal mnie! Próbują mnie zabić tylko dlatego, że wykonywałem swoją pracę! Nikomu nie chciałem zrobić żadnej krzywdy! Czy oni nie widzą, że to przez nich to miasto zamieni się w ruinę?" Mężczyzna zaczyna łkać. "Proszę... musisz coś zrobić!"~ */
  IF ~~ THEN REPLY #3175 /* ~"Chyba po prostu stanę i będę patrzył, jak umierasz."~ */ EXIT
  IF ~~ THEN REPLY #66758 /* ~"Zrobię co w mojej mocy."~ */ EXIT
END
