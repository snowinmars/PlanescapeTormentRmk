// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWM~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61241 /* ~Widzisz robotnika, bardzo pochłoniętego swoją pracą. Pozostaje całkowicie obojętny na twoją obecność.~ */
  IF ~~ THEN REPLY #61242 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #61243 /* ~Nie zwracaj na niego uwagi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61244 /* ~"Wybacz mi, ale jestem naprawdę zajęty. Bardzo proszę, nie zawracaj mi głowy." Robotnik odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #61245 /* ~Odejdź.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61246 /* ~Widzisz pochłoniętego pracą robotnika. "Nie mam czasu na rozmowy. Jeżeli czegoś potrzebujesz, udaj się do mojego nadzorcy." Robotnik odwraca się do ciebie plecami.~ */
  IF ~~ THEN REPLY #61247 /* ~Odejdź.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61248 /* ~Widzisz pochłoniętego pracą robotnika. Wyraźnie krzywi się na twój widok. "Szpicuj się, trepie. Nie mam czasu na żadną klekotaninę." Robotnik już nie zwraca na ciebie uwagi.~ */
  IF ~~ THEN REPLY #61249 /* ~Odejdź.~ */ EXIT
END
