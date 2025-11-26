// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBPORTAL~

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #52724 /* ~Ve skále je průrva. Asi by ses jí dokázal protáhnout - velice těsně - ale nevypadá to, že by někam vedla. Všiml sis, že země kolem je poseta úlomky obsidiánu, které tady nejspíš zůstaly po jedné z občasných ohnivých explozí, jichž jsi byl už několikrát svědkem.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #52725 /* ~Zvedni úlomek obsidiánu, strč si ho do úst a zakousni se tak, aby ti pořezal jazyk...~ */ DO ~SetGlobal("BD1000_Port_Active","GLOBAL",1)
SetPortalCursor("Baator_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Baator_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Portal_Open","GLOBAL",0)
~ GOTO 1
  IF ~~ THEN REPLY #52778 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52779 /* ~Jak se zubatý kus vulkanického skla zakousl do tvého jazyka, ucítil jsi v ústech podivné chvění. Okolí se zatřáslo a náhle je tam portál...~ */
  IF ~~ THEN REPLY #52780 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #68118 /* ~Ve skále je štěrbina. Vypadá to, že by ses dokázal protáhnout skrz - ale jenom těsně - jenže nikam nevede. Všiml sis, že země je pokryta úlomky obsidiánu, zřejmě tady zůstaly po jednom z výbuchů, které způsobují občasné ohnivé koule, poletující vzduchem.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #68119 /* ~Zvedni úlomek obsidiánu a dej si ho do úst, kousni, aby sis pořezal jazyk...~ */ GOTO 3
  IF ~~ THEN REPLY #68121 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #68120 /* ~Když se chystáš použít portál, hlavou ti bleskla myšlenka, že stále nevíš, kde je portál vedoucí do Pevnosti Lítosti, a ani co nebo kde je klíč k portálu. Dokud nezískáš tuhle informaci od Pilíře Lebek, neměl bys Baator opouštět.~ */
  IF ~~ THEN REPLY #68122 /* ~Odejdi.~ */ EXIT
END
