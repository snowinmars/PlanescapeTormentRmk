// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CIRCLEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~CIRCLEZ~

IF ~  Global("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #30106 /* ~Cette petite pierre ronde semble être un 'texte' religieux que porte Dak'kon. Elle se compose d'une série de cercles imbriqués les uns dans les autres ; la complexité des pièces et l'enchevêtrement de leurs liens prouvent que le texte est l'œuvre d'un maître artisan. Mais tu ne vois pas comment défaire les pièces.~ */
  IF ~~ THEN REPLY #60450 /* ~Laisse la pierre tranquille.~ */ EXIT
END

IF ~  GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN BEGIN 1 // from: 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.2 11.0 12.5 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.2 23.0 24.1 25.1 26.1 27.2 28.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.0 38.1 39.1 40.1 41.2 42.0 43.1 44.1 45.1 46.1 47.1 48.2 49.0 50.0 51.1 52.1 53.1 54.1 55.2 56.0 57.1 58.1 59.2 60.0
  SAY #60451 /* ~Cette petite pierre ronde est le Cercle Ininterrompu de Zerthimon. Il est constitué d'une série de cercles s'imbriquant les uns dans les autres et se dépliant ; la complexité des cercles et de leurs liens prouvent que le texte a été construit par un maître artisan.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60452 /* ~Ouvre la première plaque comme Dak'kon te l'a montré.~ */ GOTO 2
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60453 /* ~Ouvre le Deuxième Cercle de Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60454 /* ~Ouvre le Troisième Cercle de Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60455 /* ~Ouvre le Quatrième Cercle de Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60456 /* ~Ouvre le Cinquième Cercle de Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60457 /* ~Ouvre le Sixième Cercle de Zerthimon. ~ */ GOTO 12
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60458 /* ~Ouvre le Septième Cercle de Zerthimon. ~ */ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60459 /* ~Ouvre le Huitième Cercle de Zerthimon. ~ */ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",13)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #60460 /* ~Examine les plaques, vois si tu peux résoudre de nouvelles combinaisons.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",14)
GiveExperience(Protagonist,3000)
~ GOTO 51
  IF ~  Global("Dakkon_Teach","GLOBAL",16)
CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #60461 /* ~Examine les plaques, vois si tu peux résoudre de nouvelles combinaisons.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",17)
GiveExperience(Protagonist,6000)
~ GOTO 52
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #60462 /* ~Examine les plaques, vois si tu peux résoudre de nouvelles combinaisons.~ */ GOTO 50
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60463 /* ~Relis le Premier Cercle de Zerthimon.~ */ GOTO 3
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60464 /* ~Relis le Deuxième Cercle de Zerthimon.~ */ GOTO 13
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60465 /* ~Relis le Troisième Cercle de Zerthimon.~ */ GOTO 24
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60466 /* ~Relis le Quatrième Cercle de Zerthimon.~ */ GOTO 29
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60467 /* ~Relis le Cinquième Cercle de Zerthimon.~ */ GOTO 38
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60468 /* ~Relis le Sixième Cercle de Zerthimon.~ */ GOTO 43
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60469 /* ~Relis le Septième Cercle de Zerthimon.~ */ GOTO 53
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60470 /* ~Relis le Huitième Cercle de Zerthimon.~ */ GOTO 57
  IF ~~ THEN REPLY #60471 /* ~Laisse le Cercle Ininterrompu de Zerthimon.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #60472 /* ~Tu reproduis les gestes que Dak'kon a effectués sur le Cercle, et les plaques cèdent sous tes doigts, les anneaux formant une nouvelle configuration. Les anneaux sont accompagnés d'une série de symboles ; le texte ne ressemble à aucun écrit que tu connaisses : il s'agit d'une série de formes géométriques s'imbriquant les unes dans les autres, avec une prédominance de cercles. Il te suffit d'y jeter un œil pour *connaître* les symboles et *savoir* que tu peux les lire.~ */
  IF ~~ THEN REPLY #60473 /* ~Lis le Premier Cercle de Zerthimon.~ */ GOTO 3
  IF ~~ THEN REPLY #60474 /* ~Laisse le Cercle Ininterrompu de Zerthimon.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.11 2.0
  SAY #60475 /* ~"*Sache* que nous sommes le Premier Peuple."~ */
  IF ~~ THEN REPLY #60476 /* ~Continue à lire les symboles…~ */ GOTO 4
  IF ~~ THEN REPLY #60477 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60479 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #60480 /* ~"Autrefois, tout n'était que chaos. On pensait que le Premier Peuple avait été englouti par le chaos. Lorsque le Premier Peuple a appris à se *connaître*, il a échappé au chaos et s'est transformé en chair."~ */
  IF ~~ THEN REPLY #60481 /* ~Continue à lire les symboles…~ */ GOTO 5
  IF ~~ THEN REPLY #60482 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60483 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #60484 /* ~"Grâce à ses pensées et à ses *connaissances*, le Peuple a façonné le Premier Monde et s'y est installé avec sa *connaissance* pour le soutenir."~ */
  IF ~~ THEN REPLY #60485 /* ~Continue à lire les symboles…~ */ GOTO 6
  IF ~~ THEN REPLY #60486 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60487 /* ~Remets les plaques en position et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #60488 /* ~"Mais la chair représentait quelque chose de nouveau pour le Peuple et grâce à elle, il apprit à se *connaître*. La chair donna naissance à de nouvelles pensées. La cupidité et la haine, la souffrance et la joie, la jalousie et le doute. Ces pensées imbriquées divisèrent l'esprit du Peuple. Et à cause de cette division, le Peuple fut puni."~ */
  IF ~~ THEN REPLY #60489 /* ~Continue à lire les symboles…~ */ GOTO 7
  IF ~~ THEN REPLY #60490 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60491 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #60492 /* ~"Les émotions de la chair étaient fortes. La cupidité et la haine, la souffrance et la joie, la jalousie et le doute, toutes ces émotions servirent de guide menant aux ennemis. En devenant charnel, le Premier Peuple fut asservi par ceux qui ne *connaissaient* la chair que comme un outil au service de leur volonté. *Sache* que ces bêtes étaient les *illithids*."~ */
  IF ~~ THEN REPLY #60493 /* ~Continue à lire les symboles…~ */ GOTO 8
  IF ~~ THEN REPLY #60494 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60495 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60496 /* ~"Les *illithids* étaient une race qui n'avait pas appris à se *connaître*. Ils avaient appris comment empêcher les autres races de se *connaître*."~ */
  IF ~~ THEN REPLY #60497 /* ~Continue à lire les symboles…~ */ GOTO 9
  IF ~~ THEN REPLY #60498 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60499 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #60500 /* ~"C'était les tentaculaires. Ils vivaient dans la chair et considéraient la chair comme un outil au service de leur volonté. Leur sang ressemblait à de l'eau et ils modelaient les esprits avec leurs pensées. Lorsque les *illithids* rencontrèrent le Peuple, celui-ci n'existait plus en tant que tel. Il avait été asservi."~ */
  IF ~~ THEN REPLY #60501 /* ~Continue à lire les symboles…~ */ GOTO 10
  IF ~~ THEN REPLY #60502 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60503 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #60504 /* ~"Les *illithids* menèrent le Peuple du Premier Monde vers les Faux Mondes. Là-bas, les *illithids* lui enseignèrent la Voie de la Chair. À cause d'eux, le Peuple *connut* l'égarement. Il *connut* la souffrance. Il *connut* la mort, la mort du corps et de l'esprit. Il devint le bétail d'un autre peuple qui consommait sa chair. Il *connut* l'horreur d'être fait pour ressentir de la joie pour ce genre de choses."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #60505 /* ~Finis de lire le Cercle.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",2)
~ GOTO 11
  IF ~  !Global("Dakkon_Teach","GLOBAL",1)
~ THEN REPLY #67271 /* ~Finis de lire le Cercle.~ */ GOTO 11
  IF ~~ THEN REPLY #60506 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60507 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #60508 /* ~"Le Cercle Ininterrompu permet de *savoir* comment le Peuple s'est perdu. Et comment il a réappris à se *connaître*."~ */
  IF ~~ THEN REPLY #60509 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60510 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #60511 /* ~Tu fais glisser les plaques selon la configuration que Dak'kon t'a montrée et un nouvel anneau apparaît. Cet anneau contient le même texte que celui que tu as lu précédemment, avec les mêmes formes géométriques… Tu *connais* les symboles et tu *sais* que tu peux les lire.~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60512 /* ~Lis le Deuxième Cercle de Zerthimon.~ */ GOTO 13
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60513 /* ~Lis le Troisième Cercle de Zerthimon.~ */ GOTO 24
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60514 /* ~Lis le Quatrième Cercle de Zerthimon.~ */ GOTO 29
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60515 /* ~Lis le Cinquième Cercle de Zerthimon.~ */ GOTO 38
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60516 /* ~Lis le Sixième Cercle de Zerthimon.~ */ GOTO 43
  IF ~~ THEN REPLY #60517 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60518 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.12 12.0
  SAY #60519 /* ~"*Sache* que la chair ne peut marquer l'acier. *Sache* que l'acier peut marquer la chair. C'est en *sachant* ceci que Zerthimon est devenu libre."~ */
  IF ~~ THEN REPLY #60520 /* ~Continue à lire les symboles…~ */ GOTO 14
  IF ~~ THEN REPLY #60521 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60522 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #60523 /* ~"*Sache* que les tentaculaires étaient des êtres de chair. Ils se reposaient sur elle et s'en servaient comme d'un outil. Les Champs des Enveloppes vides, dans les Faux Mondes des *illithids*, étaient l'un des lieux où la chair les servait."~ */
  IF ~~ THEN REPLY #60524 /* ~Continue à lire les symboles…~ */ GOTO 15
  IF ~~ THEN REPLY #60525 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60526 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #60527 /* ~"C'est dans les champs que les *illithids* jetaient les dépouilles des gens du Peuple après avoir dévoré leur cerveau. Les enveloppes vides étaient ensuite fertilisées pour faire pousser des herbes toxiques. Zerthimon labourait ces champs sans avoir conscience de ce qu'il était devenu. Ce n'était qu'un outil de chair, et la chair était satisfaite."~ */
  IF ~~ THEN REPLY #60528 /* ~Continue à lire les symboles…~ */ GOTO 16
  IF ~~ THEN REPLY #60529 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60530 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #60531 /* ~"C'est dans ces champs que Zerthimon apprit l'évangile de l'acier. Un jour, alors qu'il labourait son champ à mains nues, il découvrit une dépouille qui possédait toujours son cerveau. L'homme n'avait pas nourri les *illithids*. Et pourtant, il était mort."~ */
  IF ~~ THEN REPLY #60532 /* ~Continue à lire les symboles…~ */ GOTO 17
  IF ~~ THEN REPLY #60533 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60534 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #60535 /* ~"Zerthimon eut du mal à comprendre que l'un des défunts ait pu mourir sans avoir servi de nourriture. Il lui vint alors le désir de comprendre ce qui était arrivé à cet homme."~ */
  IF ~~ THEN REPLY #60536 /* ~Continue à lire les symboles…~ */ GOTO 18
  IF ~~ THEN REPLY #60537 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60538 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #60539 /* ~"Une lame en acier était enfoncée dans la tête du défunt ; elle avait traversé la boîte crânienne. Zerthimon comprit que c'était ainsi que l'homme avait trouvé la mort. L'acier avait marqué la chair, mais l'inverse n'était pas vrai."~ */
  IF ~~ THEN REPLY #60540 /* ~Continue à lire les symboles…~ */ GOTO 19
  IF ~~ THEN REPLY #60541 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60542 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #60543 /* ~"Zerthimon prit la lame et étudia sa surface. Il y vit son reflet et, pour la première fois, prit conscience de lui-même. Le tranchant de l'arme était acéré, mais sa volonté était totalement soumise à celle de son utilisateur. C'est cette même lame qui se lèverait contre Gith après que Zerthimon ait fait son Discours des Deux Cieux."~ */
  IF ~~ THEN REPLY #60544 /* ~Continue à lire les symboles…~ */ GOTO 20
  IF ~~ THEN REPLY #60545 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60546 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #60547 /* ~"Zerthimon garda longtemps l'arme, et nombreuses furent les réflexions qu'elle lui inspira. Il l'utilisa dans les champs pour faciliter son travail et, ce faisant, pensa à tous les usages possibles qu'il n'en faisait pas."~ */
  IF ~~ THEN REPLY #60548 /* ~Continue à lire les symboles…~ */ GOTO 21
  IF ~~ THEN REPLY #60549 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60550 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #60551 /* ~"Les *illithids* étaient puissants et Zerthimon avait toujours cru qu'il n'existait rien qu'ils ne *sachent* pas. Et pourtant, les tentaculaires ne possédaient pas d'outils en acier. Leurs seuls outils étaient de chair. Ils n'utilisaient qu'elle, car elle les constituait et ils la connaissait intimement. Mais l'acier était supérieur à la chair. Quand la lame avait tué le défunt, la chair avait cédé devant l'acier."~ */
  IF ~~ THEN REPLY #60552 /* ~Continue à lire les symboles…~ */ GOTO 22
  IF ~~ THEN REPLY #60553 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60554 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #60555 /* ~"C'est à cet instant que Zerthimon comprit que la chair était plus faible que l'acier. Et cela lui permit de comprendre que l'acier était plus fort que les *illithids*."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #60556 /* ~Finis de lire les symboles.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",4)
~ GOTO 23
  IF ~  !Global("Dakkon_Teach","GLOBAL",3)
~ THEN REPLY #67272 /* ~Finis de lire les symboles.~ */ GOTO 23
  IF ~~ THEN REPLY #60557 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60558 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #60559 /* ~"L'acier devint donc l'évangile du Peuple. Car tu dois *savoir* que c'est grâce à lui que le Peuple a conquis sa liberté."~ */
  IF ~~ THEN REPLY #60562 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60586 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.13 12.1
  SAY #60587 /* ~"De nombreux tours de roue durant, Zerthimon travailla pour l'*illithid* Arlathii Mort-Deux-Fois et ses partenaires dans les cavernes des Faux Mondes. Son travail serait venu à bout de beaucoup d'autres, mais il ne céda jamais, malgré les tourments et la fatigue."~ */
  IF ~~ THEN REPLY #60588 /* ~Continue à lire les symboles…~ */ GOTO 25
  IF ~~ THEN REPLY #60590 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60591 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #60592 /* ~"Un jour, Arlathii Mort-Deux-Fois ordonna à Zerthimon de comparaître devant lui. Là, il l'accusa de s'être montré lâche et obstiné, ce qui ne pouvait que nuire aux partenaires de l'*illithid*. C'était là une accusation sans fondement, car Arlathii cherchait juste à découvrir si le feu de la révolte brûlait dans le cœur de Zerthimon. Il voulait *savoir* si Zerthimon était un esclave ou un rebelle."~ */
  IF ~~ THEN REPLY #60593 /* ~Continue à lire les symboles…~ */ GOTO 26
  IF ~~ THEN REPLY #60594 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60595 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #60596 /* ~"Zerthimon préféra se laisser châtier par les *illithids* plutôt que de dévoiler la force intérieure qui l'habitait désormais. Il *savait* en effet que cela ne servirait à rien de montrer la haine qui grondait en lui ; pire, cela ferait même du tort à ceux qui pensaient comme lui. Il accepta donc sa punition sans rien dire et fut attaché aux Piliers du Silence, où on le laissa souffrir un tour de roue durant."~ */
  IF ~~ THEN REPLY #60597 /* ~Continue à lire les symboles…~ */ GOTO 27
  IF ~~ THEN REPLY #60598 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60599 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #60600 /* ~"Attaché qu'il était aux piliers, Zerthimon laissa son corps derrière lui et envoya son esprit en un lieu où il ne souffrirait pas. Il endura le tour complet et, quand on l'amena devant Arlathii Mort-Deux-Fois, il sacrifia à la coutume en remerciant son maître de l'avoir châtié. Ce faisant, il fit croire aux *illithids* qu'il était toujours un esclave. Mais en réalité, son cœur était libre."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #60601 /* ~Finis de lire les symboles.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",6)
~ GOTO 28
  IF ~  !Global("Dakkon_Teach","GLOBAL",5)
~ THEN REPLY #67275 /* ~Finis de lire les symboles.~ */ GOTO 28
  IF ~~ THEN REPLY #60602 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60603 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #60604 /* ~"En étouffant le feu de la haine qui brûlait dans sa poitrine, Zerthimon fit croire à Arlathii Mort-Deux-Fois qu'il était faible. Et quand vint enfin l'heure du Soulèvement, Arlathii fut le premier *illithid* à périr sous les coups de Zerthimon."~ */
  IF ~~ THEN REPLY #60605 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60606 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 1.14 12.2
  SAY #60607 /* ~"*Sache* que le Soulèvement du Peuple contre les *illithids* se décida sur de nombreux tours de roue. Nombre de membres du Peuple furent rassemblés et instruits en secret pour apprendre comment vaincre leurs maîtres *illithids*. Ils apprirent à protéger leur esprit et à s'en servir comme d'une arme. Ils étudièrent l'évangile de l'acier et comprirent qu'ils pouvaient être libres."~ */
  IF ~~ THEN REPLY #60608 /* ~Continue à lire les symboles…~ */ GOTO 30
  IF ~~ THEN REPLY #60609 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60610 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #60611 /* ~"Certains apprirent la nature de la liberté et la prirent dans leur cœur. Ce *savoir* les rendit plus forts. Craignant la liberté, les autres gardèrent le silence. Mais il y avait également ceux qui connaissaient la liberté et l'esclavagisme, et pour qui il valait mieux que le Peuple reste asservi. Vilquar était de ceux-là."~ */
  IF ~~ THEN REPLY #60612 /* ~Continue à lire les symboles…~ */ GOTO 31
  IF ~~ THEN REPLY #60613 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60614 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #60615 /* ~"Pour lui, le Soulèvement n'était pas synonyme de *liberté*, mais d'opportunité. Il *savait* que les *illithids* avaient pris pied sur nombre de Faux Mondes. L'univers des tentaculaires était déjà si grand que leurs yeux étaient tous tournés vers l'extérieur et ce qu'ils ne possédaient pas encore. Mais l'œil de Vilquar, lui, vit tout ce qui échappait aux *illithids*, lesquels n'eurent jamais conscience de l'approche du Soulèvement."~ */
  IF ~~ THEN REPLY #60616 /* ~Continue à lire les symboles…~ */ GOTO 32
  IF ~~ THEN REPLY #60617 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60618 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #60619 /* ~"Vilquar alla trouver son maître, l'*illithid* Zhijitaris, en lui apprenant ce qu'il savait du Soulèvement à venir. S'asservissant un peu plus encore, Vilquar proposa aux tentaculaires de surveiller le Peuple contre récompense. Les *illithids* acceptèrent le marché.~ */
  IF ~~ THEN REPLY #60620 /* ~Continue à lire les symboles…~ */ GOTO 33
  IF ~~ THEN REPLY #60628 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60629 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #60630 /* ~"Une fois l'accord entériné, une sombre période commença pour le Peuple. Nombreuses furent les trahisons commises par Vilquar, et nombreux les membres du Peuple dévorés par les *illithids* pour étouffer le Soulèvement dans l'œuf. Tout portait à croire que celui-ci n'aurait jamais lieu et les *illithids* étaient satisfaits de leur espion."~ */
  IF ~~ THEN REPLY #60631 /* ~Continue à lire les symboles…~ */ GOTO 34
  IF ~~ THEN REPLY #60634 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60637 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #60638 /* ~"C'est au terme de cette période que Zerthimon apprit la trahison de Vilquar. Quand il eut conscience que Vilquar était un espion à la solde des *illithids*, Zerthimon fit en sorte que le Peuple cesse de parler de Soulèvement, afin que le fourbe croit qu'il avait réussi. Car Zerthimon *savait* que Vilquar ne pensait qu'à la récompense qui lui avait été promise, et qu'il verrait ce qu'il voulait voir."~ */
  IF ~~ THEN REPLY #60639 /* ~Continue à lire les symboles…~ */ GOTO 35
  IF ~~ THEN REPLY #60640 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60641 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #60642 /* ~"Le regard luisant de cupidité, Vilquar retourna voir son maître Zhijitaris et lui dit que le Soulèvement était maté et que les *illithids* pouvaient de nouveau tourner toute leur attention vers l'extérieur de leur empire. Il leur dit qu'ils avaient fait preuve d'une immense sagesse en faisant appel à lui et demanda sa récompense."~ */
  IF ~~ THEN REPLY #60643 /* ~Continue à lire les symboles…~ */ GOTO 36
  IF ~~ THEN REPLY #60644 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60645 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #60646 /* ~"Mais, dans sa grande cupidité, Vilquar avait oublié pourquoi le Peuple recherchait la liberté. Il ne savait plus ce qu'était exactement l'esclavage, ni ce que ses maîtres *illithids* voyaient en lui. Et à sa trahison du Peuple répondit celle de ses maîtres. Vilquar apprit alors que, même s'il avait longtemps été l'œil des tentaculaires, un œil qui ne voit plus rien devient vite inutile."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #60647 /* ~Finis de lire les symboles.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",8)
~ GOTO 37
  IF ~  !Global("Dakkon_Teach","GLOBAL",7)
~ THEN REPLY #67276 /* ~Finis de lire les symboles.~ */ GOTO 37
  IF ~~ THEN REPLY #60649 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60651 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #60652 /* ~"Les *illithids* le récompensèrent en lui ouvrant le crâne et en dévorant son cerveau. Cela fait, le cadavre de Vilquar fut jeté dans les Champs des Enveloppes vides afin que son sang puisse empoisonner l'herbe venimeuse."~ */
  IF ~~ THEN REPLY #60653 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60654 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 1.15 12.3
  SAY #60655 /* ~"Zerthimon fut le premier à comprendre ce qu'était la liberté. Mais ce n'est pas lui qui, le premier, pensa à se rebeller."~ */
  IF ~~ THEN REPLY #60656 /* ~Continue à lire les symboles…~ */ GOTO 39
  IF ~~ THEN REPLY #60657 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60658 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #60659 /* ~"C'est Gith, reine-guerrière du Peuple, qui eut la première le sens de la rebellion. Elle avait servi les *illithids* sur nombre de leurs Faux Mondes en tant que soldat, et elle connaissait intimement la guerre, dont elle portait les mystères dans son cœur. Elle avait compris comment il était possible de faire usage de la force pour s'imposer aux autres. Elle connaissait les chemins du pouvoir et *savait* comment prendre aux conquérants les armes qui permettraient de les battre. Sa concentration était à nulle autre pareille, et son esprit et sa lame ne faisaient qu'un."~ */
  IF ~~ THEN REPLY #60660 /* ~Continue à lire les symboles…~ */ GOTO 40
  IF ~~ THEN REPLY #60661 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60662 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #60663 /* ~"Le jour où Zerthimon fit la connaissance de Gith, il cessa de se connaître lui-même. Les paroles de la guerrière allumaient le feu de la révolte dans le cœur de ceux qui l'écoutaient. En l'entendant, Zerthimon voulut connaître la guerre. Il ignorait pourquoi il réagissait ainsi, mais ce qu'il *savait*, c'est qu'il voulait unir sa lame à celle de Gith. Il voulait exprimer pleinement sa haine et partager sa douleur avec les *illithids*."~ */
  IF ~~ THEN REPLY #60664 /* ~Continue à lire les symboles…~ */ GOTO 41
  IF ~~ THEN REPLY #60665 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60666 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #60667 /* ~"Gith faisait partie du Peuple, mais sa connaissance d'elle-même dépassait l'entendement de Zerthimon. Elle connaissait les *illithids* et les voies de la chair et, se connaissant intimement, elle allait découvrir le moyen de vaincre les tentaculaires au combat. La force de son *savoir* était telle que tous ceux qui la suivaient finirent par se connaître eux-mêmes."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #60668 /* ~Finis de lire les symboles.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",10)
~ GOTO 42
  IF ~  !Global("Dakkon_Teach","GLOBAL",9)
~ THEN REPLY #67277 /* ~Finis de lire les symboles.~ */ GOTO 42
  IF ~~ THEN REPLY #60669 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60670 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #60671 /* ~"Gith était seule, mais sa grande force consistait à faire prendre conscience aux autres de leur valeur. Et Zerthimon posa sa lame aux pieds de Gith."~ */
  IF ~~ THEN REPLY #60672 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60673 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.16 12.4
  SAY #60674 /* ~"Dans les Plaines désolées, Zerthimon dit à Gith qu'il ne pouvait y avoir deux cieux, et ses paroles déclenchèrent la guerre."~ */
  IF ~~ THEN REPLY #60675 /* ~Continue à lire les symboles…~ */ GOTO 44
  IF ~~ THEN REPLY #60676 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60677 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #60678 /* ~"Dans les Plaines désolées, le Peuple remporta la victoire sur ses maîtres *illithids*. Il *connut* la liberté."~ */
  IF ~~ THEN REPLY #60679 /* ~Continue à lire les symboles…~ */ GOTO 45
  IF ~~ THEN REPLY #60680 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60683 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #60684 /* ~"Mais, alors même que les dernières flammes vertes du champ de bataille ne s'étaient pas éteintes, Gith parla de continuer la guerre. Beaucoup étaient d'accord avec elle, guidés qu'ils étaient par la haine qui les habitait. Gith ne souhaitait plus seulement vaincre les *illithids*, elle voulait les exterminer dans l'infinité des plans. Et, une fois les tentaculaires éradiqués, le Peuple ferait la guerre aux autres races qu'il rencontrerait."~ */
  IF ~~ THEN REPLY #60685 /* ~Continue à lire les symboles…~ */ GOTO 46
  IF ~~ THEN REPLY #60686 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60687 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #60689 /* ~"Le feu de la haine brûlait toujours aussi fort dans le cœur de Gith. Ce n'était qu'au combat qu'elle se connaissait et qu'elle était vraiment vivante. Et tout ce qu'elle voyait, elle voulait le conquérir."~ */
  IF ~~ THEN REPLY #60690 /* ~Continue à lire les symboles…~ */ GOTO 47
  IF ~~ THEN REPLY #60694 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60697 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #60698 /* ~"Zerthimon fut le premier à se dresser contre Gith. Il expliqua que le Peuple connaissait désormais la liberté et qu'il lui fallait maintenant apprendre à se connaître lui-même pour dépasser le mal qu'on lui avait fait. Et beaucoup se rallièrent à ses paroles, qui en avaient assez de la guerre contre les *illithids*."~ */
  IF ~~ THEN REPLY #60699 /* ~Continue à lire les symboles…~ */ GOTO 48
  IF ~~ THEN REPLY #60700 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60701 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #60702 /* ~"*Sache* que le cœur de Gith ne rejoignait pas celui de Zerthimon sur ce point. Elle affirma que la guerre se poursuivrait jusqu'à la destruction totale des *illithids*. Alors, le Peuple pourrait s'emparer des Faux Mondes. Gith dit à Zerthimon que tous deux se tiendraient sous le même ciel. Elle n'aurait pu se montrer plus menaçante si elle avait sorti son arme du fourreau."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #60703 /* ~Finis de lire les symboles.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",12)
~ GOTO 49
  IF ~  !Global("Dakkon_Teach","GLOBAL",11)
~ THEN REPLY #67278 /* ~Finis de lire les symboles.~ */ GOTO 49
  IF ~~ THEN REPLY #60707 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60708 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #60709 /* ~"Zerthimon fit alors le Discours des Deux Cieux. Et la guerre repartit de plus belle."~ */
  IF ~~ THEN REPLY #60710 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60711 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 1.10
  SAY #60719 /* ~Tu examines minutieusement le Cercle, étudiant les liens et essayant de nouvelles combinaisons, mais rien de nouveau n'apparaît.~ */
  IF ~~ THEN REPLY #60720 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60721 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 1.6 1.8
  SAY #60722 /* ~Alors que tu examines les anneaux du Deuxième Cercle, tu trouves un lien bizarre dans la plaque qui décrit comment le peuple de Gith est parvenu au Soulèvement. Un nouveau cercle émerge du lien et tu le détaches, poussant la plaque en avant pour l'étudier.~ */
  IF ~~ THEN REPLY #60724 /* ~Lis les symboles…~ */ GOTO 53
  IF ~~ THEN REPLY #60725 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60726 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 1.7 1.9
  SAY #60727 /* ~Alors que tu examines les anneaux des sept Cercles de Zerthimon, tu remarques une certaine régularité dans la manière dont les liens sont organisés… tu agrippes les bords du Cercle et tu détaches un segment caché, poussant la plaque en avant pour l'étudier.~ */
  IF ~~ THEN REPLY #60728 /* ~Lis les symboles…~ */ GOTO 57
  IF ~~ THEN REPLY #60730 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60731 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 1.17 51.0
  SAY #60732 /* ~"*Sache* que le Soulèvement du Peuple contre les *illithids* se décida sur de nombreux tours de roue. Beaucoup vécurent et moururent alors que le Soulèvement prenait forme."~ */
  IF ~~ THEN REPLY #60733 /* ~Continue à lire les symboles…~ */ GOTO 54
  IF ~~ THEN REPLY #60734 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60735 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #60736 /* ~"Le Soulèvement se prépara lentement. Le Peuple rassembla suffisamment d'acier pour pouvoir marquer la chair des *illithids*. On trouva le moyen d'être au courant des déplacements des tentaculaires. D'abord hésitant, il devint ensuite plus précis. Une fois leurs déplacements connus, les *illithids* furent observés. Et il fut ainsi possible de comprendre comment leur esprit fonctionnait."~ */
  IF ~~ THEN REPLY #60737 /* ~Continue à lire les symboles…~ */ GOTO 55
  IF ~~ THEN REPLY #60738 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60739 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #60740 /* ~"*Sache* que le Soulèvement du Peuple contre les *illithids* prit forme après de nombreux tours de roue. Nombre de membres du Peuple furent rassemblés et instruits en secret. Ils apprirent à protéger leur esprit et à s'en servir comme d'une arme. Ils étudièrent l'évangile de l'acier et comprirent qu'ils pouvaient être libres."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #60741 /* ~Finis de lire les symboles.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",15)
~ GOTO 56
  IF ~  !Global("Dakkon_Teach","GLOBAL",14)
~ THEN REPLY #67279 /* ~Finis de lire les symboles.~ */ GOTO 56
  IF ~~ THEN REPLY #60743 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60744 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0 55.1
  SAY #60745 /* ~"Ces concepts ne pouvaient s'enseigner rapidement. L'apprentissage fut donc long et le temps pesa sur les épaules de chacun. Il fallait commencer par s'observer dans l'acier de son épée avant de laisser fusionner sa volonté avec l'arme et de se connaître enfin soi-même. C'est cela, et bien d'autres choses encore, qu'apprirent les membres du Peuple. Et puis, un jour, ils finirent par tout savoir."~ */
  IF ~~ THEN REPLY #60746 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60747 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 1.18 52.0
  SAY #60748 /* ~"*Sache* qu'un esprit désuni divise son propriétaire. L'esprit et la main ne doivent faire qu'un. C'est en se connaissant soi-même que l'on devient fort."~ */
  IF ~~ THEN REPLY #60749 /* ~Continue à lire les symboles…~ */ GOTO 58
  IF ~~ THEN REPLY #60750 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60751 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #60752 /* ~"Quand tu *sais* au plus profond de ton cœur qu'une décision est juste, ne la trahis pas, même si elle annonce de terribles épreuves. *Sache* que, sans souffrance, le Soulèvement n'aurait jamais eu lieu et les membres du Peuple n'auraient jamais pu se connaître eux-mêmes."~ */
  IF ~~ THEN REPLY #60753 /* ~Continue à lire les symboles…~ */ GOTO 59
  IF ~~ THEN REPLY #60754 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60755 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #60756 /* ~"*Sache* que rien au monde ne peut résister à l'unité. Quand tout le monde a le même but et quand toutes les mains sont guidées par la même volonté, il est possible de déplacer, non pas des montagnes, mais les plans eux-mêmes."~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #60757 /* ~Continue à lire les symboles…~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",18)
~ GOTO 60
  IF ~  !Global("Dakkon_Teach","GLOBAL",17)
~ THEN REPLY #67280 /* ~Continue de lire les symboles…~ */ GOTO 60
  IF ~~ THEN REPLY #60764 /* ~Arrête de lire, examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60769 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #60773 /* ~"Un esprit divisé est un esprit qui n'a aucune conscience de soi, et il a pour effet de scinder le corps en deux. Par contre, quand l'esprit est uni, le corps est renforcé. C'est en se connaissant soi-même que l'on devient fort."~ */
  IF ~~ THEN REPLY #60774 /* ~Examine de nouveau le Cercle.~ */ GOTO 1
  IF ~~ THEN REPLY #60775 /* ~Fais glisser les plaques pour les fermer et scelle le Cercle.~ */ EXIT
END
