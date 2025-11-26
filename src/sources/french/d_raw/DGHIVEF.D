// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVEF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,1)
~ THEN BEGIN 0 // from:
  SAY #33304 /* ~Les yeux de la femme s'agrandissent sous la terreur alors que tu t'approches d'elle. "Va-t'en ! Pars ! Laisse-moi tranquille, ou j'vais crier, j'le jure !"~ */
  IF ~~ THEN REPLY #33305 /* ~Laisse-la partir.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,2)
~ THEN BEGIN 1 // from:
  SAY #33306 /* ~Alors que tu t'approches de la femme, elle regarde de tous les côtés, comme si elle cherchait un endroit où s'abriter. "Je… j'sais rien, matois - Fiche-moi la paix !"~ */
  IF ~~ THEN REPLY #33307 /* ~Pars.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,3)
~ THEN BEGIN 2 // from:
  SAY #33308 /* ~"Va embêter quelqu'un d'autre, bougre ! J'ai pas d'temps à perdre avec les gens d'ton espèce…"~ */
  IF ~~ THEN REPLY #33309 /* ~Pars.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,4)
~ THEN BEGIN 3 // from:
  SAY #33310 /* ~La femme, imperturbable, refuse toujours de te parler.~ */
  IF ~~ THEN REPLY #33311 /* ~Pars.~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(6,5)
~ THEN BEGIN 4 // from:
  SAY #33312 /* ~La femme pâlit et commence à trifouiller son poignard alors que tu t'approches d'elle. "J'veux rien avoir à faire avec toi, rien ! Fiche le camp !"~ */
  IF ~~ THEN REPLY #33313 /* ~Pars.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33314 /* ~"T'es l'bige qui cherchait Pharod ! Tu l'as trouvé ? Si c'est pas l'cas, va voir au nord d'ici, dans l'Square du Chiffonnier."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33315 /* ~"Alors, je vais essayer. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33448 /* ~"Je l'ai déjà trouvé, mais merci quand même. Au revoir."~ */ EXIT
END

IF WEIGHT #13 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33316 /* ~"Si jamais tu vas au Bar de la Poussière accumulée, bige, sois pas surpris si on s'attend à c'que tu prennes les commandes !" La femme grogne et commence à ricaner.~ */
  IF ~~ THEN REPLY #33317 /* ~Pars.~ */ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33318 /* ~La femme est en train de mordiller ce qui semble être un rat en brochette. Voyant que tu l'observes, elle plisse les yeux d'un air soupçonneux. " Parles-en à Crédo, si t'as faim… il est dehors, devant le Bureau de Lutte contre la vermine et la maladie.~ */
  IF ~~ THEN REPLY #33319 /* ~Pars.~ */ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33320 /* ~"Si jamais tu vois les fous hurlants dans les environs, éloigne-toi ! Ces Chiens Affamés m'font peur, ouais…"~ */
  IF ~~ THEN REPLY #33321 /* ~Pars.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,1)
~ THEN BEGIN 9 // from:
  SAY #33322 /* ~"J'ai rien à t'dire qui pourrait t'intéresser… Fiche-moi la paix."~ */
  IF ~~ THEN REPLY #33323 /* ~Pars.~ */ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,2)
~ THEN BEGIN 10 // from:
  SAY #33324 /* ~La femme hausse les sourcils alors que tu t'approches d'elle. "Je m'protège, bige… et on dirait qu'il faudrait qu't'en fasses autant - fais-toi discret pendant quelque temps, hein ? Au revoir."~ */
  IF ~~ THEN REPLY #33325 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,3)
~ THEN BEGIN 11 // from:
  SAY #33326 /* ~La femme aboie alors que tu t'approches d'elle. "J'ai ni l'temps, ni l'envie de parler aux étrangers à la Ruche, bige… c'est jamais conseillé. Au revoir."~ */
  IF ~~ THEN REPLY #33327 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #19 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,4)
~ THEN BEGIN 12 // from:
  SAY #33328 /* ~La femme soupire d'un air misérable. "Pas beaucoup pire que d'vivre dans la Ruche. Tu peux t'retrouver dans l'livre des morts rien qu'pour avoir regardé un bige de travers."~ */
  IF ~~ THEN REPLY #33329 /* ~Pars.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33330 /* ~"On dirait qu'un peu d'repos au refuge te ferait pas de mal, bige. Si ça t'intéresse, tu le trouveras dans l'centre d'cette partie d'la Ruche."~ */
  IF ~~ THEN REPLY #33331 /* ~Pars.~ */ EXIT
END

IF WEIGHT #21 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33332 /* ~"Si jamais tu t'trouves dans l'Bar de la Poussière accumulée, bige, sois pas surpris si quelqu'un s'attend à c'que tu prennes les commandes !" La femme grogne et commence à ricaner.~ */
  IF ~~ THEN REPLY #33333 /* ~Pars.~ */ EXIT
END

IF WEIGHT #22 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33334 /* ~La femme est en train de mordiller ce qui semble être un rat en brochette. Voyant que tu l'observes, elle plisse les yeux d'un air soupçonneux. " Parle à Crédo, si t'en veux un… il est devant le Bureau de Lutte contre la vermine et la maladie.~ */
  IF ~~ THEN REPLY #33335 /* ~Pars.~ */ EXIT
END

IF WEIGHT #23 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(6,5)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #33336 /* ~"Si jamais tu vois les fous hurlants dans les environs, éloigne-toi ! Ces Chiens Affamés m'font peur, ouais…"~ */
  IF ~~ THEN REPLY #33337 /* ~Pars.~ */ EXIT
END

IF WEIGHT #24 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #33338 /* ~"T'es l'bige qui cherchait Pharod ! Tu l'as trouvé ? Sinon, va voir au nord d'ici, dans l'Square du Chiffonnier."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33339 /* ~"Alors, je vais essayer. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33340 /* ~"Je l'ai déjà trouvé, mais merci quand même. Au revoir."~ */ EXIT
END

IF WEIGHT #25 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33344 /* ~"Ne t'approche pas d'cette allée brûlée au sud-ouest d'ici, si tu veux pas d'ennuis."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33345 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33346 /* ~Pars.~ */ EXIT
END

IF WEIGHT #26 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33347 /* ~"Y'a une pauvre âme qui s'appelle Pestilent dans les environs… si tu retiens ton souffle et qu't'as une pièce ou deux pour lui, il te racontera des histoires intéressantes."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33348 /* ~"J'irai peut-être le trouver. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33349 /* ~"Oui, je l'ai rencontré. Au revoir."~ */ EXIT
END

IF WEIGHT #27 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33351 /* ~"T'es déjà allé au Cadavre fumant ? Chouette taverne, mais ce type brûlant m'tape sur les nerfs."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33352 /* ~"Il est parti, maintenant. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33449 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33350 /* ~Pars.~ */ EXIT
END

IF WEIGHT #28 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,1)
~ THEN BEGIN 21 // from:
  SAY #33353 /* ~"Bonjour, affranchi." La femme te fait un timide demi-sourire. "Dis voir… J'pensais prendre un verre, plus tard… ça t'dit ?"~ */
  IF ~~ THEN REPLY #33354 /* ~"Peut-être une autre fois… Mais j'ai trop à faire pour le moment. Excuse-moi."~ */ EXIT
  IF ~~ THEN REPLY #33472 /* ~"Non. Au revoir."~ */ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,2)
~ THEN BEGIN 22 // from:
  SAY #33355 /* ~"J'peux pas imaginer élever mon enfant ici. P't'être qu'un jour ma famille pourra quitter ce coin miteux."~ */
  IF ~~ THEN REPLY #33356 /* ~Pars.~ */ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,3)
~ THEN BEGIN 23 // from:
  SAY #33357 /* ~La femme te sourit. "Non, j'peux pas t'aider… j'aimerais bien, mais j'peux pas."~ */
  IF ~~ THEN REPLY #33358 /* ~"Merci quand même. Au revoir."~ */ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33359 /* ~"On dirait qu'un peu d'repos au refuge te ferait pas de mal, bige. Si ça t'intéresse, tu le trouveras dans l'centre d'cette partie d'la Ruche."~ */
  IF ~~ THEN REPLY #33360 /* ~Pars.~ */ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33362 /* ~"T'es l'bige qui cherchait Pharod ! Tu l'as trouvé ? Sinon, va voir au nord d'ici, dans l'Square du Chiffonnier."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33363 /* ~"Alors, je vais essayer là-bas. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33364 /* ~"Je l'ai déjà trouvé, mais merci quand même. Au revoir."~ */ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33365 /* ~"L'autre jour, j'ai rencontré un type tatoué du nom de Porphiron, ici. On dit qu'c'est une espèce de moine, et un guerrier… mais qu'il veut pas s'battre."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33366 /* ~"J'irai peut-être le trouver, alors. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33361 /* ~"Oui, je l'ai rencontré. Au revoir."~ */ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33367 /* ~"Si t'essaies d'aller quelque part, y'a la Poste, juste à côté du Bar d'la Poussière accumulée."~ */
  IF ~~ THEN REPLY #33368 /* ~Pars.~ */ EXIT
END

IF WEIGHT #35 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33370 /* ~"T'approche pas d'cette allée brûlée au sud-ouest d'ici, si tu veux pas d'ennuis."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33371 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33372 /* ~Pars.~ */ EXIT
END

IF WEIGHT #36 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33373 /* ~"Pas mal de gens viennent pleurer leurs morts au Mémorial Homme-Poussière… y'a un Homme-Poussière là-bas qui peut t'dire si une personne que tu recherches est morte, et mettre son nom sur le monument pour toi."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #33374 /* ~"Oui, il s'appelle 'Mort-des-Noms'. Au revoir."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #33369 /* ~Pars.~ */ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33375 /* ~"Les Hommes-Poussière fréquentent pas les tavernes de la Ruche… excepté le Bar d'la Poussière accumulée. Y'a pratiquement *que* des Hommes-Poussière là-bas."~ */
  IF ~~ THEN REPLY #33376 /* ~Pars.~ */ EXIT
END

IF WEIGHT #38 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33377 /* ~La femme est en train de mordiller ce qui semble être un rat en brochette. Voyant que tu l'observes, elle plisse les yeux d'un air soupçonneux. " Parle à Crédo, si t'en veux un… il est devant le Bureau de Lutte contre la vermine et la maladie.~ */
  IF ~~ THEN REPLY #33378 /* ~Pars.~ */ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33380 /* ~"Y'a une pauvre âme qui s'appelle Pestilent dans les environs… si tu retiens ton souffle et qu't'as une pièce ou deux pour lui, il te racontera des histoires intéressantes."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33381 /* ~"J'irai peut-être le trouver. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33379 /* ~"Oui, je l'ai rencontré. Au revoir."~ */ EXIT
END

IF WEIGHT #40 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33382 /* ~"T'es déjà allé sur l'marché, matois ? Ils ont presque tout c'qu'on peut chercher, là-bas."~ */
  IF ~~ THEN REPLY #33383 /* ~Pars.~ */ EXIT
END

IF WEIGHT #41 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,7)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33384 /* ~"J'espère que Prophyre a tort, ouais… si t'as jamais entendu les prophéties d'cette femme, elle les crie d'habitude sur le marché…"~ */
  IF ~~ THEN REPLY #33386 /* ~Pars.~ */ EXIT
END

IF WEIGHT #42 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,8)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33387 /* ~"T'approche pas d'cette allée brûlée au sud-ouest d'ici, si tu veux pas d'ennuis."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33388 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33385 /* ~Pars.~ */ EXIT
END

IF WEIGHT #43 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,4)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33389 /* ~"Si jamais tu vois les fous hurlants dans les environs, éloigne-toi ! Ces Chiens Affamés m'font peur, ouais…"~ */
  IF ~~ THEN REPLY #33392 /* ~Pars.~ */ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,5)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33393 /* ~"T'es déjà allé au Cadavre fumant ? Chouette taverne, mais cet homme brûlant m'tape sur les nerfs."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33394 /* ~"Il est parti, maintenant. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33390 /* ~"Oui, je connais cet endroit. Au revoir."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33391 /* ~Pars.~ */ EXIT
END

IF WEIGHT #45 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(8,6)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33395 /* ~"J'ai rencontré un homme qui s'appelle 'Deuils-pour-Arbres' l'autre jour… il s'plie en quatre pour trouver des gens pour aider à prendre soin des arbres, ici. Il ferait p't'être mieux de passer son temps à aider les gens d'ici."~ */
  IF ~~ THEN REPLY #33396 /* ~Pars.~ */ EXIT
END

IF WEIGHT #46 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33397 /* ~"Tout c'que j'peux t'dire pour t'aider, c'est d'faire gaffe aux voleurs ici, matois… Y'a plein d'pickpockets dans cette partie d'la Ruche, y paraît."~ */
  IF ~~ THEN REPLY #33398 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33401 /* ~"J'ai vu une pauvre p'tite azimutée déblatérer et errer l'autre jour. C'est un miracle qu'elle ait pas crevé d'faim ou qu'elle se soit pas fait tuer, enfumée comme elle est."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33402 /* ~"Oui… Elle devrait être chez elle, ou sinon elle le sera bientôt. Au revoir."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33399 /* ~"Je l'ai rencontrée, elle s'appelle Ingress. Au revoir."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33400 /* ~Pars.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33403 /* ~"Tiens-toi à l'écart de Gaoha sur l'marché ! Mon mari s'fait plumer chaque fois qu'il parie avec ce gith trois fois maudit !"~ */
  IF ~~ THEN REPLY #33404 /* ~Pars.~ */ EXIT
END

IF WEIGHT #49 /* Triggers after states #: 46 45 43 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33407 /* ~"Drôles de tatouages ! Certains ressemblent à ceux qui sont faits au magasin, ici, dans la Ruche. C'lui qu'est tenu par un dabus, tu connais ?"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33408 /* ~"Oui, je sais. Il s'appelle Fell."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33409 /* ~"Je connais cet endroit, oui."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33405 /* ~"Non, je ne connais pas cet endroit."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_D","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33410 /* ~"Qu'la Dame m'aveugle ! J't'ai déjà vu, matois, mais j'aurais jamais pensé qu'je te reverrai ! Sigil est sûrement plus p'tit qu'on s'imagine."~ */
  IF ~~ THEN REPLY #33411 /* ~"Tu me connais ?"~ */ DO ~SetGlobal("Hive_OT_D","GLOBAL",1)
~ GOTO 44
  IF ~~ THEN REPLY #33406 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #33413 /* ~Elle sourit nerveusement. "J'te connais ? Nan, mais comme j'l'ai dit, j't'ai déjà vu. C'était l'année dernière… tard dans la nuit, avant l'anti-pic… j'cherchais ma sœur, ouais, quand tu t'es pointé, courant comme un fou. T'as trébuché et fait tomber ça, ouais, juste à mes pieds, avant d'détaler. J'l'ai gardé en guise de bonne chance, vu qu'la providence l'avait fait tomber droit devant moi." Elle lève un étrange couteau de combat. "Tiens… Puisque je tombe encore sur toi, reprends-le, matois. Au revoir."~ */
  IF ~~ THEN REPLY #33414 /* ~"Merci… Au revoir."~ */ DO ~GiveItemCreate("GSDagger",Protagonist,1,0,0)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,2)
Global("Hive_OT_E","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33415 /* ~La femme semble te reconnaître immédiatement. Elle recule, horrifiée. "Après tout c'temps… espèce de *pourri* ! Qu'tous les fiélons d'Baator s'emparent de toi ! Tu regretteras un jour c'que t'as fait à Aerin… J'le jure par toutes les Puissances !" Elle se retourne et s'enfuit.~ */
  IF ~~ THEN REPLY #33416 /* ~"Attends…"~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33417 /* ~Laisse-la partir.~ */ DO ~SetGlobal("Hive_OT_E","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 53 52 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
RandomNum(20,3)
Global("Hive_OT_F","GLOBAL",0)
~ THEN BEGIN 46 // from:
  SAY #33420 /* ~"Ben alors, si c'est pas mon sombre héros à moi. T'as mis l'temps pour revenir… J'commençais même à croire que tu viendrais pas, affranchi." Elle se met à fouiller dans sa bourse de ceinture.~ */
  IF ~~ THEN REPLY #33421 /* ~"Attends… Je crois que tu fais erreur…"~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
~ GOTO 49
  IF ~~ THEN REPLY #33412 /* ~Attends patiemment.~ */ DO ~SetGlobal("Hive_OT_F","GLOBAL",1)
GiveItemCreate("SilRing",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #33424 /* ~"Bien mort, juste comme j'avais dit… et c'est comme ça que j'l'aime. Voilà ton argent, matois… c'que j't'avais promis. Au revoir."~ */
  IF ~~ THEN REPLY #33425 /* ~"Attends un peu… J'ai quelques questions…"~ */ GOTO 48
  IF ~~ THEN REPLY #33418 /* ~Laisse-la partir.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #33426 /* ~"Non, matois… c'était agréable, ouais, mais j'préfère pas être vue en train d'te parler. Il avait des amis, tu sais, et j'crois qu'ils se doutent de c'qui s'est passé. C'est la dernière fois qu'on s'parle."~ */
  IF ~~ THEN REPLY #33427 /* ~"Mais…"~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33479 /* ~"Alors, au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.0
  SAY #33431 /* ~Elle te regarde étrangement, puis observe en biais les tatouages gravés sur le haut de ton bras. Elle hausse finalement les épaules. "Comme tu veux, matois. Au revoir…"~ */
  IF ~~ THEN REPLY #33432 /* ~Laisse-la partir.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
RandomNum(4,1)
~ THEN BEGIN 50 // from:
  SAY #33434 /* ~Cette personne n'a plus rien à te dire.~ */
  IF ~~ THEN REPLY #33428 /* ~Pars.~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
RandomNum(4,2)
~ THEN BEGIN 51 // from:
  SAY #33436 /* ~Cette personne n'a plus rien d'important à te dire.~ */
  IF ~~ THEN REPLY #33451 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedToGT(0)
RandomNum(4,3)
~ THEN BEGIN 52 // from:
  SAY #33469 /* ~Cette personne n'a plus rien à te dire qui ait de l'intérêt.~ */
  IF ~~ THEN REPLY #33471 /* ~Pars.~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 53 // from:
  SAY #33470 /* ~Cette personne n'a plus rien à te dire.~ */
  IF ~~ THEN REPLY #33480 /* ~Pars.~ */ EXIT
END
