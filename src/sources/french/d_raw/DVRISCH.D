// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVRISCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVRISCH~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3001 /* ~Le physique de cette femme aux traits anguleux est attirant, mais également dérangeant sans qu'on sache trop pourquoi. Elle a une peau bleu nuit et deux yeux jaunes et brillants. Alors qu'elle t'examine, deux petites ailes de chauve-souris se déplient dans son dos, puis semblent fusionner de nouveau avec sa peau.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 52.0
  SAY #50480 /* ~"Tiens, tiens… un crâne flottant, désincarné et tergiversé…"~ */
  IF ~~ THEN GOTO 4
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",0)
~ THEN BEGIN 2 // from: 53.0
  SAY #50481 /* ~"Tiens, tiens… Tombée-en-Disgrâce… ou quel que que soit le nom que vous vous donnez maintenant. C'est un grand plaisir de vous voir ici. Que me vaut l'honneur de votre visite ? Je croyais que vous ne trafiquiez plus avec les gens de notre condition." Elle te jette un coup d'œil méprisant. "Ou est-ce que votre tâche ici est presque terminée ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 3 // from: 54.0
  SAY #50482 /* ~"Tiens, tiens… un crâne flottant, désincarné et tergiversé et Tombée-en-Disgrâce… ou quel que que soit le nom que vous vous donnez maintenant. C'est un grand plaisir de vous voir ici. Que me vaut l'honneur de votre visite ? Je croyais que vous ne trafiquiez plus avec les gens de notre condition." Elle te jette un coup d'œil méprisant. "Ou est-ce que votre tâche ici est presque terminée ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0 6.0
  SAY #50483 /* ~Elle plisse les yeux. "Tu… tu es le balafré qui n'arrête pas de poser toutes sortes de questions ?" Elle te regarde des pieds à la tête. "Tu as vraiment l'air perdu. Tu voulais vraiment entrer ou est-ce que tu étudies les lieux juste parce que tu n'as rien de mieux à faire ?"

"Parce que Vrischika…" Elle se montre du doigt "… peut t'aider."~ */
  IF ~~ THEN REPLY #50485 /* ~"Comment est-ce que tu pourrais m'aider ?"~ */ GOTO 19
  IF ~~ THEN REPLY #50486 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 8
  IF ~~ THEN REPLY #50487 /* ~"J'aurais quelques questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #50488 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #50484 /* ~Elle répond d'un ton cassant par des questions : "Par choix. Et vous ? Où vos ordres vont-ils vous mener ensuite ?" Elle se retourne soudain vers toi. "Tu vois, *petit* homme…" Vrischika sourit comme si elle savourait chacun de ses mots. "… la meilleure tentatrice est celle qui réussit à te faire croire qu'en couchant avec tout le monde, tu pouvais malgré tout être vertueux, une prêtresse prostituée quoi. Maîtresse Grâce fait partie des meilleures…" Elle se retourne vers Tombée-en-Disgrâce. "… pas vrai ? Vous n'auriez pas cru que mille ans d'esclavage aient pu laisser des traces, hein ?"~ */
  IF ~~ THEN DO ~SetGlobal("Vris_vs_Grace","GLOBAL",1)
~ EXTERN ~DGRACE~ 152
END

IF ~~ THEN BEGIN 6 // from:
  SAY #50489 /* ~"Très bien. C'est pourtant vous qui êtes venus dans *mon* grand magasin." Vrischika te regarde.~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN GOTO 4
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #50717 /* ~"Oui ?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.0 9.0 10.2 17.1 18.0 19.0 44.5 50.0 55.0
  SAY #50490 /* ~"Je répondrai à toutes les questions sur la marchandise, mais inutile de me poser tes innombrables questions sur tout et n'importe quoi, *compris* ?"~ */
  IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN REPLY #50491 /* ~"Ça t'intéresserait d'acheter un esclave ou un serviteur, Vrischika ?"~ */ GOTO 44
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66961 /* ~"J'ai donné la langue de fiélon à quelqu'un mais… elle présente des effets secondaires plus qu'embêtants. Des idées ?"~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #50492 /* ~"Qui es-tu, Vrischika ?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50493 /* ~"Qu'est-ce que tu voulais dire en disant que Morte était 'tergiversé' ?"~ */ GOTO 9
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50494 /* ~"Toi et Tombée-en-Disgrâce ne semblez pas faire grand cas l'une de l'autre…"~ */ GOTO 10
  IF ~~ THEN REPLY #50495 /* ~"Parle-moi de cet endroit au moins."~ */ GOTO 8
  IF ~~ THEN REPLY #50496 /* ~"Voyons ta marchandise, alors."~ */ GOTO 20
  IF ~~ THEN REPLY #50497 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 7.5
  SAY #50498 /* ~"Ce qui se trouve dans cette boutique est le résultat de nombreux voyages et négociations dans les plans." Elle indique tout ce qui se trouve dans la boutique. "Les armes, les charmes… et autres objets *spéciaux* sont aussi à vendre… Ce grand magasin contient tout ce qui est rare et raffiné. Tu as besoin de quelque chose, je te le procure."~ */
  IF ~~ THEN REPLY #50499 /* ~"J'avais une autre question…"~ */ GOTO 7
  IF ~~ THEN REPLY #50500 /* ~"Voyons ta marchandise, alors."~ */ GOTO 20
  IF ~~ THEN REPLY #50501 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #50502 /* ~"Tergiversé… dénaturé, parjuré, dissimulé, *menteur*… Oh, j'ai dit ça ? Je voulais dire un crâne flottant, désincarné et *pontifié*. D'un point de vue dogmatique - il faut toujours donner une opinion en étant sûr de soi." Vrischika sourit innocemment.~ */
  IF ~~ THEN REPLY #50503 /* ~"Hmm. J'avais une autre question…"~ */ GOTO 7
  IF ~~ THEN REPLY #50504 /* ~"Bon, d'accord. Voyons ta marchandise…"~ */ GOTO 20
  IF ~~ THEN REPLY #50505 /* ~"Je… vois. C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.4
  SAY #50507 /* ~"Oh, cette fidèle du camp baatezu qui a élu domicile à Sigil ? Bizarre, non ? Mais quel meilleur endroit que sa 'Maison de tolérance' pour entraîner ses agents…"~ */
  IF ~~ THEN REPLY #50508 /* ~"Fidèle du camp baatezu ?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50509 /* ~"Entraîner ses agents ?"~ */ GOTO 14
  IF ~~ THEN REPLY #50510 /* ~"Hmm. J'avais une autre question…"~ */ GOTO 7
  IF ~~ THEN REPLY #50511 /* ~"Je voudrais voir tes marchandises…"~ */ GOTO 20
  IF ~~ THEN REPLY #50512 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 17.0
  SAY #50513 /* ~"Depuis que sa mère l'a vendue aux marchands d'esclaves, elle est le joujou des plans, et ça dure depuis des siècles. Elle prétend avoir été capable de se libérer de ses chaînes, mais il faut se méfier de ses paroles tout comme des paroles de n'importe quelle salope tanar'ri." Elle esquisse un léger sourire. "Sauf moi, bien sûr."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 153
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50514 /* ~"La vérité ?! *La vérité* ?! On ne se libère pas des contrats baatezus, pauvre salope déguisée en humaine. Vous mentez, et toutes les hordes de tanar'ris le savent, des plus basses légions aux autres jeunes succubes qui cabriolent dans les plans. 'Tombée-en-Disgrâce est née esclave baatezu et elle le restera *toujours*'. Vous restez le joujou des baatezus et ils peuvent vous torturer ou vous contrôler à leur guise." Vrischika ricane. "Vous vous *comportez* même comme eux."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 154
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50515 /* ~"Ça suffit ! Je ne veux pas écouter vos mensonges !"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 155
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #50516 /* ~"Oui… ce sont ses yeux et ses oreilles dans la cité de Sigil et dans les plans. Ce qu'ils ne voient ou n'entendent pas, ils peuvent l'extorquer à un autre homme qui a vu et entendu. Et qui pourrait croire les humains capables de tels actes de tromperie et de tricherie ? Oh, Grâce est en effet intelligente. Peut-être pas autant que l'était sa mère, mais néanmoins intelligente…"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 156
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50517 /* ~"Oh, mais *bien sûr* que non ! J'ai osé laisser entendre une telle chose ? Mais vous devriez peut-être laisser cet homme en juger par lui-même." Vrischika se tourne vers toi, le regard enflammé. "Tu ne t'étonnes pas, petit homme ? La raison et la curiosité ne te sont-elles pas venues à l'esprit sur cette question ? L'existence de la Maison de tolérance ne te semble-t-elle pas *étrange* ?"~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #50518 /* ~Vrischika continue sans même te laisser une chance de répondre. "Le rasoir d'Occam peut laisser une cicatrice, mais il peut aussi éliminer le cancer si souvent provoqué par le poison des menteurs et des rêveurs."

"Et maintenant, la voilà qui voyage avec toi. Vraiment bizarre. Pourquoi quelqu'un, la propriétaire d'un tel établissement, l'abandonnerait-il ? Et pour un homme qu'elle connaît à peine ? Des questions, des questions…"

"Les réponses peuvent en effet être douloureuses."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 157
END

IF ~~ THEN BEGIN 17 // from:
  SAY #50519 /* ~"Oh, je suis sûre qu'il a demandé… Quel homme pourrait y résister ?" Vrischika ricane et se détourne avec dégoût.~ */
  IF ~~ THEN REPLY #50520 /* ~"Tu as dit qu'elle était une fidèle du camp baatezu. Qu'est-ce que tu voulais dire par là ?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50521 /* ~"J'avais une autre question…"~ */ GOTO 7
  IF ~~ THEN REPLY #50522 /* ~"Je voudrais voir tes marchandises…"~ */ GOTO 20
  IF ~~ THEN REPLY #50523 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY #50524 /* ~Vrischika pousse un grand soupir. "Une alu-fiélonne… une demi-démon. Ma mère était une tanar'ri, une fiélonne, et mon père était un grand roi des mortels. Ta question est insolente… mais tu as toi-même une tête d'insolent, pas vrai ?"~ */
  IF ~~ THEN REPLY #50525 /* ~"J'avais une autre question…"~ */ GOTO 7
  IF ~~ THEN REPLY #50526 /* ~"Je voudrais voir tes marchandises…"~ */ GOTO 20
  IF ~~ THEN REPLY #50527 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.0
  SAY #50528 /* ~"Je voyage et je négocie beaucoup. J'écoute beaucoup, j'achète beaucoup et je possède beaucoup. Je peux peut-être te trouver une bonne affaire. Y a-t-il quelque chose que tu désires ?"~ */
  IF ~~ THEN REPLY #50529 /* ~"Je veux seulement avoir les réponses à quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #50530 /* ~"Peut-être. Qu'est-ce que tu vends ?"~ */ GOTO 20
  IF ~~ THEN REPLY #50531 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.6 8.1 9.1 10.3 17.2 18.1 19.1 50.1 55.1
  SAY #50533 /* ~"Tu veux examiner les armes et les charmes ? Ou certaines de mes acquisitions *exotiques* ?"~ */
  IF ~~ THEN REPLY #50534 /* ~"Les armes et les charmes…"~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50535 /* ~"Les objets exotiques…"~ */ GOTO 21
  IF ~~ THEN REPLY #50536 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1 22.2 23.1 24.1 31.2 31.3 32.1 33.1 34.1 37.2 38.1 41.1 43.1 58.1 59.6 60.6
  SAY #50539 /* ~Vrischika sourit tandis que tu étudies les rayonnages au milieu de sa boutique. "Si tu ne vois rien qui te plaise ici, il y a d'autres objets à vendre à l'arrière et à l'avant de mon échoppe."~ */
  IF ~  Global("Vris_Buy_05","AR0609",0)
~ THEN REPLY #50551 /* ~Examine la Langue de fiélon.~ */ GOTO 31
  IF ~  Global("Vris_Buy_06","AR0609",0)
~ THEN REPLY #50552 /* ~Examine le Baume de Gorgone.~ */ GOTO 32
  IF ~  Global("Vris_Buy_08","AR0609",0)
~ THEN REPLY #50554 /* ~Examine la figurine cubique métallique.~ */ GOTO 33
  IF ~  Global("Vris_Buy_09","AR0609",0)
~ THEN REPLY #50555 /* ~Examine la Chope de monstre.~ */ GOTO 34
  IF ~~ THEN REPLY #66633 /* ~Inspecte la devanture.~ */ GOTO 59
  IF ~~ THEN REPLY #66634 /* ~Inspecte le fond de la boutique.~ */ GOTO 60
  IF ~~ THEN REPLY #50562 /* ~"En fait, laisse-moi jeter un œil aux armes et aux charmes…"~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50563 /* ~"Il n'y a rien qui m'intéresse pour le moment. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #50564 /* ~Vrischika te voit examiner le livre intitulé 'CODES DE TRICHERIE'. "Oui… c'est vraiment ce que tu crois. Vas-y, jettes-y un œil."~ */
  IF ~~ THEN REPLY #50565 /* ~"Des codes de tricherie ? Je ne comprends pas…"~ */ GOTO 23
  IF ~~ THEN REPLY #50566 /* ~Regarde les différents Codes de tricherie.~ */ GOTO 24
  IF ~~ THEN REPLY #50567 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50568 /* ~"Il n'y a rien qui m'intéresse pour le moment. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #50573 /* ~"Oh, allez." Vrischika pose les mains sur les hanches et relève la tête. "Ne joue pas les naïfs avec moi ! Souviens-toi que je suis une fiélonne, je peux *sentir* tes émotions. Oui…" Elle parle lentement, comme si elle s'adressait à un enfant. "Ce sont des codes *de tricherie*. Ils te permettent de *TRICHER*. Vas-y… examine-les. Ils ne vont pas te manger."~ */
  IF ~~ THEN REPLY #50574 /* ~Regarde les différents Codes de tricherie.~ */ GOTO 24
  IF ~~ THEN REPLY #50575 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50576 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 23.0
  SAY #50577 /* ~Le livre comprend plusieurs chapitres : tricherie de téléportation, tricherie de guérison, tricherie de richesse, tricherie de recharge de sort, tricherie d'attribution de score, tricherie de mort, tricherie d'exploration de zone, tricherie de parole aimable et tricherie de parole maléfique.~ */
  IF ~~ THEN REPLY #50578 /* ~"Qu'est-ce que tu veux en échange ?"~ */ GOTO 41
  IF ~~ THEN REPLY #50579 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50580 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 59.0
  SAY #50581 /* ~Tu examines un certain nombre de petits flacons portant tous l'inscription suivante : 'Huile de bébé'. Vrischika en prend un et te le montre. "Ça t'intéresse ? C'est du vrai, bien sûr. Il a fallu des milliers de bébés mortels criards pour faire ça."~ */
  IF ~~ THEN REPLY #50582 /* ~"Eh… Non, merci. Laisse-moi voir le reste."~ */ GOTO 59
  IF ~~ THEN REPLY #50583 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 59.1
  SAY #50584 /* ~Tu examines une petite créature ressemblant à un diablotin, sculptée dans du pur chocolat au lait. "Ça a l'air délicieux, pas vrai ? Importés des Plans Inférieurs. Ils sont rares et les amateurs de chocolat et de sucreries en raffolent. C'est un vrai quasit - bien connu des fiélons - transformé en chocolat par le biais d'une puissante magie. Et ça ne coûte que cent quatre vingt dix neuf pièces de cuivre."~ */
  IF ~  PartyGoldGT(198)
~ THEN REPLY #50585 /* ~"Je le prends."~ */ DO ~SetGlobal("Vris_Buy_01","AR0609",1)
DestroyPartyGold(199)
GiveItemCreate("ChocoQ",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50586 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 59
  IF ~~ THEN REPLY #50587 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 59.2
  SAY #50589 /* ~Tu examines un livre plutôt modeste fermé par un minuscule cadenas en laiton. "Ça", roucoule Vrischika, "c'est le Manuscrit de l'Inconcevable. Je dirais que c'est juste… juste… ah, je ne peux pas l'expliquer. Les mots ne suffisent pas ! Tu peux l'acheter pour mille communs de cuivre… et crois-moi, il en vaut vraiment la peine."~ */
  IF ~  PartyGoldGT(999)
~ THEN REPLY #50590 /* ~"Je le prends."~ */ DO ~SetGlobal("Vris_Buy_02","AR0609",1)
DestroyPartyGold(1000)
GiveItemCreate("CodexI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50591 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 59
  IF ~~ THEN REPLY #50592 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 59.3
  SAY #50593 /* ~Tu examines une petite fiole en verre portant l'inscription 'Larmes de deva'. "Elles proviennent d'un deva capturé lors d'une escarmouche de la Guerre Sanglante. Les fiélons ont torturé l'ange emprisonné pendant des siècles avant qu'il ne réussisse à s'échapper - cette petite bouteille contient les douze larmes qu'il a versées au cours de cette période. Leur prix : cent communs de cuivre."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50594 /* ~"Je vais les prendre."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50595 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 59
  IF ~~ THEN REPLY #50596 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 59.4 61.0
  SAY #50597 /* ~Tu examines une petite fiole en verre portant l'inscription 'Larmes de deva'. Vrischika te la présente. "Elles proviennent d'un deva capturé lors d'une escarmouche de la Guerre Sanglante. Les fiélons ont torturé l'ange emprisonné pendant des siècles avant qu'il ne réussisse à s'échapper - cette petite bouteille contient les douze larmes qu'il a versées au cours de cette période. On dit qu'elles apaisent la pire des colères… même celle d'un fiélon." Vrischika sourit d'un air cruel. "Leur prix : neuf cents quatre vingt dix neuf communs de cuivre."~ */
  IF ~  PartyHasItem("EcNote")
~ THEN REPLY #64175 /* ~"J'ai ce billet à ordre d'un millier de communs de la Maison de Tolérance…"~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyItem("EcNote",FALSE)
GiveGoldForce(1)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 58
  IF ~  PartyGoldGT(998)
~ THEN REPLY #50598 /* ~"Voilà qui pourrait mettre fin au maléfice de la Langue de Fiélon. Je les prends."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",2)
DestroyPartyGold(999)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50599 /* ~"Laisse-moi voir les autres objets…"~ */ GOTO 59
  IF ~~ THEN REPLY #50600 /* ~"Ce pourrait être ce qu'il faut à Ecco… mais non merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 59.5
  SAY #50601 /* ~Tu examines un flacon portant l'inscription 'Élixir d'horrifique séparation'. Vrischika te le présente. "Ce truc a été formulé par une érudite qui avait découvert chez elle un côté obscur - une partie d'elle-même qui prenait parfois le dessus et l'obligeait à faire des choses terribles. On dit que cette potion aurait permis de la libérer de son côté obscur, créant ainsi deux êtres distincts. Mais les Rectifieurs la découvrirent et l'exécutèrent pour une série de meurtres avant qu'elle ne puisse l'utiliser. Cet Élixir est à toi pour seulement deux cents communs de cuivre."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #50602 /* ~"Je le prends."~ */ DO ~SetGlobal("Vris_Buy_04","AR0609",1)
DestroyPartyGold(200)
GiveItemCreate("ElixirS",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50603 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 59
  IF ~~ THEN REPLY #50604 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.0
  SAY #50605 /* ~Tu examines ce qui ressemble à une langue flottant dans une jarre de saumure. Vrischika fronce les sourcils en la regardant. "C'est la langue d'un fiélon… celle d'un cornugon, je crois, mais qui peut en être sûr ? On dit que placée dans la bouche d'un être vivant, elle redonne la parole, même aux personnes qui étaient muettes. Je vends ce truc bizarre pour seulement soixante six pièces de cuivre, si t'es preneur."~ */
  IF ~  PartyGoldGT(65)
!Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50606 /* ~"Je la prends."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  PartyGoldGT(65)
Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50607 /* ~"Je vais la prendre ; ça permettra peut-être à Ecco de retrouver sa voix."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66812 /* ~"Elle pourrait rendre la parole à Ecco. Mais j'aimerais d'abord revoir les autres marchandises…"~ */ JOURNAL #66814 /* ~J'ai vu une langue de fiélon dans la boutique de Vrischika. S'il faut en croire cette dernière, c'est l'objet rêvé pour rendre la parole à Ecco.~ */ GOTO 21
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50608 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66813 /* ~"Elle pourrait rendre la parole à Ecco, mais non merci. Au revoir."~ */ JOURNAL #66814 /* ~J'ai vu une langue de fiélon dans la boutique de Vrischika. S'il faut en croire cette dernière, c'est l'objet rêvé pour rendre la parole à Ecco.~ */ EXIT
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50609 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1
  SAY #50610 /* ~Tu examines un flacon portant l'inscription 'Baume de Gorgone'. Vrischika l'attrape pour toi. "J'ai acheté ça à un certain Primaire muni d'une épée… Perseus, je crois, qu'il s'appelait. Appliqué sur une surface ayant été pétrifiée, il a le pouvoir de lui redonner sa nature charnelle. Il ne coûte que cent communs de cuivre, une affaire compte tenu de son utilité si jamais un de tes amis était pétrifié."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50611 /* ~"Je le prends."~ */ DO ~SetGlobal("Vris_Buy_06","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Gsalve",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50612 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50613 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 21.2
  SAY #50614 /* ~Tu examines une petite créature en forme de cube métallique avec de grands yeux. Ce jouet a deux jambes, deux bras, deux ailes pliables et au moins dix-huit points d'articulation. Vrischika sourit alors que tu l'attrapes. "Un truc de récupérateur, peut-être, ou une œuvre d'art. Qui sait ? Mais, je l'aime bien. Si tu l'achètes, mène ton enquête… quelqu'un en sait peut-être davantage que moi à son sujet. Je te le cède pour seulement mille cinq cents pièces de cuivre."~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50615 /* ~"Je le prends."~ */ DO ~SetGlobal("Vris_Buy_08","AR0609",1)
DestroyPartyGold(1500)
GiveItemCreate("Cube",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50616 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50617 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 21.3
  SAY #50618 /* ~Tu examines une cruche banale… mais malgré son aspect des plus ordinaires, tu répugnes à la toucher de peur qu'elle te morde. Vrischika te regarde en riant, puis hausse les épaules. "C'est une cruche. Des monstres y sont pris au piège - voilà pourquoi tes poils se hérissent comme ça. Si ça te tente, elle est à toi pour cent pièces de cuivre."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50619 /* ~"Je la prends."~ */ DO ~SetGlobal("Vris_Buy_09","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("MonJug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50620 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50621 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 60.0
  SAY #50622 /* ~Tu examines une lentille en verre de la taille de ta main entourée d'un anneau en acier poli. Une petite protubérance sortant de l'anneau semble indiquer que la lentille était reliée à un certain dispositif et il s'en dégage une horrible odeur. Vrischika l'attrape pour toi. "Je ne sais vraiment pas ce que c'est, mais ça émet une puissante magie. C'est un soldat répondant au nom de Ghysis qui me l'a rapportée du champ de bataille des Plans Inférieurs - il avait assassiné ses propres hommes pour pouvoir échapper à son tour de garde et il m'a rapporté un tas d'objets intéressants qu'il avait ramassés lors de la campagne. Je l'ai gardée, comme une pièce de musée, mais si tu veux, elle est à toi pour cent quarante neuf pièces de cuivre."~ */
  IF ~  PartyGoldGT(148)
~ THEN REPLY #50623 /* ~"Je la prends."~ */ DO ~SetGlobal("Vris_Buy_10","AR0609",1)
DestroyPartyGold(149)
GiveItemCreate("Lens12",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50624 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 60
  IF ~~ THEN REPLY #50625 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 60.1
  SAY #50626 /* ~Tu examines un anneau dans une petite boîte matelassée. Vrischika l'attrape pour te le faire voir de plus près. "C'est l'Anneau de Quasi-Invisibilité de Yevrah. Il rend celui qui le porte invisible - enfin, presque. Je suis prête à le laisser partir pour la modique somme de trois cents quarante neuf communs de cuivre."~ */
  IF ~  PartyGoldGT(348)
~ THEN REPLY #50627 /* ~"Je le prends."~ */ DO ~SetGlobal("Vris_Buy_11","AR0609",1)
DestroyPartyGold(349)
GiveItemCreate("RingAI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50628 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 60
  IF ~~ THEN REPLY #50629 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #50630 /* ~Tu examines une dague de forme étrange posée sur un présentoir de décoration. Elle est accompagnée de l'inscription suivante : 'Epée de W'hynn'. Vrischika tapote son pommeau du bout des doigts. "On l'appelle aussi la Lame du Tricheur. En la maintenant en l'air, tu gagneras la partie. Si le cœur t'en dit, je te la cède pour mille cinq cents communs de cuivre."~ */
  IF ~~ THEN REPLY #50631 /* ~"Je gagnerai… Qu'est-ce que tu veux dire ?"~ */ GOTO 38
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50632 /* ~"Je la prends."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50633 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50634 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #50635 /* ~Vrischika fronce ses yeux jaunes en te regardant. "Oh, allez. Tu sais *exactement* ce que je veux dire. Achète la Lame du Tricheur et tu gagneras la partie. C'est aussi simple que ça… pour seulement mille cinq cents communs de cuivre. Tu la veux ou pas ?"~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50636 /* ~"Oui, je vais la prendre."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50637 /* ~"Non… mais laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50638 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 60.3
  SAY #50639 /* ~Les années ont bien abîmé cette minuscule poupée de chiffon ; elle part en lambeaux et on dirait que ses fils s'effilochent. Elle ressemble à une femme étrangement vêtue avec une couronne d'épines sur la tête. Vrischicka l'attrape pour toi. "Elle vient d'un coffre-fort perdu à la surface de Sigil. Elle faisait partie d'un petit trésor et de textes magiques interdits. Je ne sais pas à quoi elle sert. Si elle te plaît, je te la laisse pour quatre vingt dix neuf pièces de cuivre."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50640 /* ~"Je la prends."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50641 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 60
  IF ~~ THEN REPLY #50642 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 60.4
  SAY #50643 /* ~Les années ont bien abîmé cette minuscule poupée de chiffon ; elle part en lambeaux et on dirait que ses fils s'effilochent. De toute évidence, il s'agit d'une réplique de la Dame des Douleurs, mais les boutons qui lui font office d'yeux et sa douceur pelucheuse te sont indifférents. Vrischicka l'attrape pour toi. "Elle vient d'un coffre-fort perdu à la surface de Sigil. Elle faisait partie d'un petit trésor et de textes magiques interdits. Je ne sais pas à quoi elle sert. Si elle te plaît, je te la laisse pour quatre vingt dix neuf pièces de cuivre."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50644 /* ~"Je la prends."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50645 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 60
  IF ~~ THEN REPLY #50646 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 24.0
  SAY #50647 /* ~Vrischika se rapproche de toi. "Une simple pièce ne suffit pas pour un tel objet. Je pourrais te saigner avec *cette* lame…" Soudain, elle tient une dangereuse dague dans la main. "… et verser ton sang dans cette boîte en fer. Je n'accepterai rien de moins."~ */
  IF ~~ THEN REPLY #50648 /* ~"Je m'en charge."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,10)
FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Vris_Buy_07","GLOBAL",1)
GiveItemCreate("Cheats",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #50649 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 21
  IF ~~ THEN REPLY #50650 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #50651 /* ~Après quelques minutes, le sinistre rituel prend fin et Vrischika - un sourire satisfait sur les lèvres - te remet le livre. "Je n'ai plus le temps, maintenant. Au revoir."~ */
  IF ~~ THEN REPLY #50652 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 26.0 27.0 28.0 29.1 30.0 31.0 31.1 32.0 33.0 34.0 35.0 36.0 37.1 38.0 39.0 40.0 51.0
  SAY #50653 /* ~"Oui," ronronne Vrischika, "un choix judicieux." Les pièces de cuivre que tu lui donnes semblent disparaître en touchant sa paume ; elle te tend l'objet. "Je t'en prie, profite de ta toute nouvelle acquisition."~ */
  IF ~~ THEN REPLY #58910 /* ~"J'aimerais maintenant jeter un coup d'œil aux armes et aux charmes…"~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58911 /* ~"J'aimerais jeter à nouveau un œil aux articles exotiques…"~ */ GOTO 21
  IF ~~ THEN REPLY #50654 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 7.0
  SAY #50655 /* ~Les lèvres noires de Vrischika esquissent un sourire. "J'ai *toujours* besoin d'aide. Standish - ce lourdaud fainéant - me donne un coup de main à la boutique, mais j'aurais bien besoin de quelqu'un d'autre pour mon manoir. Qui tu proposais ? Je suis prête à t'en donner cinq mille pièces, si c'est une bonne affaire, bien sûr."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50656 /* ~"Pourquoi pas Morte ?"~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 504
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50657 /* ~"Cette tieffeline, Annah."~ */ DO ~SetGlobal("Sell_Annah","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DANNAH~ 250
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50658 /* ~"Dak'kon, le githzeraï."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 167
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50659 /* ~"Tombée-en-Disgrâce."~ */ DO ~SetGlobal("Sell_Grace","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ GOTO 48
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #50660 /* ~"Ce modrone, Nordom."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DNORDOM~ 13
  IF ~~ THEN REPLY #50661 /* ~"En fait, laisse tomber. J'avais une autre question…"~ */ GOTO 7
  IF ~~ THEN REPLY #50662 /* ~"En fait, personne ; peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #50663 /* ~Vrischika fronce les yeux en direction de Morte. "Hmmm… il pourrait s'avérer utile, oui. À condition que tu comprennes que tu ne le reverras plus jamais… Je t'en donne cinq mille pièces de cuivre."~ */
  IF ~~ THEN REPLY #50664 /* ~"Tu as dit jamais ? Bien… Prends-le."~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DMORTE~ 505
  IF ~~ THEN REPLY #50665 /* ~"Non, laisse tomber. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #50666 /* ~Vrischika montre un bout de parchemin à son nouvel esclave, Morte. "Tiens… voilà l'adresse de mon domicile, dans le Quartier de La Dame. Vas-y… si tu t'enfuies, je te lâcherai une telle meute de fiélons au train que tu n'auras qu'une envie : revenir à Sigil pour me servir." Elle se tourne vers toi. "Quant à *toi*, je te remercie ; je suis sûr qu'il me distraira… Voilà tes cinq mille communs. Au revoir."~ */
  IF ~~ THEN REPLY #50668 /* ~"Au revoir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Morte")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #50667 /* ~Vrischika fronce les yeux en regardant Dak'kon. "Hmmm… un githzeraï, hein ? Et un *zerth*, en plus. À condition que tu acceptes de ne jamais le revoir… je t'en propose cinq mille pièces de cuivre."~ */
  IF ~~ THEN REPLY #50669 /* ~"Jamais ? Je comprends. Prends-le."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DDAKKON~ 168
  IF ~~ THEN REPLY #50670 /* ~"Non, laisse tomber. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.3
  SAY #50671 /* ~"Ne sois pas *ridicule*," Vrischika ricane et secoue la tête. "Comme si tu pouvais *la* vendre… Va-t'en et ne reviens que si tu es décidé à ne plus faire l'imbécile."~ */
  IF ~~ THEN REPLY #50672 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #50673 /* ~Vrischika fronce les sourcils en direction de Nordom. "Hmmm… un serviteur bien discipliné, comme je les aime ? Oui, je suis prête à faire affaire. À condition que tu acceptes de ne plus jamais le revoir… Je t'en propose cinq mille pièces de cuivre."~ */
  IF ~~ THEN REPLY #50674 /* ~"Jamais ? Je comprends. Prends-le."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DNORDOM~ 14
  IF ~~ THEN REPLY #50675 /* ~"Non, laisse tomber. Au revoir, Vrischika."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",1)
~ THEN BEGIN 50 // from: 6.1
  SAY #50676 /* ~Vrischika te salue. "Bienvenue pour la deuxième fois. Tu veux acheter quelque chose ?"~ */
  IF ~~ THEN REPLY #50677 /* ~"Pas tout de suite. J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #50678 /* ~"Oui."~ */ GOTO 20
  IF ~~ THEN REPLY #52599 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 60.2
  SAY #50679 /* ~Tu examines une grosse chope de bière en étain couverte de runes étranges. Vrischika l'attrape pour te la montrer de plus près. "Une chope de bière bien étrange qui garde son contenu, généralement de la bière bien sûr, glacée quelle que soit la température ambiante. Deux cents quatre vingt dix neuf communs de cuivre pour la bière la plus glacée que tu aies jamais bu hors du paraplan de Glace."~ */
  IF ~  PartyGoldGT(298)
~ THEN REPLY #50680 /* ~"Je la prends."~ */ DO ~SetGlobal("Vris_Buy_14","AR0609",1)
DestroyPartyGold(299)
GiveItemCreate("DwfMug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50681 /* ~"En fait, laisse-moi revoir le reste…"~ */ GOTO 60
  IF ~~ THEN REPLY #50682 /* ~"Non, merci. Au revoir, Vrischika."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 52 // from:
  SAY #50683 /* ~Le physique de cette femme aux traits anguleux est attirant, mais également dérangeant sans qu'on sache trop pourquoi. Elle a une peau bleu nuit et deux yeux jaunes et brillants. Alors qu'elle t'examine, deux petites ailes de chauve-souris se déplient dans son dos, puis semblent fusionner de nouveau avec sa peau.~ */
  IF ~~ THEN GOTO 1
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 53 // from:
  SAY #50684 /* ~Le physique de cette femme aux traits anguleux est attirant, mais également dérangeant sans qu'on sache trop pourquoi. Elle a une peau bleu nuit et deux yeux jaunes et brillants. Alors qu'elle t'examine, deux petites ailes de chauve-souris se déplient dans son dos, puis semblent fusionner de nouveau avec sa peau.~ */
  IF ~~ THEN GOTO 2
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 54 // from:
  SAY #50685 /* ~Le physique de cette femme aux traits anguleux est attirant, mais également dérangeant sans qu'on sache trop pourquoi. Elle a une peau bleu nuit et deux yeux jaunes et brillants. Alors qu'elle t'examine, deux petites ailes de chauve-souris se déplient dans son dos, puis semblent fusionner de nouveau avec sa peau.~ */
  IF ~~ THEN GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DGrace")
~ THEN BEGIN 55 // from:
  SAY #52596 /* ~Vrischika te salue. "Bienvenue pour la deuxième fois. Tu veux acheter quelque chose ?"~ */
  IF ~~ THEN REPLY #52597 /* ~"Pas tout de suite. J'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #52598 /* ~"Oui."~ */ GOTO 20
  IF ~~ THEN REPLY #52600 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63985 /* ~Vrischika montre un bout de parchemin à son nouvel esclave, Dak'kon. "Voilà… c'est l'adresse de ma demeure, dans le Quartier de La Dame. Vas-y, tout de suite… Essaie de fuir, et tu te retrouveras avec tant de fiélons à tes trousses que tu me supplieras de revenir à Sigil pour me servir." Puis elle se tourne vers toi. "Quant à *toi*… mes remerciements; je suis sûre qu'il sera amusant. Voici tes cinq mille pièces… au revoir."~ */
  IF ~~ THEN REPLY #63986 /* ~"Au revoir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Dakkon")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #63987 /* ~Vrischika montre un morceau de parchemin à son nouvel esclave, Nordom. "Voilà… c'est l'adresse de ma demeure, dans le Quartier de La Dame. Vas-y, tout de suite… Essaie de fuir, et tu te retrouveras avec tant de fiélons à tes trousses que tu me supplieras de revenir à Sigil pour me servir." Puis elle se tourne vers toi. "Quant à *toi*… mes remerciements; je suis sûre qu'il sera amusant. Voici tes cinq mille pièces… au revoir."~ */
  IF ~~ THEN REPLY #63988 /* ~"Au revoir."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Nordom")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 29.0
  SAY #64171 /* ~Vrischika fronce légèrement les sourcils et examine la note. "Eh ! bien… je pense que Standish peut aller le chercher, plus tard. Très bien, voilà pour toi." Elle te tend l'objet. "Profite de ta nouvelle acquisition."~ */
  IF ~~ THEN REPLY #64172 /* ~"J'aimerais maintenant jeter un coup d'œil aux armes et aux charmes…"~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64173 /* ~"J'aimerais jeter à nouveau un œil aux articles exotiques…"~ */ GOTO 21
  IF ~~ THEN REPLY #64174 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.4 25.0 26.1 27.1 28.1 29.2 30.1 60.5
  SAY #66631 /* ~Tu t'intéresses aux étagères de la devanture de la boutique de Vrischika.~ */
  IF ~~ THEN REPLY #66635 /* ~Examine l'Huile de bébés.~ */ GOTO 25
  IF ~  Global("Vris_Buy_01","AR0609",0)
~ THEN REPLY #66636 /* ~Examine le Quasit en chocolat.~ */ GOTO 26
  IF ~  Global("Vris_Buy_02","AR0609",0)
~ THEN REPLY #66637 /* ~Examine le Manuscrit de l'Inconcevable.~ */ GOTO 27
  IF ~  Global("Vris_Buy_03","AR0609",0)
!Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66638 /* ~Examine les Larmes de deva.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66639 /* ~Examine les Larmes de deva.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ JOURNAL #66815 /* ~J'étais en train d'examiner les larmes de deva mises en vente à la boutique de Vrischika quand cette dernière m'a dit qu'elles calmaient la plus terrible colère, même celle d'un fiélon. Peut-être pourront-elles aider Ecco.~ */ GOTO 29
  IF ~  Global("Vris_Buy_04","AR0609",0)
~ THEN REPLY #66640 /* ~Examine l'Élixir d'horrifique séparation.~ */ GOTO 30
  IF ~~ THEN REPLY #66641 /* ~Inspecte le milieu de la boutique.~ */ GOTO 21
  IF ~~ THEN REPLY #66642 /* ~Inspecte le fond de la boutique.~ */ GOTO 60
  IF ~~ THEN REPLY #66643 /* ~"En fait, laisse-moi jeter un œil aux armes et aux charmes…"~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66644 /* ~"Il n'y a rien qui m'intéresse pour le moment. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 21.5 35.1 36.1 39.1 40.1 51.1 59.7
  SAY #66632 /* ~Tu t'intéresses aux étagères du fond de la boutique de Vrischika.~ */
  IF ~  Global("Vris_Buy_10","AR0609",0)
~ THEN REPLY #66645 /* ~Examine la lentille en verre.~ */ DO ~SetGlobal("CW_Vrischika_Ghysis","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Vris_Buy_11","AR0609",0)
~ THEN REPLY #66646 /* ~Examine l'Anneau de Yevrah.~ */ GOTO 36
  IF ~  Global("Vris_Buy_14","AR0609",0)
~ THEN REPLY #66647 /* ~Examine la chope de Bière couverte de runes.~ */ GOTO 51
  IF ~  Global("Vris_Buy_13","AR0609",0)
Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #66648 /* ~Examine la poupée de chiffon en loques.~ */ GOTO 39
  IF ~  Global("Vris_Buy_13","AR0609",0)
GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #66649 /* ~Examine la poupée de chiffon en loques.~ */ GOTO 40
  IF ~~ THEN REPLY #66650 /* ~Inspecte la devanture.~ */ GOTO 59
  IF ~~ THEN REPLY #66651 /* ~Inspecte le milieu de la boutique.~ */ GOTO 21
  IF ~~ THEN REPLY #66652 /* ~"En fait, laisse-moi jeter un œil aux armes et aux charmes…"~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66653 /* ~"Il n'y a rien qui m'intéresse pour le moment. Au revoir, Vrischika."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 7.1
  SAY #66959 /* ~Vrischika se contente de sourire et de tendre le doigt vers un objet se trouvant dans sa devanture.~ */
  IF ~~ THEN REPLY #66960 /* ~Examine ce qu'elle montre du doigt.~ */ GOTO 29
END
