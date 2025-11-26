// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D202POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~D202POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51460 /* ~Alors que tu t'approches de cette arche, les piliers noirs situés de part et d'autre s'illuminent légèrement et de vagues étincelles de lumière blanche s'échappent sur les côtés pour former un rideau miroitant. De l'autre côté du rideau, tu discernes à peine une digue de pierre désagrégée qui s'enfonce dans les ténèbres.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #51461 /* ~Prends en main le lambeau de chair sur lequel est inscrit ton regret et franchis le rideau.~ */ EXIT
  IF ~~ THEN REPLY #51462 /* ~Laisse le portail.~ */ EXIT
END
