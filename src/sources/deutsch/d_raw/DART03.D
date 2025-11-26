// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34190 /* ~Auf diesem Sockel steht eine brilliant strahlende Rubinstatuette, die in die Form eines beflügelten Humanoiden geschliffen wurde. Die Figur ist entweder dämonischer oder engelsgleicher Natur... Aber es ist schwer zu sagen, welches von beidem, da sie das Licht in der Galerie auf seltsame Weise bricht. Keine Plakette deutet an, was genau diese Statuette darstellt.~ */
  IF ~~ THEN REPLY #42704 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_03","AR0608",1)
~ EXIT
END
