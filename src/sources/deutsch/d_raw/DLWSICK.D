// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSICK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSICK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3030 /* ~Ich bin ein kranker Bewohner des Unteren Bezirks. Ich könnte dir eine faszinierende Lebensgeschichte erzählen, aber ich muß zu sehr husten und kann sie dir darum doch nicht erzählen.~ */
  IF ~~ THEN REPLY #3031 /* ~Na, vielleicht ist das auch ganz gut so.~ */ EXIT
END
