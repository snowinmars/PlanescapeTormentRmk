// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_TOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_TOMB~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48901 /* ~Do velké hrobky je něco krátkého vyryto.~ */
  IF ~~ THEN REPLY #48902 /* ~Přečti si rytinu.~ */ DO ~SetGlobal("DN_Read_Tomb","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #58918 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58916 /* ~'Zde leží milovaná matka Bah'jin, A-'. Zbytek nápisu není čitelný.~ */
  IF ~~ THEN REPLY #58917 /* ~Odejdi.~ */ EXIT
END
