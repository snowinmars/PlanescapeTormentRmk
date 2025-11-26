// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #11350 /* ~Tu vois un petit homme rondelet à l'air perplexe. À voir les plis et les rides de sa peau flasque, c'est là sa mine habituelle. Il tient une chope de bière brune qu'il s'emploie à vider - et vite. Entre chaque grande lampée, il parle d'un ton affable, mais si bas que tu l'entends à peine. "Bonjour, voyageur. Je m'appelle Ilquix. Comment puis-je t'aider ?"~ */
  IF ~~ THEN REPLY #11351 /* ~"Bonjour. Je voudrais te poser des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #11352 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #11353 /* ~L'homme à la peau flasque se tourne et te sourit. "Re-bonjour, voyageur. Qu'est-ce qu'Ilquix peut faire pour toi ?"~ */
  IF ~~ THEN REPLY #11354 /* ~"Bonjour, Ilquix. J'ai des questions à te poser."~ */ GOTO 2
  IF ~~ THEN REPLY #11355 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 4.0 5.0 6.1 7.0 8.0 9.4 10.0
  SAY #11356 /* ~"Que veux-tu savoir, mon ami ?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11357 /* ~"Qui es-tu vraiment ?"~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11358 /* ~"Qui es-tu vraiment ?"~ */ GOTO 4
  IF ~~ THEN REPLY #11359 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 5
  IF ~~ THEN REPLY #11360 /* ~"Que peux-tu me dire sur les clients de cet endroit ?"~ */ GOTO 6
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #11361 /* ~"Qui est cet homme qui brûle ?"~ */ GOTO 7
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11362 /* ~"Je cherche un moyen de permettre à Mochai de payer ses verres. Des suggestions ?"~ */ GOTO 8
  IF ~~ THEN REPLY #11363 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11365 /* ~"Moi ? Je ne suis qu'un homme modeste doté d'un amour de la poésie et d'un attrait pour tout ce qui est surnaturel. Hélas, je n'ai pas mon équipement ici, ou je serais prêt à t'enseigner tout de suite les voies de la puissance." Il s'interrompt pour admirer Grâce. "Puis-je me permettre de te féliciter du choix de tes compagnons de voyage, cher monsieur ? À l'évidence, tu sais quels sont tes besoins, et tu as de l'ambition. Il faut toujours encourager l'ambition."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 12
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #11367 /* ~"Moi ? Je suis un homme de peu d'importance doté d'un amour de la poésie et d'une propension au surnaturel. Hélas, je n'ai pas mon équipement ici, ou je serais prêt à t'enseigner tout de suite les voies de la puissance. Plus tard, peut-être ?"~ */
  IF ~~ THEN REPLY #11369 /* ~"Oui, j'aimerais ça. Mais pour l'instant, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #11371 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #11373 /* ~"La Taverne du Cadavre fumant ? Un bel établissement, un bon propriétaire - Barkis est un homme courtois qui a pour ambition d'améliorer son rang social. À mon sens, ce sont là les qualités les plus utiles que l'on puisse avoir."~ */
  IF ~~ THEN REPLY #11374 /* ~"Elles dirigent les gens. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #11376 /* ~"Beaucoup de gens seraient d'accord avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #11377 /* ~"La clientèle est nombreuse et variée. J'ai parlé avec la plupart des clients, et je les trouve très fréquentables - à part ces deux créatures de la loi." Il indique les deux abishaïs installés dans un coin. "Leur seule présence empuantit l'atmosphère et dépare un cadre par ailleurs des plus agréables. Je te conseille de parler avec Barkis, il me semble qu'il a besoin d'aide pour résoudre un problème mineur. Il y a aussi le fameux O. J'essaie encore de le comprendre, ce qui n'a rien d'un mince exploit, si je puis me permettre. Ce sont les gens les plus intéressants, ici. Les autres… ah, je suis peut-être trop exigeant."~ */
  IF ~~ THEN REPLY #11379 /* ~"Pourquoi méprises-tu les créatures de la loi ?"~ */ GOTO 9
  IF ~~ THEN REPLY #11381 /* ~"Peut-être. J'ai d'autres questions."~ */ GOTO 2
  IF ~~ THEN REPLY #11383 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #11385 /* ~"Ça ? Ha ! Ça, c'est le dernier malheureux en date qui a voulu agir en individu sans posséder la force nécessaire pour assumer ses actes. Il s'appelle Ignus, et c'est… c'était un pyromane. Il a brûlé par-ci, et brûlé par-là, mais il n'a pas brûlé les bonnes personnes, et il s'est retrouvé à canaliser plus d'énergie qu'il ne pouvait en contrôler. Et tu peux voir ce qu'il est advenu de lui. Si tu veux en savoir plus à son sujet, cette pauvre Drusilla pourra peut-être t'aider."~ */
  IF ~~ THEN REPLY #11387 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #11388 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #11390 /* ~Il éclate d'un rire si tonitruant que ses bajoues menacent de se décrocher. "Tu n'as qu'à lui administrer une dose de poison, l'ami ! Ce genre d'expédient résout *tous* les problèmes !" Il rit de plus belle. "Bien sûr, je plaisante." Et il te fait un clin d'œil.~ */
  IF ~~ THEN REPLY #11392 /* ~"Bien sûr. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #11393 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #11394 /* ~"Ah, bonne question, l'ami ! J'ai fait mon éducation du côté chaotique du Grand Anneau - Candrian Porteguigne (le mal nommé, c'est clair) pourra te parler des plans, il se tient pour un voyageur des plans expérimenté. Où en étais-je ? Ah, oui ! Donc, j'ai longtemps vécu au contact du Chaos, que je trouve agréable. À mes yeux, la loi, telle que la conçoivent et l'appliquent ces créatures, là-bas, est une tyrannie répréhensible. Si je dois me faire piétiner, je préfère que ce soit par un individu plutôt que par une machine qui ne connaît rien aux émotions."~ */
  IF ~~ THEN REPLY #11395 /* ~Vérité : "Je suis entièrement d'accord."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_One","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11396 /* ~Mensonge : "Je suis entièrement d'accord."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11397 /* ~Vérité : "Je ne suis pas d'accord."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Ilquix_One","GLOBALLaw",1)
~ GOTO 10
  IF ~~ THEN REPLY #11398 /* ~Mensonge : "Je ne suis pas d'accord."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11399 /* ~"Beaucoup de gens sont d'accord avec toi. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #11400 /* ~"Beaucoup de gens sont d'accord avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11401 /* ~Ilquix sourit largement sans que ses bajoues frémissent. "Chacun ses goûts, telle est ma devise. Tu as d'autres questions?"~ */
  IF ~~ THEN REPLY #11402 /* ~"Oui."~ */ GOTO 2
  IF ~~ THEN REPLY #11403 /* ~"Non. Au revoir."~ */ EXIT
END
