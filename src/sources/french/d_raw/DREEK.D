// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DREEK~

IF ~  Global("Reekwind","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~Cet homme te toise de l'étrange regard fixe d'un insecte. Il a des yeux *énormes*… si énormes qu'ils ont l'air prêts à jaillir de ses orbites pour rouler sur les pavés. À ton approche, il se met à dodeliner de la tête comme un oiseau… et tu perçois soudain la puanteur d'urine et de matières fécales qui émane de lui.~ */
  IF ~~ THEN REPLY #9339 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #11329 /* ~Laisse l'homme en haillons tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~Il renifle, s'essuie le nez sur sa manche, puis ouvre la bouche, montrant des gencives noircies. "Hé ! m'sieur ! une 'tite pièce pour une histoire ?" Il a une haleine pestilentielle, comme s'il stockait de la viande pourrie dans sa bouche. "Une 'tite pièce pour une histoire ?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #11330 /* ~"Pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0
  SAY #11276 /* ~L'homme se racle une gorge pleine de morve. "Les noms, les noms… qui tu es, qui tu es…" Un tic le fait dodeliner de la tête à chaque fois qu'il se répète. "Les noms… dangereux, dangereux." Il baisse les yeux vers le sol et remue la poussière du bout du pied.~ */
  IF ~~ THEN REPLY #11331 /* ~"Dangereux ?"~ */ DO ~SetGlobal("Reekwind","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #11332 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11277 /* ~"Savoir un nom, en avoir un, c'est toujours des ennuis." Il lève les yeux vers toi. "On m'a donné un surnom, et je ne l'ai pas demandé. Pestilent, qu'on m'appelle." Une fois de plus, tu notes son haleine puante et l'odeur d'urine et de matières fécales qui l'environne. "Un surnom, un surnom."~ */
  IF ~~ THEN REPLY #11333 /* ~"Un… nom approprié."~ */ GOTO 4
  IF ~~ THEN REPLY #11334 /* ~"Hé. C'est un nom qui te va bien."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Reekwind_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #11335 /* ~"C'est ton vrai nom ?"~ */ GOTO 4
  IF ~~ THEN REPLY #11336 /* ~"Je… vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #11278 /* ~"Pas mon vrai nom, mon vrai nom." Il tressaute chaque fois qu'il dit le mot *nom*. "Un vrai nom, c'est dangereux, ça donne aux autres du pouvoir sur toi." Il te regarde de ses grands yeux et lève un doigt pour t'admonester. "Tiens ton nom secret, garde-le pour toi, ne le donne jamais."~ */
  IF ~~ THEN REPLY #11337 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 5
  IF ~~ THEN REPLY #11338 /* ~"Je… vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #11279 /* ~"Un nom, c'est comme l'odeur, on peut te… suivre à la trace." Il tousse, si fort que ses yeux manquent de jaillir de leurs orbites. Sa quinte semble lui dénouer les entrailles, car il lâche un vent, comme pour souligner ce qu'il a à dire. "Quelqu'un qui connaît un vrai nom a du pouvoir." Il se lèche les lèvres. "Le pouvoir de faire *mal*."~ */
  IF ~~ THEN REPLY #11339 /* ~"Je ne connais pas mon vrai nom."~ */ JOURNAL #61613 /* ~J'ai rencontré un conteur malade dans la Ruche. Cet homme, qui dégage une puanteur insoutenable, se fait appeler 'Pestilent'. Il m'a parlé du danger que représentaient les noms, car ils permettent d'être vu, suivi, traqué, même. Sans que je sache pourquoi, ses paroles m'ont glacé les sangs. Est-ce pour cela que je n'ai pas de nom ?~ */ GOTO 6
  IF ~~ THEN REPLY #11340 /* ~"Je… vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #11280 /* ~Ses yeux s'écarquillent encore davantage, au point que tu te sens mal à l'aise. "Alors tu es béni, béni. Reste anonyme, et tu seras tel un esprit sur les plans. On ne pourra pas te suivre, ni te pister, ni te voir, ni te trouver." Un claquement de langue. "Un nom, un surnom… ça permet à d'autres de te retrouver et de te faire mal."~ */
  IF ~~ THEN REPLY #11341 /* ~"As-tu été blessé ?"~ */ GOTO 7
  IF ~~ THEN REPLY #11342 /* ~"Je… vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.1
  SAY #11281 /* ~Pestilent dodeline de la tête, et se gratte. "J'ai donné mon nom une fois, une fois, une seule fois." Ses yeux se voilent, comme s'il évoquait un souvenir pénible, puis il te jette un regard gêné. "Te narrer cette histoire je le peux, mais d'abord trois cuivres je veux." Il sourit lorsqu'il prononce le mot *cuivres*, et tu reçois son haleine puante de plein fouet.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11343 /* ~"Très bien. Voilà trois pièces de cuivre."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11344 /* ~Mensonge : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11345 /* ~Vérité : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11346 /* ~"Pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.0 17.3
  SAY #11282 /* ~Pestilent prend la pose, regarde à droite, à gauche, puis te fait face. Son visage se durcit, il grogne et lâche un vent. Tu manques de t'évanouir, mais il n'y prend pas garde. "Maudit, j'étais ! Parcourant les quartiers avec morgue…" Il se redresse, le nez en l'air, et marche sur place, hochant la tête à l'adresse d'invisibles passants.~ */
  IF ~~ THEN REPLY #11347 /* ~Écoute.~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
~ JOURNAL #63974 /* ~Pestilent m'a dit qu'il n'a pas toujours été le rebut humain malodorant qu'il est devenu. Apparemment, son chemin a croisé celui de quelqu'un qui ne l'appréciait guère et il s'est retrouvé maudit. Comme son ennemi connaissait le vrai nom de Pestilent, il a réussi à rendre la malédiction permanente. À en juger par la description de Pestilent, le coupable serait un homme gras et chauve ressemblant à une 'citrouille'… ce qui veut sans doute dire qu'il aime s'habiller en orange. Nul doute qu'il vit dans le Haut Quartier, où Pestilent résidait autrefois.~ */ GOTO 9
  IF ~~ THEN REPLY #11348 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11349 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11283 /* ~Il se fige, les deux poings sur les hanches. "J'ai croisé la route d'un dérouté. On aurait dit une citrouille ! Et ses graines, des maléfices !" Pestilent sort alors son ventre pour paraître plus gros, lisse ses cheveux gras d'une paume sale jusqu'à paraître presque chauve, et commence à tambouriner sur son "gros" ventre, tout en faisant le tour de l'endroit où se tenait son 'personnage de grand bourgeois collet monté'. "Il marmonnait des maléfices." À gestes vifs, Pestilent lance une malédiction invisible sur le 'personnage collet monté'.~ */
  IF ~~ THEN REPLY #11364 /* ~Écoute.~ */ GOTO 10
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11366 /* ~"Attends une minute… J'ai *rencontré* la personne qui t'a maudit. Son nom est Sensdumeurtre, c'est ça ?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Apparemment, Pestilent aurait été maudit par Méli Sensdumeurtre.~ */ GOTO 11
  IF ~~ THEN REPLY #11368 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11370 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0 12.0
  SAY #11284 /* ~"Il connaissait mon nom, par ma faute, je l'avais dit un jour, oui, et ça a suffi, mal m'en a pris !" Il se redresse de nouveau pour incarner son 'personnage de grand bourgeois' qui soudain se contracte. Pestilent lâche un vent sonore, puis expire, remplissant l'air de son haleine fétide. "Maudit j'ai été, et voilà que je pue, que je pète, et pire encore ! Je viens ici pour raconter des histoires, quelques histoires, que faire d'autre ? Pestilent, voilà mon nom, mon faux nom, mon surnom…"~ */
  IF ~~ THEN REPLY #11372 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 15
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11375 /* ~"Attends une minute… J'ai *rencontré* la personne qui t'a maudit. Son nom est Sensdumeurtre, c'est ça ?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Apparemment, Pestilent aurait été maudit par Méli Sensdumeurtre.~ */ GOTO 11
  IF ~~ THEN REPLY #11378 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 15.7
  SAY #11285 /* ~À l'énoncé de son nom, Pestilent gonfle ses joues, ses yeux menacent de jaillir de leurs orbites, et soudain il vomit par terre à ses pieds. Tout son corps frissonne, secoué de spasmes et de quintes de toux… au bout d'un long moment, il hoche la tête tant bien que mal et trace un demi-cercle sur son cœur.~ */
  IF ~~ THEN REPLY #11380 /* ~"Que s'est-il passé lorsque tu l'as… rencontré ?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 10
  IF ~~ THEN REPLY #11382 /* ~"Triste histoire. J'ai d'autres questions à te poser…"~ */ GOTO 15
  IF ~  Dead("Jumble")
~ THEN REPLY #11384 /* ~"Il est mort, tu sais."~ */ GOTO 13
  IF ~  !Dead("Jumble")
~ THEN REPLY #11386 /* ~"Je pourrais peut-être le convaincre de lever le sort, tu sais."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Reekwind_1","GLOBALGood",1)
~ GOTO 12
  IF ~~ THEN REPLY #11389 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.3
  SAY #11286 /* ~L'espoir, puis la tristesse, se lit sur sa figure. "Des promesses, toujours des promesses…" Il pousse un soupir gargouillant que ponctue un hoquet puant. "Essaie si tu veux, si tu veux…"~ */
  IF ~~ THEN REPLY #11391 /* ~"Que s'est-il passé lorsque tu l'as… rencontré ?"~ */ GOTO 10
  IF ~~ THEN REPLY #11411 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #11412 /* ~"Je vais immédiatement aller le voir à ce sujet. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #11287 /* ~Pestilent pousse un soupir gargouillant que ponctue un hoquet puant. "Tant pis, alors, tant pis…"~ */
  IF ~~ THEN REPLY #11413 /* ~"J'ai d'autres questions à te poser…"~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ GOTO 15
  IF ~~ THEN REPLY #11414 /* ~"Au revoir."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ EXIT
END

IF ~  OR(2)
Global("Reekwind","GLOBAL",1)
Global("reekwind","global",10)
~ THEN BEGIN 14 // from:
  SAY #11288 /* ~Lorsqu'il te voit, Pestilent dodeline de la tête et te regarde de ses yeux immenses. Tu perçois de nouveau la puanteur d'urine et de matières fécales qui émane de lui.~ */
  IF ~~ THEN REPLY #11415 /* ~"Bonjour, Pestilent. J'ai des questions à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #11416 /* ~Laisse Pestilent tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1 7.2 8.1 9.2 10.0 11.1 12.1 13.0 14.0 16.1 16.2 18.1 18.2 19.1 20.1 21.1 22.1 23.1 23.2 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 32.0 33.1 33.2 34.1 35.1 36.1 37.1 38.1 39.0 40.1 41.1 42.1 43.1 44.3 45.0 47.0
  SAY #11289 /* ~"Des questions, des questions…" Pestilent se penche pour te fixer de ses yeux immenses, l'air méfiant. "Des réponses, des réponses… ?"~ */
  IF ~~ THEN REPLY #11417 /* ~"Qui es-tu déjà ?"~ */ GOTO 2
  IF ~~ THEN REPLY #11418 /* ~"Que t'est-il arrivé ?"~ */ GOTO 7
  IF ~~ THEN REPLY #11419 /* ~"J'aimerais entendre une histoire."~ */ GOTO 16
  IF ~~ THEN REPLY #11420 /* ~"Tu peux me parler de cette région ?"~ */ GOTO 18
  IF ~  Global("Pharod","GLOBAL",0)
Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #11421 /* ~"Peux-tu me dire où je pourrais trouver un certain Pharod ?"~ */ GOTO 33
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #11422 /* ~"Peux-tu me reparler de Pharod ?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11423 /* ~"J'ai perdu un journal. Tu n'en aurais pas vu un ?"~ */ GOTO 32
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11424 /* ~"J'ai trouvé l'homme qui t'a lancé un maléfice à la Salle des Fêtes. Il s'appelle Sensdumeurtre."~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 11
  IF ~~ THEN REPLY #11425 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY #11290 /* ~"Te narrer cette histoire je le peux, mais d'abord trois cuivres je veux " Il se fend d'un sourire, et tu reçois son souffle nauséabond en plein visage.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11426 /* ~"Très bien. Voilà trois pièces de cuivre."~ */ DO ~TakePartyGold(3)
~ GOTO 17
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11427 /* ~Mensonge : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11428 /* ~Vérité : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11429 /* ~"Pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11291 /* ~Il prend la pièce, la mordille et l'avale ! "La meilleure bourse, la meilleure qui soit, l'estomac, l'estomac." Un soupir. "Une histoire, une histoire…" Il émet un claquement de langue, et se gratte sous ses haillons.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",0)
~ THEN REPLY #11430 /* ~Attends qu'il choisisse une histoire.~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",0)
~ THEN REPLY #11431 /* ~Attends qu'il choisisse une histoire.~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11432 /* ~Attends qu'il choisisse une histoire.~ */ GOTO 24
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
~ THEN REPLY #11433 /* ~"Je voudrais que tu me racontes comment on t'a lancé un maléfice."~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11434 /* ~"Je voudrais que tu me racontes l'histoire de l'Allée des Angles dangereux."~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #11453 /* ~"Je voudrais entendre l'histoire d'Ignus."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatGT(Protagonist,13,INT)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11457 /* ~"Je veux entendre l'histoire de l'homme sans nom et sans mémoire qui est venu dans cette cité et que le conteur maudit a mis en garde sur le danger des noms."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11459 /* ~"Je veux entendre l'histoire de l'homme sans nom et sans mémoire qui est venu dans cette cité et que le conteur maudit a mis en garde sur le danger des noms."~ */ GOTO 40
  IF ~~ THEN REPLY #11463 /* ~"Pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY #11292 /* ~"La Ruche, la Ruche… Te narrer cette histoire je le peux, mais d'abord trois cuivres je veux." Il émet un claquement de langue et grogne comme un porc.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11468 /* ~"Très bien. Voilà trois pièces de cuivre."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11479 /* ~Mensonge : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11480 /* ~Vérité : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11481 /* ~"Pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.4 18.0
  SAY #11293 /* ~"Vers l'aiguille, l'aiguille…" Il pointe le doigt sur sa gauche, vers la ruelle incendiée dans le lointain. "L'Allée des *Angles Dangereux*." Il se tortille pour imiter un des bâtiments réduits à l'état de squelette. "Autrefois, il n'y avait pas d'angles, ni de feu, elle vivait, elle est morte."~ */
  IF ~~ THEN REPLY #11482 /* ~Écoute.~ */ GOTO 20
  IF ~~ THEN REPLY #11483 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11484 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #11294 /* ~"Les flammes, le feu !" Il lève les bras au ciel et agite les doigts pour mimer les flammes. "La ruelle brûle, des torrents de fumée, de la cendre… à la fin restent les *squelettes* des maisons, les os des maisons mortes, les os des maisons mortes. Des angles… partout, partout des angles."~ */
  IF ~~ THEN REPLY #11485 /* ~Écoute.~ */ JOURNAL #63976 /* ~Pestilent m'a raconté l'histoire de l'allée des Angles Dangereux, la rue toute proche de celle où il crèche. Il m'a dit que c'était autrefois une rue comme les autres, jusqu'au soir où un grand incendie a mis le feu à tous les bâtiments… et à leurs habitants. L'allée tire son nom des carcasses noircies et informes des anciennes maisons. Il semblerait que plusieurs groupes de malfrats s'y soient installés.~ */ GOTO 21
  IF ~~ THEN REPLY #11486 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11487 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11295 /* ~Il se courbe, baisse le ton. Une fois de plus, sa puanteur te saute à la figure. "Dangereux, là, des méchants y ont établi leur guitoune, leur guitoune." Il s'incline, et lâche un petit vent, tel une sonnerie de trompette. "C'est l'histoire d'une rue qui devient l'Allée des Angles Dangereux."~ */
  IF ~~ THEN REPLY #11488 /* ~"Comment le feu a-t-il pris ?"~ */ DO ~SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #11489 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11490 /* ~"Je vois… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #11296 /* ~Il trace un demi-cercle sur son cœur. "L'œuvre d'un homme. D'un monstre. D'un homme que même les *fiélons* admirent."~ */
  IF ~~ THEN REPLY #11491 /* ~"Qui ?"~ */ GOTO 23
  IF ~~ THEN REPLY #11492 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11493 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11297 /* ~"L'histoire d'un sorcier, pleine de bruit et d'incendie, de désir et de tristesse… Te narrer cette histoire je le peux, mais d'abord trois cuivres je veux." Il siffle, puis caquète de telle sorte que tu penses à un feu. "Un récit dangereux, un récit dangereux."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11494 /* ~"Très bien. Voilà trois pièces de cuivre."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
~ GOTO 24
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11495 /* ~Mensonge : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11496 /* ~Vérité : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11497 /* ~"Pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.2 17.5 23.0
  SAY #11298 /* ~"Il était une fois un sorcier, non point un simple apprenti, mais un mage *puissant*." Pestilent joint les mains en signe de respect, et te dédie un sourire mauvais. "Il brûlait par la Magie, et la Magie l'a brûlé."~ */
  IF ~~ THEN REPLY #11498 /* ~Écoute-le.~ */ GOTO 25
  IF ~~ THEN REPLY #11499 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11500 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #11299 /* ~"On l'appelait Ignus, un nom que l'on a respecté, puis craint, puis détesté, puis châtié." Pestilent exhale bruyamment, et griffe l'air, et siffle, sans doute pour imiter 'Ignus'.~ */
  IF ~~ THEN REPLY #11501 /* ~Écoute-le.~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #11502 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11503 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11300 /* ~"Ignus avait été instruit par un des derniers grands mages. Cet apprentissage lui en avait appris, appris… mais il ne savait rien." Pestilent secoue la tête d'un air peiné. "Au fond de son cœur noir, tout noir, noir comme le charbon, un feu brûlait, un feu brûlait, *affamé*." Il fait mine de se griffer la poitrine, comme s'il souffrait. "Et cette faim est devenue sienne. Ignus voulait voir les plans *brûler*."~ */
  IF ~~ THEN REPLY #11504 /* ~Écoute-le.~ */ GOTO 27
  IF ~~ THEN REPLY #11505 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11506 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11301 /* ~"Une nuit…" Pestilent se courbe et se met en marche vers la ruelle, un rictus de démence sur le visage. "Ignus est venu dans la ruelle qui devait devenir l'Allée des Angles, et il a laissé jaillir le feu de ses yeux et le feu de son cœur." Il désigne l'Allée et lève soudain les deux bras en l'air tout en mimant sans bruit des cris et des rires.~ */
  IF ~~ THEN REPLY #11507 /* ~Écoute-le.~ */ GOTO 28
  IF ~~ THEN REPLY #11508 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11509 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #11302 /* ~"Les chairs fondaient, les gens fondaient, et Ignus riait, riait…" Pestilent s'effondre, le corps secoué de spasmes d'une souffrance imaginée. "Le mal, le mal était fait, et on ne l'oubliera jamais, on ne l'oubliera jamais." Il se relève, se courbe, regarde à gauche, regarde à droite, et se met à marmonner, comme s'il tenait une réunion secrète avec quelque conspirateur. "Il fallait agir, agir…"~ */
  IF ~~ THEN REPLY #11510 /* ~Écoute-le.~ */ GOTO 29
  IF ~~ THEN REPLY #11511 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11512 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11303 /* ~Il se dresse de toute sa hauteur, la mine sévère. "On a décidé d'un châtiment, et, tous, ils sont venus : rebouteux, sages-femmes, voyants, astrologues, tous ceux qui possédaient la moindre parcelle de magie… ils sont venus, pour punir Ignus. Pris séparément, ils n'étaient que des mouches…" Il émet un bourdonnement. "Ensemble, ils étaient dangereux, dangereux."~ */
  IF ~~ THEN REPLY #11513 /* ~Écoute-le.~ */ GOTO 30
  IF ~~ THEN REPLY #11514 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11515 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11304 /* ~Il lève les bras… "Ils ont capturé Ignus, exaucé son vœu…" Ses mains s'agitent comme s'il jetait un sort. "Il voulait brûler, ils ont exaucé son vœu, utilisé son cher désir pour alimenter leur sort, et fait de son corps un portail vers le Plan Élémentaire du Feu - ils comptaient ainsi le tuer, le tuer…"~ */
  IF ~~ THEN REPLY #11516 /* ~Écoute-le.~ */ JOURNAL #63977 /* ~Pestilent m'a parlé d'Ignus, le sorcier fou responsable de la destruction de l'allée des Angles Dangereux. Il m'a appris qu'Ignus était un puissant sorcier qui avait reçu son enseignement de l'un des derniers grands mages. Ignus était consumé par son Art, qui le poussait par moment à mettre le feu à tout et tout le monde. Une nuit, il libéra son pouvoir sur l'une des rues de la Ruche, qu'il transforma en brasier. Sans que l'on sache s'ils ont agi ainsi pour se venger ou par désir de justice, plusieurs mages moindres de la Ruche unirent leur talent pour transformer le corps d'Ignus en un conduit à destination du Plan Élémentaire du Feu. Ils espéraient que la douleur tuerait Ignus, mais cela n'a pas été le cas. Apparemment, elle l'a juste fait sombrer dans un profond sommeil. ~ */ GOTO 31
  IF ~~ THEN REPLY #11517 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11518 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11305 /* ~"Ils ont échoué, échoué…" Pestilent lâche un nouveau vent, comme pour souligner l'échec des magiciens. "Ignus vivait, il vivait, il dormait dans un linceul de flammes, de flammes, ravi de brûler. Jamais il n'avait été aussi heureux…" Il ferme les yeux, s'entoure de ses bras et se met à tourner sur lui-même. "Il brûle… brûle sans cesse…" Pestilent ouvre les yeux tout à coup. "Un jour il s'éveillera, et les plans *brûleront* !"~ */
  IF ~~ THEN REPLY #11519 /* ~"Triste histoire. J'ai d'autres questions à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #11520 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 15.6
  SAY #11306 /* ~Il lâche un vent, se gratte les bras, réfléchit pendant un long moment, puis secoue la tête. "Je n'ai pas vu de journal, pas vu de journal."~ */
  IF ~~ THEN REPLY #11521 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 15
  IF ~~ THEN REPLY #11522 /* ~"Alors, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 15.4 15.5
  SAY #11307 /* ~Pestilent se courbe tout à trac, te regarde par en-dessous, puis te tourne autour en traînant la jambe. "Un roi ! Noble récit, noble récit ! Te narrer cette histoire je le peux, mais d'abord trois cuivres je veux…"~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11523 /* ~"Très bien. Voilà trois pièces de cuivre."~ */ DO ~TakePartyGold(3)
~ GOTO 34
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11544 /* ~Mensonge : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11548 /* ~Vérité : "Je n'ai pas autant sur moi. Mais j'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11552 /* ~"Pas aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11308 /* ~Il reste courbé, à te regarder. "Il était une fois Pharod, un homme respecté, un homme qui avait des objectifs et *bien placé*. Et tout cela s'est réduit à néant." Pestilent plisse les yeux et lâche un vent qui emplit l'air d'une puanteur à soulever l'estomac. "Réduit à néant… réduit à du vent."~ */
  IF ~~ THEN REPLY #11554 /* ~Écoute.~ */ GOTO 35
  IF ~~ THEN REPLY #11556 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11558 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #11309 /* ~"Menteur, tricheur, truqueur, tel était Pharod." Pestilent se penche, comme sur un bureau. Il 'écrit' un moment et, soudain, se fige, terrifié. "Mais un jour, il s'est aperçu qu'à force d'égarer les autres, il s'était perdu !"~ */
  IF ~~ THEN REPLY #11560 /* ~Écoute.~ */ GOTO 36
  IF ~~ THEN REPLY #11563 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11564 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11310 /* ~"Il mentait tellement qu'à sa mort il irait dans un endroit horrible…" Il secoue la tête avec tristesse, puis se voûte de nouveau et darde des regards dans toutes les directions. "Il n'en était pas question ! Il avait berné les autres, il bernerait sa destinée, aussi !"~ */
  IF ~~ THEN REPLY #11567 /* ~Écoute.~ */ GOTO 37
  IF ~~ THEN REPLY #11569 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11572 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #11311 /* ~"Il a lu, des brassées de livres, et consulté des voyants…" Pestilent se met à faire les cent pas, la main en visière comme pour regarder au loin. "… et ils lui ont dit qu'ils ne trouverait de quoi berner son destin que dans les ordures." Il lâche encore un vent, puis tousse violemment. "Ils ont peut-être menti…"~ */
  IF ~~ THEN REPLY #11575 /* ~Écoute.~ */ DO ~SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ JOURNAL #63978 /* ~Pestilent m'a raconté l'histoire de Pharod. Apparemment, ce dernier faisait autrefois partie de "l'aristocratie" de Sigil, mais il utilisait son statut pour contourner la loi, voire faire condamner des innocents. Ses actes étaient si malfaisants que son âme se retrouva promise aux Plans Inférieurs. Quand il en prit conscience, il fut terrifié et chercha le moyen d'échapper à son destin. Il aurait alors consulté plusieurs devins, qui lui auraient dit qu'il pourrait se sauver dans les déchets de Sigil. Aussitôt, Pharod a abandonné son poste pour devenir le roi des Récupérateurs. Aujourd'hui, il envoie sans cesse ses hommes à la recherche de ce qui sauvera son âme… mais il ignore de quoi il s'agit.~ */ GOTO 38
  IF ~~ THEN REPLY #11576 /* ~"En fait, je n'ai pas le temps d'écouter cette histoire pour le moment. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11577 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #11312 /* ~Il se dresse de toute sa hauteur et entreprend de se dépouiller d'habits imaginaires. À chaque 'habit' qu'il jette, il se voûte de plus en plus. "Pharod a renoncé à sa position, à ses objectifs et pris un nouveau titre…" Pestilent s'interrompt, te sourit d'un air rusé et triture ses haillons. "Roi des Chiffons ! Il allait régner sur les ordures, ordonner à ses sujets de les passer au peigne fin et de lui trouver ce dont il avait besoin." Il secoue la tête. "Et il cherche encore, encore…"~ */
  IF ~~ THEN REPLY #11578 /* ~"Euh… Sais-tu où je pourrais le trouver ?"~ */ GOTO 39
  IF ~~ THEN REPLY #11579 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11581 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #11313 /* ~Il secoue la tête. "Il vit dans les chiffons et les ordures. C'est là que tu le trouveras, trouveras…"~ */
  IF ~~ THEN REPLY #11582 /* ~"J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11584 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 17.6 17.7
  SAY #11314 /* ~Pestilent cesse de s'agiter et de se gratter pour te dévisager. "Ce récit… ce récit ne coûte rien, car il ne vaut rien, et il faut reconnaître que c'est une triste histoire."~ */
  IF ~~ THEN REPLY #11586 /* ~"Néanmoins, je l'écouterai."~ */ GOTO 41
  IF ~~ THEN REPLY #11587 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11589 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #11315 /* ~"Où commencerait-elle…?" Pestilent grogne, et lâche un rot qui t'amène les larmes aux yeux. Il a l'air de réfléchir.~ */
  IF ~~ THEN REPLY #11591 /* ~"Ça commence avec un homme qui se réveille à la Morgue, qu'on croit mort, mais dont en vérité seuls les souvenirs sont morts."~ */ GOTO 42
  IF ~~ THEN REPLY #11593 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11596 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #11316 /* ~Pestilent hoche la tête, te dévisage et se met à se gratter violemment, comme s'il voulait s'infliger des cicatrices. "Mort sans être mort… sans souvenirs, sans souvenirs, sans nom…"~ */
  IF ~~ THEN REPLY #11598 /* ~"Il s'enfuit de la Morgue, entre dans la Ruche et parle avec un homme qui a laissé échapper son vrai nom et qui l'a regretté."~ */ GOTO 43
  IF ~~ THEN REPLY #11599 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11600 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #11317 /* ~Tes mots semblent avoir sur lui un effet hypnotique. "Oui, oui, il y a du danger dans un nom…" Il s'interrompt. "Celui à qui parle le sans-nom constitue peut-être une mise en garde contre le danger des noms." Il paraît y réfléchir. "Celui qui a oublié son nom est peut-être avantagé…?"~ */
  IF ~~ THEN REPLY #11601 /* ~"Vraiment ? Est-il préférable de supporter la vérité et toutes ses conséquences ou de rester ignorant ? Lequel des deux hommes est le mieux loti ?"~ */ GOTO 44
  IF ~~ THEN REPLY #11602 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11603 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11318 /* ~Pestilent tousse, puis éjecte un crachat glaireux et verdâtre avant de se tourner de nouveau vers toi. "C'est ta question, c'est ton histoire…" Il poursuit, lentement : "C'est à *toi* de répondre."~ */
  IF ~~ THEN REPLY #11604 /* ~"Je veux entendre ta réponse."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 45
  IF ~~ THEN REPLY #11605 /* ~"Le mieux loti, c'est l'homme qui connaît son vrai nom parce qu'il sait qui il est, ce qui le rend plus fort."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11607 /* ~"Le mieux loti, c'est l'homme qui a oublié son vrai nom parce que personne, y compris lui-même, ne peut rien contre lui. On peut toujours retrouver l'homme qui a un nom, alors que celui qui n'en a pas ne laisse aucune trace derrière lui."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",3)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11610 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11611 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #11319 /* ~Il secoue la tête. "Ma réponse, ma réponse…" Il tousse encore, ce qui te vaut un nouvel assaut de relents nocif, puis émet un claquement de langue, comme pour chasser un mauvais goût. "Voilà ma réponse : ce sont tous deux des idiots, mais un seul le sait."~ */
  IF ~~ THEN REPLY #11613 /* ~"Très bien. J'ai d'autres questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11614 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 44.2
  SAY #11320 /* ~Il réfléchit en se pourléchant les lèvres. Il dodeline de la tête et se met à marmonner, comme s'il en discutait avec lui-même. Enfin, il se tourne de nouveau vers toi. "C'est une histoire, une histoire dont la morale dit la moralité du conteur." Il tousse, et crache un globe glaireux sur les pavés. "Une histoire qui se finira un jour, un jour…?"~ */
  IF ~~ THEN REPLY #11615 /* ~Vérité : "Peut-être. Ce qui doit arriver arrivera, et peut-être que cette histoire n'a pas de réponse."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_2","GLOBALLaw",-2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11616 /* ~Vérité : "Il doit y avoir une réponse, et chaque histoire a une fin. Il ne peut pas en être autrement."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_2","GLOBALLaw",2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11617 /* ~Vérité : "Je ne sais pas. Ce n'est pas à moi de décider."~ */ DO ~GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 46.2
  SAY #11321 /* ~Il se gratte longuement, en hochant la tête, puis il fouille sa robe et, d'une pichenette, te jette une piècette. "Pour ce récit : un cuivre fendu." Il t'adresse un méchant sourire. "Pas plus, car l'histoire n'est pas terminée."~ */
  IF ~~ THEN REPLY #11618 /* ~"C'est un prix équitable. Bon, très bien, tu peux peut-être répondre à quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #11619 /* ~"Au revoir."~ */ EXIT
END

IF ~  GlobalLT("reekwind","global",10)
GlobalGT("Reekwind","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11322 /* ~Tu vois Pestilent… ses yeux ont repris leur taille normale, et ses spasmes se sont calmés. Il sourit, et paraît bien plus propre qu'auparavant.~ */
  IF ~~ THEN REPLY #11620 /* ~"Bonjour, Pestilent. J'ai des questions à te poser…"~ */ GOTO 49
  IF ~~ THEN REPLY #11621 /* ~Laisse Pestilent tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #11323 /* ~Il te regarde, stupéfait. "C'est… fini. Ça s'est arrêté, comme ça." Il claque des doigts et baisse les yeux sur lui. "Par les Puissances, je…" Il s'esclaffe. "Je me sens… *propre*, de nouveau."~ */
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11622 /* ~"Ça me fait plaisir d'entendre ça. Méli ne voulait pas lever le sort, mais je le lui ai soutiré."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11623 /* ~"Ça me fait plaisir de savoir que tu vas bien."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11624 /* ~"Ça me fait plaisir d'entendre ça. Méli ne voulait pas lever le sort, mais je le lui ai soutiré."~ */ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11625 /* ~"Ça me fait plaisir de savoir que tu vas bien."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2 49.3
  SAY #11324 /* ~"Merci, monsieur…" Il rougit. "Je n'ai pas de quoi vous payer, mais je vous garde toute ma reconnaissance…" Il hausse les épaules. "Pour ce qu'elle vaut." Sourcils froncés, il se redresse. "Tous ceux qui m'écouteront sauront votre gentillesse."~ */
  IF ~  Global("Reekwind","GLOBAL",3)
~ THEN REPLY #11626 /* ~"En fait, reste-t-il des histoires que tu ne m'as pas encore racontées ? Ça suffirait à me payer…"~ */ DO ~SetGlobal("Reekwind","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #11627 /* ~"Merci, Pestilent. Ça m'a fait plaisir de t'aider."~ */ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #11325 /* ~"Bien sûr, bien sûr !" Il regarde alentour… "Mais j'en ai assez de raconter mes histoires… auriez-vous de quoi écrire ?"~ */
  IF ~~ THEN REPLY #11628 /* ~"J'ai un journal ici."~ */ JOURNAL #63979 /* ~Pour me remercier de l'avoir aidé à se débarrasser de la malédiction qu'il traînait, Pestilent a inclus toutes ses histoires à mon journal :

La première est celle de l'allée des Angles Dangereux, la rue toute proche de celle où il crèche. Il m'a dit que c'était autrefois une rue comme les autres, jusqu'au soir où un grand incendie a mis le feu à tous les bâtiments… et à leurs habitants. L'allée tire son nom des carcasses noircies et informes des anciennes maisons. Il semblerait que plusieurs groupes de malfrats s'y soient installés.

La deuxième est celle d'Ignus, le sorcier fou responsable de la destruction de l'allée des Angles Dangereux. Il m'a appris qu'Ignus était un puissant sorcier qui avait reçu son enseignement de l'un des derniers grands mages. Ignus était consumé par son Art, qui le poussait par moment à mettre le feu à tout et tout le monde. Une nuit, il libéra son pouvoir sur l'une des rues de la Ruche, qu'il transforma en brasier. Sans que l'on sache s'ils ont agi ainsi pour se venger ou par désir de justice, plusieurs mages moindres de la Ruche unirent leur talent pour transformer le corps d'Ignus en un conduit à destination du Plan Élémentaire du Feu. Ils espéraient que la douleur tuerait Ignus, mais cela n'a pas été le cas. Apparemment, elle l'a juste fait sombrer dans un profond sommeil. 

La troisième et dernière est celle de Pharod. Apparemment, ce dernier faisait autrefois partie de "l'aristocratie" de Sigil, mais il utilisait son statut pour contourner la loi, voire faire condamner des innocents. Ses actes étaient si malfaisants que son âme se retrouva promise aux Plans Inférieurs. Quand il en prit conscience, il fut terrifié et chercha le moyen d'échapper à son destin. Il aurait alors consulté plusieurs devins, qui lui auraient dit qu'il pourrait se sauver dans les déchets de Sigil. Aussitôt, Pharod a abandonné son poste pour devenir le roi des Récupérateurs. Aujourd'hui, il envoie sans cesse ses hommes à la recherche de ce qui sauvera son âme… mais il ignore de quoi il s'agit.~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #11326 /* ~Pestilent prend le journal. "Ah…" Il écrit dedans, puis te le rend. "Voilà, tenez."~ */
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Merci, Pestilent."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Merci, Pestilent."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 50.1 52.0 52.1
  SAY #11327 /* ~"Et… si vous renoncez à utiliser mon surnom, je vous en saurai gré."~ */
  IF ~~ THEN REPLY #11632 /* ~"Très bien. Comment dois-je t'appeler ?"~ */ GOTO 54
  IF ~~ THEN REPLY #11634 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #11328 /* ~"Je m'appelle…" Il se reprend et sourit. "Non, cette fois-ci, je le garde pour moi." Il t'adresse un signe de tête respectueux. "Et encore merci, mon bon monsieur."~ */
  IF ~~ THEN REPLY #11636 /* ~"Au revoir."~ */ EXIT
END
