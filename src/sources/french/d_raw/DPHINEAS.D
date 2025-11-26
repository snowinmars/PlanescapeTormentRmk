// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHINEAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHINEAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2397 /* ~Tu vois un homme courtaud dont le visage est couvert de rougeurs et de pustules. Ses vêtements *semblent* l'identifier à un officiel, mais ils sont sales, froissés et couverts de poils de rat. Pendant que tu l'observes, il se gratte avec ses doigts boudinés.~ */
  IF ~  Global("Phineas","GLOBAL",0)
~ THEN REPLY #2398 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #2400 /* ~Laisse l'homme tranquille, explore la boutique.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2402 /* ~"Ehhh !" Le petit homme crie et sursaute, étonné. Il met la main sur son cœur, prend une longue inspiration et remonte ses lunettes sur son nez couvert de rougeurs. "Oui, oui ? Qu'est-ce que je peux faire pour toi ?" Il se gratte le nez et t'observe des pieds à la tête, examine tes cicatrices. "Je… heu… j'ai presque rien dans la caisse, alors si tu es venu pour piller les locaux, le lieu est mal choisi."~ */
  IF ~~ THEN REPLY #2403 /* ~"Je ne suis pas ici pour 'piller les locaux'. Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #2404 /* ~"Peu ou rien dans la caisse, hein ? Eh bien, donne-moi ce que tu *as* et on se quittera en bons termes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Phineas_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #2405 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #2406 /* ~"Ehhh ! Par les Puissances… Ne me fais pas *sursauter* comme ça !" Il remonte les lunettes sur son nez et te lance un regard noir. "Que puis-je faire pour toi *cette* fois, hein ?"~ */
  IF ~~ THEN REPLY #2401 /* ~"J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #2450 /* ~"Je pourrais me contenter de ce que tu as dans ta caisse et m'en aller."~ */ GOTO 13
  IF ~~ THEN REPLY #2451 /* ~"Rien aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #2407 /* ~"Moi ? Je suis le Respecté Phinéas T. Lort le Trente-neuvième, responsable de la Succursale de la Ruche du Bureau de Lutte contre la vermine et la maladie. C'est un privilège pour moi…" Il se gratte la poitrine et bombe le torse. "Je dois t'informer que nous, dans le sens bureaucratique du terme 'nous', c'est-à-dire, la bureaucratie de Sigil dans son ensemble, offrons des primes pour toutes sortes de vermines et de parasites qui infestent les…" Il se gratte encore. "… rues de Sigil, centre du multivers et cité au centre de tout, qui sert de modèle à *toutes* les autres cités."~ */
  IF ~~ THEN REPLY #2408 /* ~"Des primes ?"~ */ JOURNAL #66745 /* ~J'ai discuté avec un des inspecteurs du Bureau de Lutte contre la Vermine et la Maladie, un certain Phinéas T. Lort. Il m'a dit qu'il offrait une prime d'une pièce de cuivre par queue de rat-crâne rapportée à son bureau. J'imagine que quelques pièces ne peuvent pas faire de mal… et, si je lui ramène suffisamment de trophées, j'obtiendrai peut-être un meilleur tarif.~ */ GOTO 4
  IF ~~ THEN REPLY #2409 /* ~"Je vois. Eh bien, je crois que j'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2410 /* ~"Oui, oui… nous, dans le sens bureaucratique du terme, c'est-à-dire la bureaucratie de Sigil dans son ensemble, acceptons la preuve tangible de l'éradication de cette vermine à cerveau, connu sous le nom de rats-crâne, de la zone de la Ruche où ils se sont regroupés depuis plusieurs années - comme l'a montré un récent recensement de la population des vermines. Je suis chargé par la bureaucratie de Sigil d'offrir des primes de…" Il bombe le torse. "… une pièce de cuivre par rat-crâne livré à la succursale."~ */
  IF ~~ THEN REPLY #2411 /* ~"'Rat-crâne' ?"~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2412 /* ~"Je n'ai pas de rats, mais par contre, j'ai des queues de rats."~ */ GOTO 7
  IF ~~ THEN REPLY #2413 /* ~"Je vois. Bon, je ferais mieux de partir… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.3
  SAY #2414 /* ~"Les rats-crâne sont une espèce de vermine dont l'intelligence grandit proportionnellement au nombre. Un rat-crâne seul est seulement nuisible parce qu'il s'attaque à la nourriture. Mais l'intelligence de cinq, dix rats ou plus dépasse même celle de quelqu'un tel que moi." Il se gratte, puis renifle avec dédain. "J'imagine que deux ou trois rats-crâne suffiraient pour se montrer plus malins que *toi*, monsieur."~ */
  IF ~~ THEN REPLY #2415 /* ~"Une autre remarque comme celle-là et je te mets en pièces."~ */ GOTO 6
  IF ~~ THEN REPLY #2416 /* ~"Combien de rats-crâne il y a à Sigil ?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2417 /* ~"Dis-m'en plus sur les rats-crâne."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2418 /* ~"Je n'ai pas de rats, mais par contre, j'ai des queues de rats."~ */ GOTO 7
  IF ~~ THEN REPLY #2423 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2419 /* ~Phinéas cligne des yeux. Ton apparence physique commence à faire de l'effet. "Hum. Je retire ma remarque très inappropriée aux vues des arguments de supériorité physique dont tu fais preuve dans cette situation précise."~ */
  IF ~~ THEN REPLY #2420 /* ~"Combien de rats-crâne il y a à Sigil ?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2421 /* ~"Dis-m'en plus sur les rats-crâne."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2422 /* ~"Je n'ai pas de rats, mais par contre, j'ai des queues de rats."~ */ GOTO 7
  IF ~~ THEN REPLY #2424 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.3 6.2 16.4
  SAY #2425 /* ~"Excellent ! Magnifique!" Il applaudit, enchanté. "Voyons…"~ */
  IF ~  NumItemsPartyGT("Tail",0)
~ THEN REPLY #2452 /* ~Rapporte les queues de rats et empoche la prime.~ */ DO ~IncrementGlobal("Sold_Rat","GLOBAL",1)
DestroyPartyItem("Tail",FALSE)
GiveGoldForce(1)
~ GOTO 15
  IF ~~ THEN REPLY #2453 /* ~"En fait, je vais les garder précieusement quelque temps. J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #2454 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.0
  SAY #2432 /* ~"Suffisamment pour occuper un chasseur de prime toute sa vie… peut-être même plusieurs."~ */
  IF ~~ THEN REPLY #2433 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #2434 /* ~"Je vois. Merci de m'avoir accordé un peu de ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 6.1
  SAY #2435 /* ~"Plus ils sont nombreux, plus ils sont redoutables… certains développent la capacité de jeter des sorts ; ils peuvent résister à la magie, et ils peuvent même utiliser des… tactiques très rusées." Il remonte ses lunettes sur son nez. "Tu comprends pourquoi nous sommes impatients de voir leur nombre réduire à Sigil."~ */
  IF ~~ THEN REPLY #2436 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #2437 /* ~"Je vois. Merci de m'avoir accordé un peu de ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 16.1 16.2
  SAY #2438 /* ~"Eh bien, c'est une véritable épopée… tu comprends, je suis né ici, à Sigil…"~ */
  IF ~~ THEN REPLY #2439 /* ~"Euh…"~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 11 // from:
  SAY #2440 /* ~"… et je me suis rendu compte que j'avais offensé mes collègues, car j'ai été 'promu' à la succursale. J'y suis depuis de… *nombreuses* années." Il soupire, puis se gratte négligemment le nez.~ */
  IF ~~ THEN REPLY #2441 /* ~"Euh… *Bâillement* … J'ai d'autres questions…"~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 16
  IF ~~ THEN REPLY #2442 /* ~"Je vois… Eh bien, euh, merci de m'avoir accordé un peu de ton temps. Au revoir."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.5
  SAY #2443 /* ~"Mes rougeurs ? Contagieuses ? Non, non… enfin, je ne crois pas. C'est le symptôme de ce poste, j'en ai peur. Le travail a littéralement grandi sur moi." Il se gratte à nouveau.~ */
  IF ~~ THEN REPLY #2444 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #2445 /* ~"Je vois. Merci de m'avoir accordé un peu de ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.1
  SAY #2446 /* ~"Euh… très certainement…" Il tend la main vers la caisse sous le comptoir, ouvre le couvercle et fouille à l'intérieur. Il en sort quelques pièces, qu'il te donne. "J'espère que tu ressens un peu de culpabilité pour cet acte. Sans ces maigres fonds, la succursale se verra dans l'impossibilité de couvrir ses frais."~ */
  IF ~~ THEN REPLY #2447 /* ~"J'en ai le cœur brisé pour toi. Au revoir."~ */ DO ~SetGlobal("Phineas","GLOBAL",4)
GiveGoldForce(53)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 17 24 25 26 30 even though they appear after this state */
~  Global("Phineas","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #2448 /* ~"J'en déduis que me voler tout ce que j'avais ne te suffit pas. Pourquoi est-ce que tu es revenu ?"~ */
  IF ~~ THEN REPLY #51468 /* ~"J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #51469 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #2455 /* ~Phinéas chantonne gaiement pendant que vous terminez la transaction. "Merci, merci bien. La cité de Sigil, et moi-même, apprécions tes efforts."~ */
  IF ~~ THEN REPLY #2456 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #2457 /* ~"Merci. Si je trouve d'autres queues de rats, je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 7.1 8.0 9.0 11.0 12.0 14.0 15.0 24.1 25.1 30.1 31.0
  SAY #2458 /* ~"Hein ? Et tes questions sont… ?"~ */
  IF ~~ THEN REPLY #2459 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #2460 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 10
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #2461 /* ~"Comment quelqu'un d'aussi… illustre que toi finit dans un endroit pareil ?"~ */ GOTO 10
  IF ~~ THEN REPLY #2462 /* ~"Parle-moi de ces rats-crâne."~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2463 /* ~"J'ai quelques queues de rats. J'aimerais empocher la prime."~ */ GOTO 7
  IF ~  CheckStatGT(Player1,13,WIS)
~ THEN REPLY #2464 /* ~"Tes rougeurs sont contagieuses ?"~ */ GOTO 12
  IF ~~ THEN REPLY #2465 /* ~"Pas d'autres questions. Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 30 even though they appear after this state */
~  GlobalGT("Sold_Rat","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #51476 /* ~"Aïïïïee ! S'il te plaît, ne me tue pas…" Phinéas hurle et sursaute, surpris. Il te regarde comme s'il attendait quelqu'un d'autre. "Les Puissances soient louées, ce n'est que toi…" Il se tait et essaie de se ressaisir.~ */
  IF ~~ THEN REPLY #51477 /* ~"Que je ne te tue pas ? Tu as des ennuis ?"~ */ GOTO 18
  IF ~~ THEN REPLY #51478 /* ~"Je peux vous dire que je n'ai aucune envie d'être ici, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51479 /* ~Il déglutit bruyamment et regarde autour de lui. "Les rats-crâne… on dirait qu'ils ont décidé de me faire disparaître de Sigil. Je suis un employé trop zélé du Bureau de Lutte contre la Vermine et la Maladie." Il te regarde d'un air implorant.~ */
  IF ~~ THEN REPLY #51480 /* ~"De quoi parles-tu ?"~ */ GOTO 19
  IF ~~ THEN REPLY #51481 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #51482 /* ~"Aujourd'hui, j'ai trouvé un gros spécimen de rat ici, dans mon propre bureau. Je l'ai capturé et je l'ai enfermé en bas, au sous-sol." Ses yeux s'écarquillent et il commence à avoir du mal à respirer. "Sous mes yeux, il est devenu aussi grand qu'un homme, et il a dit qu'on l'envoyait me tuer pour les crimes que j'avais commis envers les rats-crâne !"~ */
  IF ~~ THEN REPLY #51483 /* ~"Qu'est-ce que tu as fait ?"~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #51484 /* ~"J'en ai assez entendu, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51485 /* ~"J'ai pris mes jambes à mon cou ! Louées soient les Puissances, j'ai réussi à revenir ici, dans ma boutique. J'ai fermé la porte à clé derrière moi ; je suis sûr que la créature est enfermée en bas." Il te regarde, ses yeux s'attardant sur tes nombreuses cicatrices. Puis, son regard croise de nouveau le tien. "Tue cette créature pour moi… je te récompenserai généreusement."~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51486 /* ~"Si j'accepte, qu'est-ce que tu me donnes en échange ?"~ */ GOTO 21
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51487 /* ~"Que me donneras-tu si je le fais ?~ */ GOTO 22
  IF ~~ THEN REPLY #51488 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #51489 /* ~Il réfléchit un moment, puis sourit. "Je me ferai un plaisir d'oublier que tu m'as volé et je n'en parlerai pas aux autorités de la cité…" Il marque une pause pour voir ta réaction. "Et en plus, je te paierai cent pièces de cuivre."~ */
  IF ~~ THEN REPLY #51490 /* ~"Très bien, je le ferai."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51491 /* ~"Je vais y réfléchir. Au revoir."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51492 /* ~"Je ne veux pas m'en mêler. Au revoir.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #51493 /* ~Il réfléchit un moment, puis sourit. "Je te paierai deux cents pièces de cuivre si tu débarrasses mon sous-sol de cette bête immonde."~ */
  IF ~~ THEN REPLY #51494 /* ~"D'accord, je vais le faire."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51495 /* ~"J'y réfléchirai, au revoir."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51496 /* ~"Je ne veux pas être mêlé à cette histoire. Au revoir.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 24.0 25.0
  SAY #51497 /* ~Il sourit et s'incline légèrement. "Excellent. Voici la clé de mon sous-sol. Occupe-toi de la bête et je te paierai."~ */
  IF ~~ THEN REPLY #51498 /* ~Prends la clef et pars.~ */ DO ~GiveItemCreate("PhinKey",Protagonist,1,0,0)
~ JOURNAL #53636 /* ~Je suis allé m'entretenir avec Phineas T. Lort au Bureau de Lutte contre la vermine et la maladie. Il était extrêmement nerveux et n'a cessé de me parler du rat-garou qui hante sa cave. J'ai accepté de tuer le monstre contre récompense.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #51499 /* ~Tu vois Phinéas. Il te regarde par-dessus la monture de ses lunettes. "Une fois de plus, tu m'honores de ta présence. Tu as décidé d'accepter de m'aider à tuer la bête enfermée dans mon sous-sol ?"~ */
  IF ~~ THEN REPLY #51500 /* ~"D'accord, je vais le faire."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51501 /* ~"J'ai quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #51502 /* ~"Je ne crois pas. Au revoir." ~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #51503 /* ~Tu vois Phinéas. Il te regarde par-dessus la monture de ses lunettes. "Une fois de plus, tu m'honores de ta présence. Tu as réfléchi et décidé d'accepter de m'aider à tuer la bête enfermée dans mon sous-sol ?"~ */
  IF ~~ THEN REPLY #51504 /* ~"Très bien, je le ferai."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51505 /* ~"J'ai quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #51506 /* ~"Je ne pense pas, au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #51507 /* ~Tu vois Phinéas. Il te regarde par-dessus la monture de ses lunettes. "Une fois de plus, tu m'honores de ta présence. Tu as accompli la mission que je t'avais confiée ?"~ */
  IF ~  Dead("Thesik")
~ THEN REPLY #51508 /* ~"Oui, la créature est morte et je suis venu chercher ma récompense."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",4)
~ GOTO 27
  IF ~  !Dead("Thesik")
~ THEN REPLY #51509 /* ~"Non, pas encore."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #51510 /* ~Phinéas te sourit. "C'est une excellente nouvelle. Qu'est-ce que je t'avais promis comme récompense ?"~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51511 /* ~"Cent communs de cuivre et tu oublieras mon… emprunt dans ta caisse."~ */ DO ~GivePartyGold(100)
AddexperienceParty(500)
~ GOTO 28
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51512 /* ~"Deux cents communs de cuivre."~ */ DO ~GivePartyGold(200)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #51513 /* ~"Merci de m'avoir rendu service. J'ai une dette envers toi." Il s'incline devant toi.~ */
  IF ~~ THEN REPLY #51514 /* ~"Au revoir."~ */ JOURNAL #54870 /* ~J'ai tué le rat-garou et j'ai été récompensé par Phinéas. La somme est maigre, compte tenu des efforts qu'il m'a fallu déployer, mais un peu d'argent vaut mieux que pas du tout.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #51515 /* ~Il fronce les sourcils. "J'apprécierais que tu t'en occupes au plus vite. Bonne journée."~ */
  IF ~~ THEN REPLY #51516 /* ~Pars.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Snuff_Rat","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #64156 /* ~Tu vois Phinéas. Il ajuste ses lunettes sur son nez et t'adresse un regard amical. "Ah, mon ami. Que puis-je faire pour toi *cette* fois-ci, hmnnnn ?"~ */
  IF ~~ THEN REPLY #64157 /* ~"Tu sautais moins au plafond quand je suis venu, à cette époque ."~ */ GOTO 31
  IF ~~ THEN REPLY #64158 /* ~"J'ai quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #64159 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64160 /* ~Il soupire puis te sourit "Après ton exploit héroïque, je me sens… à l'aise. Je dois admettre que je ne me suis pas senti aussi détendu depuis des années." Il s'interrompt pour réfléchir un moment. "Je te remercie pour cela. Maintenant, que puis-je faire pour toi ?~ */
  IF ~~ THEN REPLY #64161 /* ~"J'ai quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #64162 /* ~"Rien, au revoir."~ */ EXIT
END
