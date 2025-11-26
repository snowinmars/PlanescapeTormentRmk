// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALMIDIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DALMIDIL~

IF ~~ THEN BEGIN 0 // from:
  SAY #44695 /* ~"Jeho slova náležela nepříteli Lidu. I kdyby to pravda nebyla, vypálili jsme z něj jeho ignoranci smrtí. Nechejme ho tady, ať se na něm mohou přiživit mrchožrouti Sběrači. Na této výpravě jsme již zjistili dost o githzeraiských psech. Než skončí sedmiden, přijdou o další pevnost. Zdi Vristigoru padnou."~ */
  IF ~~ THEN DO ~SetGlobal("Vristigor","GLOBAL",1)
~ JOURNAL #39476 /* ~Slyšel jsem, že githyanki plánují útok na pevnost githzeraiů jménem Vristigor. ~ */ EXTERN ~DYI'MINN~ 45
END
