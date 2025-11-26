// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25842 /* ~Cette femme propre et élégante marche d'un pas décidé.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #25843 /* ~"Bonjour…"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #25938 /* ~"Bonjour…"~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 26
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #25939 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #25940 /* ~Laisse-la partir.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #25844 /* ~Elle s'arrête pour te regarder, ses yeux s'écarquillent un instant. Elle regarde autour d'elle pour voir si ton appel s'adressait à quelqu'un d'autre, puis sourit, mal à l'aise. "Excuse-moi, mais…. est-ce que je te connais ?"~ */
  IF ~~ THEN REPLY #25845 /* ~"Non, mais j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #25926 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 23
  IF ~~ THEN REPLY #25930 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0 26.3 29.0 30.2 31.0
  SAY #25846 /* ~"Je dois me rendre quelque part - et je n'ai pas beaucoup de temps." Elle recule. "Bon, si ça ne te dérange pas…"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25847 /* ~"Juste une question, alors ?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25920 /* ~"Juste une seule question, alors ?"~ */ GOTO 20
  IF ~~ THEN REPLY #25924 /* ~"*Si*, ça me dérange. Maintenant, réponds à mes questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #25925 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25848 /* ~Elle se mord la lèvre, puis acquiesce. "Très bien. Mais demande vite… mon temps est précieux !"~ */
  IF ~~ THEN REPLY #25849 /* ~"Où sommes-nous ?"~ */ GOTO 4
  IF ~~ THEN REPLY #25864 /* ~"Qu'est-ce qu'il y a d'intéressant par ici ?"~ */ GOTO 8
  IF ~~ THEN REPLY #25871 /* ~"Où est-ce que je peux trouver du travail par ici ?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25876 /* ~"J'ai juste besoin qu'on m'indique la bonne direction…"~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25911 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 21
  IF ~~ THEN REPLY #25919 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25850 /* ~Ses sourcils se bombent de surprise. "C'est le Quartier des Gratte-Papier, monsieur. Es-tu perdu ? Oh, peu importe. Je dois y aller ! Adieu…"~ */
  IF ~~ THEN REPLY #25851 /* ~"Attends… J'ai d'autres questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #25863 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25852 /* ~"J'avais accepté une question - tu seras assez aimable d'en tenir compte et de me laisser partir, d'accord ?" Tu trouveras peut-être une personne moins pressée dans l'un des cafés de la rue."~ */
  IF ~~ THEN REPLY #25853 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25862 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25854 /* ~Ses yeux se ferment à moitié. "Ta grossièreté et ton visage effrayant pourraient te reconduire là d'où tu viens avec tes grands sabots, mais nous avons la loi dans cette partie de Sigil. Laisse-moi à présent, 'monsieur' ou je me verrai forcée d'appeler à l'aide !"~ */
  IF ~~ THEN REPLY #25855 /* ~"J'ai bien peur que personne n'arrive à temps pour te sauver."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25859 /* ~"Si tu sais où est ton intérêt, il vaut mieux que tu n'appelles personne."~ */ GOTO 7
  IF ~~ THEN REPLY #25860 /* ~"Pardon. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #25861 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25856 /* ~Elle commence à reculer, en appelant à l'aide : "Gardes ! Gardes !"~ */
  IF ~~ THEN REPLY #25857 /* ~Attaque-la.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25858 /* ~Essaie de partir avant que quelqu'un n'arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25865 /* ~"Beaucoup de choses, monsieur ! Et en particulier ici, dans cette partie du Quartier des Gratte-Papier, où se trouve la Salle des Fêtes. La Galerie d'Art et d'Antiquités, aussi."~ */
  IF ~~ THEN REPLY #25866 /* ~"Autre chose ?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25867 /* ~Elle réfléchit un moment. "Hum. Bon, il y a Goncalves le tailleur, l'apothicaire, le domicile de l'avocat et cette Maison de tolérance des 'Plaisirs Intellectuels'. Oh, et les catacombes sous le Quartier. Et ce curieux magasin de brocante, aussi."~ */
  IF ~~ THEN REPLY #25868 /* ~"J'ai une question à propos d'un de ces endroits dont tu as parlé…"~ */ GOTO 5
  IF ~~ THEN REPLY #25869 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25870 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25872 /* ~Elle réfléchit un moment. "Tu peux essayer la Salle des Fêtes… ils auront peut-être quelque chose pour toi. Tu peux aussi essayer l'avocat ou peut-être l'apothicaire. Bon, mais je dois m'en aller… au revoir."~ */
  IF ~~ THEN REPLY #25873 /* ~"J'ai une question à propos d'un de ces endroits dont tu as parlé…"~ */ GOTO 5
  IF ~~ THEN REPLY #25874 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25875 /* ~"Merci pour ton temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25877 /* ~"Qu'est-ce que tu cherches ?"~ */
  IF ~~ THEN REPLY #25878 /* ~"Chez l'avocat."~ */ GOTO 12
  IF ~~ THEN REPLY #25882 /* ~"Chez l'apothicaire."~ */ GOTO 13
  IF ~~ THEN REPLY #25886 /* ~"À la boutique d'art."~ */ GOTO 14
  IF ~~ THEN REPLY #25890 /* ~"À la maison de tolérance."~ */ GOTO 15
  IF ~~ THEN REPLY #25894 /* ~"Aux catacombes sous le Quartier."~ */ GOTO 16
  IF ~~ THEN REPLY #25898 /* ~"À la Salle des Fêtes."~ */ GOTO 17
  IF ~~ THEN REPLY #25902 /* ~"Au magasin de brocante."~ */ GOTO 18
  IF ~~ THEN REPLY #25906 /* ~"Chez le tailleur."~ */ GOTO 19
  IF ~~ THEN REPLY #25910 /* ~"Rien, tant pis. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25879 /* ~"La maison de Iannis se trouve au sud de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. Ce sera sur le côté est de la route."~ */
  IF ~~ THEN REPLY #25880 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25881 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25883 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'est de la route. Elle est orientée au sud et comporte trois fenêtres de verre teinté."~ */
  IF ~~ THEN REPLY #25884 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25885 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25887 /* ~"Suis la route de l'est en partant de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. À l'endroit où la route fait une fourche entre le nord-est et le sud-est, prends la route du sud… tu la trouveras là, à l'ouest de la route. Elle est orientée au sud et les tuiles de son toit sont maintenues par de grosses pierres."~ */
  IF ~~ THEN REPLY #25888 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25889 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25891 /* ~Elle se renfrogne explicitement, en secouant la tête. "C'est juste à l'est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici. C'est un imposant bâtiment rond, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #25892 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25893 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25895 /* ~Elle fronce les sourcils. "Ces entrées sont encore ouvertes ? Si oui, elles sont certainement gardées… ces catacombes sont réputées très dangereuses. Je ne sais pas exactement comment y aller."~ */
  IF ~~ THEN REPLY #25896 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25897 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25899 /* ~"La Salle des Fêtes est très facile à trouver. C'est un édifice massif dans la partie nord-est de cette zone."~ */
  IF ~~ THEN REPLY #25900 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25901 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25903 /* ~"'C'est dans la section sud-est de cette zone. Un bâtiment bizarre, situé au sommet d'un grand escalier. Je n'y suis jamais allée moi-même… il me fait une impression bizarre."~ */
  IF ~~ THEN REPLY #25904 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25905 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25907 /* ~"Tu trouveras la boutique du tailleur juste au nord-est de la porte du Bas Quartier - porte par laquelle tu es vraisemblablement entré ici la première fois. C'est un imposant bâtiment, dont l'entrée est orientée au sud."~ */
  IF ~~ THEN REPLY #25908 /* ~"Merci. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25909 /* ~"Je vois. Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25912 /* ~Elle secoue la tête. "Désolée… tu trouveras peut-être une personne moins pressée dans l'un des cafés de la rue. Et maintenant, au revoir…"~ */
  IF ~~ THEN REPLY #25913 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25917 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25914 /* ~"Ravel la Guenaude noire ? Mes parents ne racontaient des contes sur elle quand j'étais enfant… des histoires effrayantes."~ */
  IF ~~ THEN REPLY #25915 /* ~"Des contes pour enfants ?"~ */ GOTO 22
  IF ~~ THEN REPLY #25916 /* ~"Je vois. Je voudrais te demander autre chose…"~ */ GOTO 5
  IF ~~ THEN REPLY #25918 /* ~"Merci, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25921 /* ~Elle acquiesce. "Oui. La sorcière au cœur noir qui a essayé de détruire Sigil. Ils disaient qu'elle viendrait me chercher si je pleurais trop fort et qu'elle m'emmènerait dans l'endroit affreux où elle était recluse." Elle fronce les sourcils. "Mieux vaut que j'y aille… au revoir."~ */
  IF ~~ THEN REPLY #25922 /* ~"Attends. J'ai une autre question…"~ */ GOTO 5
  IF ~~ THEN REPLY #25923 /* ~"Merci de m'avoir accordé un peu de temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1 26.4
  SAY #25927 /* ~"Non, non… pas du tout !" La femme rit nerveusement. "Bon, peut-être…" Elle indique ton torse nu, balafré. "Tu *as l'air* un peu plus… ah…  'féroce' que les habitants ordinaires du Quartier, non ? Ne le prends pas mal, monsieur."~ */
  IF ~~ THEN REPLY #25928 /* ~"Je ne le prends pas mal. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #25929 /* ~"Je n'ai besoin de rien d'autre. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25932 /* ~La femme te salue poliment. "Bonjour et au revoir… Si tu veux bien m'excuser, monsieur, je suis pressée."~ */
  IF ~~ THEN REPLY #25933 /* ~"Attends. J'ai des questions…"~ */ GOTO 25
  IF ~~ THEN REPLY #25937 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25934 /* ~"Comme je te l'ai dit, monsieur, je suis très pressée. Tu trouveras peut-être une personne moins pressée dans l'un des cafés de la rue. Et maintenant, au revoir…"~ */
  IF ~~ THEN REPLY #25935 /* ~"Arrête. Tu vas rester ici et répondre à mes questions."~ */ GOTO 6
  IF ~~ THEN REPLY #25936 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.1
  SAY #25941 /* ~Elle s'interrompt pour te regarder et ses yeux s'écarquillent un instant. Elle regarde autour d'elle pour voir si ton appel s'adressait à quelqu'un d'autre, puis sourit l'air gêné. "Excuse-moi, mais est-ce que je-" Soudain, ses yeux se posent sur Morte. "Oh ! le joli petit mimir !"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #25942 /* ~"Un mimir ?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 244
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25943 /* ~"N'est-ce pas ? Il adore qu'on lui gratte le dessus du crâne."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25944 /* ~"Je te déconseille de le toucher - il mord."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 248
  IF ~~ THEN REPLY #25945 /* ~"Oui, oui. J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #25946 /* ~"Quelque chose vous dérange dans mon aspect ?"~ */ GOTO 23
  IF ~~ THEN REPLY #25947 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25948 /* ~La femme sourit. "Qu'il est chou ! Et il parle tout seul !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 245
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #25950 /* ~Elle secoue la tête. "Non, aucun de ceux que j'ai vus jusqu'ici. Ce sont simplement des objets, non-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 247
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25952 /* ~La femme hausse les épaules. "C'est possible."~ */
  IF ~~ THEN REPLY #25953 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #25954 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1
  SAY #25955 /* ~"Vraiment ?" Elle continue de sourire, mais prend un air soupçonneux. "Tu plaisantes, hein, monsieur !" Ce n'est qu'un mimir…"~ */
  IF ~~ THEN REPLY #25956 /* ~"Qu'est-ce que tu veux dire ? Ils aiment tous ça, non ?"~ */ GOTO 28
  IF ~~ THEN REPLY #25957 /* ~"Non, je dis la vérité. Vas-y."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #25958 /* ~"Ne fais pas attention à lui. J'ai des questions…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #25959 /* ~Elle tend la main et caresse doucement Morte… qui se blottit dans sa main, en grimaçant et en te faisant des clins d'œil. Elle rit embarrassée : "Étrange !"~ */
  IF ~~ THEN REPLY #25960 /* ~"Oui… Eh bien, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #25961 /* ~"N'est-ce pas ? Au revoir."~ */ EXIT
END
