// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34193 /* ~Obraz ten, abstrakcyjny gąszcz zielonych i purpurowych plam, skręca się i marszczy pod dotknięciem twojego spojrzenia. Bliższe oględziny pozwalają ci stwierdzić, że żywiołem ruchu nie jest ogarnięte płótno, ale same wymalowane formy. Pobliska tabliczka komunikuje: 'Rzut oka z Murów Moch'chm'.~ */
  IF ~~ THEN REPLY #42720 /* ~Dotknij malowidła.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42721 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42719 /* ~Kładziesz swoją dłonią na powierzchni malowidła... i dokładnie tak, jak tego oczekiwałeś, wyczuwasz, że to nie płótno podlega zmianom i ciągłemu ruchowi, ale samo wyobrażenie, efekt malarskiego trudu.~ */
  IF ~~ THEN REPLY #42722 /* ~Odejdź.~ */ EXIT
END
