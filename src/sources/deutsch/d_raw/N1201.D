// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : N1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~N1201~

IF ~  True()
~ THEN BEGIN 0 // from: 1.6 3.0
  SAY #44993 /* ~Auf diesem stinkenden Zettel ist unter einem Stück Text ein seltsames Diagramm erkennbar. Du verstehst es als Anleitung, alle Ecken auf die Mitte zu falten. In jeder Ecke stehen mehrere seltsame Zeichen: ein Zeichen oben rechts, zwei unten rechts und drei unten links. In der oberen linken Ecke steht gar nichts. ~ */
  IF ~~ THEN REPLY #44994 /* ~Falte die obere rechte Ecke zur Mitte.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44995 /* ~Falte die untere rechte Ecke zur Mitte.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44996 /* ~Falte die untere linke Ecke zur Mitte.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44997 /* ~Falte die obere linke Ecke zur Mitte.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44998 /* ~Laß den Zettel einfach liegen. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
  SAY #44999 /* ~Du faltest die Ecke so nach innen, daß sie mit der Spitze auf dem Mittelpunkt liegt. ~ */
  IF ~  Global("UR_1201","GLOBAL",0)
~ THEN REPLY #45000 /* ~Falte die obere rechte Ecke zur Mitte.~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45001 /* ~Falte die untere rechte Ecke zur Mitte.~ */ DO ~SetGlobal("1201_Note","GLOBAL",2)
SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45002 /* ~Falte die untere rechte Ecke zur Mitte.~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("LL_1201","GLOBAL",0)
~ THEN REPLY #45003 /* ~Falte die untere linke Ecke zur Mitte.~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45004 /* ~Falte die obere linke Ecke zur Mitte.~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45005 /* ~Falte die obere linke Ecke zur Mitte.~ */ GOTO 2
  IF ~~ THEN REPLY #45006 /* ~Entfalte den Zettel und fang noch mal von vorn an.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 0
  IF ~~ THEN REPLY #45008 /* ~Entfalte den Zettel, und laß ihn dann liegen.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY #45015 /* ~Als du die obere linke Ecke nach innen faltest, siehst du, wie die obere rechte Ecke in ihre normale Lage zurückkehrt. ~ */
  IF ~~ THEN REPLY #45016 /* ~Falte die obere rechte Ecke wieder zur Mitte. ~ */ GOTO 4
  IF ~~ THEN REPLY #45017 /* ~Falte die untere linke Ecke nach innen.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 3
  IF ~~ THEN REPLY #45018 /* ~Entfalte den Zettel, und laß ihn dann liegen.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45019 /* ~Als du die untere linke Ecke nach innen faltest, bleibt sie kurz so liegen, aber dann gehen die anderen beiden Ecken auf. Sonst rührt sich nichts. ~ */
  IF ~~ THEN REPLY #45020 /* ~Schau dir den Zettel noch mal genau an.~ */ GOTO 0
  IF ~~ THEN REPLY #45021 /* ~Leg den Zettel weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #45022 /* ~Als du die obere rechte Ecke erneut nach innen faltest, knickt sich die untere linke Ecke ebenfalls spiegelbildlich nach innen. Es folgen die anderen beiden Ecken, bis alle sich mit der Spitze in der Mitte berühren. Dann richten sich die Ecken des Zettels zu einer kleinen vierseitige Papierpyramide auf.~ */
  IF ~~ THEN REPLY #45023 /* ~Öffne die Seiten der Pyramide.~ */ DO ~AddexperienceParty(250)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45024 /* ~Als du die Seiten der Pyramide wieder nach unten biegen willst, zerfällt das Papier zu Staub. Darin liegt ein kleiner dreieckiger Ohrring, der das Licht einfängt und strahlend glänzt.~ */
  IF ~~ THEN REPLY #45025 /* ~Nimm den dreieckigen Ohrring...~ */ DO ~GiveItemCreate("TEarring",Protagonist,3,0,0)
DestroyPartyItem("N1201",TRUE)
~ EXIT
END
