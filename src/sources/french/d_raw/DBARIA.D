// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIA~

IF ~  Global("BariA","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #12341 /* ~Son corps est une combinaison d'homme et de bélier, et sa tête un mélange d'espèces, avec un nez large et aplati, des oreilles de chèvre et une paire de cornes en spirales. Des dessins complexes ont été rasés dans sa fourrure sale et une énorme arme d'hast attachée par quatre brides pend de son harnais de ceinture. Il ne semble pas t'avoir remarqué.~ */
  IF ~~ THEN REPLY #12469 /* ~"Bonjour…"~ */ DO ~SetGlobal("BariA","AR0400",2)
~ GOTO 3
  IF ~~ THEN REPLY #12470 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~  Global("BariA","AR0400",1)
~ THEN BEGIN 1 // from:
  SAY #12342 /* ~"Encore voi, vagabond. Zu veux quelque chose de moi ?"~ */
  IF ~~ THEN REPLY #12471 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12472 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~  Global("BariA","AR0400",3)
~ THEN BEGIN 2 // from:
  SAY #12383 /* ~"Toi ! Je t'avais dit de ne javais, *javais* te retrouver sur mon chemin ! Prépare-toi, deux-jambes…"~ */
  IF ~~ THEN REPLY #12473 /* ~"Mais…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12474 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #12384 /* ~Il se tourne vers toi avec une vitesse surprenante, ses yeux sombres et soupçonneux fixés sur toi. Sa voix est profonde et sourde, pas vraiment humaine et avec un fort accent. "Qu'est-ce que tu veux, deux-jambes ?" Sa main est proche de son arme d'hast.~ */
  IF ~~ THEN REPLY #12475 /* ~"Je veux juste te parler. J'ai quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #12476 /* ~"Si tu veux te battre, pas de problème…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #12477 /* ~"Rien, peu importe. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0 8.0
  SAY #12385 /* ~Il semble se calmer, sa main relâche son arme. Il maintient néanmoins une certaine distance…~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0 10.0 12.2 13.2 14.1 15.2 16.2 17.1 18.1 19.5 20.1 21.2 22.0 23.0 24.0 25.2 26.1
  SAY #12386 /* ~"Que zeux-tu me demander ?"~ */
  IF ~~ THEN REPLY #12478 /* ~"Pourquoi tu étais si méfiant envers moi ?"~ */ GOTO 15
  IF ~~ THEN REPLY #12479 /* ~"Parle-moi de cette cité."~ */ GOTO 12
  IF ~~ THEN REPLY #12480 /* ~"Parle-moi des bas quartiers qui nous entourent."~ */ GOTO 19
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12481 /* ~"Tu peux me parler de la Dame des Douleurs ?"~ */ GOTO 24
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12482 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12483 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ? Ou peut-être que tu sais où je peux en trouver un ?"~ */ GOTO 23
  IF ~~ THEN REPLY #12484 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #12387 /* ~En un instant, son arme d'hast est sortie du harnais et prête à frapper. "Avant de croiser les cornes, j'aimerais savoir vourquoi tu m'attaques, deux-jambes." Ses sabots ferrés font des étincelles sur le sol lorsqu'il se balance d'avant en arrière.~ */
  IF ~~ THEN REPLY #12485 /* ~"Je ne voulais pas…"~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12486 /* ~"Moi ? Mais c'est *toi* qui *m'a* menacé."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12487 /* ~"Moi ? Mais c'est *toi* qui *m'a* menacé."~ */ GOTO 8
  IF ~~ THEN REPLY #12488 /* ~"Mais tu m'insultes, espèce de bestiole à quatre pattes !"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BariA_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #12489 /* ~"Parce que j'en ai *envie*…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12490 /* ~Retourne-toi et éloigne-toi.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12491 /* ~Sauve-toi.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #12388 /* ~Il baisse un peu son arme d'hast et pousse un soupir exaspéré. "Bon, peut-être que tu ne devrais pas vouloir verser ton sang si vite. Qu'est-ce que tu veux de moi ?"~ */
  IF ~~ THEN REPLY #12492 /* ~"Je voulais te poser quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #12493 /* ~"J'ai changé d'avis. Je préfère te saigner…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #12390 /* ~"KOI ? Non, deux-jambes, c'est *toi* qui *m'*as approché. Je ne vais pas te refuser un combat si z'est ce que vu veux, mais vu perdras pas ton honneur si tu te retires maintenant…"~ */
  IF ~~ THEN REPLY #12494 /* ~"Très bien… Je voulais juste te poser une question…"~ */ GOTO 4
  IF ~~ THEN REPLY #12495 /* ~"Oh, non… C'était *toi* et tu vas le regretter !"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12496 /* ~"Alors, laisse tomber. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #12391 /* ~"KOI ?" Ton accusation semble le laisser incrédule. "Non, deux-jambes, c'est *toi* qui *m'*as approché. Je ne vais pas te refuser un combat si z'est ce que vu veux, mais vu perdras pas ton honneur si tu te retires maintenant…"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 153
END

IF ~  Global("BariA","AR0400",2)
~ THEN BEGIN 10 // from:
  SAY #12392 /* ~"Ah, encore toi, deux-jambes. Qu'est-ze que tu veux encore ?"~ */
  IF ~~ THEN REPLY #12497 /* ~"J'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12498 /* ~"Rien… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #12393 /* ~"Très vien, espèce de singe chevelu, balafré, mangeur de merde ! Si tu survis à ze combat, mieux vaut pour toi que tu ne te retrouves *zamais* sur mon chemin !" Ses sabots piétinent les pavés tandis qu'il se prépare à charger.~ */
  IF ~~ THEN REPLY #12499 /* ~Défends-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12500 /* ~Sauve-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY #12394 /* ~Il demeure silencieux un moment, comme s'il attendait autre chose de toi. "Ah… et zette cité ?"~ */
  IF ~~ THEN REPLY #12501 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 13
  IF ~~ THEN REPLY #12502 /* ~"Où est-elle exactement ?"~ */ GOTO 14
  IF ~~ THEN REPLY #12503 /* ~"Tant pis. Je voudrais te demander autre chose."~ */ GOTO 5
  IF ~~ THEN REPLY #12504 /* ~"Oublie ce que je t'ai demandé, c'est rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.0
  SAY #12395 /* ~"Koi, c'est un carrefour, deux-jambes. Tu sais zûrement que tous les zeumins passent par Zigil ?"~ */
  IF ~~ THEN REPLY #12505 /* ~"'Zeumins' ? Tu veux parler de 'chemins' ?"~ */ GOTO 25
  IF ~~ THEN REPLY #12506 /* ~"Oui, je vois… Où est Sigil exactement ?"~ */ GOTO 14
  IF ~~ THEN REPLY #12507 /* ~"Je voudrais te demander autre chose."~ */ GOTO 5
  IF ~~ THEN REPLY #12508 /* ~"C'est tout ce que voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.1 25.1
  SAY #12452 /* ~"Voù ? Hmm…" Il a l'air songeur et tire sur sa barbichette. "… c'est dans zette Outreterre - ze Centre des Plans. Mais zomme tu peux y parvenir de n'importe où, Zigil est dans plus d'endroits que ça. Tu zois ?"~ */
  IF ~~ THEN REPLY #12509 /* ~"Je crois que oui. Mais qu'est-ce que *c'est* que cet endroit ?"~ */ GOTO 13
  IF ~~ THEN REPLY #12510 /* ~"Oui. Je voudrais te demander autre chose."~ */ GOTO 5
  IF ~~ THEN REPLY #12511 /* ~"Oui, tout à fait. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.0
  SAY #12453 /* ~Il semble triste un moment. "Zet endroit… un endroit misérable, sale… plein de gens antipathiques. Z'est pas le meilleur endroit pour un visiteur bariaure, deux-jambes." Il hausse les épaules. "J'ai des affaires ici, z'est donc là que je suis."~ */
  IF ~~ THEN REPLY #12512 /* ~"Visiteur ? Tu ne vis pas ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #12513 /* ~"Des affaires ? Qu'est-ce que tu fais ici ?"~ */ GOTO 17
  IF ~~ THEN REPLY #12514 /* ~"Je vois. J'ai une autre question à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #12515 /* ~"Alors, je te laisse à tes affaires. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #12454 /* ~Le bariaure secoue la tête en riant. "Non, non, deux-jambes… aucun bariaure ne pourrait vivre ici."~ */
  IF ~~ THEN REPLY #12516 /* ~"D'où viens-tu ?"~ */ GOTO 18
  IF ~~ THEN REPLY #12517 /* ~"Tu étais ici pour quel genre d'affaires ?"~ */ GOTO 17
  IF ~~ THEN REPLY #12518 /* ~"Je vois. J'ai une autre question à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #12519 /* ~"Alors, je te laisse à tes affaires. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.1 18.0
  SAY #12455 /* ~"Une auze fois, deux-jambes. Si nous nous rencontrons dans un… endroit plus sympathique, je t'en dirai plus."~ */
  IF ~~ THEN REPLY #12520 /* ~"Tu as dit que tu étais un visiteur. Tu ne vis pas ici ?"~ */ GOTO 16
  IF ~~ THEN REPLY #12521 /* ~"Alors, je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #12522 /* ~"Alors, à une prochaine fois. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #12456 /* ~"De zes Plaines d'Ysgard, deux-jambes. Z'est ma maison." Il sourit béatement, comme si ses souvenirs le réchauffaient.~ */
  IF ~~ THEN REPLY #12523 /* ~"Tu étais ici pour quel genre d'affaires ?"~ */ GOTO 17
  IF ~~ THEN REPLY #12524 /* ~"J'ai une autre question à te poser…"~ */ GOTO 5
  IF ~~ THEN REPLY #12525 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2
  SAY #12457 /* ~Il te regarde avec curiosité. "Z'est koi que tu veux savoir zur eux, exactement ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12526 /* ~"Je cherche un endroit pour me divertir."~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12527 /* ~"Je cherche un endroit pour me divertir."~ */ GOTO 20
  IF ~~ THEN REPLY #12528 /* ~"Je cherche du travail."~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12529 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12530 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ? Ou peut-être que tu sais où je peux en trouver un ?"~ */ GOTO 23
  IF ~~ THEN REPLY #12531 /* ~"Rien, en fait. J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12532 /* ~"Finalement, rien. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #12458 /* ~"Je ne krois pas que l'on puisse z'amuser ici, deux-jambes. Tu devrais peut-être chercher ailleurs, dans zun autre vonde."~ */
  IF ~~ THEN REPLY #12533 /* ~"Et si je cherchais du travail ?"~ */ GOTO 21
  IF ~~ THEN REPLY #12534 /* ~"J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #12559 /* ~"Dans un autre quartier, tu veux dire ? Peut-être. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 20.0
  SAY #12459 /* ~Il se renfrogne. "Je crains qu'il n'y ait pas de kravail zhonnête par ici… la zeule choze en abondance dans zette Ruche, ze sont les ennuis."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12535 /* ~"Et si je cherchais un endroit pour me divertir ?"~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12536 /* ~"Et si je cherchais un endroit pour me divertir ?"~ */ GOTO 20
  IF ~~ THEN REPLY #12557 /* ~"Alors, tu peux peut-être répondre à une autre question pour moi…"~ */ GOTO 5
  IF ~~ THEN REPLY #12558 /* ~"Tu as peut-être raison. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.4 19.3
  SAY #12460 /* ~"Je connais peu de monde ici, deux-jambes… ze 'Pharod' n'en fait pas partie. C'est un ami à toi ?"~ */
  IF ~~ THEN REPLY #12537 /* ~"En fait, je ne sais pas. Je peux te demander autre chose… ?"~ */ GOTO 5
  IF ~~ THEN REPLY #12538 /* ~"Peut-être, je ne le sais pas vraiment moi-même. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 19.4
  SAY #12461 /* ~Il secoue la tête. "Non, deux-jambes, j'ai rien vu qui y ressemble."~ */
  IF ~~ THEN REPLY #12539 /* ~"Hum. J'ai une autre question…"~ */ GOTO 5
  IF ~~ THEN REPLY #12540 /* ~"Très bien. Alors, au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY #12462 /* ~"Zette Dame ?" Il se retourne, pour voir si personne ne peut l'entendre. "Je sais seulement qu'elle gouverne zet endroit - tout Zigil - et que les habitants pensent que za porte malheur de parler d'elle."~ */
  IF ~~ THEN REPLY #12541 /* ~"Je vois. Réponds à une autre question pour moi…"~ */ GOTO 5
  IF ~~ THEN REPLY #12542 /* ~"Merci. C'est tout ce que je voulais savoir pour le moment. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.0
  SAY #12463 /* ~Il a l'air légèrement énervé. "Ouais, z'est ce que j'ai dit. Chemins."~ */
  IF ~~ THEN REPLY #12543 /* ~"Non… ce n'est pas ce que tu as dit."~ */ GOTO 26
  IF ~~ THEN REPLY #12544 /* ~"D'accord. Où est Sigil exactement ?"~ */ GOTO 14
  IF ~~ THEN REPLY #12545 /* ~"Je vois. Je voudrais te demander autre chose."~ */ GOTO 5
  IF ~~ THEN REPLY #12546 /* ~"Très bien. C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12464 /* ~Ses yeux sombres se ferment à moitié, il commence à devenir soupçonneux et mécontent. "Z'est ce que j'ai zit. *Tu* zevrais peut-être essayer de parler *ma* langue, deux-jambes…"~ */
  IF ~~ THEN REPLY #12547 /* ~"Oh, mais je peux. Écoute : Yah, yah, yah ! Bork, bork, bork !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_3","GLOBALLaw",-1)
~ GOTO 27
  IF ~~ THEN REPLY #12548 /* ~"Tu as raison. Excuse-moi. Je voudrais te demander quelque chose."~ */ GOTO 5
  IF ~~ THEN REPLY #12549 /* ~"Dis ce que tu veux, quadrupède. Au revoir."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12550 /* ~"Tu as raison. Excuse-moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #12465 /* ~Il ricane de dégoût en cherchant son arme… puis se calme. "Ne te RETROUVE pas… sur mon chemin, chien-porc, ou je te tuerai." Il se détourne de toi.~ */
  IF ~~ THEN REPLY #12551 /* ~Laisse-le.~ */ DO ~SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12552 /* ~Attaque-le au moment où il part.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END
