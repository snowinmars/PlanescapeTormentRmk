// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34193 /* ~Malba, tvořená abstraktní směsí zelené a purpurové, se pod pohledem kroutí a vlní. Bližší prozkoumání odhalilo, že se mění samotná malba a ne plátno, na kterém je namalována. Na destičce je napsáno 'Chvilkový pohled ze zdi Moch'chmy.'~ */
  IF ~~ THEN REPLY #42720 /* ~Dotkni se malby.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42721 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42719 /* ~Položil jsi ruku na malbu... jak jsi předpokládal, není to tak, že by se fyzicky pohybovalo plátno, ale že se mění samotný namalovaný obraz.~ */
  IF ~~ THEN REPLY #42722 /* ~Odejít.~ */ EXIT
END
