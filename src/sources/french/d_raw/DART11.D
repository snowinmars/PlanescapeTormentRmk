// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART11.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART11~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34203 /* ~Ce tableau représente un énorme donjon en granit - hideuse chose longue et basse, couverte de gargouilles hostiles - se détachant sur ce qui paraît être un ciel nocturne. Un nuage de vapeur écarlate et violet tourbillonne à l'arrière-plan, sur le côté droit de la peinture. Une pancarte annonce : 'La Bibliothèque'.~ */
  IF ~~ THEN REPLY #42678 /* ~Pars.~ */ DO ~SetGlobal("View_Art_11","AR0608",1)
~ EXIT
END
