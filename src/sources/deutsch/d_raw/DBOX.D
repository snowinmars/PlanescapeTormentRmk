// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBOX~

IF ~  Global("Demonbox","Global",0)
~ THEN BEGIN 0 // from:
  SAY #48933 /* ~Du siehst ein kunstvoll gefertigtes und verziertes Kästchen, auf dessen Oberseite ein großer roter Edelstein angebracht ist. Von dem Kasten scheinen Angstgefühle auszugehen.~ */
  IF ~~ THEN REPLY #48934 /* ~Öffne das Kästchen.~ */ DO ~SetGlobal("DemonBox","GLOBAL",1)
SetGlobal("Gamma","Global",1)
DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,1,0,0)
CreateCreatureAtFeet("BoxDmn1")
~ EXIT
  IF ~~ THEN REPLY #48935 /* ~Stell das Kästchen weg.~ */ EXIT
END

IF ~  GlobalGT("Demonbox","Global",1)
~ THEN BEGIN 1 // from:
  SAY #60318 /* ~Du siehst ein schön gearbeitetes, verziertes Kästchen mit einem großen roten Edelstein auf der Vorderseite. Aus dem Kästchen strömen keine Gefühle von Angst und Schrecken mehr.~ */
  IF ~~ THEN REPLY #60319 /* ~Öffne das Kästchen.~ */ DO ~DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,0,0,0)
~ EXIT
  IF ~~ THEN REPLY #60320 /* ~Stell das Kästchen weg.~ */ EXIT
END
