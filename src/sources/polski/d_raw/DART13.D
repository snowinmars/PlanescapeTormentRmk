// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART13.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART13~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34205 /* ~Wygląda na to, że na obrazie namalowano jakiś podziemny krajobraz... wnętrze ogromnej groty wypełniają olbrzymie, kolorowe, lekko świecące grzyby. Na podpisie widnieją słowa: 'Kotlina u stóp Clanggedin'.~ */
  IF ~~ THEN REPLY #42680 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_13","AR0608",1)
~ EXIT
END
