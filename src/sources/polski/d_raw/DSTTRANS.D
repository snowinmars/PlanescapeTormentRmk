// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTTRANS~

IF ~  Global("Know_Tower_Key","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #62298 /* ~Zbliżasz się do miejsca, gdzie wedle słów chłopaka o imieniu Lazlo, znajduje się portal. Powtarzasz sobie w pamięci całą treść twojej rozmowy z Lazlo. "Może cały sekret wejścia do wieży, polega na tym, żeby po prostu nie chcieć tam wchodzić..." Słyszysz swoje własne słowa.~ */
  IF ~~ THEN REPLY #62299 /* ~Zduś w sobie wszelką ochotę na wejście w mury wieży.~ */ DO ~SetGlobal("Siege_Tower_Portal","AR0500",1)
SetPortalCursor("to0501",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0501",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #62300 /* ~Odejdź.~ */ EXIT
END
