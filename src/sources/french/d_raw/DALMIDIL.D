// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALMIDIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DALMIDIL~

IF ~~ THEN BEGIN 0 // from:
  SAY #44695 /* ~"Ses paroles étaient celles d'un ennemi du peuple. Même si c'était faux, nous avons cautérisé son ignorance avec le fer de la mort. Qu'on le laisse ici ; les Récupérateurs viendront le ramasser. Nous avons recueilli suffisamment d'informations sur les chiens githzeraïs pour ce voyage. Ils perdront une autre forteresse avant la fin du septième jour. Les murs de Vristigor vont tomber."~ */
  IF ~~ THEN DO ~SetGlobal("Vristigor","GLOBAL",1)
~ JOURNAL #39476 /* ~Je me suis laissé dire que les githyankis s'apprêtaient à attaquer une autre forteresse des githzeraïs, celle de Vristigor.~ */ EXTERN ~DYI'MINN~ 45
END
