// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART12.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART12~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34204 /* ~Na tym obrazie przedstawiono mroczny widok miasta, daleki widok jakiegoś ogromnego centrum cywilizacji w czasie wielkiego pożaru. Jednak ulice są puste, nie widać żadnych żołnierzy, uciekających mieszkańców, a nawet trupów. Na podpisie widnieją słowa: 'Szaleństwo Udo'.~ */
  IF ~~ THEN REPLY #42679 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_12","AR0608",1)
~ EXIT
END
