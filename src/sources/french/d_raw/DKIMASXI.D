// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIMASXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIMASXI~

IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2941 /* ~La tieffeline à l'aspect sauvage te regarde d'un air renfrogné. Son corps tatoué est quasiment nu, uniquement recouvert d'une lanière de cuir, d'une brassière de tissu noir et d'épaulettes qui semblent constituer davantage une décoration qu'une véritable protection. Ses cheveux hérissés - ainsi que la fine fourrure qui recouvre ses jambes de chèvre - sont d'un blanc cuivré, et de nombreux anneaux en argent pendent à ses oreilles, à ses narines, à ses lèvres et à ses sourcils. Le collier en cuir qu'elle porte autour du cou arbore l'inscription 'Kimasxi Langue-de-Vipère'.~ */
  IF ~~ THEN REPLY #2942 /* ~"Bonjour…"~ */ DO ~SetGlobal("Kimasxi","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41630 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41579 /* ~Kimasxi montre les dents. "Qu'est-ce que *tu* regardes comme ça, bougre bouclé ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 434
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41643 /* ~"Toi. J'ai des questions…"~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41644 /* ~"Toi. Et tu me laisses froid. Au revoir."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41645 /* ~"Rien. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY #41580 /* ~Elle se moque de Morte, puis baisse le regard vers l'endroit où devrait normalement se trouver un corps. "Tu as la langue bien pendue… pour un mort sans tronc."~ */
  IF ~~ THEN REPLY #41721 /* ~"Ça suffit, vous deux."~ */ EXTERN ~DMORTE~ 435
  IF ~~ THEN REPLY #41722 /* ~Laisse-les.~ */ EXTERN ~DMORTE~ 436
END

IF ~~ THEN BEGIN 3 // from:
  SAY #41581 /* ~"Des tiques ?! Le seul insecte nuisible ici, c'est *toi* !" Soudain, elle se tourne vers toi. "Hé ! Tu es là pour me parler ou quoi ?"~ */
  IF ~~ THEN REPLY #41723 /* ~"'Ou quoi ?' Qu'est-ce que je ferais là sinon ?"~ */ GOTO 5
  IF ~~ THEN REPLY #41724 /* ~"Oui… J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #41725 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 1.3 5.2 8.2 9.3 10.3 12.2 14.1 15.1 16.1 21.2 21.3
  SAY #41582 /* ~Elle roule les yeux. "Alors, va caguer !"~ */
  IF ~~ THEN REPLY #41726 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #41583 /* ~"Qu'est-ce que tu croyais, bougre de râtelier ? Vas-y, donne-moi une bonne raison de te dire 'non'."~ */
  IF ~~ THEN REPLY #41727 /* ~"Qu'est-ce que tu fais à tes clients d'habitude ?"~ */ GOTO 6
  IF ~~ THEN REPLY #41728 /* ~"J'ai juste quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #41729 /* ~"Laisse tomber. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41584 /* ~"Je suis une spécialiste des mauvais traitements."~ */
  IF ~~ THEN REPLY #41730 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 7
  IF ~~ THEN REPLY #41731 /* ~"J'avais une autre question…"~ */ GOTO 14
  IF ~~ THEN REPLY #41732 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41585 /* ~"Tu vas voir." Elle lève la main pour te gifler, mais tu réussis tout juste à l'éviter. Kimasxi fait la moue, puis fronce les sourcils. "Oh, très bien."~ */
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41733 /* ~"Dis-moi… Tu peux apprendre à Morte à être plus grossier ?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #41734 /* ~"Je pensais que quelqu'un d'à moitié animal comme toi avait de meilleurs réflexes."~ */ GOTO 8
  IF ~~ THEN REPLY #41735 /* ~"J'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #41736 /* ~"Bon, ça suffit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #41586 /* ~Elle te lance un regard incrédule. "Tu es capable de *penser* ? Ha. Tu sais, *je* n'aurais jamais pensé que quelqu'un d'à moitié zombi comme toi aurait des réflexes aussi *lents*."~ */
  IF ~~ THEN REPLY #41737 /* ~"Eh bien, tu as mal pensé… J'imagine que ça t'arrive souvent."~ */ GOTO 9
  IF ~~ THEN REPLY #41738 /* ~"Écoute, j'ai juste quelques questions à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #41739 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41587 /* ~"Tu dois avoir beaucoup *d'imagination* : imagine que tu sois trois fois moins laid, imagine que les femmes te prennent au sérieux… Et arrête de reluquer mes seins !" Ses derniers mots te surprennent - car tu ne les regardais pas.~ */
  IF ~~ THEN REPLY #41740 /* ~"De quoi parles-tu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #41741 /* ~"*Ça*, des seins ? Je les avais pris pour de minuscules grosseurs cancéreuses."~ */ GOTO 12
  IF ~~ THEN REPLY #41742 /* ~"Écoute, j'ai juste quelques questions à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #41743 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41588 /* ~"Oui, c'est ça. Tu ne les regardais pas, peut-être ? Espèce de gros cadavre lubrique… Qu'est-ce que t'as ? Tu n'as jamais vu une paire de seins ?"~ */
  IF ~~ THEN REPLY #41744 /* ~"Je ne les regardais pas. Tu es complètement folle…"~ */ GOTO 11
  IF ~~ THEN REPLY #41745 /* ~"*Ça*, des seins ? Je les avais pris pour de minuscules grosseurs cancéreuses."~ */ GOTO 12
  IF ~~ THEN REPLY #41746 /* ~"Écoute, j'ai juste quelques questions à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #41747 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41589 /* ~Kimasxi roule les yeux, puis se croise les bras et se pince les lèvres. "Tu es presque aussi comique qu'un modrone. Va caguer, raseur ; va plutôt voir une femme plus *commune*."~ */
  IF ~~ THEN REPLY #41748 /* ~"Attends, j'ai des questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #41749 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 10.1
  SAY #41590 /* ~Elle hausse un sourcil. "Écoute, si tu n'es pas capable de reconnaître une paire de seins aussi beaux que les miens, c'est que tu n'as pas *dû* passer beaucoup de temps en compagnie des femmes…"~ */
  IF ~~ THEN REPLY #41750 /* ~"Parce que tu veux dire que tu es une femme ? Drôle de définition !"~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41751 /* ~"Écoute, j'ai juste quelques questions à te poser…"~ */ GOTO 14
  IF ~~ THEN REPLY #41752 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0 16.0
  SAY #41591 /* ~Kimasxi semble à court de répartie. L'espace d'un instant, un sourire semble se dessiner sur le masque grimaçant qui lui fait office de visage - mais, il disparaît aussitôt. "Très bien, qu'est-ce que tu attends de moi ?"~ */
  IF ~~ THEN REPLY #41753 /* ~"Que tu répondes à mes questions…"~ */ GOTO 22
  IF ~~ THEN REPLY #41754 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 3.1 5.1 6.1 7.2 8.1 9.2 10.2 11.0 12.1 21.0 41.0
  SAY #41592 /* ~La tieffeline roule les yeux. "Et qu'est-ce qui te fait croire que ça *m'intéresse* ? Pourquoi est-ce que tu ne me lécherais pas le derrière ?"~ */
  IF ~~ THEN REPLY #41755 /* ~"Je n'ai pas la langue assez large… et je déteste avoir des poils dans la bouche."~ */ GOTO 15
  IF ~~ THEN REPLY #41756 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41593 /* ~"Pourtant, on dirait que le goût du fumier ne te dérange pas, espèce de crétin puant."~ */
  IF ~~ THEN REPLY #41757 /* ~"Juste parce que c'est comme de t'embrasser, espèce de misérable chose puante."~ */ GOTO 16
  IF ~~ THEN REPLY #41758 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41594 /* ~"*M'embrasser* ?" Elle semble avoir un haut-le-cœur. "Je préférerais encore embrasser un crachat plein de sang que de poser mes lèvres sur toi. Non, merci !"~ */
  IF ~~ THEN REPLY #41759 /* ~"Ne me remercie pas… Remercie plutôt les Puissances que quelqu'un ait envie de t'embrasser."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41760 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.0 22.2
  SAY #41595 /* ~Elle hausse les sourcils. "*Cette* requête est plutôt insolite. Je ne sais pas, on dirait que ça en connaît déjà un rayon…"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 437
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41596 /* ~"Ça te *plairait* d'avoir des jambes comme les miennes, hein, misérable sac d'os ! Moi, je peux marcher, courir, danser… Et toi, qu'est-ce que tu sais faire ? T'agiter dans tous les sens en rêvant aux jambes que tu n'as pas, même à des pattes de chèvre !"

Ils continuent à se disputer en échangeant des insultes aussi acerbes que mordantes…~ */
  IF ~~ THEN REPLY #41761 /* ~Attends que ça se termine…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41597 /* ~Enfin, ils arrêtent de se chamailler et un silence surnaturel s'installe alors qu'ils se fusillent du regard. Finalement, à contrecœur, la tieffeline consent à faire un aveu à Morte : "En fait, tu n'es pas mal. Pas mal du tout."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 438
END

IF ~~ THEN BEGIN 20 // from:
  SAY #41598 /* ~Kimasxi regarde Morte en plissant les yeux. "Ne pousse pas, *crâne*."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 439
END

IF ~~ THEN BEGIN 21 // from:
  SAY #41599 /* ~Kimasxi se tourne vers toi. "Alors, c'est tout ce que tu voulais ? J'ai déjà perdu assez de temps avec toi comme ça."~ */
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41762 /* ~"En fait, j'avais quelques questions…"~ */ GOTO 14
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41763 /* ~"En fait, j'avais quelques questions…"~ */ GOTO 22
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41764 /* ~"Moi aussi. Au revoir."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41765 /* ~"Bon, ça suffit. Au revoir."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41766 /* ~"Moi aussi. Au revoir."~ */ EXIT
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41767 /* ~"Bon, ça suffit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 21.1 23.0 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 33.0 34.1 35.0 36.0 37.0 38.0 40.0 42.0 43.0
  SAY #41600 /* ~Elle semble ennuyée. "Bien, peu importe…. Pose tes questions."~ */
  IF ~~ THEN REPLY #41768 /* ~"Qui es-tu ?"~ */ GOTO 36
  IF ~~ THEN REPLY #41769 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 37
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41770 /* ~"Dis-moi… Tu peux apprendre à Morte à être plus grossier ?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41771 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67845 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 43
  IF ~  Global("Know_Kim_Kes","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41772 /* ~"J'ai entendu dire que tu étais la demi-sœur de Kesai-Serris. C'est vrai ?"~ */ GOTO 27
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41773 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 25
  IF ~  Global("Nenny_Hint2","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #41774 /* ~"On m'a dit qu'on t'avait récemment vue sortir en douce de la chambre de Marissa… Ça n'aurait pas un rapport avec le voile qui a disparu ?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",2)
~ GOTO 39
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41775 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 32
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41776 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41777 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ JOURNAL #66742 /* ~J'ai interrogé l'une des prostituées de la Maison de tolérance au sujet de Ravel, et elle m'a dit d'aller voir Yvonne. Celle-ci recueille apparemment les histoires, et il y a de fortes chances qu'elle en connaisse quelques-unes au sujet de Ravel.~ */ GOTO 24
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #41778 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 34
  IF ~~ THEN REPLY #41779 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.9
  SAY #41602 /* ~Elle sourit d'un air narquois. "Tch. Sur ton cul, peut-être ? Oh, j'en sais rien." Kimasxi rejette ses cheveux en arrière, mais instantanément, ils se hérissent de nouveau.~ */
  IF ~~ THEN REPLY #41780 /* ~"J'avais une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41781 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.10
  SAY #41603 /* ~"Que veux-tu que je sache d'elle ? J'ai l'air d'un sage, d'un érudit à barbe blanche ? Pose ta question à quelqu'un de plus "docte"… ou à Yvonne ; elle aura bien *une* histoire à son sujet parmi toutes celles qu'elle trimballe dans son râtelier. Et assieds-toi sur une hallebarde, tant que tu y es."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41782 /* ~"J'ai entendu dire que Kesai-Serris était sa fille. C'est vrai ?"~ */ GOTO 25
  IF ~~ THEN REPLY #41783 /* ~"J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41784 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.6 24.0
  SAY #41604 /* ~Elle hausse les épaules. "D'après ce que je sais, oui." Tout à coup, elle semble méfiante. "Pourquoi ?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41785 /* ~"Je le lui ai demandé et elle a nié."~ */ GOTO 26
  IF ~~ THEN REPLY #41786 /* ~"Peu importe. J'ai une autre question."~ */ GOTO 22
  IF ~~ THEN REPLY #41787 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41605 /* ~"Et alors ? De toute façon, ça ne te regarde pas."~ */
  IF ~  Global("Know_Kim_Kes","AR0605",1)
~ THEN REPLY #41788 /* ~"J'ai aussi entendu dire que tu es la demi-sœur de Kesai-Serris."~ */ GOTO 27
  IF ~~ THEN REPLY #41789 /* ~"Peut-être que non. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41790 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.5 26.0
  SAY #41606 /* ~"Oui, j'ai un lien de parenté avec cette grosse rêvasseuse au nez crochu. On a le même père, mais pas la même mère. Et alors ?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41791 /* ~"Je pensais que tu pourrais m'aider à découvrir si Kesai est *vraiment* la fille de Ravel."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",2)
~ JOURNAL #39475 /* ~Kimasxi Langue-de-Vipère, la demi-sœur de Kesai-Serris, m'a dit que je devais demander à cette dernière d'aller chercher auprès de son père la preuve qu'elle est bien la fille de Ravel Puits-de-Rébus.~ */ GOTO 28
  IF ~~ THEN REPLY #41792 /* ~"Peu importe. J'ai une autre question."~ */ GOTO 22
  IF ~~ THEN REPLY #41793 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #41607 /* ~Kimasxi te regarde en fronçant les sourcils. "Normalement, ça devrait me faire horreur de t'aider, mais j'ai l'impression que ça embêterait bien cette catin flirteuse et complaisante. Dis-lui de demander à notre père… C'est un puissant cambion, alors elle devrait être capable de faire appel à lui de temps en temps. Comme ça, tu auras ta réponse."~ */
  IF ~~ THEN REPLY #41794 /* ~"Un cambion ?"~ */ GOTO 29
  IF ~~ THEN REPLY #41795 /* ~"Merci. J'avais une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41796 /* ~"Alors, je vais aller lui parler. Merci, Kimasxi, et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #41608 /* ~"Oui, un *cambion*." Kimasxi roule les yeux. "T'as pas entendu ce que je t'ai dit ? Tes oreilles sont bouchées par le peu de cervelle qu'il te reste encore, ou quoi ?"~ */
  IF ~~ THEN REPLY #41797 /* ~"Je te demande juste ce que c'est…"~ */ GOTO 30
  IF ~~ THEN REPLY #41798 /* ~"Non… mais j'ai une autre question."~ */ GOTO 22
  IF ~~ THEN REPLY #41799 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41609 /* ~"Oh, t'as vraiment rien dans le crâne." Elle secoue tristement la tête d'un air désapprobateur. "C'est un demi-fiélon, bige, comme toi… Et je crois que tu es aussi à moitié *fumier*. En tout cas, c'est ce que tu sens."~ */
  IF ~~ THEN REPLY #41800 /* ~"C'est toujours mieux que d'être à moitié comme *toi*, Kimasxi."~ */ GOTO 31
  IF ~~ THEN REPLY #41801 /* ~"J'avais une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41802 /* ~"Au revoir, Kimasxi."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #41610 /* ~"Ça te *plairait* d'être à moitié comme Kimasxi, bougre… De toute façon, même si tu ressemblais à un derrière de chèvre, ce serait toujours mieux que ce visage balafré."~ */
  IF ~~ THEN REPLY #41803 /* ~"Ça suffit, Kimasxi. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41804 /* ~"Je n'ai pas le temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.8
  SAY #41611 /* ~"Va chercher dans les gouttières de la Ruche… à moins que ce ne soit qu'une ressemblance. Bon, plus sérieusement… C'est Marissa qui l'a volé."~ */
  IF ~  GlobalGT("Marissa","GLOBAL",0)
~ THEN REPLY #41805 /* ~"Marissa ? Tu es sûre ?"~ */ GOTO 33
  IF ~  Global("Marissa","GLOBAL",0)
~ THEN REPLY #41806 /* ~"Marissa… Je ne l'ai encore jamais rencontrée. Tu es sûre de ce que tu avances ?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #41612 /* ~"Non, mais j'espère que tu feras irruption dans sa chambre et que tu la dérangeras assez pour qu'elle s'en prenne à toi."~ */
  IF ~~ THEN REPLY #41807 /* ~"Hum. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41808 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.11
  SAY #41613 /* ~"Oui, elle se cache sous mon lit. Vas-y… Mets-toi à quatre pattes et regarde. J'en profiterai pas pour te donner un coup de pied… Promis."~ */
  IF ~~ THEN REPLY #41809 /* ~Mets-toi à quatre pattes et regarde.~ */ GOTO 35
  IF ~~ THEN REPLY #41810 /* ~"Hum. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41811 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41614 /* ~Alors que tu regardes sous le lit de Kimasxi (où bien sûr, il n'y a rien), tu te rends compte qu'elle est juste derrière toi. "Je ne pourrais pas… C'est trop facile. Lève-toi, espèce de pauvre mort stupide. Il n'y *a* pas de dixième étudiante."~ */
  IF ~~ THEN REPLY #41812 /* ~"Alors j'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41813 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.0
  SAY #41615 /* ~"Je m'appelle Fiche-moi-la-paix. Et je peux deviner le tien : Tire-toi-de-là-avant-que-je-te-fiche-le-feu-au-derrière."~ */
  IF ~~ THEN REPLY #41814 /* ~"J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41815 /* ~"Alors, je suppose que c'est Kimasxi, comme c'est écrit sur le collier. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #41616 /* ~"Je suis pas là pour toi, ça c'est sûr." Elle te sourit d'un air narquois. "Je réfléchis au meilleur moyen de te dire d'aller caguer."~ */
  IF ~~ THEN REPLY #41816 /* ~"J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41817 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #41617 /* ~"Certainement. Tombée-en-Disgrâce recueille les pauvres orphelines dans les rues de la Ruche et leur apprend à baiser avec des hommes hideux comme toi ; en plus, elle nous bat, nous oblige à porter des guenilles et boit notre sang. C'est vraiment horrible."~ */
  IF ~~ THEN REPLY #41818 /* ~"Je… je vois. J'ai une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41819 /* ~"Très bien… Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.7
  SAY #41618 /* ~Kimasxi se met en colère : "QUI T'A DIT ÇA -" Soudain, elle se tait et te fixe en plissant les yeux. "En tout cas, si j'y suis *allée*, bige, je n'ai pas pris son voile pourri… Fouille ma chambre, si tu veux. Mais si jamais je te prends à renifler mes culottes, je ferai en sorte que tu ne puisses plus jamais entrer ici."~ */
  IF ~~ THEN REPLY #41820 /* ~"*Qui* pourrait bien aller renifler tes culottes ?"~ */ JOURNAL #66514 /* ~J'ai dit à Kimasxi qu'on l'avait vue sortir de la chambre de Marissa, mais elle affirme que ce n'est pas elle qui a volé le Voile Pourpre. Par contre, elle m'a appris que sa chambre aussi avait été dévalisée.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #41619 /* ~"J'en sais rien, mais on m'en a déjà fauché plusieurs paires. Et mon soutien-gorge en cuir clouté préféré aussi." Elle souffle de colère.~ */
  IF ~~ THEN REPLY #41822 /* ~"Hum. J'ai une autre question."~ */ GOTO 22
  IF ~~ THEN REPLY #41823 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #41620 /* ~"Tiens, c'est toi. Tu es toujours aussi moche. Tu reviens te faire maltraiter par Kimasxi, hein ?"~ */
  IF ~~ THEN REPLY #41824 /* ~"Non, j'ai juste quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #41825 /* ~"En fait, je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN BEGIN 42 // from:
  SAY #41621 /* ~"Oh, c'est encore *toi*. Tu ne peux plus te passer de moi, hein ?"~ */
  IF ~~ THEN REPLY #41826 /* ~"J'avais quelques questions…"~ */ GOTO 22
  IF ~~ THEN REPLY #41827 /* ~"Je ne faisais que passer, Kimasxi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.3 22.4
  SAY #41622 /* ~"Cette bétasse d'Ecco ? Je ne la connais pas. Je ne lui parle pas… Et puis, ça servirait à quoi ? Elle ne risque pas de répondre. Va demander à Dolora la Frigide… Je l'ai vue jouer au Go avec un des anciens petits amis d'Ecco, du temps où elle parlait encore."~ */
  IF ~~ THEN REPLY #41828 /* ~"J'avais une autre question…"~ */ GOTO 22
  IF ~~ THEN REPLY #41829 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
