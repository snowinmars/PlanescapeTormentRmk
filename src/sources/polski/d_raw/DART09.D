// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34201 /* ~Malowidło ukazuje coś, co przypomina nieskończenie długi strumień gazu, który ginie w ciemnościach. Strumień ma zielony, wywołujący mdłości kolor. W prawym dolnym rogu obrazu widnieje spopielona, skalista równina... patrząc na malowidło można odnieść wrażenie, że 'czoło' zielonej chmury przygotowuje się, aby uderzyć na tę równinę. Na podpisie widnieją słowa: 'Hazazoth pożera N'gar.'~ */
  IF ~~ THEN REPLY #42673 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_09","AR0608",1)
~ EXIT
END
