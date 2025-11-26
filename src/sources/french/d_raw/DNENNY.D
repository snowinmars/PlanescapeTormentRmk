// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNENNY~

IF ~  Global("Nenny","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2964 /* ~Cette petite femme attirante sourit de bonheur et chantonne à voix basse. Ses grands yeux bleu pâle semblent enregistrer tout ce qui l'entoure.~ */
  IF ~~ THEN REPLY #2965 /* ~"Bonjour…"~ */ DO ~SetGlobal("Nenny","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #39865 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39866 /* ~La jeune femme souriante fait une révérence gracieuse et lève la tête vers toi en souriant. "*Bonjour*, mon bon monsieur ! Je suis Nenny ! Et comment vas-*tu* en cette belle j… ?" Elle remarque soudain tes cicatrices et place une main gantée sur sa bouche. "Oh par les dieux ! Tu es blessé !" Elle plisse les yeux. "Partout !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 421
  IF ~  !NearbyDialog("DMorte")
HPPercent(Protagonist,100)
~ THEN REPLY #39867 /* ~"Ce sont toutes de vieilles cicatrices. Ça va."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentGT(Protagonist,49)
~ THEN REPLY #39868 /* ~"Juste un peu ; ça ira mieux dans un instant."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
HPPercentLT(Protagonist,50)
~ THEN REPLY #39869 /* ~"Oui, mais mes blessures devraient vite cicatriser."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39870 /* ~"N'y fais pas attention. J'ai quelques questions…"~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39871 /* ~"Ne t'inquiète pas pour ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 1.3
  SAY #39872 /* ~Elle acquiesce et baisse la main en silence.~ */
  IF ~~ THEN REPLY #39873 /* ~"J'avais des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #39874 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 4.0 7.1 9.2 10.2 11.3 12.2 13.3 14.2 15.1 18.0 19.2 21.0 21.1 22.3 23.1 24.3 25.2 26.0 27.0 28.0 29.1 30.0 31.0 32.0 33.1 35.1 36.1 37.1 38.1 47.0 52.0 53.0 54.0 55.0
  SAY #39875 /* ~"Je t'en prie, demande !" Elle sourit avec insouciance.~ */
  IF ~~ THEN REPLY #39876 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 32
  IF ~~ THEN REPLY #39877 /* ~"Tu peux me parler de cet endroit ?"~ */ GOTO 33
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39878 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 31
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67847 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Rumor_3","AR0605",1)
~ JOURNAL #66744 /* ~Une des prostituées m'a conseillé d'interroger Dolora au sujet d'Ecco, la silencieuse. Elle a ajouté que Dolora discutait parfois avec un ancien soupirant d'Ecco, qui connaissait cette dernière avant qu'elle ne perde la parole.~ */ GOTO 31
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39879 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ JOURNAL #66743 /* ~J'ai demandé à l'une des prostituées si elle savait si Kesai-Serris était vraiment la fille de Ravel, et elle m'a conseillé d'aller poser ma question à Juliette. Apparemment, Kesai et Juliette étaient de bonnes amies avant que cette dernière ne rencontre Montague.~ */ GOTO 30
  IF ~  Global("Nenny_Hint2","AR0605",2)
~ THEN REPLY #39880 /* ~"Kimasxi dit que quelqu'un a également volé des affaires dans sa chambre. Tu as remarqué quelque chose de bizarre ?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",3)
~ JOURNAL #39526 /* ~Nenny m'a dit qu'elle avait vu un homme sortir discrètement de la chambre de Kimasxi Langue-de-Vipère, mais pas de la Maison de tolérance. S'il s'agissait d'un voleur, se pourrait-il qu'il se trouve encore à l'intérieur de l'établissement ?~ */ GOTO 54
  IF ~  Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39881 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint","AR0605",0)
Global("Scent_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39882 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ DO ~SetGlobal("Nenny_Hint","AR0605",1)
~ JOURNAL #39525 /* ~Nenny m'a dit qu'elle avait vu Marissa sortir discrètement de la chambre de Viviane. Peut-être est-ce elle qui a volé le parfum de Viviane. Même si ce n'est pas le cas, elle saura peut-être me dire où le trouver.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",0)
~ THEN REPLY #39883 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 34
  IF ~  Global("Nenny_Hint2","AR0605",0)
Global("Veil_Quest","AR0605",1)
Global("Nenny_Angry","AR0605",1)
~ THEN REPLY #39884 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",1)
~ JOURNAL #39524 /* ~Nenny m'a dit qu'elle avait vu Kimasxi Langue-de-Vipère sortir discrètement de la chambre de Marissa. Peut-être est-ce elle qui a volé le voile pourpre. Même si ce n'est pas le cas, elle saura peut-être me dire où le trouver.~ */ GOTO 53
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39885 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ JOURNAL #66742 /* ~J'ai interrogé l'une des prostituées de la Maison de tolérance au sujet de Ravel, et elle m'a dit d'aller voir Yvonne. Celle-ci recueille apparemment les histoires, et il y a de fortes chances qu'elle en connaisse quelques-unes au sujet de Ravel.~ */ GOTO 4
  IF ~~ THEN REPLY #39886 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.10
  SAY #39887 /* ~"Non, désolé. Mais c'est un nom *génial*, hein ? Je parie que c'est une personne très intéressante ! Hé… tu devrais en parler avec Yvonne. Elle recueille toutes sortes d'histoires !"~ */
  IF ~~ THEN REPLY #39888 /* ~"Sûrement. J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39889 /* ~"C'est tout ce que je voulais savoir. Au revoir, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39890 /* ~"Hein ?" Elle semble incapable de détacher son regard de tes cicatrices. "Oh, c'est vraiment honteux de ma part ! Excuse-moi de fixer tes cicatrices comme ça ! Je m'appelle Nenny." Elle fait une petite révérence. "Et j'ai le grand plaisir de t'accueillir dans notre Maison de tolérance des Plaisirs Intellectuels." Elle recommence à regarder ton corps. "Et en plus, tu as des tatouages sous les cicatrices ! C'est quoi, celui-là ?" Elle montre l'un de tes tatouages.~ */
  IF ~~ THEN REPLY #39891 /* ~"Celui-là, c'est…"~ */ GOTO 6
  IF ~~ THEN REPLY #39892 /* ~"N'y fais pas attention, je…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #39893 /* ~"C'est fascinant ! Regarde comme les lignes d'encre… je crois que c'est de l'encre…" Elle louche sur le tatouage, puis tend le bras pour le toucher.~ */
  IF ~~ THEN REPLY #39894 /* ~Laisse-la te toucher.~ */ GOTO 7
  IF ~~ THEN REPLY #39895 /* ~Ne la laisse pas te toucher.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39896 /* ~"Je *crois* que c'est de l'encre." Elle suit le pourtour du tatouage avec son doigt. "C'en est ? Tu parles d'un dessin ! Regarde la façon dont les lignes se croisent ici." Elle touche le centre du tatouage. "C'est tout bonnement incroyable…" Elle fait la moue et se renfrogne, déçue. "Je pourrais mieux le distinguer s'il n'y avait pas toutes ces cicatrices…"~ */
  IF ~~ THEN REPLY #39897 /* ~"Il n'y a rien à faire pour les cicatrices, elles sont permanentes."~ */ GOTO 10
  IF ~~ THEN REPLY #39898 /* ~"J'avais des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39899 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #39900 /* ~Nenny lève la tête vers toi alors que tu l'empêches de toucher ta peau. "Désolée, désolée, mon bon monsieur ! Je ne voulais pas te faire de mal, je voulais juste suivre le pourtour du tatouage pour avoir une idée de sa forme. Il est absolument fascinant !" Elle fait la moue un instant, puis se donne une légère tape sur la tête. "Trop directe ! Je suis trop directe ! Toutes mes excuses, mon bon monsieur ! Je t'en prie, ne te fâche pas !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 422
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39901 /* ~"C'est rien."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39902 /* ~"Que ça ne se reproduise pas."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.2
  SAY #39903 /* ~Nenny acquiesce, puis te sourit gentiment. "Je suis désolée, vraiment désolée… mais il *faut* que je sache… est-ce que tu es *certain* que ça va ? Je te regarde et je ne peux pas m'empêcher de penser que tu dois *souffrir*."~ */
  IF ~~ THEN REPLY #39904 /* ~"C'est pas une souffrance physique, en fait."~ */ GOTO 11
  IF ~~ THEN REPLY #39905 /* ~"Je souffre d'amnésie, mais c'est tout."~ */ GOTO 20
  IF ~~ THEN REPLY #39906 /* ~"Laisse tomber. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39907 /* ~"Ne t'inquiète pas pour ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #39908 /* ~"Oh, je suis désolée, vraiment désolée… la peste soit sur moi pour les avoir mentionnées !" Elle recule. "Mais il *faut* que je sache… est-ce que tu es *certain* que ça va ? Je te regarde et je ne peux pas m'empêcher de penser que tu dois *souffrir*."~ */
  IF ~~ THEN REPLY #39909 /* ~"C'est pas une souffrance physique, en fait."~ */ GOTO 11
  IF ~~ THEN REPLY #39910 /* ~"Je souffre d'amnésie, mais c'est tout."~ */ GOTO 20
  IF ~~ THEN REPLY #39911 /* ~"Laisse tomber. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39912 /* ~"Ne t'inquiète pas pour ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #39913 /* ~"Oh ! Est-ce que tu es blessé à l'intérieur ? Dans la tête ?" Elle joint les mains avec ferveur. "Je peux peut-être t'aider ! En fait, je sais que je le peux ! Dans la formation de Sensat, on apprend comment soulager la peine des autres… ma maîtresse dit qu'un Sensat peut soulager la peine causée par une blessure en l'absorbant… mais je *peux* quand même t'aider ! Tu veux que j'essaie ?! Je t'en prie, dis oui !"~ */
  IF ~~ THEN REPLY #39914 /* ~"De Sensats ?"~ */ GOTO 26
  IF ~~ THEN REPLY #39915 /* ~"Oui, vas-y."~ */ GOTO 16
  IF ~~ THEN REPLY #39916 /* ~"Ta maîtresse ?"~ */ GOTO 12
  IF ~~ THEN REPLY #39917 /* ~"Non. J'avais des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39918 /* ~"Non, je ne souffre pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #39919 /* ~"Oh, oui", dit Nenny avec gaieté. "Maîtresse Grâce. C'est la personne la plus fantastique que je connaisse !"~ */
  IF ~~ THEN REPLY #39920 /* ~"Parle-moi de Maîtresse Grâce."~ */ GOTO 13
  IF ~~ THEN REPLY #39921 /* ~"Je comprends. Vas-y, essaie de m'aider."~ */ GOTO 16
  IF ~~ THEN REPLY #39922 /* ~"Je n'ai vraiment pas besoin de ton aide, mais j'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39923 /* ~"Je vois. Mais je n'ai pas vraiment besoin de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39924 /* ~"Elle est tellement belle, n'est-ce pas ? On a du mal à croire qu'elle vient des Plans Inférieurs, elle est tellement gentille et intelligente !"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN GOTO 14
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39925 /* ~"Qu'est-ce que les Plans Inférieurs viennent faire là-dedans ?"~ */ GOTO 15
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39926 /* ~"Je comprends. Vas-y, essaie de m'aider."~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39927 /* ~"Je n'ai vraiment pas besoin de ton aide, mais j'ai des questions…"~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #39928 /* ~"Je vois. Mais je n'ai pas vraiment besoin de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39929 /* ~Nenny remarque soudain Tombée-en-Disgrâce à tes côtés. "Oh ! Maîtresse Grâce !" Elle fait une révérence ; Grâce lui fait un signe de tête en souriant.~ */
  IF ~~ THEN REPLY #39930 /* ~"Qu'est-ce que les Plans Inférieurs viennent faire là-dedans ?"~ */ GOTO 15
  IF ~~ THEN REPLY #39931 /* ~"Je comprends. Vas-y, essaie de m'aider."~ */ GOTO 16
  IF ~~ THEN REPLY #39932 /* ~"Je n'ai vraiment pas besoin de ton aide, mais j'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39933 /* ~"Je vois. Mais je n'ai pas vraiment besoin de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #39934 /* ~"Eh bien, ils sont tous tellement *mauvais* là-bas. Qui pourrait se douter que Maîtresse Grâce vient d'un tel endroit ?"~ */
  IF ~~ THEN REPLY #39935 /* ~"Je comprends. Vas-y, essaie de m'aider."~ */ GOTO 16
  IF ~~ THEN REPLY #39936 /* ~"Je n'ai vraiment pas besoin de ton aide, mais j'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39937 /* ~"Je vois. Mais je n'ai pas vraiment besoin de ton aide. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1 12.1 13.2 14.1 15.0
  SAY #39938 /* ~Nenny joint les mains et les pose doucement sur ton front.~ */
  IF ~  HPPercent(Protagonist,100)
~ THEN REPLY #39939 /* ~Laisse-la te toucher.~ */ GOTO 17
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #39940 /* ~Laisse-la te toucher.~ */ DO ~Damage(Protagonist,RAISE,1)
~ GOTO 17
  IF ~~ THEN REPLY #39941 /* ~Ne la laisse pas te toucher.~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 19.1 29.0
  SAY #39942 /* ~Alors que Nenny s'approche, tu remarques que sa peau dégage une légère parfum de lilas. Elle pose doucement ses mains gantées sur ton front et ferme les yeux. Elle chantonne à voix basse, et tu ressens une vague chaleur t'envahir le corps.~ */
  IF ~~ THEN REPLY #39943 /* ~"Euh… merci. C'était agréable."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #39944 /* ~"Tant mieux ! Je suis contente d'avoir pu t'aider !" Nenny lève vers toi un visage épanoui ; elle semble prête à éclater de joie.~ */
  IF ~~ THEN REPLY #39945 /* ~"J'avais une question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39946 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #39947 /* ~Nenny se fige, surprise, puis légèrement blessée. "Je suis désolée ! Désolée ! Tu n'aimes pas qu'on te touche ? J'aurais dû te le dire ! C'est comme ça que fonctionne le Toucher Sensoriel… je place mes mains sur ton corps - en général près de la blessure, pour aider l'énergie à se concentrer - puis j'extrais la douleur."~ */
  IF ~~ THEN REPLY #39948 /* ~"Le Toucher Sensoriel… ?"~ */ GOTO 29
  IF ~~ THEN REPLY #39949 /* ~"D'accord. Alors vas-y."~ */ GOTO 17
  IF ~~ THEN REPLY #39950 /* ~"J'avais une question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39951 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.1 10.1
  SAY #39952 /* ~"Amnésie ?" Nenny cligne des yeux, puis s'anime. "Une perte de mémoire ! Tu as *tellement* de chance", dit-elle avec entrain. "Tout doit être tellement *nouveau* pour toi."~ */
  IF ~~ THEN REPLY #39953 /* ~"Il y a du vrai dans ce que tu dis, mais la nouveauté n'est pas la bienvenue."~ */ GOTO 21
  IF ~~ THEN REPLY #39954 /* ~"J'en ai pas grand-chose à faire."~ */ GOTO 22
  IF ~~ THEN REPLY #39955 /* ~"Je n'y avais pas pensé… sous cet angle."~ */ GOTO 23
  IF ~~ THEN REPLY #39956 /* ~"Je préfèrerais que certaines choses me soient plus familières."~ */ GOTO 24
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39957 /* ~Elle plisse les yeux. "Ça paraît vraiment *triste*."~ */
  IF ~~ THEN REPLY #39958 /* ~"Oui, ça l'est… mais j'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39959 /* ~"Pas vraiment. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39960 /* ~"Peut-être… en tout cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #39961 /* ~"Vraiment ? Pourquoi ?"~ */
  IF ~~ THEN REPLY #39962 /* ~"Parce que c'est comme ça. Comment tu veux expliquer un sentiment ?"~ */ GOTO 25
  IF ~~ THEN REPLY #39963 /* ~"Je n'aime pas perdre mes souvenirs, et la mort n'est pas une expérience agréable."~ */ GOTO 28
  IF ~~ THEN REPLY #39964 /* ~"Sans fondations sur lesquelles construire - sans perception de qui je suis - je ne peux pas progresser."~ */ GOTO 28
  IF ~~ THEN REPLY #39965 /* ~"Parce que… peu importe. J'ai une question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39966 /* ~"Je ne veux plus parler de ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #39967 /* ~Nenny tape dans ses mains avec enthousiasme. "Je suis tellement contente d'avoir pu te faire réfléchir à cette idée ! J'ai entendu dire qu'être un Sensat, ça voulait dire… faire connaître de nouvelles expériences aux autres."~ */
  IF ~~ THEN REPLY #39968 /* ~"Un Sensat ?"~ */ GOTO 26
  IF ~~ THEN REPLY #39969 /* ~"J'avais quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39970 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3
  SAY #39971 /* ~"Comme qui ?" Elle sourit, puis pouffe de rire. "Je veux dire, comme quoi ?"~ */
  IF ~  GlobalGT("Know_Player_Killer","GLOBAL",0)
~ THEN REPLY #39972 /* ~"Mon meurtrier, par exemple."~ */ GOTO 28
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #39973 /* ~"Pas Morte. Il m'est trop familier."~ */ EXTERN ~DMORTE~ 424
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #39974 /* ~"Je voudrais savoir si je connaissais mes compagnons avant."~ */ GOTO 28
  IF ~~ THEN REPLY #39975 /* ~"Parce que… peu importe. J'ai une question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39976 /* ~"Je ne veux plus parler de ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #39977 /* ~"Oh, on peut essayer !", dit Nenny avec enthousiasme. "Essaie ! Allez, je sais que tu en es capable."~ */
  IF ~~ THEN REPLY #39978 /* ~"Je n'aime pas perdre mes souvenirs, et la mort n'est pas une expérience agréable."~ */ GOTO 28
  IF ~~ THEN REPLY #39979 /* ~"Sans fondations sur lesquelles construire - sans perception de qui je suis - je ne peux pas progresser."~ */ GOTO 28
  IF ~~ THEN REPLY #39980 /* ~"Parce que… peu importe. J'ai une question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39981 /* ~"Je ne veux plus parler de ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 11.0 23.0
  SAY #39982 /* ~"Les Sensats ! Oh, ils sont tellement *rêveurs.* Ils croient qu'on ne peut arriver à la compréhension qu'en ayant le plus d'expériences possibles du multivers ! Goûte ceci, écoute cela, ressens ceci, regarde cela… et il y a *tellement* de choses, c'est un endroit *tellement* grand, que c'est pas toujours facile de tout enregistrer."~ */
  IF ~~ THEN REPLY #39983 /* ~"J'avais d'autres questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39984 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #39985 /* ~Nenny pouffe de rire.~ */
  IF ~~ THEN REPLY #39986 /* ~"J'avais des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #39987 /* ~"Au revoir, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.1 22.2 24.0 24.2 25.0 25.1
  SAY #39988 /* ~"Heu…" Nenny plisse les sourcils et réfléchit. "Je suppose que c'est logique. En tout cas, j'aimerais vraiment t'aider !"~ */
  IF ~~ THEN REPLY #39989 /* ~"Eh bien, tu *pourrais* répondre à une question pour moi…"~ */ GOTO 3
  IF ~~ THEN REPLY #39990 /* ~"Moi aussi. Au revoir, Nenny…"~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.0
  SAY #39991 /* ~"Oui ! Tous les Sensats peuvent le faire, mais je n'en suis pas encore une, alors je ne suis pas encore très douée. Quand je saurai le faire correctement, je pourrai extraire les souffrances des autres pour les absorber - ça me permettra de les aider, et tout ça !"~ */
  IF ~~ THEN REPLY #39992 /* ~"Alors, vas-y."~ */ GOTO 17
  IF ~~ THEN REPLY #39993 /* ~"J'avais une question…"~ */ GOTO 3
  IF ~~ THEN REPLY #39994 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.4
  SAY #39995 /* ~"Aucune idée ! Je regrette. Hum. Demande à Juliette. Kesai et elle étaient très liées. Puis Juliette a connu Montague, et maintenant elle ne se parlent plus beaucoup."~ */
  IF ~~ THEN REPLY #39996 /* ~"J'ai une autre question, Nenny…"~ */ GOTO 3
  IF ~~ THEN REPLY #39997 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 3.2 3.3
  SAY #39998 /* ~"Oh, Ecco ! Oui, c'est un mystère, hein ?! Tu sais qu'elle ne parle pas du tout ? Vraiment !" Nenny se penche vers toi et baisse la voix. "Je crois qu'elle en a bavé, tant et si bien qu'elle ne parlera peut-être plus jamais ! Je parie que Dolora est au courant, car il lui arrive de voir le dernier amant qu'a eu Ecco du temps où elle parlait encore !"~ */
  IF ~~ THEN REPLY #39999 /* ~"J'ai une autre question, Nenny…"~ */ GOTO 3
  IF ~~ THEN REPLY #40000 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.0
  SAY #40001 /* ~"Je *te* parle, idiot !" Elle pouffe de rire et te donne un coup dans le ventre. "Tout comme je parle à *tous* nos clients. C'est ce que font toutes les prostituées ; c'est la raison d'être de la Maison de tolérance ! Apprendre de nouvelles méthodes de conversation, partager des expériences et comprendre les autres."~ */
  IF ~~ THEN REPLY #40002 /* ~"J'ai une autre question, Nenny…"~ */ GOTO 3
  IF ~~ THEN REPLY #40003 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 3.1
  SAY #40004 /* ~"Hum… bien sûr que je peux ! La Maison de tolérance des Plaisirs Intellectuels est une école fondée par Maîtresse Tombée-en-Disgrâce. Ici, les prostituées - comme moi ! - apprennent les tenants et les aboutissants de la conversation, ce qui nous aide à en savoir plus sur nous-mêmes et sur les autres. J'adore cet endroit… c'est une vague incessante d'expériences, qui me submerge et qui emplit ma tête de nouvelles idées toutes fraîches !"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 425
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40006 /* ~"J'ai une autre question, Nenny…"~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40007 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 3.6 3.8
  SAY #40008 /* ~"Hum." Nenny fronce les sourcils. "Je… euh…"~ */
  IF ~~ THEN REPLY #40009 /* ~"Quoi ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #40010 /* ~"Oh, je ne peux pas ! Je ne peux critiquer personne ! Je ne suis pas douée pour ça !"~ */
  IF ~~ THEN REPLY #40011 /* ~"Ce n'est pas mal de dénoncer une voleuse, Nenny."~ */ GOTO 36
  IF ~~ THEN REPLY #40012 /* ~"Laisse tomber… j'ai une autre question."~ */ GOTO 3
  IF ~~ THEN REPLY #40013 /* ~"C'est pas grave, Nenny. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #40014 /* ~"Oh, mais je ne sais pas si c'est une voleuse…" Nenny se mord la lèvre et te regarde avec des yeux suppliants, comme si elle voulait que tu n'abordes pas ce sujet.~ */
  IF ~~ THEN REPLY #40015 /* ~"Écoute, tu pourrais *essayer* de dire quelque chose de méchant sur elle."~ */ GOTO 37
  IF ~~ THEN REPLY #40016 /* ~"Laisse tomber… j'ai une autre question."~ */ GOTO 3
  IF ~~ THEN REPLY #40017 /* ~"C'est pas grave, Nenny. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #40018 /* ~"Oh, d'accord." Nenny met les mains sur les hanches et fronce les sourcils, presque exagérément. Tu résistes à l'envie de rire. "Ooooooh, elle m'est vraiment, *vraiment* antipathique." Elle s'interrompt un instant, puis t'observe du coin de l'œil, comme si elle évaluait ta réaction. "C'était convaincant ?"~ */
  IF ~~ THEN REPLY #40019 /* ~"Non, pas vraiment…"~ */ GOTO 38
  IF ~~ THEN REPLY #40020 /* ~"Non. Oublie cette idée… j'ai une autre question."~ */ GOTO 3
  IF ~~ THEN REPLY #40021 /* ~"C'est pas grave, Nenny. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #40022 /* ~Nenny se renfrogne. "Je savais que je ne serais pas douée pour ça !" Elle lève les yeux vers toi, abattue. "Tu te rends compte comme c'est *difficile* de dire du mal de quelqu'un ? C'est vraiment pas bien."~ */
  IF ~~ THEN REPLY #40023 /* ~"Tu pourrais t'entraîner sur moi, Nenny."~ */ GOTO 39
  IF ~~ THEN REPLY #40024 /* ~"Laisse tomber… j'ai une autre question."~ */ GOTO 3
  IF ~~ THEN REPLY #40025 /* ~"C'est pas grave, Nenny. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #40026 /* ~"Je suppose que je pourrais essayer…" Elle semble hésiter. "Espèce de méchant ! Grosse brute !" Elle met les mains sur les hanches. "Sale type !" Elle te regarde. "C'était comment ?"~ */
  IF ~~ THEN REPLY #40027 /* ~"Mets plus l'accent sur 'brute'."~ */ GOTO 40
  IF ~~ THEN REPLY #40028 /* ~"Essaie de me frapper."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #40029 /* ~"Espèce de méchant ! Grosse *brute* !"~ */
  IF ~~ THEN REPLY #40030 /* ~"C'est mieux. Maintenant frappe-moi."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #40031 /* ~Nenny se met les mains sur la bouche et paraît choquée. "Oh, je ne peux pas ! Je ne dois pas !" Elle plisse les yeux. "Au fait, comment on s'y prend pour taper quelqu'un ?"~ */
  IF ~~ THEN REPLY #40032 /* ~"Vas-y. Doucement, si c'est vraiment nécessaire. Souviens-toi : je suis une sale brute cruelle. Je le mérite."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #40033 /* ~Nenny te donne une claque ; tu la sens à peine. Elle a toujours l'air choquée et a peur de t'avoir fait mal. "Oh, je suis désolée ! Ça t'a fait mal ? Dis-moi que ça va !"~ */
  IF ~~ THEN REPLY #40034 /* ~"Reste dans la peau du personnage, Nenny. Allez, montre-moi ce que t'as dans le ventre. Tu peux m'insulter… laisse-toi aller."~ */ GOTO 43
  IF ~~ THEN REPLY #40035 /* ~"Ouille ! Bon sang, on m'a jamais frappé aussi fort !"~ */ GOTO 49
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #40036 /* ~"Oh… enfin, oh !" Nenny se redresse, elle serre les poings, les plante sur ses hanches et prend un joli petit air renfrogné. "Oh, que tu sois damné ! C'est tout ce que tu mérites pour m'avoir fait subir tous ces affronts ! Toujours à sortir tard le soir…" Elle te toise des pieds à la tête. "À te bagarrer et à rentrer avec toutes ces cicatrices ! Que vont penser les gosses, hein ?"~ */
  IF ~~ THEN REPLY #40037 /* ~"Excellent."~ */ GOTO 44
  IF ~~ THEN REPLY #40038 /* ~"Euh… les gosses ?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 44 // from: 43.0 51.0
  SAY #40039 /* ~"Oh, y a pas d''excellent' qui tienne, je ne suis pas une espèce de lèche-bottes qui rechercherait ta bénédiction ! Je suis une femme libre, une femme libre sur le point de sortir de ta vie, à moins d'obtenir un engagement solide !"~ */
  IF ~~ THEN REPLY #40040 /* ~"D'accord… c'est bon, Nenny."~ */ DO ~SetAnimState("Nenny",ANIM_MIMEATTACK2)
~ GOTO 45
  IF ~~ THEN REPLY #40041 /* ~"Eh… calme-toi. C'est le moment d'arrêter la colère."~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #40042 /* ~Nenny te donne un coup de poing. Tu le sens à peine. "Prends ça." Elle t'en donne un autre. "Et ça !" Un troisième suit, et Nenny se transforme très vite en petite tornade furieuse.~ */
  IF ~~ THEN REPLY #40043 /* ~"OK, OK… c'est le moment de se calmer."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0 48.0
  SAY #40044 /* ~Nenny soupire de fatigue. "Ooooh. C'était plus facile que je pensais !"~ */
  IF ~~ THEN REPLY #40045 /* ~"Je ne te le fais pas dire."~ */ DO ~SetGlobal("Nenny_Angry","AR0605",1)
AddexperienceParty(5000)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #40046 /* ~"Et je suis sûre que je ferai mieux la prochaine fois ! Je suis ravie d'avoir appris un fait nouveau… merci !"~ */
  IF ~~ THEN REPLY #40047 /* ~"Bien sûr. J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #66337 /* ~"Pas de problème. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.1
  SAY #40048 /* ~"Quoi ?" La colère de Nenny monte d'un cran. "Tu as oublié nos enfants ? Tu es tellement saoul que tu en as oublié les *enfants* ?" Nenny lève les bras au ciel, exaspérée. "Tu es un bon à rien, qui ne sait rien de rien et avec bien d'autres défauts que je ne prendrai pas la peine d'énumérer maintenant."~ */
  IF ~~ THEN REPLY #40049 /* ~"Eh… calme-toi. C'est le moment d'arrêter la colère."~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 42.1
  SAY #40050 /* ~Nenny écarquille encore plus les yeux tandis que tu fais semblant de grimacer de douleur. "Oh, par les dieux ! Oh, je ne voulais pas te taper si fort ! Je suis désolée ! Désolée !"~ */
  IF ~~ THEN REPLY #40051 /* ~"Ne dis jamais désolée. Dis plutôt 'il faudra t'y faire'."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #40052 /* ~Nenny lève les yeux vers toi. "Oh… euh, il va falloir t'y faire."~ */
  IF ~~ THEN REPLY #40053 /* ~"Fronce les sourcils en disant ça. Parle durement, avec conviction."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #40054 /* ~Nenny se redresse, elle serre les poings, les plante sur ses hanches et prend un joli petit air renfrogné. "Il va falloir t'y faire !"~ */
  IF ~~ THEN REPLY #40055 /* ~"Excellent."~ */ GOTO 44
END

IF ~~ THEN BEGIN 52 // from: 3.7
  SAY #40056 /* ~"Peut-être. J'ai vu cette vilaine Marissa sortir en catimini de la chambre de Viviane un soir. Je ne dis pas que c'est elle qui l'a pris, mais elle n'est pas gentille, et c'est curieux, de toute façon, non ? À ta place, je lui poserais la question." Nenny hoche la tête.~ */
  IF ~~ THEN REPLY #40057 /* ~"Merci, Nenny. J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #40058 /* ~"C'est tout ce que je voulais savoir. Au revoir, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.9
  SAY #40059 /* ~"Tu parles ! J'ai vu cette garce de Kimasxi Langue-de-Vipère sortir discrètement de la chambre de Marissa une nuit. Ce sont toutes les deux des garces, tu sais, mais Kimasxi est vraiment horrible ! Enfin, à ta place, c'est d'abord elle que j'irais voir."~ */
  IF ~~ THEN REPLY #40060 /* ~"Merci, Nenny. J'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #40061 /* ~"C'est tout ce que je voulais savoir. Au revoir, Nenny."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 3.5
  SAY #40062 /* ~Nenny écarquille soudain les yeux. "Oh ! C'est vrai ! Tu sais, une fois, j'ai vu un homme sortir discrètement de la chambre de Kimasxi pendant qu'elle était sortie parler avec un client… j'ai surveillé la porte d'entrée toute la journée ce jour-là, mais il n'est jamais sorti de l'établissement! Tu ne trouves pas ça bizarre ? Je ne crois pas qu'il aurait pu sortir par la fenêtre, et je n'ai jamais compris où il était passé. Et ensuite, ça m'est complètement sorti de l'esprit ! Bizarre, non ?"~ */
  IF ~~ THEN REPLY #40063 /* ~"Oui, c'est vrai… j'ai une autre question…"~ */ GOTO 3
  IF ~~ THEN REPLY #40064 /* ~"C'est sûr. Au revoir, Nenny."~ */ EXIT
END

IF ~  Global("Nenny","GLOBAL",1)
~ THEN BEGIN 55 // from:
  SAY #40065 /* ~"*Bonjour*, mon bon monsieur ! Je suis Nenny ! Et comment vas-*tu* en cette belle j… ?" Nenny pouffe de rire et t'adresse un sourire lumineux. "Désolée ! Je savais bien que je t'avais déjà vu quelque part…"~ */
  IF ~~ THEN REPLY #40066 /* ~"C'est rien, Nenny. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #40067 /* ~"Je ne faisais que passer. Au revoir, Nenny."~ */ EXIT
END
