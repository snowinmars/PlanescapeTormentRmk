// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALMIDIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DALMIDIL~

IF ~~ THEN BEGIN 0 // from:
  SAY #44695 /* ~"His words were those of an enemy of the people. Even were that not true, we have cauterized his ignorance with death's iron. Let us leave him here for the Collectors to scavenge. We have gathered enough information on the githzerai dogs for this trip. They shall lose another fortress before the sevenday is out. The walls of Vristigor shall fall."~ */
  IF ~~ THEN DO ~SetGlobal("Vristigor","GLOBAL",1)
~ JOURNAL #39476 /* ~I have heard the githyanki planning an assault on another githzerai fortress, the fortress of Vristigor. ~ */ EXTERN ~DYI'MINN~ 45
END
