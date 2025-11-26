// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33542 /* ~Zbir ma nachmurzoną minę, która nadaje jego twarzy groteskowy wygląd. Gdy podchodzisz, mruży oczy.~ */
  IF ~~ THEN REPLY #33545 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #33546 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33543 /* ~"Zamknij swój szpicowaty ryj, wstrętny bękarcie! Nikt nie pozwolił ci do mnie mówić! A teraz skurl się, zanim rozkwaszę ci mordę!"~ */
  IF ~~ THEN REPLY #33544 /* ~"Spróbuj, a przybędzie ci trochę nowych blizn."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33547 /* ~Odejdź.~ */ EXIT
END
