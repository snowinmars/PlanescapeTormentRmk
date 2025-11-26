// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPAINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPAINT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36403 /* ~Tu aperçois une maigre tieffeline te tournant le dos. Tu remarques que ses deux mains et la table debout devant elle sont barbouillées d'une couche récente de ce qui semble être de la peinture rose. Elle ne semble pas remarquer ton approche.~ */
  IF ~~ THEN REPLY #36406 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36407 /* ~Ignore la fille et continue ton chemin.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36404 /* ~T'entendant, la fille tourne la tête pour te regarder. Son visage, sale et couvert de taches roses, est d'une beauté frappante. Elle te fait un grand sourire espiègle, puis reporte son attention sur la toile de fortune.~ */
  IF ~~ THEN REPLY #36408 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36409 /* ~Laisse la fille à sa peinture.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0
  SAY #36405 /* ~La tieffeline semble totalement absorbée par son art et t'ignore complètement.~ */
  IF ~~ THEN REPLY #36410 /* ~Laisse la fille à sa peinture.~ */ EXIT
END
