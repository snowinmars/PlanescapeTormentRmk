// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAVENGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAVENGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67881 /* ~Muž tě ignoruje, jeho oči jsou soustředěné na soudce. Má pevně stisknuté rty. Pěsti svírá tak silně, že mu klouby úplně zbělaly. Šklebí se sám pro sebe, ale není v tom žádný humor. Vůbec si tvé přítomnosti nevšimá.~ */
  IF ~~ THEN REPLY #67882 /* ~"Tak na to zapomeň."~ */ EXIT
END
