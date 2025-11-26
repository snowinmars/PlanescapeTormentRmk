// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34211 /* ~Этот серовато-белый камень, хранящийся в петле из гравированных серебряных лент, пульсирует светом. Что-то было выгравировано у его основания, но надпись стерли.~ */
  IF ~~ THEN REPLY #54102 /* ~Уйти.~ */ DO ~SetGlobal("Grace_Quest_Answer","GLOBAL",1)
~ JOURNAL #66702 /* ~Под Борделем я нашел скрытую комнату, содержащую несколько сияющих камней, а точнее — десять. Один из них не 'подписан'... у его основания когда-то была надпись, которую стерли.~ */ EXIT
END
