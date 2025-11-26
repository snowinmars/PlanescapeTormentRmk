// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWF~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61250 /* ~Widzisz robotnicę, bardzo pochłoniętą swoją pracą. Pozostaje całkowicie obojętna wobec twojej obecności.~ */
  IF ~~ THEN REPLY #61251 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #61252 /* ~Nie zwracaj na nią uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61253 /* ~"Wybacz, śmiałku, ale jestem bardzo zajęta. Nie przeszkadzaj mi." Kobieta odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #61254 /* ~Odejdź.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61255 /* ~Widzisz pochłoniętą pracą robotnicę. "Nie mam czasu na rozmowy z tobą, śmiałku. Jeżeli czegoś potrzebujesz, udaj się do mojego nadzorcy." Robotnica odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #61256 /* ~Odejdź.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61257 /* ~Widzisz pochłoniętą pracą robotnicę. Wyraźnie krzywi się na twój widok. "Szpicuj się, trepie. Nie mam czasu na bezsensowną klekotaninę." Robotnica już nie zwraca na ciebie uwagi.~ */
  IF ~~ THEN REPLY #61258 /* ~Odejdź.~ */ EXIT
END
