// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34196 /* ~Povrch tohoto obrazu ... divoká koláž sytých barev... se neustále vlní, jako by to byla hladina rybníka během slabého deště. Na destičce vedle je napsáno "Studie Pohybu Vln #7."~ */
  IF ~~ THEN REPLY #42693 /* ~Dotkni se malby.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42696 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42691 /* ~Pokládáš dlaň na plátno... necítíš, jak se chvěješ, ačkoliv je chladno, při prvním kontaktu projde tvojí rukou brnivý pocit.~ */
  IF ~~ THEN REPLY #42698 /* ~Odejít.~ */ EXIT
END
