// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORA~

IF ~  Global("Dolora","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Cette femme aux cheveux bruns et à la peau claire a quelque chose de raffiné. Lorsqu'elle se tourne vers toi, tu remarques que ses yeux - que tu croyais gris - ont la couleur de l'acier poli.~ */
  IF ~~ THEN REPLY #34366 /* ~"Bonjour…"~ */ DO ~SetGlobal("Dolora","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41352 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41282 /* ~La voix de la femme est douce, sans inflexion ; elle a une légère qualité 'd'éloignement', comme si elle ne faisait pas partie d'elle. "Bonjour… je m'appelle Dolora. Je peux faire quelque chose pour toi ?"~ */
  IF ~~ THEN REPLY #41353 /* ~"Qu'est-ce que tu peux faire pour moi, Dolora?"~ */ GOTO 2
  IF ~~ THEN REPLY #41354 /* ~"Pas vraiment, mais j'ai quelques questions…"~ */ GOTO 32
  IF ~~ THEN REPLY #41355 /* ~"Non, je voulais juste te rencontrer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 38.0 64.0
  SAY #41283 /* ~Elle cligne des yeux, puis porte la main à son cœur tout en inclinant légèrement la tête. "Je suis capable d'engager un débat sur n'importe quel sujet académique ou savant, si c'est ce que tu veux. Je suis aussi bien entraînée à plusieurs jeux de stratégie, si tu as envie de jouer à quelque chose, bien que je n'aie que quelques jeux ici."~ */
  IF ~~ THEN REPLY #41356 /* ~"J'espérais quelque chose de plus 'physique'…"~ */ GOTO 3
  IF ~~ THEN REPLY #41357 /* ~"Tu as parlé de débat ?"~ */ GOTO 7
  IF ~~ THEN REPLY #41358 /* ~"On pourrait jouer à un jeu, alors ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41359 /* ~"En fait, est-ce que je pourrais te poser quelques questions ?"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41360 /* ~"En fait, est-ce que je pourrais te poser quelques questions ?"~ */ GOTO 44
  IF ~~ THEN REPLY #41361 /* ~"Tout bien réfléchi, je crois que je vais m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #41284 /* ~Dolora ne semble ni curieuse ni repoussée ; elle répond sur le même ton monocorde : "C'est que tu te trompes sur la raison d'être de cet établissement ; la Maison de tolérance répond aux désirs de type cérébral, pas de la chair. De toute façon, je t'assure que je ferais une bien piètre partenaire."~ */
  IF ~~ THEN REPLY #41362 /* ~"Oh ? Pourquoi tu dis ça ?"~ */ GOTO 4
  IF ~~ THEN REPLY #41363 /* ~"Tu as parlé de débat ?"~ */ GOTO 7
  IF ~~ THEN REPLY #41364 /* ~"On pourrait jouer à un jeu, alors ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41365 /* ~"Dans ce cas, j'avais quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41366 /* ~"Dans ce cas, j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41367 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #41285 /* ~"C'est dans ma nature, c'est tout. Permets-moi de te montrer." Elle avance sa main pour te toucher le bras…~ */
  IF ~~ THEN REPLY #41368 /* ~Laisse-la te toucher.~ */ GOTO 5
  IF ~~ THEN REPLY #41369 /* ~Éloigne-toi d'elle.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #41286 /* ~Dolora passe le dos de sa main sur ton bras ; sa peau est douce et sèche, mais froide comme le métal. Son contact provoque des frissons le long de ta colonne vertébrale et te donne la chair de poule. "Ne perds pas ton temps à me demander qui je suis, ou ce que je suis ; tout ce que je peux te dire, c'est que c'est ma nature."~ */
  IF ~~ THEN REPLY #41370 /* ~"D'accord. Tu as parlé de débat ?"~ */ GOTO 7
  IF ~~ THEN REPLY #41371 /* ~"D'accord. Est-ce qu'on pourrait jouer à un jeu, alors ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41372 /* ~"Dans ce cas, j'avais quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41373 /* ~"Dans ce cas, j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41374 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #41287 /* ~Tu enlèves ton bras avant qu'elle puisse le toucher. "Très bien. Je voulais seulement illustrer ce que je viens de te dire ; je ne t'aurais pas fait mal."~ */
  IF ~~ THEN REPLY #41375 /* ~"Très bien… montre-moi, alors."~ */ GOTO 5
  IF ~~ THEN REPLY #41376 /* ~"Laisse tomber. Tu as parlé de débat ?"~ */ GOTO 7
  IF ~~ THEN REPLY #41377 /* ~"On pourrait jouer à un jeu, alors ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41378 /* ~"Dans ce cas, j'avais quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41379 /* ~"Dans ce cas, j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41380 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 3.1 5.0 6.1 22.1 23.0 24.1 25.1 27.1 28.1 30.1 31.1
  SAY #41288 /* ~Dolora acquiesce. "C'est exact. Je ne suis ni un grimoire ni un professeur ; je n'ai aucune envie d'instruire mes clients. Mais si tu veux parler d'autre chose… les quinze factions et leur influence sur la politique sigilienne, les tactiques les plus efficaces pour faire la guerre en Achéron, la signification de l'existence elle-même… je serais heureuse de prendre ton contre-pied et d'engager le débat avec toi."~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41381 /* ~Choisis un sujet et essaie de la 'battre'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41382 /* ~Choisis un sujet et essaie de la 'battre'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41383 /* ~Choisis un sujet et essaie de la 'battre'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41384 /* ~Choisis un sujet et essaie de la 'battre'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #41385 /* ~Choisis un sujet et essaie de la 'battre'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41386 /* ~Choisis un sujet et essaie de la 'battre'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #57371 /* ~Choisis un sujet et essaie de la 'battre'.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41387 /* ~"Hum. Est-ce qu'on pourrait jouer à un jeu, alors ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41388 /* ~"En fait, laisse-moi juste te poser quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41389 /* ~"En fait, laisse-moi juste te poser quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41390 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #41289 /* ~Après quelques minutes de discussion seulement, Dolora écrase chacun de tes arguments avec une assurance désarmante ; les arguments qu'elle avance pour contrecarrer tes faibles tentatives de débat rendent ta position puérile et intenable. Mais elle ne semble pas apprécier sa victoire, et propose simplement : "Si tu veux, on peut recommencer le débat sur le même sujet… je pourrais défendre ta position cette fois-ci, si tu préfères."~ */
  IF ~~ THEN REPLY #41391 /* ~"Attends… tu es toujours aussi impitoyable dans les débats ?"~ */ GOTO 9
  IF ~~ THEN REPLY #41392 /* ~"Non, merci. On pourrait jouer à un jeu ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41393 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41394 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41395 /* ~"Ça suffit pour le moment. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0 14.0
  SAY #41290 /* ~Dolora acquiesce. "Maîtresse Grâce m'a dit d'être sans pitié, parce qu'une autre de ses étudiantes laisse toujours le client gagner après un long débat. C'est Maîtresse Grâce qui a voulu que j'offre une autre forme d'expérience aux clients."~ */
  IF ~~ THEN REPLY #41396 /* ~"Je vois. On peut jouer à un jeu, maintenant ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41397 /* ~"Je comprends. J'ai quelques questions à te poser…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41398 /* ~"Je comprends. J'ai quelques questions à te poser…"~ */ GOTO 44
  IF ~~ THEN REPLY #41399 /* ~"Ça paraît logique. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY #41291 /* ~Tu fais un gros effort, mais en vain ; Dolora écrase facilement et sans hésitation chacun de tes arguments avec son sens infaillible de la logique. Mais elle ne semble pas apprécier sa victoire, et propose simplement : "Si tu veux, on peut recommencer le débat sur le même sujet… je pourrais défendre ta position cette fois-ci, si tu préfères."~ */
  IF ~~ THEN REPLY #41400 /* ~"Attends… tu es toujours aussi impitoyable dans les débats ?"~ */ GOTO 9
  IF ~~ THEN REPLY #41401 /* ~"Non, merci. On pourrait jouer à un jeu ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41402 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41403 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41404 /* ~"Ça suffit pour le moment. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY #41292 /* ~Tu choisis un sujet et tu commences. Au début, tu sembles bien te débrouiller… mais au fil du débat, ta position s'effondre tandis que Dolora écrase chacun de tes arguments l'un après l'autre avec son sens infaillible de la logique. Mais elle ne semble pas apprécier sa victoire, et propose simplement : "Si tu veux, on peut recommencer le débat sur le même sujet… je pourrais défendre ta position cette fois-ci, si tu préfères."~ */
  IF ~~ THEN REPLY #41405 /* ~"Attends… tu es toujours aussi impitoyable dans les débats ?"~ */ GOTO 9
  IF ~~ THEN REPLY #41406 /* ~"Non, merci. On pourrait jouer à un jeu ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41407 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41408 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41409 /* ~"Ça suffit pour le moment. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY #41293 /* ~Tu choisis un sujet et tu commences… le débat dure un bon moment ; vous échangez arguments et contre-arguments, chacun essayant de déstabiliser l'autre de manière méthodique. En parlant, un étrange sentiment t'envahit… un souvenir qui essaie de refaire surface…~ */
  IF ~~ THEN REPLY #41410 /* ~Laisse le souvenir refaire surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 56
  IF ~~ THEN REPLY #41411 /* ~Refoule les souvenirs.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 59.0
  SAY #41294 /* ~Bien que le match qui t'oppose à Dolora soit extrêmement serré, elle finit par gagner… son sens infaillible de la logique l'emporte enfin sur tes arguments les plus brillants. Mais elle ne semble pas apprécier sa victoire et se contente de faire un signe de tête approbateur. "Tu es un argumentateur très doué, c'est indéniable. Je crois que si tu avais eu le temps de faire des recherches, je ne t'aurais peut-être pas battu."~ */
  IF ~~ THEN REPLY #41412 /* ~"Merci…"~ */ GOTO 14
  IF ~~ THEN REPLY #41413 /* ~"Je ne sais pas… tu es une sacrée adversaire."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 15.0 15.1 17.0 17.1 18.0 18.1
  SAY #41295 /* ~Dolora acquiesce. "Si tu veux, on peut recommencer le débat sur le même sujet… je pourrais défendre ta position cette fois-ci, si tu préfères."~ */
  IF ~~ THEN REPLY #41414 /* ~"Attends… tu es toujours aussi impitoyable dans les débats ?"~ */ GOTO 9
  IF ~~ THEN REPLY #41415 /* ~"Pas pour l'instant, merci. Mais on peut jouer à un jeu ?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41416 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41417 /* ~"C'est pas grave, mais j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41418 /* ~"Ça suffit pour le moment. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.4
  SAY #41296 /* ~Tu choisis un sujet et tu commences… le débat dure un bon moment ; vous échangez arguments et contre-arguments, chacun essayant de déstabiliser l'autre de manière méthodique. Bien que le match qui t'oppose à Dolora soit extrêmement serré, elle finit par gagner… son sens infaillible de la logique l'emporte enfin sur tes arguments les plus brillants. Mais elle ne semble pas apprécier sa victoire et se contente de faire un signe de tête approbateur. "Tu es un argumentateur très doué, c'est indéniable. Je crois que si tu avais eu le temps de faire des recherches, je ne t'aurais peut-être pas battu."~ */
  IF ~~ THEN REPLY #41419 /* ~"Merci…"~ */ GOTO 14
  IF ~~ THEN REPLY #41420 /* ~"Je ne sais pas… tu es une sacrée adversaire."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 7.5
  SAY #41297 /* ~Tu choisis un sujet et tu commences… le débat dure un bon moment ; vous échangez arguments et contre-arguments, chacun essayant de déstabiliser l'autre de manière méthodique. En parlant, un étrange sentiment t'envahit… un souvenir qui essaie de refaire surface…~ */
  IF ~~ THEN REPLY #41421 /* ~Laisse le souvenir refaire surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 56
  IF ~~ THEN REPLY #41422 /* ~Refoule les souvenirs.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1 59.1
  SAY #41298 /* ~Bien que le match qui t'oppose à la logique infaillible de Dolora soit extrêmement serré, tu finis par l'emporter. Elle se contente de faire un signe de tête approbateur. "Tu es un argumentateur très doué, c'est indéniable. Mais je crois que si j'avais eu le temps de faire des recherches, tu ne m'aurais peut-être pas battue."~ */
  IF ~~ THEN REPLY #41423 /* ~"Merci…"~ */ GOTO 14
  IF ~~ THEN REPLY #41424 /* ~"Peut-être, peut-être pas. Mais je trouve que ça aurait été un avantage injuste."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 7.6
  SAY #41299 /* ~Tu choisis un sujet et tu commences… le débat dure un bon moment ; vous échangez arguments et contre-arguments, chacun essayant de déstabiliser l'autre de manière méthodique. Bien que le match qui t'oppose à la logique infaillible de Dolora soit extrêmement serré, tu finis par l'emporter. Dolora se contente de faire un signe de tête approbateur. "Tu es un argumentateur très doué, c'est indéniable. Mais je crois que si j'avais eu le temps de faire des recherches, tu ne m'aurais peut-être pas battue."~ */
  IF ~~ THEN REPLY #41425 /* ~"Merci…"~ */ GOTO 14
  IF ~~ THEN REPLY #41426 /* ~"Peut-être, peut-être pas. Mais je trouve que ça aurait été un avantage injuste."~ */ GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 2.2 3.2 5.1 6.2 7.7 8.1 9.0 10.1 11.1 14.1
  SAY #41300 /* ~"Bien sûr. Est-ce que tu veux jouer à un jeu en particulier ?"~ */
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #41427 /* ~"Celui auquel on a joué tout à l'heure me convient tout à fait."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 67
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #41428 /* ~"Non… je ne me souviens d'aucun jeu…"~ */ GOTO 20
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41429 /* ~"En fait, laisse-moi plutôt te poser quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41430 /* ~"En fait, laisse-moi plutôt te poser quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41431 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #41301 /* ~"Tiens, regarde - permets-moi de t'en montrer un." Dolora apporte une petite boîte laquée, qui se déplie pour former un petit tableau orné d'une grille. La boîte contient un certain nombre d'éclats de pierre polis… La moitié d'entre eux est noire et l'autre moitié est blanche. "Ce jeu porte de nombreux noms. Tu veux que je t'explique les règles ?"~ */
  IF ~~ THEN REPLY #41432 /* ~"Oui, s'il te plaît."~ */ DO ~SetGlobal("Dolora_Go","AR0605",1)
~ GOTO 21
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41433 /* ~"En fait, laisse-moi plutôt te poser quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41434 /* ~"En fait, laisse-moi plutôt te poser quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41435 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #41302 /* ~Dolora t'explique les règles du jeu - comment bouger les éclats, comment battre ton adversaire. Mais tu as l'impression de déjà le connaître. "Les règles sont simples, n'est-ce pas ? Par contre, le jeu en lui-même est très complexe. Il faut du temps pour le maîtriser. On joue ?"~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41436 /* ~"Oui, allons-y."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41437 /* ~"Oui, allons-y."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41438 /* ~"Oui, allons-y."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41439 /* ~"Oui, allons-y."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41440 /* ~"Oui, allons-y."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41441 /* ~"Oui, allons-y."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41442 /* ~"Oui, allons-y."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41443 /* ~"En fait, laisse-moi plutôt te poser quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41444 /* ~"En fait, laisse-moi plutôt te poser quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41445 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #41303 /* ~Tu as beau être certain d'y avoir déjà joué, tu joues très mal… Dolora te bat très vite et avec une telle facilité que c'en est presque risible. Mais elle ne sourit pas et n'exulte pas ; elle se contente de commencer à ranger le jeu. "Je crois que tu as besoin de temps et de pratique. J'ai l'impression que tu ne comprends pas ce genre de jeux."~ */
  IF ~~ THEN REPLY #41446 /* ~"Ta façon de jouer est toujours aussi implacable ?"~ */ GOTO 23
  IF ~~ THEN REPLY #41447 /* ~"C'est possible. Tu as parlé de débat, tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41448 /* ~"Hum. J'ai des questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41449 /* ~"Hum. J'ai des questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41450 /* ~"Je n'ai pas trouvé ça tellement distrayant, de toute façon. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 24.0 25.0 27.0 28.0 30.0 31.0
  SAY #41304 /* ~Dolora acquiesce. "Maîtresse Grâce m'a dit de ne jamais faire le moindre cadeau à mes adversaires, parce qu'une autre de ses étudiantes joue de façon à toujours laisser les autres gagner. C'est Maîtresse Grâce qui a voulu que j'offre une autre forme d'expérience - un vrai défi, plutôt que quelque chose qui ne fait que satisfaire l'ego du client."~ */
  IF ~~ THEN REPLY #41451 /* ~"Je vois. Tu as parlé de débat tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41452 /* ~"Je comprends. J'ai quelques questions à te poser…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41453 /* ~"Je comprends. J'ai quelques questions à te poser…"~ */ GOTO 44
  IF ~~ THEN REPLY #41454 /* ~"Ça paraît logique. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #41305 /* ~Tu as beau être certain d'y avoir déjà joué, Dolora te bat facilement. Mais elle ne sourit pas et n'exulte pas ; elle se contente de commencer à ranger le jeu. "Tu as l'air de plutôt bien comprendre le jeu. Avec le temps, tu pourrais devenir très bon."~ */
  IF ~~ THEN REPLY #41455 /* ~"Ta façon de jouer est toujours aussi implacable ?"~ */ GOTO 23
  IF ~~ THEN REPLY #41456 /* ~"Peut-être. Tu as parlé de débat, tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41457 /* ~"Merci. J'avais des questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41458 /* ~"Merci. J'avais des questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41459 /* ~"Peut-être que si j'avais eu plus de temps, j'aurais pu m'entraîner. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY #41306 /* ~Au fur et à mesure que la partie avance, tu te rends compte que tu as déjà joué à ce jeu. Mais même tes meilleurs coups ne peuvent rien face aux stratégies élaborées de Dolora… le jeu tourne de plus en plus à ton désavantage, jusqu'à ce que tu sois enfin battu à plate couture. Mais Dolora ne sourit pas et n'exulte pas ; elle se contente de commencer à ranger le jeu. "Tu as l'air de bien comprendre le jeu. Avec le temps, tu devrais devenir très bon."~ */
  IF ~~ THEN REPLY #41460 /* ~"Ta façon de jouer est toujours aussi implacable ?"~ */ GOTO 23
  IF ~~ THEN REPLY #41461 /* ~"Peut-être. Tu as parlé de débat, tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41462 /* ~"Merci. J'avais des questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41463 /* ~"Merci. J'avais des questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41464 /* ~"Peut-être que si j'avais eu plus de temps, j'aurais pu m'entraîner. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY #41310 /* ~Au fur et à mesure que la partie avance, tu te rends compte que tu as déjà joué à ce jeu. Tu te remémores divers coups et stratégies qui t'ont permis de gagner par le passé, et tu essaies tous les coups que tu connais pour battre Dolora. Soudain, un étrange sentiment t'envahit… un souvenir qui essaie de refaire surface…~ */
  IF ~~ THEN REPLY #41465 /* ~Laisse le souvenir refaire surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 60
  IF ~~ THEN REPLY #41466 /* ~Refoule les souvenirs.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1 62.0
  SAY #41311 /* ~Tout au long de la partie, Dolora contrecarre l'un après l'autre tous tes mouvements les plus élaborés. Malgré tous tes efforts, tu finis par t'incliner devant sa stratégie magistrale. Mais elle ne sourit pas et n'exulte pas ; elle se contente de commencer à ranger le jeu. "Tu es un bon joueur. Avec le temps, je suis certaine que tu pourras parfaitement maîtriser ce jeu."~ */
  IF ~~ THEN REPLY #41467 /* ~"Merci… mais ta façon de jouer est toujours aussi implacable ?"~ */ GOTO 23
  IF ~~ THEN REPLY #41468 /* ~"Peut-être. Tu as parlé de débat, tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41469 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41470 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 44
END

IF ~~ THEN BEGIN 28 // from: 21.4
  SAY #41312 /* ~Au fur et à mesure que la partie avance, tu te rends compte que tu as déjà joué à ce jeu. Tu te remémores divers coups et stratégies qui t'ont permis de gagner par le passé, et tu essaies tous les coups que tu connais pour battre Dolora. Mais elle contrecarre tous tes mouvements les plus élaborés. Malgré tous tes efforts, tu finis par t'incliner devant sa stratégie magistrale. Mais elle ne sourit pas et n'exulte pas ; elle se contente de commencer à ranger le jeu. "Tu es un bon joueur. Avec le temps, je suis certaine que tu pourras parfaitement maîtriser ce jeu."~ */
  IF ~~ THEN REPLY #41471 /* ~"Merci… mais ta façon de jouer est toujours aussi implacable ?"~ */ GOTO 23
  IF ~~ THEN REPLY #41472 /* ~"Peut-être. Tu as parlé de débat, tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41473 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41474 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41475 /* ~"Peut-être que si j'avais eu plus de temps, j'aurais pu m'entraîner. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.5
  SAY #41313 /* ~Au fur et à mesure que la partie avance, tu te rends compte que tu as déjà joué à ce jeu. Tu te remémores divers coups et stratégies qui t'ont permis de gagner par le passé, et tu essaies tous les coups que tu connais pour la battre. Soudain, un étrange sentiment t'envahit… un souvenir qui essaie de refaire surface…~ */
  IF ~~ THEN REPLY #41476 /* ~Laisse le souvenir refaire surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 60
  IF ~~ THEN REPLY #41477 /* ~Refoule les souvenirs.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 62.1
  SAY #41314 /* ~Dolora joue merveilleusement bien et réussit à contrecarrer tes mouvements les plus élaborés, mais ta ruse et tes manœuvres de stratège finissent par avoir raison de ses stratégies parfaitement orchestrées. Elle te fait un signe de tête approbateur et commence à ranger le jeu. "Tu es un bon joueur, peut-être même un maître. Je te félicite."~ */
  IF ~~ THEN REPLY #41478 /* ~"Merci… mais ta façon de jouer est toujours aussi implacable ?"~ */ GOTO 23
  IF ~~ THEN REPLY #41479 /* ~"Merci. Tu as parlé de débat, tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41480 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41481 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41482 /* ~"Oui, on dirait qu'en fait, j'y ai déjà joué. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.6
  SAY #41315 /* ~Au fur et à mesure que la partie avance, tu te rends compte que tu as déjà joué à ce jeu. Tu te remémores divers coups et stratégies qui t'ont permis de gagner par le passé, et tu essaies tous les coups que tu connais pour battre Dolora. Cette dernière joue merveilleusement bien et réussit à contrecarrer tes mouvements les plus élaborés, mais ta ruse et tes manœuvres de stratège finissent par avoir raison de ses stratégies parfaitement orchestrées. Elle te fait un signe de tête approbateur et commence à ranger le jeu. "Tu es un bon joueur, peut-être même un maître. Je te félicite."~ */
  IF ~~ THEN REPLY #41483 /* ~"Merci… mais ta façon de jouer est toujours aussi implacable ?"~ */ GOTO 23
  IF ~~ THEN REPLY #41484 /* ~"Merci. Tu as parlé de débat, tout à l'heure ?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41485 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41486 /* ~"Merci. J'ai quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41487 /* ~"Oui, on dirait qu'en fait, j'y ai déjà joué. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.1 2.3 3.3 5.2 6.3 7.8 8.2 9.1 10.2 11.2 14.2 19.2 20.1 21.7 22.2 23.1 24.2 25.2 27.2 28.2 30.2 31.2 38.1 67.0
  SAY #41316 /* ~Dolora baisse les yeux vers le sol et soupire d'un air qui semble triste. "Je suis prête à te servir comme client, mais je n'ai aucune envie de répondre à d'autres questions maintenant… désolée, mais j'ai bien peur que tu ne sois obligé de l'accepter pour le moment."~ */
  IF ~~ THEN REPLY #41488 /* ~"Qu'est-ce qui ne va pas ? Je peux faire quelque chose pour toi ?"~ */ JOURNAL #66740 /* ~Dolora, l'une des femmes de la Maison de tolérance des Plaisirs Intellectuels, refuse de répondre aux questions qui ne sont pas directement en rapport avec son travail de 'prostituée'. Mais j'ai l'impression qu'elle détient des informations dont j'ai grand besoin.~ */ GOTO 33
  IF ~~ THEN REPLY #41489 /* ~"Alors, je te parlerai une autre fois. Au revoir."~ */ JOURNAL #66740 /* ~Dolora, l'une des femmes de la Maison de tolérance des Plaisirs Intellectuels, refuse de répondre aux questions qui ne sont pas directement en rapport avec son travail de 'prostituée'. Mais j'ai l'impression qu'elle détient des informations dont j'ai grand besoin.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41317 /* ~Elle lève la tête et croise ton regard. Une fois de plus, tu es frappé par la pâleur satinée de sa peau, par la froide profondeur de ses yeux argentés. "Non… non, j'ai bien peur que non. Mes problèmes sont d'ordre sentimental. Je pense que les choses s'arrangeront avec le temps."~ */
  IF ~~ THEN REPLY #41490 /* ~"Tu es sûre que je ne peux rien faire ?"~ */ GOTO 34
  IF ~~ THEN REPLY #41491 /* ~"Alors, je te parlerai une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #41318 /* ~"Sûre ?" Dolora s'interrompt, comme si elle avait besoin de réfléchir. "Non, je n'en suis pas sûre. Mon premier amour, Hilarion, détient toujours les clés de mon cœur. Tant qu'il les aura, je ne serai pas libre d'en aimer un autre. Voilà la cause de ma mélancolie."~ */
  IF ~~ THEN REPLY #41492 /* ~"Pourquoi est-ce que tu ne le cherches pas ? Tu pourrais lui parler."~ */ GOTO 35
  IF ~~ THEN REPLY #41493 /* ~"Eh bien, je vais trouver cet Hilarion et je lui parlerai de ta part."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~J'ai accepté de retrouver le premier amour de Dolora, un dénommé Hilarion, et de lui parler en son nom. Elle m'a dit qu'il faisait partie de la Société des Sensations et que je pourrais demander où il se trouve à la Salle des Fêtes.~ */ GOTO 36
  IF ~~ THEN REPLY #41494 /* ~"Tu as de la chance. Je peux trouver Hilarion… à un certain prix."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~Contre récompense, j'ai accepté de retrouver le premier amour de Dolora, un dénommé Hilarion, et de lui parler en son nom. Elle m'a dit qu'il faisait partie de la Société des Sensations et que je pourrais demander où il se trouve à la Salle des Fêtes.~ */ GOTO 37
  IF ~~ THEN REPLY #41495 /* ~"Je vois. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41319 /* ~Dolora secoue la tête. "Je ne partirai pas d'ici. Les raisons en sont personnelles, et ne doivent pas être partagées avec des étrangers - même avec ceux qui sont susceptibles de m'aider - mais il me suffit de te dire que je ne peux pas chercher Hilarion moi-même."~ */
  IF ~~ THEN REPLY #41496 /* ~"Eh bien, je vais trouver cet Hilarion et je lui parlerai de ta part."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~J'ai accepté de retrouver le premier amour de Dolora, un dénommé Hilarion, et de lui parler en son nom. Elle m'a dit qu'il faisait partie de la Société des Sensations et que je pourrais demander où il se trouve à la Salle des Fêtes.~ */ GOTO 36
  IF ~~ THEN REPLY #41497 /* ~"Tu as de la chance. Je peux trouver Hilarion… à un certain prix."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~Contre récompense, j'ai accepté de retrouver le premier amour de Dolora, un dénommé Hilarion, et de lui parler en son nom. Elle m'a dit qu'il faisait partie de la Société des Sensations et que je pourrais demander où il se trouve à la Salle des Fêtes.~ */ GOTO 37
  IF ~~ THEN REPLY #41498 /* ~"Je vois. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #41320 /* ~Dolora acquiesce et un léger sourire apparaît sur ses lèvres. Elle incline la tête. "Je te serais très reconnaissante d'aller trouver Hilarion et d'accepter de lui parler. Il est membre de la Société des Sensations, alors je te conseille de le chercher à la Salle des Fêtes."~ */
  IF ~~ THEN REPLY #41499 /* ~"Je reviendrai quand je l'aurai trouvé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1
  SAY #41321 /* ~"Je n'ai pour seules économies que quelques bijoux qu'on m'a donnés en cadeau. Si ça te suffit, je suis prête à te les donner en guise de récompense. Hilarion est membre de la Société des Sensations, alors je te conseille de le chercher à la Salle des Fêtes."~ */
  IF ~~ THEN REPLY #41500 /* ~"Ça ira. Je reviendrai si je le trouve. Au revoir."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",1)
~ THEN BEGIN 38 // from:
  SAY #41322 /* ~Les yeux froids et durs de Dolora cillent quand elle te voit approcher. "Bonjour. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #41501 /* ~"Et qu'est-ce que tu peux faire pour moi, Dolora ?"~ */ GOTO 2
  IF ~~ THEN REPLY #41502 /* ~"En fait, j'ai juste quelques questions…"~ */ GOTO 32
  IF ~~ THEN REPLY #41503 /* ~"Rien du tout ; je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",2)
~ THEN BEGIN 39 // from:
  SAY #41323 /* ~Les yeux de Dolora scintillent à ta vue. "Tu l'as trouvé ? Est-ce qu'il a accepté de me rendre les clés de mon cœur ?"~ */
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41504 /* ~"Non, pas encore. Au revoir."~ */ EXIT
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41506 /* ~"Oui… j'ai les clés de ton cœur. Les voici."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #39471 /* ~Après avoir trouvé Hilarion, je suis retourné voir Dolora et je lui ai rendu les clés de son cœur.~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from:
  SAY #41324 /* ~Dolora te regarde un instant en silence. "Où est-ce qu'elles sont ?"~ */
  IF ~~ THEN REPLY #41507 /* ~"Euh… je reviendrai quand je les aurai."~ */ DO ~SetGlobal("Dolora","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1 43.0
  SAY #41325 /* ~"Enfin…" Tandis qu'elle te prend les clés des mains, ses doigts effleurent la tienne - sa peau est sèche, mais gelée au toucher, comme le métal. "Elles me seront très utiles. Je te remercie."~ */
  IF ~  Global("Good_Dolora_1","GLOBAL",1)
~ THEN REPLY #41508 /* ~"Bien sûr, Dolora. J'ai quelques questions…"~ */ GOTO 44
  IF ~  Global("Evil_Dolora_1","GLOBAL",1)
~ THEN REPLY #41510 /* ~"Bien sûr. Et ma récompense ?"~ */ DO ~GiveItemCreate("Silbra",Protagonist,1,0,0)
GiveItemCreate("Silbra",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #41509 /* ~"Ça m'a fait plaisir de t'aider. Au revoir, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #41326 /* ~Dolora acquiesce et retire deux bracelets d'une bourse qu'elle porte au côté. "Ils sont à toi, tu les as bien gagnés."~ */
  IF ~~ THEN REPLY #41511 /* ~"Maintenant j'ai quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41512 /* ~"Bien. Au revoir, Dolora."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",3)
~ THEN BEGIN 43 // from:
  SAY #41327 /* ~Les yeux de Dolora scintillent à ta vue. "Les clés de mon cœur… tu as retrouvé ce que tu avais perdu ?"~ */
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41513 /* ~"Oui… les voilà."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",3)
AddexperienceParty(30000)
~ GOTO 41
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41514 /* ~"Non… mais je reviendrai quand ce sera fait."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 2.4 3.4 5.3 6.4 7.9 8.3 9.2 10.3 11.3 14.3 19.3 20.2 21.8 22.3 23.2 24.3 25.3 27.3 28.3 30.3 31.3 41.0 42.0 45.2 46.1 47.1 48.3 49.2 50.0 51.0 52.1 53.0 54.0 55.0 63.0 64.1 65.0 66.0 67.1
  SAY #41328 /* ~"Bien sûr. Je répondrai à ce que je pourrai."~ */
  IF ~~ THEN REPLY #41515 /* ~"J'espérais en apprendre davantage sur ta nature."~ */ GOTO 45
  IF ~~ THEN REPLY #41516 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 48
  IF ~~ THEN REPLY #41517 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41518 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora m'a dit qu'Ecco (la prostituée silencieuse) ne pouvait parler car sa voix lui avait été arrachée pour être détruite. Apparemment, la voix d'Ecco était si belle qu'elle aurait charmé le soupirant de la demi-déesse Paramisha. Folle de rage, cette dernière aurait arraché la voix de la jeune femme, avant de l'enfermer dans une fiole de cristal et de la donner à dévorer à un mégogalamdraga. D'après Dolora, la voix d'Ecco est donc perdue à tout jamais, et seule celle d'un autre pourra un jour lui rendre la parole. C'est une histoire peu crédible, mais Dolora prétend qu'elle la tient du soupirant de Paramisha lui-même…~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67843 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora m'a dit qu'Ecco (la prostituée silencieuse) ne pouvait parler car sa voix lui avait été arrachée pour être détruite. Apparemment, la voix d'Ecco était si belle qu'elle aurait charmé le soupirant de la demi-déesse Paramisha. Folle de rage, cette dernière aurait arraché la voix de la jeune femme, avant de l'enfermer dans une fiole de cristal et de la donner à dévorer à un mégogalamdraga. D'après Dolora, la voix d'Ecco est donc perdue à tout jamais, et seule celle d'un autre pourra un jour lui rendre la parole. C'est une histoire peu crédible, mais Dolora prétend qu'elle la tient du soupirant de Paramisha lui-même…~ */ GOTO 66
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41519 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ JOURNAL #66743 /* ~J'ai demandé à l'une des prostituées si elle savait si Kesai-Serris était vraiment la fille de Ravel, et elle m'a conseillé d'aller poser ma question à Juliette. Apparemment, Kesai et Juliette étaient de bonnes amies avant que cette dernière ne rencontre Montague.~ */ GOTO 65
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41520 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ JOURNAL #66727 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du parfum personnel de Viviane. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41521 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ JOURNAL #66728 /* ~Une des prostituées m'a conseillé d'aller demander à Nenny si elle savait quoi que ce soit au sujet du vol du Voile Pourpre de Marissa. Apparemment, Nenny est connue pour passer son temps à fureter et à observer les autres.~ */ GOTO 54
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41522 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ JOURNAL #66742 /* ~J'ai interrogé l'une des prostituées de la Maison de tolérance au sujet de Ravel, et elle m'a dit d'aller voir Yvonne. Celle-ci recueille apparemment les histoires, et il y a de fortes chances qu'elle en connaisse quelques-unes au sujet de Ravel.~ */ GOTO 55
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #41523 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 63
  IF ~~ THEN REPLY #41524 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #41329 /* ~Dolora cligne des yeux. "Hilarion ne m'a jamais beaucoup parlé de ma construction. Je ne connais pas grand-chose sur le fonctionnement interne de mon corps, comme toi, tu dois en savoir peu sur le tien. Mais en apparence, j'ai tous les attributs d'une femme… à part la texture et la température de la peau. Ta curiosité est satisfaite ?"~ */
  IF ~~ THEN REPLY #41525 /* ~"Et ton esprit, tes émotions ?"~ */ GOTO 46
  IF ~~ THEN REPLY #41526 /* ~"Que font ces clés, exactement ?"~ */ GOTO 47
  IF ~~ THEN REPLY #41527 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41528 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #41330 /* ~"Ses fonctions sont aussi mystérieuses pour moi que pour n'importe quel humain. Quand je suis arrivée ici pour la première fois, je ne comprenais pas les émotions, et je n'en ressentais aucune. J'ai… des sentiments… même si je commence à peine à les comprendre."~ */
  IF ~~ THEN REPLY #41529 /* ~"Que font ces clés, exactement ?"~ */ GOTO 47
  IF ~~ THEN REPLY #41530 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41531 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #41331 /* ~"Je suppose qu'Hilarion a fabriqué les clés de façon à ce qu'il n'y ait aucun risque que je m'éloigne de lui avant qu'il se soit lassé de l'expérience. Maintenant que je les ai, je suis libre de ressentir mes propres émotions."~ */
  IF ~~ THEN REPLY #41532 /* ~"Comment fonctionne ton esprit ? Tu as des émotions, alors ?"~ */ GOTO 46
  IF ~~ THEN REPLY #41533 /* ~"J'avais une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41534 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1
  SAY #41332 /* ~"Je suis une étudiante de Maîtresse Grâce, comme les autres femmes ici. Elle nous enseigne les techniques du dialogue et des rapports verbaux. La plupart des étudiantes deviendront membres de la Société des Sensations, après avoir étudié les rites d'initiation de la faction avec la maîtresse."~ */
  IF ~~ THEN REPLY #41535 /* ~"Ça te plaît ici ?"~ */ GOTO 49
  IF ~~ THEN REPLY #41536 /* ~"Parle-moi de cette Société des Sensations."~ */ GOTO 50
  IF ~~ THEN REPLY #41537 /* ~"Les rites d'initiation ?"~ */ GOTO 50
  IF ~~ THEN REPLY #41538 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41539 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41333 /* ~"J'apprends beaucoup de choses et ça, ça me plaît, oui." Elle sourit un instant ; l'expression ne semble pas naturelle sur son visage pâle, comme si elle lui était étrangère.~ */
  IF ~~ THEN REPLY #41540 /* ~"Tu as parlé de la Société des Sensations…"~ */ GOTO 50
  IF ~~ THEN REPLY #41541 /* ~"Tu as parlé de rites d'initiation ?"~ */ GOTO 50
  IF ~~ THEN REPLY #41542 /* ~"J'avais une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41543 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1 48.2 49.0 49.1
  SAY #41334 /* ~"Tu ferais mieux de poser ce genre de questions à Maîtresse Grâce. Elle te l'expliquera mieux que moi."~ */
  IF ~~ THEN REPLY #41544 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41545 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 44.2
  SAY #41335 /* ~"Oui, je peux. La Maison de tolérance des Plaisirs Intellectuels est une école ; ses prostituées apprennent les techniques du dialogue et des rapports verbaux. Je te conseille d'en parler à la tenancière de l'établissement, Maîtresse Grâce, si tu veux une explication plus approfondie."~ */
  IF ~~ THEN REPLY #41546 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41547 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 44.6
  SAY #41336 /* ~"J'imagine que tu parles de son parfum, dont elle prétend qu'une des prostituées d'ici lui a dérobé. Je ne sais pas qui pourrait l'avoir en sa possession. Tu pourrais poser ta question à Nenny, car elle voit presque tout ce qui se passe ici."~ */
  IF ~~ THEN REPLY #41548 /* ~"Comment est-il possible de voler l'odeur de quelqu'un ?"~ */ GOTO 53
  IF ~~ THEN REPLY #41549 /* ~"J'avais une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41550 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41337 /* ~"Viviane utilise un certain aspect de l'Art pour créer, transformer et améliorer les propriétés olfactives des objets, vivants ou morts. Peut-être que le voleur connaît aussi certaines de ces compétences. Mais le parfum de Viviane doit se trouver dans un objet et non sur le voleur, si c'est le cas - sans quoi Viviane le reconnaîtrait à l'odeur."~ */
  IF ~~ THEN REPLY #41551 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41552 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 44.7
  SAY #41338 /* ~Dolora secoue la tête. "Je n'ai pas vu le voile de Marissa depuis la dernière fois qu'elle l'a porté à l'extérieur de sa chambre. Ça fait un moment." Elle ferme les yeux un instant, puis se remet à parler : "Nenny voit tout ce qui se passe ici. Tu devrais lui demander si elle a vu quelque chose qui pourrait t'aider."~ */
  IF ~~ THEN REPLY #41553 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41554 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 44.8
  SAY #41339 /* ~"Je sais que c'était - ou que c'est, si elle fait toujours partie des vivants - une guenaude noire au pouvoir immense et à la malice incalculable. La Dame des Douleurs l'a envoyée dans une prison extra-dimensionnelle pour crimes commis contre la cité de Sigil. Tu devrais en parler à Yvonne ; elle connaît beaucoup d'histoires et pourra sûrement te raconter celle de Ravel."~ */
  IF ~~ THEN REPLY #41555 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41556 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.0 16.0
  SAY #41340 /* ~Des souvenirs d'une grande salle te reviennent en mémoire… un endroit spacieux, plein de beau monde bien habillé. Un bal de grand apparat a lieu. Devant toi se tient un petit type impeccablement habillé ; il porte un médaillon en or frappé d'un symbole que tu te rappelles vaguement comme étant le 'Signe de l'Un'. Vous vous tenez tous deux au milieu d'un cercle de spectateurs venus écouter votre débat.~ */
  IF ~~ THEN REPLY #41557 /* ~Continue de faire défiler le souvenir.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41341 /* ~"Mais… mais c'est impossible !", dit l'homme avec un air embarrassé.

"Et pourtant, c'est vrai.", te souviens-tu lui avoir répondu. "J'ai démontré un certain nombre de points indiscutables et je t'ai donné plusieurs exemples. Tu n'existes pas, tout simplement."

"Mais… tu n'as pas le droit ! Si j'acceptais ça, je… je…"~ */
  IF ~~ THEN REPLY #41558 /* ~Continue de faire défiler le souvenir.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #41342 /* ~"Oui. Tu cesserais d'exister."

Et sans un éclair de lumière, sans un souffle de fumée - sans fanfare de quelque sorte que ce soit - l'homme disparaît.~ */
  IF ~~ THEN REPLY #41559 /* ~Continue de faire défiler le souvenir.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #41343 /* ~Les spectateurs s'exclament, certains applaudissent… tu te souviens avoir fait une profonde révérence et t'être éloigné, un petit sourire satisfait aux lèvres.

Tu te rends soudain compte que Dolora t'observe. "Tu te sens bien ? On finira cette conversation une autre fois, si tu veux…"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41560 /* ~"Non… continuons le débat…"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41561 /* ~"Non… continuons le débat…"~ */ GOTO 17
END

IF ~~ THEN BEGIN 60 // from: 26.0 29.0
  SAY #41344 /* ~Des souvenirs de champs de bataille enfumés te reviennent en mémoire… tu te tiens au sommet d'une colline qui surplombe la bataille, monté sur une énorme bête à quatre pattes. La sonnerie des cors transmet tes ordres aux troupes que tu vois plus bas.~ */
  IF ~~ THEN REPLY #41562 /* ~Continue de faire défiler le souvenir.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #41345 /* ~Tu vois tes hommes en déroute ; certains fuient vers la gauche, d'autres vers la droite, tandis que l'armée étrangère se fraye un chemin vers le haut de la colline pour tuer le seigneur ennemi - toi.~ */
  IF ~~ THEN REPLY #41563 /* ~Continue de faire défiler le souvenir.~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #41346 /* ~"Les imbéciles", penses-tu, les lèvres tordues dans un terrible sourire. "Mes chevaliers vont charger et stopper leur progression en un éclair… et, à cet instant, mes fantassins en 'retraite' reviendront écraser leurs flancs ! Ah, une nouvelle victoire s'annonce…"

Tu te rends soudain compte que Dolora te regarde avec une vive attention. "Tu te sens bien ? On reprendra le jeu un autre jour si tu veux…"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41565 /* ~"Non… continuons la partie…"~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41566 /* ~"Non… continuons la partie…"~ */ GOTO 30
END

IF ~~ THEN BEGIN 63 // from: 44.9
  SAY #41347 /* ~Elle secoue la tête. "J'ai peur que tu te trompes. À moins qu'il y ait eu un changement récent, il n'existe pas de dixième étudiante."~ */
  IF ~~ THEN REPLY #41567 /* ~"Alors j'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41568 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",4)
~ THEN BEGIN 64 // from:
  SAY #41348 /* ~Le visage de Dolora s'illumine quand elle te voit. "Rebonjour. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~~ THEN REPLY #41569 /* ~"Et qu'est-ce que tu peux faire pour moi, Dolora ?"~ */ GOTO 2
  IF ~~ THEN REPLY #41570 /* ~"En fait, j'avais quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41571 /* ~"Je ne faisais que passer, Dolora. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 44.5
  SAY #41349 /* ~"C'est un bruit qui court, mais il n'y a rien de sûr. Une des femmes d'ici, ou Kesai elle-même, devrait pouvoir te répondre. Demande à Juliette… elle et Kesai étaient très liées, jadis, avant que Juliette fasse la connaissance de Montague."~ */
  IF ~~ THEN REPLY #41572 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41573 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 44.3 44.4
  SAY #41350 /* ~"Oui. Elle se nomme Ecco. Elle a perdu sa voix - en fait, tout moyen de communiquer - après avoir séduit l'amoureux de Paramisha, une divinité mineure. Dans sa jalousie, Paramisha a pris sa voix à Ecco et l'a enfermée dans un flacon en cristal qu'elle a jeté dans la gueule béante d'une mégogalamdraga. Ecco ne la retrouvera jamais, et seule une autre voix pourrait lui restituer la capacité de communiquer. Je le sais parce qu'un jour j'ai parlé avec l'amoureux de Paramisha."~ */
  IF ~~ THEN REPLY #41574 /* ~"J'ai une autre question…"~ */ GOTO 44
  IF ~~ THEN REPLY #41575 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 19.0
  SAY #41351 /* ~Tu termines la partie sur le même résultat qu'avant.

"C'est un jeu agréable. Une autre partie ?"~ */
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41576 /* ~"Pas tout de suite. J'ai quelques questions…"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41577 /* ~"Pas tout de suite. J'ai quelques questions…"~ */ GOTO 44
  IF ~~ THEN REPLY #41578 /* ~"Une prochaine fois peut-être, Dolora. Au revoir."~ */ EXIT
END
