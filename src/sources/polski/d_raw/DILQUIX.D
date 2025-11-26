// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIX~

IF ~~ THEN BEGIN 0 // from:
  SAY #3069 /* ~Widzisz szeroką w barach, ogromną postać o czterech ramionach i głowie psa. Jedna para jego potężnie umięśnionych ramion zakończona jest przerażającymi, wyszczerbionymi szczypcami, które wyglądają jakby mogły wydrzeć samą duszę ze swojej ofiary. Jego głos jest zaskakująco miękki. "Ach, podróżniku! Widzę, że przynosisz ze sobą wartościowych kompanów i..." przerywa by wciągnąć powietrze, "...*rozkoszny* zapach. Anno, znałem twego ojca - nawet teraz nie jest mu lekko w Otchłani. I Panna Nie-Sława; twoja matka, Czerwony Welon, na pewno ucieszy się na wieść, że masz się dobrze."~ */
  IF ~~ THEN REPLY #3367 /* ~"Cała przyjemność po mojej stronie. Mam kilka pytań do ciebie..."~ */ EXIT
END
