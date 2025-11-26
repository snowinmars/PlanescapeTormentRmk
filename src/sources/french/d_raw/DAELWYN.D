// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAELWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAELWYN~

IF ~  Global("Aelwyn","GLOBAL",0)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #43390 /* ~Cette femme grande et mince lève de temps à autre les yeux de son verre de vin pour jeter un coup d'œil sur les clients et passants alentours. Les traits de son visage sont élégamment exotiques et ses yeux - d'une intense couleur or - captent la lumière pour étinceler lorsqu'elle regarde autour d'elle.~ */
  IF ~~ THEN REPLY #43391 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #56698 /* ~Laisse la femme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56699 /* ~Elle t'observe attentivement avant de répondre. Elle parle lentement et avec application, en évitant de te regarder directement: "Moi, Aelwyn, te retourne ton bonjour."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56700 /* ~"Aelwyn ? Ton amie Nemelle te cherche."~ */ JOURNAL #56704 /* ~J'ai retrouvé Aelwyn et je lui ai dit que Nemelle la cherchait.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56701 /* ~"Tu cherches quelqu'un ?"~ */ GOTO 16
  IF ~~ THEN REPLY #56702 /* ~"J'avais quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #56703 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0 26.0 27.0
  SAY #56705 /* ~Elle commence à sourire, puis se couvre la bouche avec les mains et baisse les yeux vers sa coupe. "Moi, Aelwyn, suis très heureuse d'entendre parler de Nemelle. Puis-je, moi Aelwyn, te persuader de lui parler de cet endroit ?"~ */
  IF ~~ THEN REPLY #56706 /* ~"Oui, si tu veux."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~J'ai accepté de retourner voir Nemelle et de lui dire où se trouve Aelwyn.~ */ GOTO 3
  IF ~~ THEN REPLY #56707 /* ~"Je ne suis pas un messager par pure bonté. Je le ferai moyennant un certain prix."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #56708 /* ~"J'y réfléchirai. J'avais quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #56709 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.0 14.0
  SAY #56711 /* ~Elle te fixe droit dans les yeux et, pendant un très bref instant, avant que son regard ne se tourne à nouveau vers sa coupe, tes sens sont submergés par une sensation chaleureuse et confortable : le bonheur pur. "Moi, Aelwyn, te remercie."~ */
  IF ~~ THEN REPLY #56712 /* ~"Tout le plaisir est pour moi. Mais puis-je te poser quelques questions à son sujet ?"~ */ GOTO 4
  IF ~~ THEN REPLY #56713 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #56714 /* ~Aelwyn secoue lentement la tête.~ */
  IF ~~ THEN REPLY #56715 /* ~"La manière dont elle parle, et l'effet qu'ont ses mots… comment est-ce possible ?"~ */ GOTO 5
  IF ~~ THEN REPLY #56716 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 30.0
  SAY #56717 /* ~"Moi, Aelwyn, peux seulement dire que nous venons d'un autre endroit, un autre monde. Nous ne sommes pas semblables aux gens d'ici, dont les mots, les pensées, les sensations n'affectent rien directement."~ */
  IF ~~ THEN REPLY #56718 /* ~"Continue…"~ */ GOTO 6
  IF ~~ THEN REPLY #56719 /* ~"Nous en reparlerons plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56720 /* ~"Moi, Aelwyn, fais attention de ne pas affecter ceux qui m'entourent. Nemelle est nouvelle ici, et ne peut pas le faire. Elle doit apprendre cela, si elle souhaite demeurer ici plus longtemps."~ */
  IF ~~ THEN REPLY #56721 /* ~"Mais pourquoi ?"~ */ GOTO 7
  IF ~~ THEN REPLY #56724 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56722 /* ~"Il y a de nombreuses raisons. Moi, Aelwyn, sens qu'il n'est pas juste d'imposer ma réalité à ceux qui ne peuvent pas imposer la leur à ma personne, Aelwyn."~ */
  IF ~~ THEN REPLY #56725 /* ~"Y a-t-il quoi que ce soit que tu ne puisses pas faire uniquement en en parlant ?"~ */ GOTO 8
  IF ~~ THEN REPLY #56726 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #56727 /* ~Elle fronce les sourcils ; une sensation étrange, désagréable naît au creux de ton ventre. "S'il te plaît… moi, Aelwyn, ne désire plus parler de cela."~ */
  IF ~~ THEN REPLY #56728 /* ~"Juste une autre question…."~ */ GOTO 9
  IF ~~ THEN REPLY #56729 /* ~"D'accord. Au revoir, Aelwyn."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #56730 /* ~Elle te regarde directement, ton visage se reflétant dans les cercles brillants de ses yeux. "Il ne désire plus parler de cela à Aelwyn, et ne la forcera donc plus à lui parler de telle sorte." Tu te retrouves incapable de prononcer une autre question… les mots restent coincés dans ta gorge tandis que tu essaies de parler.~ */
  IF ~~ THEN REPLY #56731 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #56732 /* ~Elle acquiesce. "Moi, Aelwyn, comprends. Es-tu un Sensat ?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56733 /* ~"Oui."~ */ GOTO 11
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56734 /* ~"Non, je ne le suis pas."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #56735 /* ~Elle secoue la tête. "Alors moi, Aelwyn, n'ai aucun moyen de te récompenser."~ */
  IF ~~ THEN REPLY #56736 /* ~"Je le ferai, quoi qu'il en soit."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~J'ai accepté de retourner voir Nemelle et de lui dire où se trouve Aelwyn.~ */ GOTO 3
  IF ~~ THEN REPLY #56737 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #56739 /* ~"Moi, Aelwyn, ne te suis pas familière ?"~ */
  IF ~~ THEN REPLY #56740 /* ~"Non. Est-ce que ça devrait être le cas ?"~ */ GOTO 13
  IF ~~ THEN REPLY #56741 /* ~"Non, pas du tout."~ */ GOTO 13
  IF ~~ THEN REPLY #56742 /* ~"Ce n'est pas important. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #56743 /* ~"C'est ainsi que moi, Aelwyn, pensais. L'esprit d'un homme lui a été perdu."~ */
  IF ~~ THEN REPLY #56744 /* ~"Qu'est-ce que tu veux dire ? Tu sais qui je suis ?"~ */ GOTO 14
  IF ~~ THEN REPLY #56745 /* ~"Tu as peut-être raison. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #56746 /* ~"Moi, Aelwyn, t'ai rencontré auparavant, et te parlerai de cette rencontre, si tu m'aides."~ */
  IF ~~ THEN REPLY #56747 /* ~"Bon, je m'en charge."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~J'ai accepté de retourner voir Nemelle et de lui dire où se trouve Aelwyn.~ */ GOTO 3
  IF ~~ THEN REPLY #56748 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.2 2.2 26.2 39.1
  SAY #56750 /* ~La femme secoue la tête, ses boucles rousses capturant la lumière et brillant telles des flammes. "Moi, Aelwyn, ne possède pas de réponses, étranger. Tu devras les chercher ailleurs."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56751 /* ~"Tu as dit que tu étais Aelwyn ? Ton amie Nemelle te cherche."~ */ JOURNAL #56704 /* ~J'ai retrouvé Aelwyn et je lui ai dit que Nemelle la cherchait.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56752 /* ~"Tu cherches quelqu'un ?"~ */ GOTO 16
  IF ~~ THEN REPLY #56753 /* ~"Alors, au revoir…"~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.1 15.1 26.1
  SAY #56755 /* ~Elle acquiesce, fixant mélancoliquement sa coupe de vin. "Nemelle est son nom, elle est l'une de mes amies, à moi, Aelwyn. Moi, Aelwyn, me fais du souci pour elle dans cet endroit, et me demande pourquoi elle n'est pas venue à la rencontre de moi, Aelwyn."~ */
  IF ~~ THEN REPLY #56756 /* ~"Je pourrais t'aider à trouver ton amie."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~J'ai accepté de rechercher une certaine Nemelle pour une femme du nom d'Aelwyn.~ */ GOTO 17
  IF ~~ THEN REPLY #56757 /* ~"Je pourrais essayer de la trouver, moyennant finances, bien sûr."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #56758 /* ~"J'espère que tu la retrouveras. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #56760 /* ~"Ferais-tu cela ?" Elle lève le regard de sa coupe en souriant et tu es soudainement envahi pas une sensation de gratitude. Te voyant te raidir, elle se couvre la bouche, détourne une fois de plus le regard… et la sensation se dissipe. "Moi, Aelwyn, te remercie."~ */
  IF ~~ THEN REPLY #56761 /* ~"Qu'est-ce… qu'est-ce que c'était ?"~ */ GOTO 18
  IF ~~ THEN REPLY #56762 /* ~"Bien sûr. À quoi ressemble-t-elle ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 25.0
  SAY #56763 /* ~"Qu'est-ce qui était quoi, étranger ?" Elle mord sa lèvre inférieure. "Moi, Aelwyn, ne sais rien de cela."~ */
  IF ~~ THEN REPLY #56764 /* ~"Très bien. À quoi ressemble Nemelle ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0 25.1 27.1
  SAY #56765 /* ~"Elle ressemble à Aelwyn, mais avec une chevelure de jais et des yeux d'un violet brillant."~ */
  IF ~~ THEN REPLY #56766 /* ~"Alors je lui dirai que tu l'attends ici. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #56767 /* ~Elle acquiesce. "Moi, Aelwyn, comprends. Es-tu un Sensat ?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56768 /* ~"Oui."~ */ GOTO 21
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56769 /* ~"Non, je ne le suis pas."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #56770 /* ~Elle secoue la tête. "Alors moi, Aelwyn, n'ai aucun moyen de te récompenser."~ */
  IF ~~ THEN REPLY #56771 /* ~"Je le ferai, quoi qu'il en soit."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~J'ai accepté de rechercher une certaine Nemelle pour une femme du nom d'Aelwyn.~ */ GOTO 25
  IF ~~ THEN REPLY #56772 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #56774 /* ~"Moi, Aelwyn, ne te suis pas familière ?"~ */
  IF ~~ THEN REPLY #56775 /* ~"Non. Est-ce que ça devrait être le cas ?"~ */ GOTO 23
  IF ~~ THEN REPLY #56776 /* ~"Non, pas du tout."~ */ GOTO 23
  IF ~~ THEN REPLY #56777 /* ~"Ce n'est pas important. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #56781 /* ~"C'est ainsi que moi, Aelwyn, pensais. L'esprit d'un homme lui a été perdu."~ */
  IF ~~ THEN REPLY #56779 /* ~"Qu'est-ce que tu veux dire ? Tu sais qui je suis ?"~ */ GOTO 24
  IF ~~ THEN REPLY #56780 /* ~"Tu as peut-être raison. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #56782 /* ~"Moi, Aelwyn, t'ai rencontré auparavant, et te parlerai de cette rencontre, si tu m'aides."~ */
  IF ~~ THEN REPLY #56783 /* ~"Bon, je m'en charge."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~J'ai accepté de rechercher une certaine Nemelle pour une femme du nom d'Aelwyn.~ */ GOTO 25
  IF ~~ THEN REPLY #56784 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 24.0
  SAY #56786 /* ~Elle te fixe droit dans les yeux et, pendant un très bref instant, avant que son regard ne se tourne à nouveau vers sa coupe, tes sens sont submergés par une sensation chaleureuse et confortable : le bonheur pur. "Moi, Aelwyn, te remercie."~ */
  IF ~~ THEN REPLY #56787 /* ~"Qu'est-ce… qu'est-ce que c'était ?"~ */ GOTO 18
  IF ~~ THEN REPLY #56788 /* ~"Bien sûr. À quoi ressemble-t-elle ?"~ */ GOTO 19
END

IF ~  Global("Aelwyn","GLOBAL",1)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 26 // from:
  SAY #56789 /* ~Aelwyn lève les yeux de sa coupe pour te saluer brièvement. "Moi, Aelwyn, croise une fois de plus le chemin de l'étranger. Que veux-tu ?"~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56790 /* ~"Ton amie Nemelle te cherche."~ */ JOURNAL #56704 /* ~J'ai retrouvé Aelwyn et je lui ai dit que Nemelle la cherchait.~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56791 /* ~"Tu cherches quelqu'un ?"~ */ GOTO 16
  IF ~~ THEN REPLY #56792 /* ~"J'avais quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #56793 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",2)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 27 // from:
  SAY #56795 /* ~Aelwyn lève brièvement les yeux de sa coupe pour te saluer. "Moi, Aelwyn, attends avec impatience des nouvelles de Nemelle. Tu l'as trouvée, étranger?"~ */
  IF ~  GlobalGT("Nemelle","GLOBAL",0)
!Dead("Nemelle")
~ THEN REPLY #56796 /* ~"Oui, je l'ai trouvée."~ */ JOURNAL #56799 /* ~J'ai dit à Aelwyn que j'avais retrouvé Nemelle.~ */ GOTO 2
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56797 /* ~"Pas encore. À quoi ressemble-t-elle, déjà ?"~ */ GOTO 19
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56798 /* ~"Non, pas encore. Je reviendrai dès que ce sera fait. Au revoir."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",3)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 28 // from:
  SAY #56800 /* ~Aelwyn lève brièvement les yeux de sa coupe pour te saluer. "Moi, Aelwyn, attends toujours l'arrivée de Nemelle. Ne lui as-tu pas délivré le message ?"~ */
  IF ~~ THEN REPLY #56801 /* ~"Non, pas encore. Je la chercherai à nouveau et je lui dirai que tu es ici."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",4)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 29 // from:
  SAY #56802 /* ~Aelwyn joint les mains et baisse la tête en signe de remerciement, des larmes de joie s'échappant de ses yeux dorés. Alors que tes yeux commencent eux aussi à s'humidifier, elle essuie ses larmes et sourit - provoquant une vague de plaisir qui te secoue de la tête aux pieds. "Aelwyn a *remercié* l'étranger ! Elle a retrouvé son amie la plus chère, Nemelle !"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56803 /* ~"Tout le plaisir est pour moi."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
~ GOTO 30
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56804 /* ~"Tout le plaisir est pour moi."~ */ GOTO 31
  IF ~  Global("Evil_Aelwyn_1","GLOBAL",1)
~ THEN REPLY #56805 /* ~"Bien sûr. Parle-moi maintenant de notre précédente rencontre."~ */ DO ~SetGlobal("PC_Was_Sensate","GLOBAL",1)
SetGlobal("Aelwyn","GLOBAL",5)
~ JOURNAL #56812 /* ~Une certaine Aelwyn m'a dit que j'avais fait partie de la Société de Sensation et que j'en étais peut-être encore membre. J'aurais donc été Sensat…~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #56806 /* ~Elle acquiesce, puis baisse à nouveau la tête. Les sensations provoquées par son sourire s'évanouissent.~ */
  IF ~~ THEN REPLY #56807 /* ~"Comment se fait-il que Nemelle et toi puissiez influer sur mes sens et mes émotions ?"~ */ GOTO 5
  IF ~~ THEN REPLY #56808 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #56809 /* ~Elle acquiesce, puis baisse à nouveau la tête. Les sensations provoquées par son sourire s'évanouissent. "Moi, Aelwyn, désire maintenant te confier quelque chose, étranger."~ */
  IF ~~ THEN REPLY #56810 /* ~"Ah oui ? Continue…"~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
SetGlobal("PC_Was_Sensate","GLOBAL",1)
~ JOURNAL #56812 /* ~Une certaine Aelwyn m'a dit que j'avais fait partie de la Société de Sensation et que j'en étais peut-être encore membre. J'aurais donc été Sensat…~ */ GOTO 32
  IF ~~ THEN REPLY #56811 /* ~"Une autre fois, peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2 31.0
  SAY #56813 /* ~"Le nom que moi, Aelwyn, ai choisi pour toi - 'étranger' - n'est pas tout à fait exact. Toi et moi, Aelwyn, nous sommes déjà rencontrés… à la Salle des fêtes. Dans un endroit où tu n'aurais pu aller si tu n'avais toi-même été un Sensat. Que tu t'en souviennes ou non, tu es un Sensat… à moins que tu n'aies trahi la Société de Sensation…"~ */
  IF ~~ THEN REPLY #56814 /* ~"Je vois… Dis-m'en plus."~ */ GOTO 33
  IF ~~ THEN REPLY #56815 /* ~"J'écouterai le reste une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 39.0
  SAY #56816 /* ~Elle acquiesce. "Toi et moi, Aelwyn, nous sommes rencontrés à deux occasions. La première a eu lieu il y a plus de deux siècles, la dernière plus récemment, il y a peut-être moins de cinquante ans."~ */
  IF ~~ THEN REPLY #56817 /* ~"C'était il y a assez longtemps…"~ */ GOTO 34
  IF ~~ THEN REPLY #56818 /* ~"J'écouterai le reste une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #56819 /* ~Elle acquiesce à nouveau. "Le peuple d'Aelwyn vit longtemps et oublie facilement." Elle soupire d'un air malheureux, provoquant un frisson sur tout ton corps. "Tu paraissais alors un homme différent… moins sombre, avec moins de cicatrices. Tu voulais volontiers découvrir ce que le multivers avait à offrir. Tu as alors fait la cour à moi, Aelwyn, et es presque devenu amant, mais tu as alors disparu."~ */
  IF ~~ THEN REPLY #56820 /* ~"Où est-ce que je suis allé ?"~ */ GOTO 35
  IF ~~ THEN REPLY #56821 /* ~"J'écouterai le reste une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #56822 /* ~"Moi, Aelwyn, ai entendu dire que tu étais mort… assassiné." Elle lève la tête un instant, scrutant curieusement ton regard. "Je ne t'ai après cela rencontré qu'une fois."~ */
  IF ~~ THEN REPLY #56823 /* ~"Est-ce que je me suis souvenu de toi, cette fois-là ?"~ */ GOTO 36
  IF ~~ THEN REPLY #56824 /* ~"J'écouterai le reste une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #56825 /* ~"Non." Elle secoue tristement la tête, puis touche sa gorge. "Non, tu ne l'as pas fait. Tu as frappé moi, Aelwyn, tu as essayé de me tuer. Tu as crié que moi, Aelwyn, ne pouvais pas te tromper, te prendre dans mes filets et te tuer…"~ */
  IF ~~ THEN REPLY #56826 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 37
  IF ~~ THEN REPLY #56827 /* ~"J'écouterai le reste une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #56828 /* ~"Nous nous sommes rencontrés dans l'une des tours du nord de la Salle des fêtes, au sixième étage. Avant que tu ne puisses m'étrangler, moi, Aelwyn, ai utilisé mes pouvoirs pour t'ordonner de te jeter d'une fenêtre. Lorsque moi, Aelwyn, suis partie à la recherche de ton corps démantelé, tu avais déjà disparu…"~ */
  IF ~~ THEN REPLY #56829 /* ~"Tu as fait *quoi* ?"~ */ GOTO 38
  IF ~~ THEN REPLY #56830 /* ~"Je vois…"~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #56831 /* ~"C'est là toute l'histoire d'Aelwyn te concernant. Nous n'étions pas étrangers autrefois, mais le sommes devenus. Au revoir, étranger, et que la chance t'accompagne dans tes voyages."~ */
  IF ~~ THEN REPLY #56832 /* ~"Merci, Aelwyn. Au revoir."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",5)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 39 // from:
  SAY #56833 /* ~Aelwyn lève les yeux de sa coupe pour te saluer brièvement. "Moi, Aelwyn, croise une fois de plus le chemin de l'étranger, et le salue."~ */
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #56834 /* ~"Raconte-moi encore comment nous nous sommes rencontrés, Aelwyn."~ */ GOTO 33
  IF ~~ THEN REPLY #56835 /* ~"J'ai des questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #56836 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Attack_Aelwyn","AR0600",1)
~ THEN BEGIN 40 // from:
  SAY #56837 /* ~La femme grogne à ton attention, ses yeux dorés luisant de haine. "Idiot ! Comment oses-tu attaquer ainsi une fille d'Asaharm ! Chien que tu es…" Elle plisse des yeux. "… Et tu mourras comme un chien !" Elle te fixe froidement en sirotant son vin.~ */
  IF ~~ THEN REPLY #56838 /* ~"Hein… ?"~ */ GOTO 41
  IF ~~ THEN REPLY #56839 /* ~Ignore-la, prépare-toi à attaquer.~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #56840 /* ~Tu tombes en hurlant de douleur… Tu as l'impression que tes entrailles sont en ébullition et tu commences à cracher de grosses gouttes de sang noir. Enfin, tu t'effondres dans la rue, en tremblant alors que toute trace de vie disparaît de ton corps…~ */
  IF ~~ THEN REPLY #56841 /* ~Tout devient noir…~ */ DO ~Kill(Protagonist)
~ EXIT
END
