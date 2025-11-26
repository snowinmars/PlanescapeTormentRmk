// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISAI~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2974 /* ~Voici une statue en granit, grandeur nature d'un gentilhomme, les bras le long du corps et les yeux clos. C'est un travail de maître, aux détails raffinés, remarquablement réaliste… à tel point que tu te demandes si c'est réellement une statue.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28953 /* ~"Bonjour… ?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28954 /* ~"Bonjour…?"~ */ GOTO 2
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28955 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #28956 /* ~"Bonjour… Tu es Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28957 /* ~Touche la statue.~ */ GOTO 3
  IF ~~ THEN REPLY #28958 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 31.0
  SAY #28897 /* ~La statue ne répond pas.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28959 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28960 /* ~Touche la statue.~ */ GOTO 3
  IF ~~ THEN REPLY #28961 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #28898 /* ~La statue ne répond pas.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 285
END

IF ~~ THEN BEGIN 3 // from: 0.4 1.1 31.3
  SAY #28899 /* ~Tu touches la statue et tu t'aperçois que bien que les vêtements qui la parent soient en tissu gris plutôt qu'en pierre, la 'peau' est aussi froide et dure que du granit.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #28982 /* ~"Hum. Qui pourrait bien vouloir habiller une statue ?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
NearbyDialog("DMorte")
~ THEN REPLY #28983 /* ~"Hum. Qui pourrait bien vouloir habiller une statue ?"~ */ EXTERN ~DMORTE~ 287
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28984 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28985 /* ~Frappe la statue.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28986 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28900 /* ~La statue reste aussi impassible que jamais à ta requête.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28987 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28988 /* ~Frappe la statue.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28989 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 0.3 1.0 3.2 4.0 31.1 31.2
  SAY #28901 /* ~La 'statue' bouge… à peine, presque imperceptiblement mais tu as l'impression qu'elle a acquiescé.~ */
  IF ~~ THEN REPLY #28990 /* ~"Bien. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #28991 /* ~"C'est ce que je pensais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 32.0
  SAY #28902 /* ~La 'statue' reste plus silencieuse que jamais.~ */
  IF ~~ THEN REPLY #28992 /* ~"Ho hé ? Mes questions ?"~ */ GOTO 7
  IF ~~ THEN REPLY #28993 /* ~"Hum. Au revoir, alors."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #28903 /* ~Toujours pas de réponse.~ */
  IF ~~ THEN REPLY #28994 /* ~Attends une réponse.~ */ GOTO 57
  IF ~~ THEN REPLY #28998 /* ~Abandonne et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 58.0 58.1
  SAY #28904 /* ~Les yeux de la statue s'ouvrent ; elle te regarde de ses yeux gris, froids. Elle parle avec lourdeur, d'une voix évoquant la friction de deux blocs. "J'apprécie ta… patience. Qui-Sai va…. maintenant… parler avec toi."~ */
  IF ~~ THEN REPLY #28999 /* ~"J'ai des questions à te poser sur toi…"~ */ GOTO 11
  IF ~~ THEN REPLY #29000 /* ~"J'ai des questions sur cet endroit."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29001 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 29
  IF ~~ THEN REPLY #29002 /* ~"Je reviendrai te parler plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 58.2
  SAY #28905 /* ~Les yeux de la statue s'ouvrent tout à fait, elle te regarde de ses yeux gris et froids. Elle parle avec lourdeur, d'une voix qui évoque la friction de deux blocs. "Ta patience… est notée. Qui-Sai va… maintenant… parler avec toi."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 289
END

IF ~~ THEN BEGIN 10 // from: 11.3 12.2 13.3 14.2 15.0 16.2 17.1 19.0 27.2 28.1 29.0 30.0 35.0 37.10 38.0 41.1 49.1 50.2 51.1 53.1 55.0 56.0 59.0
  SAY #28906 /* ~Alors que tu penses qu'il ne t'a pas entendu, il répond. "Demande."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65157 /* ~"J'ai parlé à Eli de ce que tu as dit ; et même lui a admis qu'il fallait se battre. Le vol n'est pas une méthode sur laquelle on s'appuie." ~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65158 /* ~"J'ai parlé à Eli de ce que tu as dit. Il a répondu qu'aucun voleur ne maîtrisait à ce point l'art du camouflage. Il y a des ennemis dont on ne peut pas se cacher, car notre odeur ou même nos pensées nous trahissent." ~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65159 /* ~"J'ai parlé à Madame Peignépine de ce que tu as dit. Elle a répondu que les mages sont physiquement déficients. Cette déficience est compensée par leurs sorts. Mais les moyens de sorcellerie épuisés, il reste toujours le combat."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29003 /* ~"J'ai des questions à te poser sur toi…"~ */ GOTO 11
  IF ~~ THEN REPLY #29004 /* ~"J'ai des questions sur cet endroit."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29005 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 29
  IF ~~ THEN REPLY #29006 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.3 33.3
  SAY #28907 /* ~Après une période de silence, il parle : "Demande."~ */
  IF ~~ THEN REPLY #29007 /* ~"Sur quoi tu méditais quand je t'ai rencontré pour la première fois ?"~ */ GOTO 51
  IF ~~ THEN REPLY #29008 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #29009 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 13
  IF ~~ THEN REPLY #29010 /* ~"En fait, j'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29011 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.2
  SAY #28908 /* ~"Je m'appelle… Qui-Sai."~ */
  IF ~~ THEN REPLY #29012 /* ~"T'es quoi, exactement ?"~ */ GOTO 27
  IF ~~ THEN REPLY #29013 /* ~"Que fais-tu ici ?"~ */ GOTO 13
  IF ~~ THEN REPLY #29014 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29015 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.1 27.1 28.0
  SAY #28909 /* ~"Qui-Sai…médite. Qui-sai… instruit aussi… les autres, aux arts… du combat."~ */
  IF ~~ THEN REPLY #29016 /* ~"Sur quoi est-ce que tu médites ?"~ */ GOTO 51
  IF ~  GlobalLT("Qui_Sai","GLOBAL",5)
Global("CW_Qui_Question","GLOBAL",0)
~ THEN REPLY #29017 /* ~"Tu peux m'entraîner ?"~ */ GOTO 14
  IF ~~ THEN REPLY #29018 /* ~"Qui es-tu ?"~ */ GOTO 12
  IF ~~ THEN REPLY #29019 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29020 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #28910 /* ~Il te regarde des pieds à la tête, en émettant un gargouillis sonore. Lentement, il lève les mains et casse un de ses ongles avec un *craquement* aigu. "Qui-Sai aimerait que tu… casses cette pierre." Il te tend le fragment de pierre vivante.~ */
  IF ~  CheckStatGT(Protagonist,8,STR)
~ THEN REPLY #29021 /* ~Brise la pierre.~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,9,STR)
~ THEN REPLY #29022 /* ~Brise la pierre.~ */ JOURNAL #28756 /* ~Qui-Sai, le maître de combat de la Salle des Fêtes, a refusé de m'entraîner, sous prétexte que j'étais trop faible. J'y retournerai peut-être si je réussis à devenir plus fort.~ */ GOTO 15
  IF ~~ THEN REPLY #29023 /* ~"En fait, peu importe. J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29024 /* ~"Bon, je dois partir, voici la pierre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #28911 /* ~Même en essayant de toutes tes forces, tu n'arrives pas à rompre la pierre. "Qui-Sai te trouve… inapte… trop faible… pour une formation aux arts du combat." Il te prend la pierre et la place dans sa bouche, la mastique jusqu'à la réduire en poussière avec un bruit strident.~ */
  IF ~~ THEN REPLY #29025 /* ~"J'ai des questions, alors…"~ */ GOTO 10
  IF ~~ THEN REPLY #29026 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #28912 /* ~Avec effort, tu casses le morceau de pierre en deux. Il prend les pierres et les place dans sa bouche, les mastique jusqu'à les réduire en poussière avec un bruit strident. "Qui-Sai te trouve… physiquement apte. Qui-Sai demande maintenant… pourquoi… est-ce que tu veux être entraîné ?"~ */
  IF ~~ THEN REPLY #29027 /* ~"Pour me défendre."~ */ GOTO 17
  IF ~~ THEN REPLY #29029 /* ~"Pour anéantir mes ennemis."~ */ GOTO 17
  IF ~~ THEN REPLY #29030 /* ~"Peu importe. Je voudrais te demander autre chose…"~ */ GOTO 10
  IF ~~ THEN REPLY #29031 /* ~"Je ne le veux pas pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #28913 /* ~"Qui-Sai dit… pas besoin de… mêlée alors."~ */
  IF ~~ THEN REPLY #29032 /* ~"Que veux-tu dire ?"~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29033 /* ~"Laisse tomber. Je voudrais te demander autre chose…"~ */ GOTO 10
  IF ~~ THEN REPLY #29034 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #28914 /* ~"Qui-Sai veut dire… qu'il y a plusieurs façons… de faire ces choses. On peut… voler l'arme d'un adversaire… en le laissant… sans défense."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29036 /* ~"Mais la bataille doit quand même avoir lieu. Compter sur le vol est une erreur."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29038 /* ~"Tu ne m'entraîneras pas, alors ?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 20.2
  SAY #28915 /* ~"Qui-Sai n'en voit… pas la nécessité. Tu n'as pas réussi à convaincre Qui-Sai… Tu devrais peut-être… parler au mentor des voleurs. Même si tu ne veux pas t'entraîner avec lui, il te fournira peut-être l'argument qui me convaincra."~ */
  IF ~~ THEN REPLY #29041 /* ~"Je voudrais te demander autre chose, alors…"~ */ JOURNAL #56794 /* ~Qui-Sai a refusé de m'enseigner une formation de guerrier. Ajoutant que les voleurs étaient plus puissants, il m'a conseillé d'aller demander une formation au maître-voleur de la Salle des Fêtes, ou du moins de parler à ce dernier et de trouver un argument permettant de réfuter celui de Qui-Sai si je ne veux pas devenir voleur.~ */ GOTO 10
  IF ~~ THEN REPLY #29042 /* ~"Dans ce cas, au revoir."~ */ JOURNAL #56794 /* ~Qui-Sai a refusé de m'enseigner une formation de guerrier. Ajoutant que les voleurs étaient plus puissants, il m'a conseillé d'aller demander une formation au maître-voleur de la Salle des Fêtes, ou du moins de parler à ce dernier et de trouver un argument permettant de réfuter celui de Qui-Sai si je ne veux pas devenir voleur.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.0 18.0 33.0
  SAY #28916 /* ~Au bout d'un moment, il acquiesce. "On peut… se cacher. Quand on n'est pas visible… on ne peut pas être attaqué. On est… invulnérable."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29043 /* ~"Aucun voleur n'a jamais fait preuve d'un tel degré de furtivité. Et il y a des ennemis dont on ne peut pas se cacher car notre odeur ou même nos pensées nous trahissent."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  GlobalGT("CW_Eli_Ans","GLOBAL",1)
~ THEN REPLY #29044 /* ~"Aucun voleur, même Eli, n'a jamais fait preuve d'un tel degré de furtivité. Et il y a des ennemis dont on ne peut pas se cacher car notre odeur, voire nos pensées, nous trahissent."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29045 /* ~"Tu ne m'entraîneras pas, alors ?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 10.1 20.0 20.1 33.1
  SAY #28917 /* ~Après une courte attente, il acquiesce. "Des sorts puissants… peuvent frapper beaucoup d'ennemis… plus rapidement… que toute épée."~ */
  IF ~  GlobalGT("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Les mages sont comme une flasque d'huile ardente… Puissants, mais une fois utilisés, il n'y a plus rien. Les mages sont physiquement désavantagés, leurs sorts permettent simplement de pallier ce désavantage. Une fois leur sorcellerie épuisée, le plus dur reste encore à faire dans le combat."~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",3)
SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  Global("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Les mages sont comme une flasque d'huile ardente… Puissants, mais une fois utilisés, il n'y a plus rien. Les mages sont physiquement désavantagés, leurs sorts permettent simplement de pallier ce désavantage. Une fois leur sorcellerie épuisée, le plus dur reste encore à faire dans le combat."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29050 /* ~"Tu ne m'entraîneras pas, alors ?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",2)
~ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 10.2 21.0 21.1 33.2
  SAY #28918 /* ~Il sourit légèrement, un gargouillis bruyant se forme dans sa gorge. "Qui-Sai te trouve… apte à être entraîné. Retrouve Qui-Sai… dans la salle d'entraînement."~ */
  IF ~~ THEN REPLY #29053 /* ~"J'y vais."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai a enfin accepté de me faire profiter de son savoir. Je dois le retrouver dans la salle d'entraînement des guerriers de la Salle des Fêtes.~ */ EXIT
  IF ~~ THEN REPLY #29054 /* ~"J'ai à faire pour le moment. J'irai plus tard."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai a enfin accepté de me faire profiter de son savoir. Je dois le retrouver dans la salle d'entraînement des guerriers de la Salle des Fêtes.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.3 4.1
  SAY #28919 /* ~Alors que tu t'apprêtes à frapper la statue, ses yeux s'ouvrent et elle empoigne fermement ton poignet. Ses yeux gris et froids à demi-fermés, elle parle d'une voix qui évoque la friction de deux blocs : "Pourquoi… tu… frapperais Qui-Sai ?"~ */
  IF ~~ THEN REPLY #29055 /* ~"Pardon, je voulais juste voir si tu étais vraiment une statue."~ */ GOTO 24
  IF ~~ THEN REPLY #29056 /* ~"Ça t'apprendra à te moquer de moi."~ */ GOTO 25
  IF ~~ THEN REPLY #29057 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #28920 /* ~Il acquiesce lentement, en se renfrognant. "Tu es… pardonné. Mais… tu manques… de patience."~ */
  IF ~~ THEN REPLY #29058 /* ~"Peut-être. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #29059 /* ~"Peut-être. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28921 /* ~"Qui-Sai ne voulait… tromper personne. Qui-Sai… te trouve… téméraire… et impertinent."~ */
  IF ~~ THEN REPLY #29060 /* ~"Pardon, je voulais juste voir si tu étais vraiment une statue."~ */ GOTO 24
  IF ~~ THEN REPLY #29061 /* ~"Dommage. J'ai des questions…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Qui_1","GLOBALGood",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #28922 /* ~Il ferme les yeux et se tait de nouveau.~ */
  IF ~~ THEN REPLY #29062 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0
  SAY #28923 /* ~"je suis… de la race dénommée… princes de pierre. Qui-Sai est… un génasi-de-terre."~ */
  IF ~~ THEN REPLY #29063 /* ~"Génasi ?"~ */ JOURNAL #65756 /* ~Qui-Sai, que j'ai rencontré à la Salle des Fêtes, m'a appris qu'il était un "génasi de terre", c'est-à-dire un être né de l'union d'un humain et d'une créature élémentaire de terre.~ */ GOTO 28
  IF ~~ THEN REPLY #29064 /* ~"Que fais-tu ici ?"~ */ GOTO 13
  IF ~~ THEN REPLY #29065 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29066 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #28924 /* ~Il acquiesce fièrement. "Le père de Qui-Sai… une créature élémentaire de terre… un Dao. La mère de Qui-Sai… une femme humaine… de noble héritage. Voilà ce que c'est que d'être un… génasi-de-terre."~ */
  IF ~~ THEN REPLY #29067 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 13
  IF ~~ THEN REPLY #29068 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29069 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 8.2 10.5 33.5
  SAY #28925 /* ~"Rien."~ */
  IF ~~ THEN REPLY #29070 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29071 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.4 33.4
  SAY #28926 /* ~"C'est… la Salle des Fêtes. Si tu veux en savoir plus… trouve quelqu'un d'autre…à qui demander."~ */
  IF ~~ THEN REPLY #29072 /* ~"Hum. J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29073 /* ~"Je trouverai quelqu'un d'autre, alors. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #28927 /* ~La statue est toujours là, immobile et silencieuse.~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #29074 /* ~"Bonjour…"~ */ GOTO 1
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #29075 /* ~"J'ai rencontré un mage dénommé Salabesh qui a parlé d'un homme de pierre. C'est toi ?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #29076 /* ~"Bonjour… Tu es Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #29077 /* ~Touche la statue.~ */ GOTO 3
  IF ~~ THEN REPLY #29078 /* ~Pars.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #28928 /* ~La 'statue' est toujours là, immobile et silencieuse.~ */
  IF ~~ THEN REPLY #29079 /* ~"Rebonjour. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #29080 /* ~Pars.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",3)
~ THEN BEGIN 33 // from:
  SAY #28929 /* ~"Qui-Sai te salue."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65160 /* ~"J'ai parlé à Eli de ce que tu as dit ; et même lui a admis qu'il fallait se battre. Le vol n'est pas une méthode sur laquelle on s'appuie." ~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65161 /* ~"J'ai parlé à Eli de ce que tu as dit. Il a répondu qu'aucun voleur ne maîtrisait à ce point l'art du camouflage. Il y a des ennemis dont on ne peut pas se cacher, car notre odeur ou même nos pensées nous trahissent." ~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65162 /* ~"J'ai parlé à Madame Peignépine de ce que tu as dit. Elle a répondu que les mages sont physiquement déficients. Cette déficience est compensée par leurs sorts. Mais les moyens de sorcellerie épuisés, il reste toujours le combat."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29081 /* ~"J'ai des questions à te poser sur toi…"~ */ GOTO 11
  IF ~~ THEN REPLY #29082 /* ~"J'ai des questions sur cet endroit."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29083 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 29
  IF ~~ THEN REPLY #29084 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #28930 /* ~"Ne… parle pas. Va… à la salle d'entraînement."~ */
  IF ~~ THEN REPLY #29085 /* ~"J'y vais."~ */ EXIT
  IF ~~ THEN REPLY #29086 /* ~"J'ai à faire pour le moment. J'irai plus tard."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",5)
~ THEN BEGIN 35 // from:
  SAY #28931 /* ~Il te regarde froidement de ses yeux de granit. "Tu es ici… pour être entraîné par Qui-Sai ?"~ */
  IF ~~ THEN REPLY #29087 /* ~"Non, j'ai des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29088 /* ~"Oui, entraîne-moi."~ */ GOTO 36
  IF ~~ THEN REPLY #65507 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #28932 /* ~"Es-tu… un guerrier de profession ?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29089 /* ~"Oui."~ */ GOTO 37
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29090 /* ~"Euh… non."~ */ GOTO 49
END

IF ~~ THEN BEGIN 37 // from: 36.0 40.0 41.0 42.2 43.2 44.2 45.2 46.2 48.1 50.0 50.1
  SAY #28933 /* ~"Qui-Sai est compétent… dans toutes les armes, spécialisé… dans aucune… et maître… de beaucoup. Qu'aimerais-tu apprendre… de Qui-Sai ?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29091 /* ~"Apprends-moi à me battre avec les poings."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29092 /* ~"Apprends-moi à me battre avec les poings."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29093 /* ~"Apprends-moi le maniement des lames."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29094 /* ~"Apprends-moi le maniement des lames."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29095 /* ~"Apprends-moi le maniement des gourdins."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29096 /* ~"Apprends-moi le maniement des gourdins."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29097 /* ~"Apprends-moi le maniement des haches."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29098 /* ~"Apprends-moi le maniement des haches."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29099 /* ~"Apprends-moi le maniement des marteaux."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29100 /* ~"Apprends-moi le maniement des marteaux."~ */ GOTO 46
  IF ~~ THEN REPLY #29101 /* ~"En fait, j'ai quelques questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29102 /* ~"Rien pour le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.2 37.4 37.6 37.8 40.1
  SAY #28934 /* ~"Tu ne peux… plus rien apprendre… pour l'instant. Reviens voir… Qui-Sai… quand tu auras… plus d'expérience."~ */
  IF ~~ THEN REPLY #29103 /* ~"J'ai quelques questions, alors…"~ */ GOTO 10
  IF ~~ THEN REPLY #29104 /* ~"C'est ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 42.0 43.0 44.0 45.0 46.0 48.0
  SAY #28935 /* ~"Qui-Sai … t'enseignera."~ */
  IF ~~ THEN REPLY #29105 /* ~Entraîne-toi avec lui.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #28936 /* ~"Qui-Sai est… content… de t'avoir… pour élève. Tu apprends… vite."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29106 /* ~"Merci. Tu peux m'apprendre autre chose ?"~ */ GOTO 37
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29107 /* ~"Merci. Tu peux m'apprendre autre chose ?"~ */ GOTO 38
  IF ~~ THEN REPLY #29108 /* ~"Merci. Au revoir, Qui-Sai."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.1 43.1 44.1 45.1 46.1
  SAY #28937 /* ~Après avoir évalué tes compétences, Qui-Sai secoue la tête. "Qui-Sai te trouve… déjà compétent dans cette… forme de combat. Qui-Sai ne peut… plus rien t'apprendre. Si tu veux mieux encore maîtriser cette arme… va voir Korur, dans le Bas Quartier."~ */
  IF ~~ THEN REPLY #29109 /* ~"Tu peux m'apprendre autre chose ?"~ */ GOTO 37
  IF ~~ THEN REPLY #29110 /* ~"J'ai quelques questions, alors…"~ */ GOTO 10
  IF ~~ THEN REPLY #29111 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 37.1
  SAY #28938 /* ~"Qui-Sai t'enseignera… l'art du combat… avec les poings. Est-ce que… c'est ce que tu veux ?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
~ THEN REPLY #29112 /* ~"Oui, apprends-moi."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,FIST,2)
~ THEN REPLY #29113 /* ~"Oui, apprends-moi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29114 /* ~"Non… Qu'est-ce que tu peux m'apprendre d'autre ?"~ */ GOTO 37
  IF ~~ THEN REPLY #29115 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 37.3
  SAY #28939 /* ~"Qui-Sai t'enseignera… l'art du combat avec… la lame. Est-ce que… c'est ce que tu veux ?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
~ THEN REPLY #29116 /* ~"Oui, apprends-moi."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
~ THEN REPLY #29117 /* ~"Oui, apprends-moi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29118 /* ~"Non… Qu'est-ce que tu peux m'apprendre d'autre ?"~ */ GOTO 37
  IF ~~ THEN REPLY #29119 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.5
  SAY #28940 /* ~"Qui-Sai t'enseignera… l'art du combat avec… le gourdin. Est-ce que… c'est ce que tu veux ?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
~ THEN REPLY #29120 /* ~"Oui, apprends-moi."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
~ THEN REPLY #29121 /* ~"Oui, apprends-moi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29122 /* ~"Non… qu'est-ce que tu peux m'apprendre d'autre ?"~ */ GOTO 37
  IF ~~ THEN REPLY #29123 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.7
  SAY #28941 /* ~"Qui-Sai t'enseignera… l'art du combat avec… la hache. Est-ce que… c'est ce que tu veux ?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
~ THEN REPLY #29124 /* ~"Oui, apprends-moi."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,AXE,2)
~ THEN REPLY #29125 /* ~"Oui, apprends-moi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29126 /* ~"Non… Qu'est-ce que tu peux m'apprendre d'autre ?"~ */ GOTO 37
  IF ~~ THEN REPLY #29127 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.9
  SAY #28942 /* ~"Qui-Sai t'enseignera… l'art du combat avec…le marteau puissant. Est-ce que… c'est ce que tu veux ?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
~ THEN REPLY #29128 /* ~"Oui, apprends-moi."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
~ THEN REPLY #29129 /* ~"Oui, apprends-moi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29131 /* ~"Non… Qu'est-ce que tu peux m'apprendre d'autre ?"~ */ GOTO 37
  IF ~~ THEN REPLY #29132 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #28943 /* ~Une fois qu'il a évalué tes compétences, Qui-Sai acquiesce avec un gargouillis bruyant. "Qui-Sai te trouve… prêt pour… un complément d'instruction avec… le marteau puissant."~ */
  IF ~~ THEN REPLY #29133 /* ~"Apprends-moi le maniement des armes, alors."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #28944 /* ~"Qui-Sai t'informe… que si tu commences à maîtriser… le marteau… tu ne peux pas maîtriser… d'autres armes. Est-ce cela… que tu désires ?"~ */
  IF ~~ THEN REPLY #29134 /* ~"Oui, je voudrais me spécialiser dans le maniement du marteau."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #28818 /* ~Qui-Sai, le maître de combat à la Salle des Fêtes, m'a enseigné le maniement du marteau. Je suis maintenant spécialiste du maniement de cette arme.~ */ GOTO 39
  IF ~~ THEN REPLY #29135 /* ~"Non. Qu'est-ce que tu peux m'apprendre d'autre ?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 49 // from: 36.1
  SAY #28945 /* ~La bouche de Qui-Sai prend lentement une moue courroucée. "Alors Qui-Sai ne peut… rien t'enseigner."~ */
  IF ~~ THEN REPLY #29136 /* ~"Tu pourrais faire de moi un guerrier ?"~ */ GOTO 50
  IF ~~ THEN REPLY #29137 /* ~"J'ai quelques questions, alors…"~ */ GOTO 10
  IF ~~ THEN REPLY #29138 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28946 /* ~Il hausse le sourcil gauche se. "Laisserais-tu… ton négoce actuel, pour suivre le… chemin du guerrier ?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29139 /* ~"Oui. Je ne veux plus étudier l'Art. Fais de moi un guerrier."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #29140 /* ~"Oui. Je ne veux plus voler. Fais de moi un guerrier."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~~ THEN REPLY #29141 /* ~"En fait, non. Mais j'ai des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29142 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 11.0 13.0
  SAY #28947 /* ~"Qui-Sai médite sur… la Voie de la Pierre."~ */
  IF ~~ THEN REPLY #29143 /* ~"La 'Voie de la Pierre' ?"~ */ GOTO 52
  IF ~~ THEN REPLY #29144 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29145 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #28948 /* ~Qui-Sai acquiesce. "Une… philosophie. Une… méthode de combat. Avec elle… Qui-Sai cherche à atteindre… l'invulnérabilité."~ */
  IF ~~ THEN REPLY #29146 /* ~"L'invulnérabilité ? Tu serais invincible au combat…"~ */ GOTO 53
  IF ~~ THEN REPLY #29147 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #28949 /* ~"Oui. Pour l'instant… la Voie n'est pas encore… parfaite. Qui-Sai la rendra… parfaite un jour. Qui-Sai… sait cela."~ */
  IF ~  Global("Way_of_Stone","GLOBAL",0)
~ THEN REPLY #29148 /* ~"Tu peux me dire ce que tu as découvert jusqu'ici ?"~ */ GOTO 54
  IF ~~ THEN REPLY #29149 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29150 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #28950 /* ~Qui-Sai acquiesce. "Personne n'a demandé… à Qui-Sai de partager sa connaissance de… la Voie. Qui-Sai va le… faire à présent." Il commence enfin à parler, lentement et en choisissant ses mots avec soin.~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #29151 /* ~Écoute et apprends la Voie de la Pierre.~ */ DO ~SetGlobal("Way_of_Stone","GLOBAL",1)
PermanentStatChange(Protagonist,ARMORCLASS,LOWER,1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28819 /* ~Qui-Sai, le maître de combat à la Salle des Fêtes, m'a enseigné la 'Voie de la Pierre'. Bien que sa philosophie ne me soit pas très utile et qu'elle ne s'applique pas à moi puisque je suis une créature de chair, je peux utiliser certains de ses principes pour devenir moins vulnérable lors des combats.~ */ GOTO 55
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #29152 /* ~Écoute, essaie de comprendre la Voie de la Pierre.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28820 /* ~Qui-Sai, le maître de combat à la Salle des Fêtes, a essayé de m'enseigner la 'Voie de la Pierre', mais sa philosophie était trop compliquée et obscure pour que je puisse la comprendre.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #28951 /* ~Après des heures d'écoute et de nombreuses, très nombreuses questions, tu commences à comprendre le peu de choses que Qui-Sai peut t'apprendre sur la Voie de la Pierre. Dans le combat, tu l'utiliseras pour résister aux coups de l'ennemi et les faire dévier, améliorant ainsi ta Classe d'armure.~ */
  IF ~~ THEN REPLY #29153 /* ~"Merci, Qui-Sai. J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29154 /* ~"Merci, Qui-Sai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #28952 /* ~Après des heures d'écoute et de nombreuses, très nombreuses questions, tu n'arrives toujours pas à comprendre la Voie de la Pierre de Qui-Sai. Les concepts sont trop complexes et étrangers pour que tu puisses les comprendre.~ */
  IF ~~ THEN REPLY #29155 /* ~"Merci quand même, Qui-Sai. J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #29156 /* ~"Merci quand même, Qui-Sai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 7.0
  SAY #31247 /* ~Toujours pas de réponse. Il te semble que Qui-Sai met ta patience à l'épreuve.~ */
  IF ~~ THEN REPLY #28995 /* ~Attends une réponse.~ */ GOTO 58
  IF ~~ THEN REPLY #28996 /* ~Abandonne et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #31251 /* ~Quelques minutes passent. Toujours pas de réponse.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31257 /* ~Attends encore quelque temps sans mot dire…~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!Global("Water","GLOBAL",3)
~ THEN REPLY #31258 /* ~Attends encore quelque temps sans mot dire…~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
Global("Water","GLOBAL",3)
~ THEN REPLY #31259 /* ~Attends encore quelque temps sans mot dire…~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 9
  IF ~~ THEN REPLY #31260 /* ~Abandonne et va-t'en.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.2
  SAY #65163 /* ~"Qui-Sai voit… inutile. Tu n'as pas réussi à convaincre Qui-Sai… du contraire. Peut-être devrais-tu… parler au mentor des mages ici. Si tu ne désires pas suivre son enseignement… elle pourrait te donner un point de vue autre que le mien." ~ */
  IF ~~ THEN REPLY #65164 /* ~"Je voudrais te demander autre chose, alors…"~ */ JOURNAL #58925 /* ~Qui-Sai a refusé de m'enseigner une formation de guerrier. Ajoutant que les mages étaient plus puissants (alors que, plus tôt, il m'avait vanté les mérites de la profession de voleur), il m'a conseillé d'aller demander une formation au maître-mage de la Salle des Fêtes, ou du moins de parler à ce dernier et de trouver un argument permettant de réfuter celui de Qui-Sai si je ne veux pas devenir mage.~ */ GOTO 10
  IF ~~ THEN REPLY #65165 /* ~"Dans ce cas, au revoir."~ */ JOURNAL #58925 /* ~Qui-Sai a refusé de m'enseigner une formation de guerrier. Ajoutant que les mages étaient plus puissants (alors que, plus tôt, il m'avait vanté les mérites de la profession de voleur), il m'a conseillé d'aller demander une formation au maître-mage de la Salle des Fêtes, ou du moins de parler à ce dernier et de trouver un argument permettant de réfuter celui de Qui-Sai si je ne veux pas devenir mage.~ */ EXIT
END
