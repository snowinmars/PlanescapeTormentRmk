// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILTSP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILTSP~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #45541 /* ~Tu vois un homme au teint rougeaud. Il crie et se comporte comme si une guerre était sur le point de se déclencher ou comme s'il avait quelque chose de coincé dans le gros intestin. Bref, il a l'air trop excité pour parler normalement.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 483
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #45542 /* ~Tu vois un homme au teint rougeaud. Il crie et se comporte comme si une guerre était sur le point de se déclencher ou comme s'il avait quelque chose de coincé dans le gros intestin. Bref, il a l'air trop excité pour parler normalement.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 484
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 2 // from:
  SAY #45543 /* ~Tu vois un homme au teint rougeaud. Il crie et se comporte comme si une guerre était sur le point de se déclencher ou comme s'il avait quelque chose de coincé dans le gros intestin. Bref, il a l'air trop excité pour parler normalement.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 485
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 3 // from:
  SAY #45544 /* ~Tu vois un homme au teint rougeaud. Il crie et se comporte comme si une guerre était sur le point de se déclencher ou comme s'il avait quelque chose de coincé dans le gros intestin. Bref, il a l'air trop excité pour parler normalement. Son débit extrêmement rapide le rend difficile à comprendre. "Hep, toi, là ! Je suis sûr que tu as besoin de quelque chose. Je ne sais pas encore quoi, mais laisse-moi quelques minutes et je te le dirai !"~ */
  IF ~~ THEN REPLY #45545 /* ~"Qu'est-ce que tu vends ?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45546 /* ~"J'aurais d'abord voulu te poser quelques questions."~ */ GOTO 5
  IF ~~ THEN REPLY #45547 /* ~"J'aurais quelque chose à te vendre."~ */ GOTO 6
  IF ~~ THEN REPLY #45548 /* ~"Merci de m'avoir accordé quelques instants. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45549 /* ~Son débit extrêmement rapide le rend difficile à comprendre. "Hep, toi, là ! Je suis sûr que tu as besoin de quelque chose. Je ne sais pas encore quoi, mais laisse-moi quelques instant et je te le dirai !"~ */
  IF ~~ THEN REPLY #45550 /* ~"Qu'est-ce que tu vends ?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45551 /* ~"J'aurais d'abord voulu te poser quelques questions."~ */ GOTO 5
  IF ~~ THEN REPLY #45552 /* ~"J'aurais quelque chose à te vendre."~ */ GOTO 6
  IF ~~ THEN REPLY #45553 /* ~"Merci de m'avoir accordé quelques instants. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 6.8 7.1 8.2 9.0 9.1 10.0 11.1 12.3 14.3 15.1 16.1 17.0 18.2 19.2 21.0 22.1 23.0 24.0 25.0 26.0 27.0
  SAY #45554 /* ~"Tout ce que tu voudras, mon ami. Mais le temps, c'est de l'argent, alors choisis vite !"~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #45555 /* ~"Je cherche un crâne flottant que l'on m'a volé. Est-ce que tu sais où je pourrais le retrouver ?"~ */ GOTO 11
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #45556 /* ~"Si tu me parlais encore de ce Maître des Os…"~ */ GOTO 14
  IF ~~ THEN REPLY #45557 /* ~"Qui es-tu et quelle est ta profession ?"~ */ GOTO 18
  IF ~~ THEN REPLY #45558 /* ~"Quel est ce lieu ? Que peux-tu m'en dire ?"~ */ GOTO 19
  IF ~~ THEN REPLY #45559 /* ~"Que peux-tu m'apprendre sur les Hommes-Dieux ?"~ */ GOTO 20
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45560 /* ~"Tu ne connaîtrais pas des gens qui auraient du travail à proposer ?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45561 /* ~"Le prospectus a été imprimé."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~J'ai dit à Giltspur que j'avais apporté son prospectus à Loimoqueuse Penn.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45562 /* ~"Le message a été délivré."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~J'ai dit à Giltspur que j'avais délivré son message à Keldor de la Grande Fonderie.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45563 /* ~"Le prospectus a été placardé au Bar du Cadavre fumant."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~J'ai dit à Giltspur que j'avais fait placarder son prospectus au bar du Cadavre fumant.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45564 /* ~"As-tu encore du travail pour moi ?"~ */ GOTO 27
  IF ~~ THEN REPLY #45565 /* ~"Qu'est-ce que tu vends ?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45566 /* ~"J'aurais quelque chose à te vendre."~ */ GOTO 6
  IF ~~ THEN REPLY #45567 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.11 7.2 18.0
  SAY #45568 /* ~"Tu t'adresses à la bonne personne ! J'achète, je vends, et je peux tout te trouver ! Qu'est-ce que tu as à me proposer ?"~ */
  IF ~  PartyHasItem("S_Limlim")
Global("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45569 /* ~"J'ai un Lim-Lim en pierre. Combien tu m'en offres ?"~ */ GOTO 8
  IF ~  PartyHasItem("S_Limlim")
GlobalGT("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45570 /* ~"J'ai un Lim-Lim en pierre. Combien tu m'en offres ?"~ */ GOTO 9
  IF ~~ THEN REPLY #45571 /* ~"Négocions."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45572 /* ~"Vous avez un travail pour moi, quel qu'il soit ?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45573 /* ~"Le prospectus a été imprimé."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~J'ai dit à Giltspur que j'avais apporté son prospectus à Loimoqueuse Penn.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45574 /* ~"Le message a été délivré."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~J'ai dit à Giltspur que j'avais délivré son message à Keldor de la Grande Fonderie.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45575 /* ~"Le prospectus a été placardé au Bar du Cadavre fumant."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~J'ai dit à Giltspur que j'avais fait placarder son prospectus au bar du Cadavre fumant.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45576 /* ~"As-tu encore du travail pour moi ?"~ */ GOTO 27
  IF ~~ THEN REPLY #45577 /* ~"Rien pour le moment. Si tu répondais à une ou deux autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45578 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #45579 /* ~"Encore ! Encore toi ! Je dois t'être plus utile que mon frère Deran, n'est-ce pas ? Ha !"~ */
  IF ~~ THEN REPLY #45580 /* ~"Je voudrais t'acheter quelque chose."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45581 /* ~"J'ai quelques questions à te poser."~ */ GOTO 5
  IF ~~ THEN REPLY #45926 /* ~"Parlons plutôt affaires."~ */ GOTO 6
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45583 /* ~"Tu as du travail pour moi ?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45584 /* ~"Le prospectus a été imprimé."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45585 /* ~"Le message a été délivré."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45586 /* ~"Le prospectus a été placardé au Bar du Cadavre fumant."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45587 /* ~"As-tu encore du travail pour moi ?"~ */ GOTO 27
  IF ~~ THEN REPLY #45588 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45589 /* ~Son expression s'assombrit soudain. "Je peux te donner un mot de passe secret et te dire comment l'utiliser. Ça te tente ?"~ */
  IF ~~ THEN REPLY #45590 /* ~"Donne-moi le mot de passe."~ */ DO ~SetGlobal("Know_An_Pass","GLOBAL",1)
TakePartyItemNum("S_Limlim",1)
~ GOTO 10
  IF ~~ THEN REPLY #45591 /* ~"Tu ne pourrais pas plutôt me donner de l'argent ?"~ */ GOTO 9
  IF ~~ THEN REPLY #45592 /* ~"Aucun des deux ne m'attire vraiment. Réponds plutôt à quelques questions."~ */ GOTO 5
  IF ~~ THEN REPLY #45593 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.1
  SAY #45594 /* ~"Je peux t'en donner soixante-quinze pièces. C'est à prendre ou à laisser, mon ami !"~ */
  IF ~~ THEN REPLY #45595 /* ~"Je le prends. J'ai encore une ou deux questions pour toi…"~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ GOTO 5
  IF ~~ THEN REPLY #45596 /* ~"Ça ne m'intéresse pas, mais j'ai encore une ou deux questions pour toi…"~ */ GOTO 5
  IF ~~ THEN REPLY #45597 /* ~"Je le prends. Au revoir."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ EXIT
  IF ~~ THEN REPLY #45598 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #45614 /* ~Habilement, il t'arrache des mains la forme calcifiée de Lim-Lim et se penche pour murmurer à ton oreille : "Le mot de passe est 'éclipse'. Il te permettra d'accéder à l'entrepôt de la Voûte du Neuvième Monde. Tu y trouveras des anarchistes. Donne-leur le mot de passe, mais sans leur dire d'où tu le tiens !"~ */
  IF ~~ THEN REPLY #45616 /* ~"'Eclipse'. Pigé. Maintenant, j'aurais encore une ou deux questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45622 /* ~"'Eclipse'. Pigé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #45625 /* ~"Un crâne, hein ? Ha, que je sache, il n'existe qu'un seul marché qui propose ce genre d'article, mais… (Il baisse brusquement le ton.) je ne peux te dire où le trouver… sauf si…"~ */
  IF ~~ THEN REPLY #45627 /* ~"Sauf ?"~ */ GOTO 12
  IF ~~ THEN REPLY #45628 /* ~"Laisse tomber. Réponds plutôt aux questions suivantes…"~ */ GOTO 5
  IF ~~ THEN REPLY #45630 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45632 /* ~"Je ne puis te le dire, mon ami, car ça mettrait ta vie en danger. Non, monsieur, ton existence et la mienne sont bien trop précieuses pour qu'on les gaspille pour un renseignement si trivial !"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #45633 /* ~"Dix pièces suffiront-elles à te faire changer d'avis ?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~  PartyGoldLT(10)
~ THEN REPLY #45637 /* ~"Et si je te donnais tout ce que contient ma bourse ?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45640 /* ~"Et si je te menaçais ?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45642 /* ~"Dans ce cas, laisse tomber. Réponds plutôt à mes questions."~ */ GOTO 5
  IF ~~ THEN REPLY #45644 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #45647 /* ~"Ça fera l'affaire, dit-il. Écoute-moi attentivement." Il se penche et murmure à ton oreille : "Je ne connais qu'un seul homme qui fasse commerce de marchandises occultes, et il n'est pas bon de faire affaire avec lui. C'est un homme que le danger accompagne partout et dont peu osent prononcer le nom. Je veux parler de… (Il fait une pause, comme pour ménager ses effets.) Lothar, Maître des Os !"~ */
  IF ~~ THEN REPLY #45650 /* ~"Qui ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 5.1 13.0
  SAY #45652 /* ~"Le Maître des Os ! Le seigneur des Os de la Nuit, qui possède la plus terrible des bibliothèques après celle de Seth ! Les crânes perchés sur ses étagères susurrent leurs secrets à l'oreille de Lothar et de ceux qui ont la témérité de venir les voir. On peut apprendre beaucoup de choses en cet endroit… à condition de ne pas devenir *fou* d'abord !"~ */
  IF ~~ THEN REPLY #45653 /* ~"Si tu pouvais en venir au fait…"~ */ GOTO 15
  IF ~~ THEN REPLY #45655 /* ~"Et où se trouve cet endroit ?"~ */ GOTO 16
  IF ~~ THEN REPLY #45656 /* ~"Pourquoi cherche-t-il à obtenir tous ces crânes ?"~ */ GOTO 17
  IF ~~ THEN REPLY #45658 /* ~"Merci. J'avais encore quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45659 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #45660 /* ~Il se racle la gorge. "Désolé d'avoir essayé de rendre la chose plus intéressante pour toi. J'ai juste voulu ajouter un peu de sel à ton existence. Va en direction de l'Aiguille et il est *possible* que tu découvres une ruine calcinée. Là, il se *peut* que tu remarques une échelle faite de tendons humains (ou peut-être taillée dans le bois) qui descend dans le cœur de Sigil. En arrivant en bas, tu te retrouveras *peut-être* face à Lothar."~ */
  IF ~~ THEN REPLY #45661 /* ~"Que fait-il de ces crânes ?"~ */ GOTO 17
  IF ~~ THEN REPLY #45662 /* ~"Merci. J'avais d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45663 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #45664 /* ~" Va en direction de l'Aiguille et il est *possible* que tu découvres une ruine calcinée. Là, il se *peut* que tu remarques une échelle faite de tendons humains (ou peut-être taillée dans le bois) qui descend dans le cœur de Sigil. En arrivant en bas, tu te retrouveras *peut-être* au Salon des Crânes, où se trouve Lothar."~ */
  IF ~~ THEN REPLY #45665 /* ~"Que fait-il de ces crânes ?"~ */ GOTO 17
  IF ~~ THEN REPLY #45666 /* ~"Merci. J'avais d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45667 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.0 16.0
  SAY #45668 /* ~"On dit que les morts ne parlent pas mais, dans le salon de Lothar, ils susurrent leurs secrets à qui veut les entendre. Plus il y a de morts, plus il y a de chants et d'histoires, et plus on comprend le multivers." Il hausse les sourcils à plusieurs reprises, comme pour mieux appuyer sa déclaration.~ */
  IF ~~ THEN REPLY #45669 /* ~"::soupir:: Merci. J'aurais encore quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45670 /* ~::Soupir:: "Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.2
  SAY #45671 /* ~"Moi ? Je suis Giltspur, le commissaire-priseur. À ton service ! Je vends, j'achète, et je propose maints services et emplois !"~ */
  IF ~~ THEN REPLY #45672 /* ~"Je voudrais vendre quelque chose."~ */ GOTO 6
  IF ~~ THEN REPLY #45673 /* ~"Je voudrais t'acheter quelque chose."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45674 /* ~"J'aurais des questions à te poser…"~ */ GOTO 5
  IF ~~ THEN REPLY #45675 /* ~"Super, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #45676 /* ~"Ici ? Eh bien, nous sommes dans le Bas Quartier, où se trouvent les Hommes-Dieux, la Grande Fonderie et de multiples commerces. Quoi que tu puisses désirer, tu peux être sûr qu'on l'a en stock !"~ */
  IF ~~ THEN REPLY #45677 /* ~"Que peux-tu m'apprendre sur les Hommes-Dieux ?"~ */ GOTO 20
  IF ~~ THEN REPLY #45678 /* ~"Que peux-tu me dire au sujet de la Fonderie ?"~ */ GOTO 22
  IF ~~ THEN REPLY #45679 /* ~"J'ai encore quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45680 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.4 19.0 22.0
  SAY #45681 /* ~"Ah, des gens comme je les aime ! Ils affirment que chacun d'entre nous est son propre dieu et que nous avons tous une étincelle de divinité en nous. Depuis le plus humble clochard jusqu'au plus grand des rois, nous sommes tous des dieux en puissance ! Qui aurait pu trouver une théorie plus agréable à entendre ?"~ */
  IF ~~ THEN REPLY #45682 /* ~"L'Harmonium."~ */ GOTO 21
  IF ~~ THEN REPLY #45683 /* ~"Les Anarchistes."~ */ GOTO 21
  IF ~~ THEN REPLY #45684 /* ~"Les Sensats."~ */ GOTO 21
  IF ~~ THEN REPLY #45685 /* ~"Les Hommes-Poussière."~ */ GOTO 21
  IF ~~ THEN REPLY #45686 /* ~"Les Rectifieurs."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4
  SAY #45687 /* ~"Bien dit ! Que voilà une réponse qui me plaît !" fait-il en gloussant.~ */
  IF ~~ THEN REPLY #45688 /* ~"J'avais d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45689 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #45690 /* ~"Pour moi, la Fonderie n'est qu'une opportunité, un lieu où chacun peut se mesurer au métal et où les âmes sont trempées dans l'eau du savoir… ou se brisent contre l'enclume de la vérité ! (Son ton de voix redevient normal l'espace d'un instant.) Du moins, c'est ce que disent les Hommes-Dieux."~ */
  IF ~~ THEN REPLY #45691 /* ~"Que peux-tu m'apprendre sur les Hommes-Dieux ?"~ */ GOTO 20
  IF ~~ THEN REPLY #45692 /* ~"J'aurais encore quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45693 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 6.3 7.3
  SAY #45694 /* ~"Très certainement, mon ami ! J'ai un petit service à te demander. Ça te rapportera cinquante pièces. Tout ce que tu as à faire, c'est de porter ce prospectus à l'imprimerie et de demander à Loimoqueuse Penn de m'en tirer une centaine d'exemplaires. Tiens ! Prends-le !" Il te glisse un morceau de papier froissé dans la main.~ */
  IF ~~ THEN REPLY #45695 /* ~"D'accord. J'aurais encore une ou deux questions…"~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Giltspur, le commissaire-priseur, m'a offert cinquante pièces si j'acceptais de porter un prospectus à Penn Loimoqueuse, l'imprimeur.~ */ GOTO 5
  IF ~~ THEN REPLY #45696 /* ~"Merci. Au revoir."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Giltspur, le commissaire-priseur, m'a offert cinquante pièces si j'acceptais de porter un prospectus à Penn Loimoqueuse, l'imprimeur.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6 6.4 7.4
  SAY #45697 /* ~"C'est fait ? Fantastique ! Je savais que tu étais l'homme de la situation. Tiens, porte ce message à Keldor de Durian, à la Fonderie. Je suis sûr qu'il sera heureux de le recevoir, tout comme tu le seras de ramasser les cent pièces que te rapportera cette course."~ */
  IF ~~ THEN REPLY #45698 /* ~"D'accord. J'aurais encore une ou deux questions…"~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Une fois que j'ai eu apporté le prospectus à Loimoqueuse Penn, Giltspur, le commissaire-priseur, m'a offert cent pièces pour délivrer un message à Keldor de Durian, à la Grande Fonderie.~ */ GOTO 5
  IF ~~ THEN REPLY #45699 /* ~"Merci. Au revoir."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Une fois que j'ai eu apporté le prospectus à Loimoqueuse Penn, Giltspur, le commissaire-priseur, m'a offert cent pièces pour délivrer un message à Keldor de Durian, à la Grande Fonderie.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.7 6.5 7.5
  SAY #45700 /* ~"Rapide, n'est-ce pas ? Merci, mon ami, merci. J'ai encore un dernier service à te demander, pour la somme princière de deux cents pièces ! Apporte juste ce prospectus à Barkis, le barman du Cadavre fumant, et demande-lui de le placarder quelque part. C'est un vieil ami à moi, qui sera heureux de me rendre service."~ */
  IF ~~ THEN REPLY #45701 /* ~"D'accord. J'aurais encore une ou deux questions…"~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Quand j'ai eu apporté son message à Keldor, Giltspur, le commissaire-priseur, m'a offert deux cents pièces pour que je délivre un prospectus à Barkis, au bar du Cadavre fumant.~ */ GOTO 5
  IF ~~ THEN REPLY #45702 /* ~"Merci. Au revoir."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Quand j'ai eu apporté son message à Keldor, Giltspur, le commissaire-priseur, m'a offert deux cents pièces pour que je délivre un prospectus à Barkis, au bar du Cadavre fumant.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8 6.6 7.6
  SAY #45703 /* ~"Je n'ai plus rien à te demander, mon ami. Encore merci !" Sur ces mots, il se retourne vers la foule et reprend sa tirade.~ */
  IF ~~ THEN REPLY #45704 /* ~"J'avais d'autres questions…"~ */ JOURNAL #67155 /* ~Après avoir apporté le prospectus au bar du Cadavre fumant, je suis retourné voir Giltspur, qui m'a dit qu'il n'avait plus de travail à me proposer.~ */ GOTO 5
  IF ~~ THEN REPLY #45705 /* ~"Alors, au revoir."~ */ JOURNAL #67155 /* ~Après avoir apporté le prospectus au bar du Cadavre fumant, je suis retourné voir Giltspur, qui m'a dit qu'il n'avait plus de travail à me proposer.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.9 6.7 7.7
  SAY #45706 /* ~"Toutes mes excuses, mon ami. Je n'ai rien d'autre à te proposer. Tu m'as déjà rendu tous les services possibles et imaginables." Il éclate de rire.~ */
  IF ~~ THEN REPLY #45707 /* ~"Dans ce cas, tu peux peut-être répondre à une ou deux autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #45708 /* ~"Merci, dans ce cas. Au revoir."~ */ EXIT
END
