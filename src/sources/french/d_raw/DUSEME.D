// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUSEME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUSEME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Ce vieil homme dont le visage est marqué par les épreuves a le regard perdu dans sa chope de bière blonde. La chope en étain cabossé est originale ; elle porte des gravures de runes étranges et de visages barbus, et elle est couverte d'une fine couche de givre. L'homme lève la tête à ton approche. "Bonjour… monsieur…" Il semble légèrement éméché.~ */
  IF ~~ THEN REPLY #3023 /* ~Tatouage du mépris~ */ EXIT
  IF ~~ THEN REPLY #7234 /* ~"Y a quelque chose qui va pas ?"~ */ EXIT
END
