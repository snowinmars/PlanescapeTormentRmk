// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALMIDIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DALMIDIL~

IF ~~ THEN BEGIN 0 // from:
  SAY #44695 /* ~"Jego słowa były słowami wroga ludu. Nawet gdyby to nie była prawda, wypaliliśmy jego ignorancję żelazem śmierci. Zostawmy go tutaj, niech złupią go Zbieracze. W trakcie tej wyprawy zdobyliśmy wystarczająco wiele informacji o githzerajskich psach. Powinni stracić kolejną fortecę nim skończy się siedmiodzień. Mury Vristigoru upadną."~ */
  IF ~~ THEN DO ~SetGlobal("Vristigor","GLOBAL",1)
~ JOURNAL #39476 /* ~Usłyszałem, że githyanki planują atak na następną fortecę githzerai - Vristigor.~ */ EXTERN ~DYI'MINN~ 45
END
