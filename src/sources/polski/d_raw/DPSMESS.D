// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPSMESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPSMESS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #47024 /* ~Wygląda na to, że ten młodzieniec bardzo się spieszy. Kiedy go zatrzymujesz, spogląda na ciebie z pretensjami. Nie ma wątpliwości, że chciałby jak najszybciej odejść.~ */
  IF ~~ THEN REPLY #47025 /* ~"Mam do ciebie parę pytań."~ */ GOTO 1
  IF ~~ THEN REPLY #47026 /* ~"Jak masz na imię?"~ */ GOTO 1
  IF ~~ THEN REPLY #47027 /* ~"Co możesz mi powiedzieć o tym miejscu?"~ */ GOTO 1
  IF ~~ THEN REPLY #47031 /* ~"Mniejsza z tym. Możesz już iść."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #47029 /* ~Młodzieniec przerywa na chwilę, ale nie ma wątpliwości, że nie zwraca uwagi na twoje słowa. Rzuca ci szybkie "Nie wiem," a potem odchodzi.~ */
  IF ~~ THEN REPLY #47030 /* ~"W takim razie, żegnaj."~ */ EXIT
END
