// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34200 /* ~Masz przed sobą malowidło wysokich, czarnych klifów rysujących się na krwisto-czerwonym niebie. Wydaje ci się, że w pęknięciach klifów dostrzegasz jakieś postacie, ale kiedy chcesz im się przyjrzeć, rozpływają się w nicość. Na podpisie widnieją słowa: 'Najeźdźcy z Krain Zewnętrznych."~ */
  IF ~~ THEN REPLY #42672 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_08","AR0608",1)
~ EXIT
END
