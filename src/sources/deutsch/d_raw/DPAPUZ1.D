// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ1~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49597 /* ~Es scheint, als ob der Dabus versucht hat, das alte Gebäude abzureißen. Einige Bretter des Gebäuderahmens sind lose, und die Nägel sind fast ganz aus ihnen herausgezogen worden. ~ */
  IF ~  PartyHasItem("Hammer")
~ THEN REPLY #49598 /* ~Nimm den Hammer, um die Bretter wieder anzunageln.~ */ DO ~SetGlobal("Alley_Puzzle_2","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49599 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49600 /* ~Du nagelst die Bretter sorgfältig wieder an. Als du einen Schritt zurücktrittst, um dein Werk zu begutachten, stellst du fest, daß das Gebäude seltsamerweise längst nicht mehr so alt wirkt, wie vorhin noch.~ */
  IF ~~ THEN REPLY #49602 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #59103 /* ~Die wackelige Unterkunft sieht aus, als stünde sie schon seit Jahrhunderten dort. Die Holzwände sind verwittert und altersschwach. Auf dieser Seite des Hauses scheint es, als wären einige Bretter vor kurzem gelöst worden.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #59105 /* ~Untersuch das Gebäude.~ */ GOTO 0
  IF ~~ THEN REPLY #59106 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #59107 /* ~Die losen Bretter wurden ordentlich wieder angenagelt, was dem Gebäude seinen besonderen heruntergekommenen Charme zurückgibt. ~ */
  IF ~~ THEN REPLY #59108 /* ~Geh weg.~ */ EXIT
END
