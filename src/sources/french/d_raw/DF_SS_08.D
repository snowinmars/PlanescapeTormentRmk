// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_08~

IF ~  !Global("S_Stone","AR0603",15)
!Global("S_Stone","AR0603",18)
~ THEN BEGIN 0 // from:
  SAY #34219 /* ~Voici une pierre d'un rouge orangé. Elle est solidement attachée au piédestal sur lequel elle repose.~ */
  IF ~~ THEN REPLY #47490 /* ~Pars.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",15)
~ THEN BEGIN 1 // from:
  SAY #47491 /* ~C'est vers cette pierre rouge-orange que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'regret indicible'.~ */
  IF ~~ THEN REPLY #47492 /* ~Laisse les sensations affluer.~ */ GOTO 2
  IF ~~ THEN REPLY #47493 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47494 /* ~Tu te tiens sur le pont de ton vaisseau-amiral, le Marteau Divin, que les vents magiques propulsent en direction du continent d'Agarheim. Le paysage ondule sous la violence du bombardement auquel ta flotte le soumet : plus de mille navires font feu de tous leurs canons et bombardes pour noyer Agarheim sous les flammes magiques de la vengeance. Les ondes de choc arrivent jusqu'à toi depuis quelques minutes seulement, sous la forme d'une vibration constante qui fait grincer le vieux navire et que tu ressens jusque dans tes os. Alors que les montagnes du continent commencent à s'enfoncer et que l'eau de mer se transforme en vapeur à proximité, ton officier en second s'approche de toi.~ */
  IF ~~ THEN REPLY #47495 /* ~Poursuis l'expérience.~ */ GOTO 3
  IF ~~ THEN REPLY #47496 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47497 /* ~"Permission de parler librement, mon Seigneur Amiral." Tu opines du chef sans pouvoir empêcher ton estomac de se nouer. Tu connais déjà sa question avant qu'il ne la formule. "Pardonnez-moi, mon seigneur, mais… pourquoi ? Qu'est-ce qui nous donne le droit ? Un milliard de vies…"~ */
  IF ~~ THEN REPLY #47498 /* ~Poursuis l'expérience.~ */ GOTO 4
  IF ~~ THEN REPLY #47499 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47500 /* ~Tu lui réponds sans le fixer, incapable que tu es de détourner le regard de Rhumos, la capitale du pays, qui se vaporise devant tes yeux en un nuage de gaz surchauffé large d'une vingtaine de kilomètres. "Si vous connaissiez l'étendue de la traîtrise des Agarites, vous comprendriez, Lieutenant Falm. Vous demandez de quel droit nous les annihilons ? Retournez votre question, lieutenant ; s'il est un droit que nous n'avons pas, c'est celui de les laisser vivre."~ */
  IF ~~ THEN REPLY #47501 /* ~Poursuis l'expérience.~ */ GOTO 5
  IF ~~ THEN REPLY #47502 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47503 /* ~"Mais, monsieur… sont-ils vraiment tous des traîtres ? Ils sont plusieurs centaines de milliers et, parmi eux, combien d'innocents…" "Silence ! Je vous interdis d'évoquer à nouveau ce sujet ! Notre roi a parlé, que sa volonté soit faite. La tâche qui nous échoit est horrible, mais elle ne tolère pas l'introspection. Nous ne pouvons nous permettre ni pitié, ni remords. Seul compte notre devoir."~ */
  IF ~~ THEN REPLY #47504 /* ~Poursuis l'expérience.~ */ GOTO 6
  IF ~~ THEN REPLY #47505 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47506 /* ~Vous restez tous deux sans rien dire, à contempler les ultimes instants d'Agarheim. Enfin, tu pousses un long soupir torturé, comme si quelque chose venait de se briser en toi. Sous la plaque de cuivre qui protège la moitié de ton visage ravagé, ton œil mort est incapable de retenir ses larmes…~ */
  IF ~~ THEN REPLY #47507 /* ~Poursuis l'expérience.~ */ GOTO 7
  IF ~~ THEN REPLY #47508 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47509 /* ~"Falm, mon ami… il faut que vous compreniez. Quand je vois ce que nous venons d'accomplir, je sais que, si je devais réfléchir à ce que j'ai fait… *vraiment* fait… je perdrais la raison. Un crime aussi abominable… le remords finirait par me détruire. C'est pourquoi il ne peut y avoir le moindre innocent en Agarheim, Lieutenant Falm… pas de mères de famille, pas d'enfants… pas d'êtres humains. Des traîtres, rien que des traîtres ignobles qui méritent de subir le juste courroux de notre saint roi. Pouvez-vous comprendre ça ?"~ */
  IF ~~ THEN REPLY #47510 /* ~Poursuis l'expérience.~ */ GOTO 8
  IF ~~ THEN REPLY #47511 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47512 /* ~"Ou… oui, mon seigneur." "Bien. Allez, maintenant. Je désire être seul." "À vos ordres, Seigneur Amiral." Falm s'incline et descend dans l'entrepont, te laissant assister, seul, à la fin d'une civilisation.~ */
  IF ~  Global("Sensation15","AR0603",0)
~ THEN REPLY #47513 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation15","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation15","AR0603",1)
~ THEN REPLY #47514 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",18)
~ THEN BEGIN 9 // from:
  SAY #47515 /* ~C'est vers cette pierre rouge-orange que l'employé t'a envoyé. Elle recèle l'expérience intitulée 'indescriptible frustration'.~ */
  IF ~~ THEN REPLY #47516 /* ~Laisse les sensations affluer.~ */ GOTO 10
  IF ~~ THEN REPLY #47517 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #47518 /* ~Tu la vois, maintenant, la couronne d'Hæphon, qui luit sur son piédestal de marbre. Elle n'est plus qu'à vingt pas de toi et, grâce à elle, tu pourras prendre le contrôle des armées d'Æthanopolis pour renverser ton traître de frère et restaurer l'ordre dans le royaume de ton père. Quel idiot ton frère a pu être… un sourire sans joie t'échappe quand tu penses qu'il t'a laissée en vie, persuadé qu'une femme, fut-elle la fille du roi, serait incapable de lui nuire.~ */
  IF ~~ THEN REPLY #47519 /* ~Poursuis l'expérience.~ */ GOTO 11
  IF ~~ THEN REPLY #47520 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #47521 /* ~Un bruit ! Un craquement de cuir, un sifflement… là, derrière le troisième pilier ! Polaphi la méduse est désormais tout proche ; elle garde jalousement la couronne volée que ses serviteurs lui ont apportée il y a si longtemps. Accroupie derrière une colonne, tu serres ton javelot trois fois béni dans ta main. Avec ton casque de rapidité et ton bouclier aux mille reflets, même un monstre tel que Polaphi n'a pas la moindre chance face à toi. D'un instant à l'autre, tu vas la voir apparaître. Et même si elle détourne le regard en apercevant ton bouclier, tu sais que ton javelot trouvera aisément sa gorge exposée…~ */
  IF ~~ THEN REPLY #47522 /* ~Poursuis l'expérience.~ */ GOTO 12
  IF ~~ THEN REPLY #47523 /* ~Interromps l'expérience et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #47524 /* ~Soudain, on te touche l'épaule. Surprise, tu te retournes sans réfléchir, pour te retrouver face à la méduse. Bien sûr ! Acceptant l'inévitable, tu n'as que le temps de laisser fuser un terrible cri de frustration avant que tes poumons et le reste de ton corps ne se transforment en pierre grise et froide…~ */
  IF ~  Global("Sensation18","AR0603",0)
~ THEN REPLY #47525 /* ~Reprends tes esprits.~ */ DO ~SetGlobal("Sensation18","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 13
  IF ~  Global("Sensation18","AR0603",1)
~ THEN REPLY #47527 /* ~Reprends tes esprits et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.0 12.0
  SAY #47526 /* ~L'expérience te rappelle un événement vaguement familier. Tu as la très nette impression que l'utilisation de cette pierre sensorielle t'a été bénéfique.~ */
  IF ~~ THEN REPLY #47528 /* ~Pars.~ */ EXIT
END
