// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK2~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64234 /* ~Tyhle velké hodiny vypadají, že byly do černého kamene zčásti zataveny... jak se na ně díváš, cítíš podivný, plíživý pocit, provrtávající si cestu zadní částí tvé hlavy -- hodiny jako tyto jsi už dříve viděl, ale ne tyhle. Je tu něco důležitého, ale nevíš co.~ */
  IF ~~ THEN REPLY #64236 /* ~Nech hodiny být.~ */ JOURNAL #64240 /* ~V Pevnosti jsem narazil na velké zničené hodiny... když jsem je prozkoumával, měl jsem pocit, že bych si na nich měl něčeho *všimnout*, ale nevím čeho. Možná, že už jsem někdy v minulosti podobné hodiny viděl. ~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #64235 /* ~Tyhle velké hodiny vypadají, že byly do černého kamene zčásti zataveny... nicméně na rozdíl od hodin se zprávou, na těchto není žádný vzkaz ani symbol. Zřejmě na tyhle tvoje předchozí inkarnace nenarazila.~ */
  IF ~~ THEN REPLY #64237 /* ~Nech hodiny být.~ */ EXIT
END
