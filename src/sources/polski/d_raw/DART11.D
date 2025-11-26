// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART11.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DART11~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34203 /* ~Malowidło ukazuje ogromny granitowy donżon - złowieszczy, długi i niski, pokryty lubieżnie spoglądającymi gargulcami, które wydają się zawisać na nocnym niebie. Po prawej stronie obrazu widać unoszącą chmurę purpurowej mgiełki. Na podpisie widnieje tylko słowo: 'Biblioteka'.~ */
  IF ~~ THEN REPLY #42678 /* ~Odejdź.~ */ DO ~SetGlobal("View_Art_11","AR0608",1)
~ EXIT
END
