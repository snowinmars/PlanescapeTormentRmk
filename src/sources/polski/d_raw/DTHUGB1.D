// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1904 /* ~Widzisz mocno zbudowanego mężczyznę o kamiennym wyrazie twarzy.~ */
  IF ~~ THEN REPLY #1905 /* ~"Witaj."~ */ GOTO 1
  IF ~~ THEN REPLY #1906 /* ~Nie zatrzymuj się.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1907 /* ~Mężczyzna patrzy na ciebie przez chwilę, chrząka, a potem unosi dłoń, pokazując przemyślny sztylet. Uśmiecha się ze złośliwie i zaczyna groźnie nim obracać.~ */
  IF ~~ THEN REPLY #1908 /* ~Zaatakuj go.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1909 /* ~"Uch. Żegnaj..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
