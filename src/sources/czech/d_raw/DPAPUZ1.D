// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ1~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49597 /* ~Dabus se patrně pokoušel tuto prastarou stavbu strhnout. Několik prken z konstrukce budovy je uvolněno, jejich hřeby jsou téměř všechny vyviklány.~ */
  IF ~  PartyHasItem("Hammer")
~ THEN REPLY #49598 /* ~Použij kladivo na přibití prken zpět na místo.~ */ DO ~SetGlobal("Alley_Puzzle_2","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49599 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49600 /* ~Zručně jsi prkna přibil zpět na místo. Jak jsi poodstoupil prohlédnout si své dílo, s překvapením sis všiml, že budova už zdaleka nevypadá tak stará jako na první pohled.~ */
  IF ~~ THEN REPLY #49602 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #59103 /* ~Tohle roztřesené obydlí vypadá, že už stojí celá století. Jeho dřevěné stěny jsou celé omšelé počasím a unavené věky. Pár planěk na této stěně budovy se zdá být v nedávné době šikovně uvolněno..~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #59105 /* ~Prozkoumáš budovu.~ */ GOTO 0
  IF ~~ THEN REPLY #59106 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #59107 /* ~S těmi zpět umně natlučenými prkny nevypadá budova zase až tak sešle jako dřív.  ~ */
  IF ~~ THEN REPLY #59108 /* ~Odejdi.~ */ EXIT
END
