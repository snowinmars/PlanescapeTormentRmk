// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSERE~

IF ~  Global("Sere","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1796 /* ~À ton approche, une vieille femme se retourne et t'observe. "Ah, regarde qui vient… le fils préféré de la mort." Elle lève les yeux, puis secoue la tête en signe de désapprobation. "Par les Puissances, mon petit… de quelle crypte es-*tu* sorti ?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #1797 /* ~"Je ne sors d'aucune crypte."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14338 /* ~"Je ne sors d'aucune crypte."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14339 /* ~"En fait, je sors de la Morgue."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14340 /* ~Blague : "Eh bien, comme ma crypte perdait de son charme, j'ai décidé de chercher un meilleur endroit pour mourir. Tu en connais un ?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14341 /* ~"Excuse-moi, je t'ai prise pour quelqu'un d'autre. Au revoir."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ EXIT
END

IF ~  Global("Sere","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14342 /* ~Sère minaude en t'apercevant. "Tiens donc, voilà le ver de crypte. Qu'est-ce qui t'amène à la porte de Sere, cette fois-ci, petit ?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14343 /* ~"Je ne sors *d'aucune* crypte."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14344 /* ~"Je ne sors *d'aucune* crypte."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14345 /* ~Blague : "Eh bien, comme ma crypte perdait de son charme, j'ai décidé de chercher un meilleur endroit pour mourir. Tu en connais un ?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14346 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14347 /* ~"Rien, je voulais juste prendre de tes nouvelles. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.1 4.4 5.3 6.1 7.2 8.0 9.1 10.3 11.1 12.1 13.1 14.4 15.3 16.1 17.4 18.2 19.2 21.2 22.2 23.2 24.1 25.3 26.1 27.4 28.3 29.2 30.1 31.1 32.0 34.1 35.2 37.2 39.0 42.0 43.1 44.0 45.1 46.0 47.8 48.4 49.2 50.1 51.2 52.1 53.1 54.1 55.2 56.2 57.3 58.1 59.2 60.1 61.1 62.2 63.2 64.0 65.3
  SAY #14348 /* ~"Des questions, hein ? Bon, vas-y…" Sère te lance un regard dur, puis sourit. "… ver de crypte."~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14349 /* ~"Je ne sors *d'aucune* crypte."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14350 /* ~"Je ne sors *d'aucune* crypte."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14351 /* ~"Je voulais te poser des questions sur certains Hommes-Poussière…"~ */ GOTO 47
  IF ~  Global("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14352 /* ~"Tu fais partie des Hommes-Poussière ?"~ */ GOTO 13
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14353 /* ~"Tu peux me parler de Hamrys ?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14354 /* ~"Je voulais te parler de tes croyances. Pourquoi est-ce que tu ne crois plus à la philosophie des Hommes-Poussière ?"~ */ GOTO 16
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Recruit_Sere","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #14355 /* ~"Sère, tu ne fais plus partie des Hommes-Poussière. Tu veux que je te fasse une proposition ?"~ */ GOTO 34
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14356 /* ~"Tu n'aurais pas vu un journal récemment ? J'ai perdu le mien."~ */ GOTO 43
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #14357 /* ~"Je cherche un certain Pharod. Tu ne l'aurais pas vu ?"~ */ GOTO 45
  IF ~~ THEN REPLY #14358 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2 5.1
  SAY #14359 /* ~"Ah bon ?" Sère hausse un sourcil. "Ça me réchauffe le cœur de savoir que tu leur as joué un air là-bas. Pas un endroit terrible pour un type qui est déjà mort." Elle renifle. "Tchhhh. Trop de toiles d'araignée et d'esprits poussiéreux."~ */
  IF ~~ THEN REPLY #14360 /* ~"Tu n'aimes pas la Morgue ? Mais tu ne fais pas partie des Hommes-Poussière ?"~ */ GOTO 13
  IF ~~ THEN REPLY #14361 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14362 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1 1.0 1.1 2.0 2.1
  SAY #14363 /* ~Elle fronce les sourcils et son visage se plisse comme un parchemin tout froissé. "Bon, alors. De quel *cercueil* es-tu sorti ?" Elle marmonne. "Un de ces cercueils à échardes d'Hamrys, sûrement. J'ai entendu dire que les cadavres en sont truffés." Elle renifle. "Ce garçon ne vaut pas tripette depuis que son père est mort."~ */
  IF ~~ THEN REPLY #14364 /* ~"Je ne sors pas non plus d'un *cercueil*."~ */ GOTO 5
  IF ~~ THEN REPLY #14365 /* ~"Qui est Hamrys ?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14366 /* ~"Je ne sors pas d'un cercueil… En fait, je sors de la Morgue."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14367 /* ~Blague : "Eh bien, dans le cercueil qu'il a fabriqué, il y avait trop de courants d'air, alors j'ai décidé de chercher un meilleur endroit pour mourir. Tu en connais un ?"~ */ GOTO 9
  IF ~~ THEN REPLY #14368 /* ~"Je cherche des informations. Je peux te poser quelques questions ?"~ */ GOTO 2
  IF ~~ THEN REPLY #14369 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #14370 /* ~Elle sourit, découvrant une rangée de dents inégales. "Très bien, petit. De quel *sarcophage* es-tu sorti ?" Elle s'interrompt pour rire. "Juste une taquinerie. Ne le prends pas mal. Mais tu ressembles étrangement à la mort."~ */
  IF ~~ THEN REPLY #14371 /* ~"Qui est ce Hamrys dont tu as parlé ?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14372 /* ~"Je devrais… Je sors de la Morgue."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14373 /* ~Blague : "Il n'y a pas de mal. Pour être honnête, mon sarcophage était trop grand, alors j'ai décidé de chercher un meilleur endroit pour m'allonger et mourir. Tu en connais un ?"~ */ GOTO 9
  IF ~~ THEN REPLY #14375 /* ~"Je cherche des informations. Je peux te poser quelques questions ?"~ */ GOTO 2
  IF ~~ THEN REPLY #14376 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 4.1 5.0
  SAY #14374 /* ~"Hamrys est un casseur de cercueils… pardon, un 'fabricant de cercueils'… dans le Bas Quartier. Il a hérité de la boutique à la mort de son père, au grand désespoir des cadavres à la recherche d'un cercueil, d'une crypte ou d'une pierre tombale à Sigil."~ */
  IF ~~ THEN REPLY #14377 /* ~"Qu'est-ce qui est arrivé à son père ?"~ */ GOTO 7
  IF ~~ THEN REPLY #14378 /* ~"Je vois. Je peux te poser quelques questions ?"~ */ GOTO 2
  IF ~~ THEN REPLY #14379 /* ~"Merci du renseignement… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14380 /* ~"Tes oreilles ne sont là qu'à titre décoratif ? Il *est mort*." Elle marmonne. "Son fils l'a eu à force de parler. La langue de ce garçon ne prend jamais de repos. Je suis surprise que sa tête ne se soit pas encore détachée de ses épaules."~ */
  IF ~~ THEN REPLY #14381 /* ~"On dirait que vous avez beaucoup de choses en commun tous les deux."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14382 /* ~Blague : "Eh bien, je ne voudrais pas être enterré dans l'un de ses cercueils. Tu connais un autre endroit où je pourrais m'allonger et mourir ?"~ */ GOTO 9
  IF ~~ THEN REPLY #14383 /* ~"Je cherche des informations. Je peux te poser quelques questions ?"~ */ GOTO 2
  IF ~~ THEN REPLY #14384 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14385 /* ~Elle ferme les yeux à moitié. "Fais-nous plaisir et arrête de branler ton râtelier, petit. Ne me compare pas avec ce chiot jappant."~ */
  IF ~~ THEN REPLY #14386 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14387 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.2 4.3 5.2 7.1
  SAY #14388 /* ~Elle glapit avec un rire qui ébranle les oreilles. "Ha ! Pas ici… sauf si tu veux mourir d'ennui."~ */
  IF ~~ THEN REPLY #14389 /* ~"C'est quoi le problème ici ?"~ */ GOTO 10
  IF ~~ THEN REPLY #14390 /* ~"Je m'en souviendrai. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14391 /* ~"Je dois m'en aller. Au revoir, Sère."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14392 /* ~"Tchhh. Quelqu'un t'a volé le bon sens *et* la vue, petit ?" Elle agite sa main autour du bar. "Regarde autour de toi. Que voient tes yeux ?"~ */
  IF ~~ THEN REPLY #14393 /* ~"Les Hommes-Poussière."~ */ GOTO 11
  IF ~~ THEN REPLY #14394 /* ~"Un bar d'Hommes-Poussière."~ */ GOTO 11
  IF ~~ THEN REPLY #14395 /* ~"Une bande d'Hommes-Poussière qui s'amusent, qui boivent gaiement, qui parlent joyeusement et qui profitent à fond de la vie."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #14396 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14397 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #14398 /* ~"*Très* bien !" Sère glousse sèchement bien qu'elle n'ait pas l'air de se moquer de toi. "Au risque de me justifier, les Hommes-Poussière sont les benêts les plus déprimés de tout Sigil… ils parlent toujours de la mort avec révérence, comme s'il s'agissait d'une union sacrée nécessaire à l'épanouissement de toutes les créatures du multivers. Tccchhhh."~ */
  IF ~~ THEN REPLY #14399 /* ~"Mais tu fais partie des Hommes-Poussière."~ */ GOTO 13
  IF ~~ THEN REPLY #14400 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14401 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #14402 /* ~"T'as une langue bien intelligente, petit… est-ce que ta langue serait plus intelligente que toi ?" Sère te lorgne puis renifle. "C'est ce qui expliquerait les cicatrices."~ */
  IF ~~ THEN REPLY #14403 /* ~"Mais ça ne me dit pas pourquoi un membre des Hommes-Poussière est là à ridiculiser d'autres Hommes-Poussière. Réponds-moi : *tu* fais partie des Hommes-Poussière ?"~ */ GOTO 13
  IF ~~ THEN REPLY #14404 /* ~"Très malin. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14405 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 3.0 11.0 12.0
  SAY #14406 /* ~"Un Homme-Poussière ? J'suppose." Sère renifle. "Tchhhh. J'ai vu bien du sable s'écouler dans le sablier depuis que je porte cette robe. Ce corps est pratiquement prêt à payer le passeur." Elle glousse, sans beaucoup de gaieté.~ */
  IF ~~ THEN REPLY #14407 /* ~"Tu es effrayée à l'idée de mourir ?"~ */ GOTO 14
  IF ~~ THEN REPLY #14408 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14409 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #14410 /* ~"Bien sûr, petit ! Qui ne l'est pas ?" Elle fronce les sourcils et regarde autour d'elle. "Bon, à l'exception des Hommes-Poussière. Ils n'ont pas peur parce qu'ils ont avalé tellement de leur propre fiente de chauve-souris au cours des siècles qu'ils ont réussi à se persuader que la mort est une sorte de 'délivrance'. Tccchhh."~ */
  IF ~~ THEN REPLY #14411 /* ~"Mais *c'est* une délivrance."~ */ GOTO 15
  IF ~~ THEN REPLY #14412 /* ~"Tu ne ressembles pas aux autres Hommes-Poussière."~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14413 /* ~"Alors, qu'est-ce qui a ébranlé ta foi ?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14414 /* ~"Alors, qu'est-ce qui a ébranlé ta foi ?"~ */ GOTO 16
  IF ~~ THEN REPLY #14415 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14416 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #14417 /* ~"Si tu crois que cette vie est un fardeau, peut-être. Je n'en suis pas convaincue."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14418 /* ~"Alors, qu'est-ce qui a ébranlé ta foi ?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14419 /* ~"Alors, qu'est-ce qui a ébranlé ta foi ?"~ */ GOTO 16
  IF ~~ THEN REPLY #14420 /* ~"Alors, tu ne crois pas à ce que disent les Hommes-Poussière ? Tu n'en fais pas partie ?"~ */ GOTO 65
  IF ~~ THEN REPLY #14421 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14422 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 14.2 14.3 15.0 15.1 65.0 65.1 65.2
  SAY #14423 /* ~Elle hausse les épaules. "La vie, j'suppose. C'est… eh" Elle fronce les sourcils. "Bah ! Peu importe. Je vais pas t'ennuyer avec des détails sans intérêt."~ */
  IF ~~ THEN REPLY #14424 /* ~"En fait, je voudrais le savoir."~ */ GOTO 17
  IF ~~ THEN REPLY #14425 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14426 /* ~"Eh bien, remercie les Puissances. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #14427 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #14428 /* ~"Oh, *vraiment* ?" Elle te regarde d'un air sceptique. "Tchhhh. Quel âge me donnes-tu, petit ?"~ */
  IF ~~ THEN REPLY #14429 /* ~Vérité : "Vieille."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sere_1","GLOBALLaw",1)
~ GOTO 18
  IF ~~ THEN REPLY #14430 /* ~Tu ne veux pas être trop brusque : "Pas trop vieille."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sere_1","GLOBALGood",1)
~ GOTO 18
  IF ~~ THEN REPLY #14431 /* ~Mens gentiment : "Assez jeune."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALGood_Sere_2","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #14432 /* ~"Je ne sais pas et ça m'est égal."~ */ GOTO 20
  IF ~~ THEN REPLY #14433 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14434 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #14435 /* ~Elle renifle. "Tu te trompes. Je suis *vraiment* vieille. J'ai passé la plupart de mes longues années à instruire les Hommes-Poussière. J'ai vu beaucoup de petits morveux d'Hommes-Poussière grandir dans notre ordre, je leur ai enseigné nos coutumes, j'ai maintenu la foi, j'ai prêché devant les gardiens de la faction…" Elle fronce les sourcils. "… etc., etc. Jamais une question. Jamais un doute. Cette vie n'était que l'antichambre qui menait à la Vraie Mort."~ */
  IF ~~ THEN REPLY #14436 /* ~"Qu'est-ce qui s'est passé ?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14437 /* ~"Tu sais, ça commence à m'ennuyer. Au revoir."~ */ GOTO 20
  IF ~~ THEN REPLY #14438 /* ~"Je vois. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14439 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY #14440 /* ~Sère cligne des yeux puis sourit. "N'est-*il* pas mignon ?" Elle glousse puis tousse. "Bon, je suis plus âgée que je le parais. Beaucoup plus." Elle soupire. "J'ai passé la plus grande partie de ma vie à instruire les Hommes-Poussière. J'ai vu beaucoup de petits Hommes-Poussière grandir dans notre ordre, je leur ai enseigné nos coutumes, maintenu la foi, prêché devant les gardiens de la faction…" Elle fronce les sourcils. "… etc., etc. Jamais une question. Jamais un doute. Cette vie n'était que l'antichambre qui menait à la Vraie Mort."~ */
  IF ~~ THEN REPLY #14441 /* ~"Qu'est-ce qui s'est passé ?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14442 /* ~"Tu sais, ça commence à m'ennuyer. Au revoir."~ */ GOTO 20
  IF ~~ THEN REPLY #14443 /* ~"Je vois. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14444 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.1 22.1
  SAY #14445 /* ~Sère fronce les sourcils. "Tchhhh. C'est *toi* qui m'as demandé d'agiter mon râtelier, garçon. À l'avenir, je ferai attention à ce que tu demandes."~ */
  IF ~~ THEN REPLY #14446 /* ~"D'accord. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Sere_1","GLOBALGood",-1)
SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0 19.0
  SAY #14447 /* ~"Bon… il y a quinze jours environ, j'ai eu de la fièvre." Elle soupire. "J'ai cru que c'était la fin. J'étais… j'étais terrifiée."~ */
  IF ~~ THEN REPLY #14448 /* ~"Comment ça ?"~ */ GOTO 22
  IF ~~ THEN REPLY #14449 /* ~"Tu sais, ça commence à m'ennuyer. Au revoir."~ */ GOTO 20
  IF ~~ THEN REPLY #14450 /* ~"Je vois. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14451 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #14452 /* ~Son visage se raidit. "C'est quelque chose, de voir les membres de ta faction entourer ton lit de mort comme une horde de goules toutes pâles, s'accordant à dire que tes souffrances et ta mort sont pour le mieux. 'Oh, elle a tellement de chance, Sère ! Elle sera bientôt soulagée du fardeau de la vie !' *Fardeau de la vie* ? C'est là que ça m'a frappé…"~ */
  IF ~~ THEN REPLY #14453 /* ~"Ça… ?"~ */ GOTO 23
  IF ~~ THEN REPLY #14454 /* ~"Tu sais, ça commence à m'ennuyer. Au revoir."~ */ GOTO 20
  IF ~~ THEN REPLY #14455 /* ~"Je vois. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14456 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14457 /* ~"Qu'il y a quelque chose…" Une expression bizarre s'empare de son visage. "… d'enfumé sur le fait de ne pas apprécier ta *vie*. Les Hommes-Poussière n'arrêtent pas de dire que la vie n'est que misère et souffrances… est-ce que c'est vraiment le cas ? Que nous devrions être heureux de mourir dans l'oubli… vraiment ?" Elle secoue la tête. "Des questions, des questions… et peu de réponses satisfaisantes."~ */
  IF ~~ THEN REPLY #14458 /* ~"On dirait que tu ne crois plus à la philosophie des Hommes-Poussière."~ */ GOTO 24
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14459 /* ~"Qu'est-ce que tu comptes faire ?"~ */ GOTO 25
  IF ~~ THEN REPLY #14460 /* ~"Je vois. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14461 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14462 /* ~"Je suppose que j'ai des tas de doutes qui bourdonnent dans ma tête." Elle se frotte les tempes. "C'est dur de les calmer parfois. Il me faut des réponses et je suis loin de les avoir toutes."~ */
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14463 /* ~"Qu'est-ce que tu comptes faire ?"~ */ GOTO 25
  IF ~~ THEN REPLY #14464 /* ~"Je vois. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14465 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #14466 /* ~"Honnêtement, petit, je ne sais pas." Sère soupire. "C'est le problème lorsqu'on doute. Je ne peux même pas me fier à ce que je ressens ni savoir si je suis effrayée par la mort à cause de ma fièvre. Je ne sais pas ce que je dois faire. Est-ce que ça va passer ? Je ne sais pas."~ */
  IF ~~ THEN REPLY #14467 /* ~"Sère, si tu croyais vraiment à la philosophie des Hommes-Poussière, tu n'aurais pas tous ces doutes."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14468 /* ~"Sère, à ta place, je considérerais ça comme un test sur mes croyances. À mon avis, ces sentiments ne sont que temporaires. Après toutes ces années de dévouement envers les Hommes-Poussière, tu ne peux pas t'être trompée à ce point."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",2)
AddexperienceParty(500)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14469 /* ~"La philosophie des Hommes-Poussière repose sur l'idée que cette vie n'est que souffrances. C'est une arme que la vie utilise contre une âme pour qu'elle reste attachée à cette existence. Ne laisse pas cette fièvre ébranler tes croyances d'Homme-Poussière. Le temps effacera tes doutes."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",3)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14470 /* ~"C'est difficile de répondre à ça. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14471 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2
  SAY #14472 /* ~Sère te regarde, puis acquiesce lentement. "Peut-être… peut-être." Elle fronce les sourcils, son visage plissé par la concentration. "Il va falloir que je rumine tout ça un peu plus."~ */
  IF ~  Global("Sere_Death_Answer","GLOBAL",0)
~ THEN REPLY #14473 /* ~"Tu devrais. Il s'agit d'un gros problème."~ */ GOTO 27
  IF ~~ THEN REPLY #14474 /* ~"C'est tout ce que je te demande. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14475 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14476 /* ~"Bon… assez parlé de mes malheurs !" Sère fixe tes cicatrices. "On dirait que tu as toi-même échangé quelques poignées de main avec la mort. Est-ce que cela ne t'a pas fait réfléchir ? N'apprécies-tu pas la vie un peu plus ?"~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14477 /* ~"Eh bien, ma situation est particulière… À mon réveil, j'étais à la Morgue. Je crois qu'ils m'ont pris pour un cadavre et qu'ils s'apprêtaient à m'enterrer. Le plus étrange, c'est que je crois avoir déjà connu la mort… et la renaissance."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",1)
~ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14478 /* ~"Eh bien, j'ai une relation particulière avec la mort. Apparemment, je ne peux pas mourir… Enfin, d'après ce que je sais."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",2)
~ GOTO 28
  IF ~~ THEN REPLY #14479 /* ~Vérité : "Oui."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",3)
~ GOTO 62
  IF ~~ THEN REPLY #14480 /* ~Vérité : "Pas vraiment."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",4)
~ GOTO 63
  IF ~~ THEN REPLY #14481 /* ~"Je n'ai pas vraiment envie d'en parler. Mais j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14482 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 62.0 62.1 63.0 63.1
  SAY #14483 /* ~Sère cligne des yeux. "Tu me fais rire."~ */
  IF ~~ THEN REPLY #14484 /* ~"C'est vrai."~ */ GOTO 29
  IF ~~ THEN REPLY #14485 /* ~"Ouais. Je plaisante, c'est tout."~ */ GOTO 33
  IF ~~ THEN REPLY #14486 /* ~"Pas vraiment."~ */ GOTO 29
  IF ~~ THEN REPLY #14487 /* ~"Je n'ai pas vraiment envie d'en parler. Mais j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14488 /* ~"Je crois que j'en ai assez dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #14489 /* ~"Les voies des plans sont étranges et j'en ai bien trop vu pour rejeter *toutes* les histoires en bloc." Elle étudie ton visage. "Si c'est vrai, pourquoi cela arrive-t-il ?"~ */
  IF ~~ THEN REPLY #14490 /* ~"Je ne sais pas."~ */ GOTO 30
  IF ~~ THEN REPLY #14491 /* ~"Tout ce que je sais, c'est qu'à mon réveil, j'étais à la Morgue, sans souvenirs et avec tant de blessures que j'aurais pu mourir au moins trois fois."~ */ GOTO 31
  IF ~~ THEN REPLY #14492 /* ~"Je ne sais pas. Écoute, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14493 /* ~"Je crois que j'en ai assez dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14494 /* ~Elle semble réfléchir un moment puis hausse les épaules. "Nous sommes deux dans ce cas. Très bizarre. J'ai jamais entendu un truc pareil. Dommage pour les souvenirs."~ */
  IF ~~ THEN REPLY #14495 /* ~"Tu as une idée de ce qui a pu se passer et pourquoi ?"~ */ GOTO 32
  IF ~~ THEN REPLY #14496 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14497 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #14498 /* ~"Ne parle pas trop fort maintenant." Elle regarde autour d'elle. "Très bizarre. J'ai jamais entendu un truc pareil. Dommage pour les souvenirs."~ */
  IF ~~ THEN REPLY #14499 /* ~"Tu as une idée de ce qui a pu se passer et pourquoi ?"~ */ GOTO 32
  IF ~~ THEN REPLY #14500 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14501 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0 31.0
  SAY #14502 /* ~"Non, aucune. J'ai jamais rencontré personne dont la mort ne voudrait pas… jusqu'à maintenant."~ */
  IF ~~ THEN REPLY #14503 /* ~"Eh bien, je pourrais peut-être te poser d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14504 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY #14505 /* ~Elle fronce les sourcils. "À ta place, je ferais gaffe à mon esprit. Assez vif pour te tuer." Elle se tourne, fait un signe de renvoi avec sa main."Laisse-moi."~ */
  IF ~~ THEN REPLY #14506 /* ~"Au revoir."~ */ DO ~SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 2.6
  SAY #14507 /* ~"Eh ? Parle sans détour, garçon."~ */
  IF ~~ THEN REPLY #14508 /* ~"J'ai des amis qui pensent que les institutions comme celles des Hommes-Poussière devraient disparaître."~ */ GOTO 35
  IF ~~ THEN REPLY #14509 /* ~"En fait, ce n'est pas ce que je voulais dire. Je voulais te poser d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14510 /* ~"Peu importe. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14511 /* ~"Oh ?" Elle minaude. "Ferais-tu référence à la *Ligue ?*"~ */
  IF ~~ THEN REPLY #14512 /* ~"Oui."~ */ GOTO 36
  IF ~~ THEN REPLY #14513 /* ~"Peut-être…"~ */ GOTO 36
  IF ~~ THEN REPLY #14514 /* ~"En fait, ce n'est pas ce que je voulais dire. Je voulais te poser d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14515 /* ~"Peu importe. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1
  SAY #14516 /* ~"Tccchhh ! Ces incitateurs au désordre furibards sont plus azimutés que les Hommes-Poussière. C'est pas bon pour une vieille femme comme moi."~ */
  IF ~~ THEN REPLY #14517 /* ~"Ah bon ? Je crois que tu ferais un membre précieux."~ */ GOTO 37
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14518 /* ~"Avant de refuser, écoute-moi : tu as failli mourir, ce qui t'a finalement convaincue que la vie valait la peine d'être vécue. Les Hommes-Poussière endoctrinent les nouvelles recrues en leur faisant croire que la mort est préférable à la vie. Tu penses que c'est bien ?"~ */ GOTO 40
  IF ~~ THEN REPLY #14519 /* ~"J'avais l'impression que tu avais besoin de changement."~ */ GOTO 37
  IF ~~ THEN REPLY #14520 /* ~"Très bien. Je m'en vais… Préviens-moi si tu changes d'avis."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.2
  SAY #14521 /* ~"Je crois que tu fais erreur." Sère esquisse un léger sourire. Elle semble amusée. "J'ai peut-être mes doutes, mais ils ne m'emportent pas *aussi* loin."~ */
  IF ~~ THEN REPLY #14522 /* ~"Alors, écoute-moi : tu as failli mourir, ce qui t'a finalement convaincue que la vie valait la peine d'être vécue. Les Hommes-Poussière recrutent de nouveaux membres en leur faisant croire que la mort est préférable à la vie. Tu penses que c'est bien ?"~ */ GOTO 40
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14523 /* ~"Très bien, une dernière question : qu'est-ce que tu penses du Contrat à mort ?"~ */ GOTO 38
  IF ~~ THEN REPLY #14524 /* ~"Alors, laisse tomber. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14525 /* ~"Très bien. Je m'en vais… Préviens-moi si tu changes d'avis."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #14526 /* ~"Le Contrat à mort ?" Elle semble surprise. "Que veux-tu dire ?"~ */
  IF ~~ THEN REPLY #14527 /* ~"Tu penses que le fait d'acheter le cadavre de quelqu'un pour en faire un esclave soit une *bonne* chose ? Ils tirent profit d'un moment de faiblesse dans l'esprit d'une personne pour asservir son corps après sa mort. Est-ce que les Hommes-Poussière peuvent être fiers de ça ?"~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #14528 /* ~"J'en doute, mon garçon."~ */
  IF ~~ THEN REPLY #14529 /* ~"Je peux te poser d'autres questions… ?"~ */ GOTO 2
  IF ~~ THEN REPLY #14530 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.1 37.0
  SAY #14531 /* ~"Bien, non… mais…"~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14532 /* ~"Et le Contrat à mort ? Tu penses que le fait d'acheter le cadavre de quelqu'un pour en faire un esclave soit une *bonne* chose ? Ils tirent profit d'un moment de faiblesse dans l'esprit d'une personne pour asservir son corps après sa mort ? Est-ce que les Hommes-Poussière peuvent être fiers de ça ?"~ */ GOTO 41
  IF ~~ THEN REPLY #14533 /* ~"Écoute-toi, Sère. Même tes réponses trahissent tes doutes. Tu ne crois pas à la philosophie des Hommes-Poussière. Tu sais que tout ça est faux."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 38.0 40.0 40.1
  SAY #14534 /* ~"Eh… voyons…" Sère fronce les sourcils. "Hmmmm. Bon, je ne dis pas que je *suis d'accord* avec toutes les pratiques des Hommes-Poussière, mais que feraient tes amis à ce propos ?"~ */
  IF ~~ THEN REPLY #14535 /* ~"On abattra les murs. On repartira de zéro. Et tout le monde sera délivré de ces hypocrisies qu'ils appellent des philosophies."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Recruit_Sere","GLOBAL",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #14536 /* ~"Très bien, j'écouterai tes amis." Sère semble se surprendre elle-même. "Et peut-être plus." Elle rit. "Je me sens plus en vie déjà… ceci explique cela."~ */
  IF ~~ THEN REPLY #14537 /* ~"Tu ne le regretteras pas. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14538 /* ~"Merci, Sère. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 2.7
  SAY #14539 /* ~"À quoi il ressemble ?"~ */
  IF ~~ THEN REPLY #14540 /* ~"Aucune idée."~ */ GOTO 44
  IF ~~ THEN REPLY #14541 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14542 /* ~"Ça n'a aucune importance. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #14543 /* ~"Si tu ne sais pas à quoi il ressemble, comment comptes-tu le retrouver ?"~ */
  IF ~~ THEN REPLY #14544 /* ~"Je commence à me le demander moi-même. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14545 /* ~"Ça n'a aucune importance. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 2.8
  SAY #14546 /* ~Sère fronce les sourcils. "Ce *chien*… c'est le pire des Récupérateurs. Je sais qu'il a sa guitoune quelque part dans le Square du Chiffonnier, plusieurs rues à l'ouest de l'entrée de la Morgue. Un endroit dangereux. Certains de ces Récupérateurs n'ont pas la patience d'attendre que les types meurent pour les échanger contre du jonc."~ */
  IF ~~ THEN REPLY #14547 /* ~"Les Récupérateurs ?"~ */ GOTO 46
  IF ~~ THEN REPLY #14548 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14549 /* ~"Merci du conseil. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14550 /* ~"C'est de la vermine qui fouille les entrailles de la Ruche pour trouver des corps à vendre aux Hommes-Poussière. Ils vivent sur le dos des morts. Une fichue race. T'as honte de partager la cité avec eux." Elle soupire. "Tcchhh. Au moins, ils maintiennent les rues propres."~ */
  IF ~~ THEN REPLY #14551 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14552 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.2 48.3 49.1 50.0 51.1 52.0 53.0 54.0 55.1 56.1 57.2 58.0 59.1 60.0 61.0
  SAY #14553 /* ~"Si tu veux. À qui penses-tu ?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #14554 /* ~"Tu peux me parler d'Attente-de-la-mort ?"~ */ GOTO 53
  IF ~  GlobalGT("Mortai","GLOBAL",0)
~ THEN REPLY #14555 /* ~"Tu peux me parler de Mortaï ?"~ */ GOTO 55
  IF ~  GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #14556 /* ~"Tu peux me parler du Régisseur Emoric ?"~ */ GOTO 54
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #14557 /* ~"Tu peux me parler du Vieil Œilcuivré ?"~ */ GOTO 61
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #14558 /* ~"En fait, j'ai rencontré un scribe dénommé Dhall à la Morgue. Tu le connais ?"~ */ GOTO 51
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #14559 /* ~"J'ai rencontré un guide à la Morgue, Soego. Tu le connais ?"~ */ GOTO 48
  IF ~  GlobalGT("Eivene","GLOBAL",0)
~ THEN REPLY #14560 /* ~"Une des embaumeuses de la Morgue… Ei-Vene. Tu la connais ?"~ */ GOTO 59
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
Global("Soego","GLOBAL",0)
Global("Dhall","GLOBAL",0)
Global("Eivene","GLOBAL",0)
~ THEN REPLY #14561 /* ~"En fait, tant pis - je ne connais pas leurs noms."~ */ GOTO 64
  IF ~~ THEN REPLY #14562 /* ~"Laisse tomber. J'avais plutôt d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14563 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.5
  SAY #14564 /* ~"Ce garçon venait régulièrement ici. Je ne sais pas ce qui lui est arrivé. Il a peut-être été secoué par la mort de son ami."~ */
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",0)
~ THEN REPLY #14565 /* ~"Explique-moi ça."~ */ DO ~SetGlobal("Know_Soego_Friend_Death","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",1)
~ THEN REPLY #14566 /* ~"Explique-moi ça."~ */ GOTO 49
  IF ~~ THEN REPLY #14567 /* ~"Soego a-t-il toujours été guide à la Morgue ?"~ */ GOTO 50
  IF ~~ THEN REPLY #14568 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14569 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14570 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #14571 /* ~"Un de ses amis a été tué dans la Ruche il y a quelques semaines, déchiqueté par des rats." Elle secoue la tête. "Une sale affaire."~ */
  IF ~~ THEN REPLY #14572 /* ~"Soego a toujours été guide à la Morgue ?"~ */ GOTO 50
  IF ~~ THEN REPLY #14573 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14574 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14575 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.2 49.0
  SAY #14576 /* ~"Non, uniquement au cours des quelques derniers mois… et la dernière fois que j'ai entendu parler de lui, il venait d'être envoyé en mission, mais je ne sais pas où."~ */
  IF ~~ THEN REPLY #14577 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14578 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14579 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.4
  SAY #14580 /* ~"Tchhhh. Dhall ? C'était mon précepteur aux Arts Philosophiques pendant ma formation initiale à la Morgue et un vieux bourru qui plus est. Il est malade, d'après ce que j'ai entendu dire. Je parie qu'il serait même capable d'ennuyer la mort."~ */
  IF ~~ THEN REPLY #14581 /* ~"Il est en train de mourir ?"~ */ GOTO 52
  IF ~~ THEN REPLY #14582 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14583 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14584 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14585 /* ~"Tchhhh. Encore plus malade qu'un chien. Le sablier est pratiquement vide pour lui."~ */
  IF ~~ THEN REPLY #14586 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14587 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14588 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 47.0
  SAY #14593 /* ~"Attente-de-la-mort ? Tchhh ! Ce garçon est plus *bête* qu'un âne. Il est si jeune et il *veut* mourir. Je voudrais que la mort *frappe* à sa cage, qu'elle lui apprenne deux ou trois choses…"~ */
  IF ~~ THEN REPLY #14594 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14595 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14596 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.2
  SAY #14597 /* ~"Ce vieux fou au visage de marbre. J'étais son professeur, tu sais, et je tenais ce Régisseur en grande estime, puis je me suis réveillée. C'est une vieille goule bourrue qui reste assis là à ses heures de repos pour s'assurer que les jeunes Hommes-Poussière ont un symbole d'autorité dans ce bar." Elle marmonne. "Vieux vautour."~ */
  IF ~~ THEN REPLY #14598 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14599 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14600 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.1
  SAY #14601 /* ~"Mortaï ? Ha ! Je croyais que tu allais m'interroger sur un Homme-Poussière." Elle crache. "Aucun Homme-Poussière n'est moins Homme-Poussière que cet imbécile d'ouvre râtelier qui fait claquer le jonc !"~ */
  IF ~~ THEN REPLY #14602 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 56
  IF ~~ THEN REPLY #14603 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14604 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14605 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #14606 /* ~"Mortaï est si désireux d'impressionner ses parieurs en obtenant le plus de signatures de Contrats à mort que je me demande s'il sera jamais un Homme-Poussière."~ */
  IF ~~ THEN REPLY #14607 /* ~"Je ne comprends pas."~ */ GOTO 57
  IF ~~ THEN REPLY #14608 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14609 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14610 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #14611 /* ~"Il est *avide* de contrats signés, mon garçon. Il est inquiet pour sa réputation. Il pense à sa *carrière* chez les Hommes-Poussière. Ça veut tout dire."~ */
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14612 /* ~"Je ne comprends toujours rien."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 58
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14613 /* ~"Je ne comprends toujours pas."~ */ GOTO 58
  IF ~~ THEN REPLY #14614 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14615 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14616 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #14617 /* ~"On dit que les passions tuent." Sère renifle. "Tchhh. Pour les Hommes-Poussière, c'est l'opposé. Les passions te gardent en vie. Et si tu n'arrives pas à t'en débarrasser, que ce soit l'impatience, la cupidité ou l'ambition, alors tu es condamné à ne jamais véritablement mourir, car la vie gardera toujours un morceau de toi."~ */
  IF ~~ THEN REPLY #14618 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14619 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14620 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 47.6
  SAY #14621 /* ~"Qui ?"~ */
  IF ~~ THEN REPLY #14622 /* ~"Une jeune femme étrange… une mauvaise vue, presque sourde, avec des lames en guise de doigts ?"~ */ GOTO 60
  IF ~~ THEN REPLY #14623 /* ~"Tant pis. Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14624 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14625 /* ~"Laisse tomber. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #14626 /* ~Sère secoue la tête. "Peut-être une nouvelle initiée. Je n'en ai jamais entendu parler."~ */
  IF ~~ THEN REPLY #14627 /* ~"Très bien. Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14628 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14629 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 47.3
  SAY #14630 /* ~"Je ne sais pas grand-chose sur lui… C'est un affranchi bizarre. Il ne bouge jamais de cet endroit, ne mange jamais, ne boit jamais, il attend." Elle frissonne légèrement. "Ça me met mal à l'aise."~ */
  IF ~~ THEN REPLY #14631 /* ~"Je peux te poser des questions sur d'autres Hommes-Poussière ?"~ */ GOTO 47
  IF ~~ THEN REPLY #14632 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14633 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 27.2
  SAY #14634 /* ~"Encore heureux. Il n'y a rien de réconfortant dans la mort."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14635 /* ~"Eh bien, ma situation est particulière… À mon réveil, j'étais à la Morgue. Je crois qu'ils m'ont pris pour un cadavre et qu'ils s'apprêtaient à m'enterrer. Le plus étrange, c'est que je crois avoir déjà connu la mort… et la renaissance."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14636 /* ~"Eh bien, j'ai une relation particulière avec la mort. Apparemment, je ne peux pas mourir… Enfin, d'après ce que je sais."~ */ GOTO 28
  IF ~~ THEN REPLY #14637 /* ~"Je suppose que non. Mais j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14638 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 27.3
  SAY #14639 /* ~"Ah, quel dommage, petit." Sère toussote. "Si la grimace d'une tête de mort ne suffit pas à te donner envie de rester en vie, aucune force sur les plans n'est capable alors d'éclairer ta lanterne."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14640 /* ~"Eh bien, ma situation est particulière… À mon réveil, j'étais à la Morgue. Je crois qu'ils m'ont pris pour un cadavre et qu'ils s'apprêtaient à m'enterrer. Le plus étrange, c'est que je crois avoir déjà connu la mort… et la renaissance."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14641 /* ~"Eh bien, j'ai une relation particulière avec la mort. Apparemment, je ne peux pas mourir… Enfin, d'après ce que je sais. C'est mortifiant."~ */ GOTO 28
  IF ~~ THEN REPLY #14642 /* ~"C'est ton opinion. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14643 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 47.7
  SAY #14644 /* ~"Bon, je vais t'épargner les présentations." Sère renifle. "C'est un fichu groupe. Si tu veux en savoir plus sur l'un d'entre eux, trouve d'abord son nom puis reviens me voir."~ */
  IF ~~ THEN REPLY #14645 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14646 /* ~"Alors, je crois que je vais aller parler à certains d'entre eux. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 14.1 15.2
  SAY #14647 /* ~Elle hausse les épaules. "Je pense que les robes des Hommes-Poussière ne me vont pas aussi bien qu'avant."~ */
  IF ~~ THEN REPLY #14648 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14649 /* ~"Alors, qu'est-ce qui a ébranlé ta foi ?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14650 /* ~"Alors, qu'est-ce qui a ébranlé ta foi ?"~ */ GOTO 16
  IF ~~ THEN REPLY #14651 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #14652 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~  Global("Sere","GLOBAL",2)
~ THEN BEGIN 66 // from:
  SAY #14653 /* ~Sère fronce les sourcils en t'apercevant. "Mieux vaut que tu retournes à ta crypte, petit. Il me reste plus beaucoup de temps dans cette vie pour badiner avec toi."~ */
  IF ~~ THEN EXIT
END
