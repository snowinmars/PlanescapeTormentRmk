// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34187 /* ~Setki przezroczystych zielonych szkiełek tworzących witraż sprawiają, że okno zdaje się być nieuchwytną czarowną zjawą, unosząca się w powietrzu bez żadnego podparcia, a tylko sekretnym sposobem schwytaną w klatkę żelaznego obramowania. Szklane cząstki marszczą się i drżą w przypływach leniwych fal, tworząc na powierzchni okna osobliwe wzory i rozsiewając światło galerii na wszystkie strony. Na niewielkiej tabliczce przytwierdzonej z boku okna widać napis: 'Arkadyjski witraż'.~ */
  IF ~~ THEN REPLY #42709 /* ~Dotknij szyby.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42710 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42706 /* ~Wyciągasz dłonie, aby dotknąć falującej szklanej tafli, ale spostrzegasz, że nie jesteś w stanie tego uczynić. Jakaś niewidzialna siła powstrzymuje twoje dłonie tuż przy szkle."~ */
  IF ~~ THEN REPLY #42714 /* ~Stłucz szybę.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sglass_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #42717 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42708 /* ~Owocem twoich wysiłków są tylko poobijane nadgarstki; Równie dobrze mógłbyś próbować stłuc żelazną płytę.~ */
  IF ~~ THEN REPLY #42718 /* ~Odejdź.~ */ EXIT
END
