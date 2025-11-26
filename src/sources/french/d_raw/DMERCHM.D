// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9370 /* ~Cet homme pivote vers toi à ton approche et s'incline. "M'sieur, tu recherches sans doute les plus belles marchandises de Sigil. Tu as frappé à la bonne porte."~ */
  IF ~~ THEN REPLY #9371 /* ~"Euh… J'attendrai que tu aies un inventaire de ta boutique."~ */ EXIT
END
