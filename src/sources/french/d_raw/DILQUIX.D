// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIX~

IF ~~ THEN BEGIN 0 // from:
  SAY #3069 /* ~Tu vois un monstre à tête de chien. Doté de larges épaules, tout en muscles, il a quatre bras dont deux se terminent par des pinces dentelées qui paraissent susceptibles de déchirer leurs victimes jusqu'à l'âme. Il s'exprime d'une voix étonnamment douce. "Ah, je vois que tu nous amènes de valeureux compagnons et…" Il s'interrompt pour humer l'air. "… un parfum *délicieux*, cher voyageur. Annah, j'ai connu ton père - à ce jour, il peine encore au fin fond des Abysses. Et Maîtresse Grâce, votre mère, Rouge Linceul, sera sans doute enchantée de recevoir de vos nouvelles."~ */
  IF ~~ THEN REPLY #3367 /* ~"Tout le plaisir est pour moi. Je voudrais te poser des questions…"~ */ EXIT
END
