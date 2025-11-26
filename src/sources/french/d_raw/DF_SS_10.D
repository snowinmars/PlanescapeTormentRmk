// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_10~

IF ~  !Global("S_Stone","AR0603",17)
!Global("S_Stone","AR0603",20)
~ THEN BEGIN 0 // from:
  SAY #34221 /* ~Voici une pierre d'un violet bleuâtre. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47562 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",17)
~ THEN BEGIN 1 // from:
  SAY #47563 /* ~C'est vers cette pierre bleu-violet que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'horreur naissante'.~ */
  IF ~~ THEN REPLY #47564 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47565 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47566 /* ~"Comment est-ce possible ?" te demandes-tu en observant le liquide rouge sombre. De l'autre côté de la table, le vieillard courbé t'adresse un sourire narquois. "Goûte-le", dit-il d'une voix qui te fait penser au bruissement des feuilles mortes sur la pierre. "Tu verras que tu ne seras pas déçu."~ */
  IF ~~ THEN REPLY #47567 /* ~Poursuis l'expérience.~ */ GOTO 3
  IF ~~ THEN REPLY #47568 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47569 /* ~Hochant la tête, tu soulèves le verre de cristal pour regarder la lumière au travers de la liqueur rouge sang. Tu as parcouru de nombreux kilomètres pour la boire, mais cela fait si longtemps que tu cherches le vieil homme que tu n'as nulle intention de te presser. Tu préfères savourer l'instant.~ */
  IF ~~ THEN REPLY #47570 /* ~Poursuis l'expérience.~ */ GOTO 4
  IF ~~ THEN REPLY #47571 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47572 /* ~Tu portes le verre à tes lèvres et tu inhales le bouquet du breuvage. Il est doux, léger, et pourtant, il te monterait presque à la tête. Tu as goûté des centaines d'alcools au cours de tes pérégrinations dans les plans, et tu as même rédigé plusieurs ouvrages sur leur goût, leur bouquet, la manière dont ils sont distillés. Mais ce breuvage était censé être légendaire. À ta connaissance, aucun homme ne l'a jamais goûté. Les histoires que l'on raconte à son sujet sont ridicules, car aucun alcool ne peut posséder un tel bouquet. Mais si elles véhiculent ne serait-ce qu'une fraction de la vérité, tu te prépares à une expérience gustative inoubliable.~ */
  IF ~~ THEN REPLY #47573 /* ~Poursuis l'expérience.~ */ GOTO 5
  IF ~~ THEN REPLY #47574 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47575 /* ~Enfin, tu goûtes le breuvage, mais du bout des lèvres seulement…~ */
  IF ~~ THEN REPLY #47576 /* ~Poursuis l'expérience.~ */ GOTO 6
  IF ~~ THEN REPLY #47577 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47578 /* ~Incroyable ! Indescriptible ! Tu dois te retenir de frémir de délice quand tes papilles gustatives communiquent leurs informations à ton cerveau. Rien, non, rien de ce que tu as goûté jusqu'ici n'arrive à la cheville de cette liqueur. Tu jettes un œil au vieil homme et, à ta grande surprise, tu t'aperçois que ton verre est vide ; tu l'as avalé d'une seule gorgée ! Tu t'essuies les yeux du revers de la main, sans trop savoir quand tu t'es mis à pleurer.~ */
  IF ~~ THEN REPLY #47579 /* ~Poursuis l'expérience.~ */ GOTO 7
  IF ~~ THEN REPLY #47580 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47581 /* ~"Des larmes de joie, hein ?" demande le vieillard en gloussant. "Tu vois qu'il est plaisant en bouche. Est-ce que tu en veux un peu plus ?" Il te sourit de nouveau. "Oui, oui… s'il te plaît."~ */
  IF ~~ THEN REPLY #47582 /* ~Poursuis l'expérience.~ */ GOTO 8
  IF ~~ THEN REPLY #47583 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47584 /* ~"Bien sûr," répond-il en remplissant ton verre. Malgré toutes tes bonnes résolutions, tu ne peux t'empêcher de le vider d'une seule traite. Tu passes le doigt sur ses parois, dans l'espoir de récolter une dernière goutte du divin breuvage. Plusieurs fois encore, le vieil homme te sert, et tu bois aussitôt comme si tu étais mort de soif, incapable de résister à un tel bouquet.~ */
  IF ~~ THEN REPLY #47585 /* ~Poursuis l'expérience.~ */ GOTO 9
  IF ~~ THEN REPLY #47586 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47587 /* ~Le vieillard glousse de nouveau. "Un tel breuvage… on serait prêt à tout pour en avoir, n'est-ce pas ?" demande-t-il, et tu opines du chef sans la moindre hésitation. "Oui, c'est vrai…" À ce moment, le sourire de ton vis-à-vis te paraît bien plus menaçant. Tu te sens peu à peu envahi par une horreur indicible, alors même que le breuvage rouge sang continue de t'appeler irrésistiblement…~ */
  IF ~~ THEN REPLY #47588 /* ~Poursuis l'expérience.~ */ GOTO 10
  IF ~~ THEN REPLY #47589 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47590 /* ~"Oui, oui…" poursuit-il, une lueur maléfique dans ses yeux jaunes. "Un homme est prêt à tout lorsqu'il a succombé à ce breuvage… même à commettre les crimes les plus atroces qui soient… comme tu t'en rendras bientôt compte, ô mon nouveau serviteur."~ */
  IF ~  Global("Sensation17","AR0603",0)
~ THEN REPLY #47591 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation17","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation17","AR0603",1)
~ THEN REPLY #47592 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",20)
~ THEN BEGIN 11 // from:
  SAY #47593 /* ~C'est vers cette pierre bleu-violet que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'lycanthropie'.~ */
  IF ~~ THEN REPLY #47594 /* ~Laisse les sensations affluer.~ */ GOTO 12
  IF ~~ THEN REPLY #47595 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47596 /* ~Brusquement conscient que l'heure est presque arrivée, tu bondis de ton lit et sors de ta ferme en courant pour aller trouver refuge dans les bois. Trébuchant dans le noir, tu finis par parvenir à une clairière éclairée par la lune, celle-là même que tu as découverte la semaine dernière. Tu te déshabilles en hâte, puis tu t'assieds dans l'herbe pour attendre.~ */
  IF ~~ THEN REPLY #47597 /* ~Poursuis l'expérience.~ */ GOTO 13
  IF ~~ THEN REPLY #47598 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #47599 /* ~Fermant les yeux, tu écoutes le chant des criquets, le croassement des crapauds en bordure du ruisseau tout proche, et le bruissement de l'herbe caressée par le vent. Que penseraient les gens s'ils voyaient à travers tes yeux et s'ils vivaient à ta place l'instant qui se prépare ? Bientôt, tu iras en ville et tu trouveras un prêtre capable de te délivrer de cette malédiction. Mais, en attendant, autant profiter de l'expérience au maximum. Tu te frottes les mains d'impatience et tu te fends d'un large sourire en t'imaginant, colosse roux et barbu assis, nu, dans l'herbe au milieu de la nuit.~ */
  IF ~~ THEN REPLY #47600 /* ~Poursuis l'expérience.~ */ GOTO 14
  IF ~~ THEN REPLY #47601 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #47602 /* ~Un frémissement te parcourt de la tête aux pieds et tes sens deviennent soudain bien plus aiguisés. Ton nez te communique toutes les senteurs environnantes : la terre humide, la transpiration poissant les habits dont tu t'es débarrassé, l'opossum effrayé qui s'accroche à son arbre, dans ton dos…~ */
  IF ~~ THEN REPLY #47603 /* ~Poursuis l'expérience.~ */ GOTO 15
  IF ~~ THEN REPLY #47604 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #47605 /* ~Tu ouvres les yeux pour regarder tes avant-bras. La clarté de la lune te permet de discerner un frémissement sous ton épiderme. Puis celui-ci est pris de véritables spasmes et des touffes d'épais poils bruns en sortent. Dans un concert de craquements, ton squelette se modifie pour prendre en compte la courbure de ton dos et l'élargissement de tes épaules. La transformation est gênante, mais nullement douloureuse. Tes muscles, ta masse musculaire tout entière, doublent, triplent, et continuent encore de gonfler.~ */
  IF ~~ THEN REPLY #47606 /* ~Poursuis l'expérience.~ */ GOTO 16
  IF ~~ THEN REPLY #47607 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47608 /* ~Fasciné par la transformation, tu vois tes doigts rentrer dans tes mains, puis celles-ci enfler pour devenir des pattes velues et munies de grandes griffes noires. La nuit semble soudain s'illuminer lorsque tes yeux s'accommodent à l'obscurité. Tu distingues un épais museau, que tu touches délicatement, sans pouvoir t'empêcher de glousser. La prochaine fois, il faudra que tu te regardes dans un miroir ou un plan d'eau quand la malédiction se déclarera. De cette manière, tu pourras voir ton visage perdre ses traits habituels pour devenir une tête d'ours.~ */
  IF ~~ THEN REPLY #47609 /* ~Poursuis l'expérience.~ */ GOTO 17
  IF ~~ THEN REPLY #47610 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #47611 /* ~Bien vite, tu ne penses plus à rien d'autre que tes instincts. Manger serait une bonne idée. Oui… peut-être auras-tu la chance de trouver un poisson-chat bien gras dans le ruisseau. Avec un grognement, tu te lèves lourdement et tu te diriges vers le cours d'eau à quatre pattes…~ */
  IF ~  Global("Sensation20","AR0603",0)
~ THEN REPLY #47612 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation20","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 18
  IF ~  Global("Sensation20","AR0603",1)
~ THEN REPLY #47613 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0 17.0
  SAY #47614 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47615 /* ~Pars.~ */ EXIT
END
