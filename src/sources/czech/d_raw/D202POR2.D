// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D202POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D202POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51460 /* ~Jak jsi postoupil k tomuto oblouku, černé pilíře na obou stranách začaly lehce zářit, začíná mezi nimi přeskakovat bílé světélko, vytvářející mezi pilíři zářící záclonu. Za záclonou vidíš kamennou chodbu vedoucí do temnoty.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #51461 /* ~Drž útržek kůže s tvou lítostí a pak se připrav na průchod závěsem.~ */ EXIT
  IF ~~ THEN REPLY #51462 /* ~Nechej portál být.~ */ EXIT
END
