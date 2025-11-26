// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MONJUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~MONJUG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #50429 /* ~Jest to ciężki, prosty, metalowy dzbanek z zatyczką na zawiasach. Pomimo jego zwyczajnego wyglądu nie masz ochoty go dotknąć - tak jakby miał cię zaraz ugryźć. Powiedziano ci, że w środku został uwięziony jakiś potwór. Zaglądasz do środka przez dzióbek, ale nie widzisz niczego poza atramentową czernią.~ */
  IF ~~ THEN REPLY #50432 /* ~Odwróć dzbanek, żeby zobaczyć, czy coś nie wyłazi.~ */ GOTO 1
  IF ~~ THEN REPLY #50433 /* ~Odłóż dzbanek.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50434 /* ~Z początku nic się nie dzieje... a potem czarny, lepki płyn zaczyna wylewać się z bulgotem przez dzióbek, tworząc na ziemi zamuloną kałużę parującej, smolnej brei. W miarę jak dzbanek zaczyna rozpuszczać ci się w dłoniach, kałuża zaczyna wić się i skręcać, wreszcie podnosi się, aby uformować wysokiego, szkaradnego stwora.~ */
  IF ~~ THEN REPLY #50435 /* ~"Co do...?"~ */ DO ~CreateCreatureAtFeet("Geherl")
DestroyPartyItem("MonJug",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 2 // from:
  SAY #64980 /* ~Jest to ciężki, prosty, metalowy dzbanek z zatyczką na zawiasach. Pomimo jego zwyczajnego wyglądu nie masz ochoty go dotknąć - tak jakby miał cię zaraz ugryźć. Powiedziano ci, że w środku został uwięziony jakiś potwór. Zaglądasz do środka przez dzióbek, ale nie widzisz niczego poza atramentową czernią.~ */
  IF ~~ THEN REPLY #64981 /* ~Odwróć dzbanek, żeby zobaczyć, czy coś nie wyłazi.~ */ GOTO 3
  IF ~~ THEN REPLY #64982 /* ~Odłóż dzbanek.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64983 /* ~Czarny, lepki płyn zaczyna wylewać się przez dzióbek, tworząc na ziemi zamuloną kałużę parującej smolnej brei. Poza tym rozgardiaszem, nic innego się nie dzieje.~ */
  IF ~~ THEN REPLY #64984 /* ~Wyrzuć pusty dzbanek.~ */ DO ~DestroyPartyItem("MonJug",FALSE)
~ EXIT
END
