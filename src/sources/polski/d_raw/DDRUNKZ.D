// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRUNKZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRUNKZ~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9711 /* ~Mężczyzna ów chwieje się niepewnie w przód i w tył, stara się przez chwilę utrzymać równowagę, następnie obrzuca mdłym, wykrzywionym uśmiechem coś znajdującego się tuż koło twego prawego ucha.~ */
  IF ~~ THEN REPLY #9864 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #9866 /* ~Zostaw go.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9855 /* ~Kiwa powoli głową, po czym zaczyna mamrotać pełną flegmy gębą i z jego ust wypływa wąska strużka śliny, która spływa w dół po jego niechlujnej, pokrytej brudem brodzie. Wygląda na to, że ledwo może on ustać na nogach, a co dopiero prowadzić rozmowę.~ */
  IF ~~ THEN REPLY #9867 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END
