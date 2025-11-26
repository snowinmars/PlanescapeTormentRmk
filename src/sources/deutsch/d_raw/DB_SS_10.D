// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34211 /* ~Dieser weißgraue Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert vor Licht. In den Boden war etwas eingraviert, aber die Schrift ist weggeschliffen worden.~ */
  IF ~~ THEN REPLY #54102 /* ~Geh weg.~ */ DO ~SetGlobal("Grace_Quest_Answer","GLOBAL",1)
~ JOURNAL #66702 /* ~Ich habe eine versteckte Kammer unter dem Bordell gefunden, die eine Anzahl glühender Steine enthielt - zehn, um genau zu sein. Einer von ihnen war 'leer'... Irgendetwas war früher einmal auf seine Unterseite geschrieben, aber es ist ausradiert worden.~ */ EXIT
END
