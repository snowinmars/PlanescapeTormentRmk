// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKING~

IF ~  Global("Wilder","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9712 /* ~Le regard fou, ce type, penché en avant, grogne et montre les dents. Il n'a pas dû se couper les cheveux depuis des années… il les a si longs qu'ils forment un rideau devant ses yeux. Il arbore une longue et fine moustache gansée de graisse et de sueur dont les pointes tombent jusque dans sa barbe hirsute.~ */
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13835 /* ~"Bonjour."~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13836 /* ~"Bonjour."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13837 /* ~"Bonjour."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13838 /* ~Grogne-lui dessus.~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13839 /* ~Grogne-lui dessus.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13840 /* ~Grogne-lui dessus.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13841 /* ~Laisse l'homme tranquille.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13842 /* ~Laisse l'homme tranquille.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.4 0.5
  SAY #13793 /* ~L'homme s'arrête de grogner et repousse le rideau de cheveux qui recouvre ses yeux. Tandis que sa main toute flétrie repousse ses mèches sales, plusieurs insectes de couleur noire tombent de sa chevelure et se dispersent sur les pavés. Derrière le rideau de cheveux, la chair de l'homme est pâle et fripée. Ses sourcils épais, touffus forment un 'V' lorsqu'il te regarde. "Main, veux prendre le vol lunaire, aussiiii ?"~ */
  IF ~~ THEN REPLY #13843 /* ~"Euh, pas aujourd'hui. J'ai quelques questions…"~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13844 /* ~"'Te prendre la main et voler vers la lune' ? Pas aujourd'hui, mon ami."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13845 /* ~"'Te prendre la main et voler vers la lune' ? Pas aujourd'hui, mon ami."~ */ GOTO 4
  IF ~~ THEN REPLY #13846 /* ~"Lune - lunes - rune - une ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13847 /* ~Grogne-lui dessus et commence à aboyer.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13848 /* ~Penche la tête d'un côté, comme si tu l'examinais.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13849 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13850 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13794 /* ~L'homme secoue vivement la tête, puis tape dans ses mains comme un enfant. "Réponses fendues avec l'huile à moitié bleue ! SAIS ! Toi tu question !" Ensuite, il émet un hurlement long, mélodieux, coupé net par un aboiement tranchant.~ */
  IF ~~ THEN REPLY #13851 /* ~"Écoute, calme-toi. J'ai quelques questions à te poser…"~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13852 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13853 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 4.1
  SAY #13795 /* ~L'homme rejette la tête en arrière et *hurle*. Le son émis est si horrible que tu dois te boucher les oreilles. Mais ça ne suffit pas. Même avec les oreilles bouchées, le hurlement semble croître et te percer la tête, pénétrant dans tes oreilles et s'enfonçant sous la peau, puis rampant à l'intérieur de ton crâne et te dévorant les fragments de bon sens qui te restent. Le bruit est tellement insupportable que tu n'arrives même pas à trouver la force de parler.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13854 /* ~Va-t'en, laisse l'homme tranquille.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13855 /* ~Va-t'en, laisse l'homme tranquille.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #13796 /* ~L'homme se renfrogne, mais ses sourcils s'inclinent vers le haut comme un 'V' inversé, d'où une expression bizarre. Tu ne sais pas comment il a pris cette expression, mais tu te sens mal à l'aise en regardant les muscles de son visage prendre une nouvelle forme. Tu ne sais pas s'il est en colère, curieux, les deux à la fois ou ni l'un ni l'autre. "Baissser flambé pointe un homme, réponssse pré-pour un cœur de femme en bois."~ */
  IF ~~ THEN REPLY #13856 /* ~"Euh, pas aujourd'hui. J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #13857 /* ~"Hunh ?"~ */ GOTO 3
  IF ~  GlobalLT("Law","GLOBAL",-12)
~ THEN REPLY #13858 /* ~Chanson improvisée : "Un homme seul à travers la forêt se déplace… un cœur de pierre de femme jamais brisé et riant dans la neige."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13859 /* ~"'Un simple baiser éveille le cœur d'une femme, mais tu préférerais la réponse d'un homme' ? Bon, très bien, mais écoute ça : ma réponse est une question, et je préférerais une réponse de ta part."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13860 /* ~"'Un simple baiser éveille le cœur d'une femme, mais tu préférerais la réponse d'un homme' ? Bon, très bien, mais écoute ça : ma réponse est une question, et je préférerais une réponse de ta part."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13861 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13862 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.3 4.4
  SAY #13797 /* ~L'homme semble hypnotisé par ta voix. À chaque mot que tu prononces, une lueur tremblote dans ses yeux. "Aboyant-Plusauvage, suis-je, je-suis ! Veux-Un, Demande-Un, Peux-tu, Tu-Peux ?"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13863 /* ~"Tu peux et je veux : qui… ou qu'est-ce que… tu es ?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13864 /* ~"Tu peux et je veux : tu fais partie des Chaoteux ?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13865 /* ~"Voici ma question : tu fais partie des Chiens Affamés Aboyants ?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13866 /* ~"Je peux rejoindre les Chaoteux ?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13867 /* ~"Rejoindre les Chaoteux moi pouvoir ?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13868 /* ~"Rejoindre les Chaoteux moi pouvoir ?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13869 /* ~"Je cherche un certain Pharod. Est-ce que tu le connais ?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13870 /* ~"Je cherche un journal perdu. Tu sais où je pourrais en trouver un ?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13871 /* ~"Qu'est-ce que tu disais sur mes journaux déjà ?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13872 /* ~"Qu'est-ce que ça me rapportera de rejoindre les Chaoteux ? Des pouvoirs ? Des talents spéciaux ?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13873 /* ~"Je peux voir les objets que vendent les Chaoteux à leurs membres ?"~ */ GOTO 30
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13874 /* ~"Euh… pas de questions aujourd'hui. Au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13875 /* ~"Euh… pas de questions aujourd'hui. Au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 6 // from: 8.3 9.2 10.2 11.2 12.0 13.0 14.0 15.0 16.1 18.0 20.2 23.0 24.0 25.9 26.0 27.5 28.1 29.0 31.0 32.1 33.0 34.0 35.0 35.1 35.3
  SAY #13798 /* ~Il frappe dans ses mains l'air ravi, comme un enfant à une fête, puis crie : "QuesTION ! QuesTION !"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13876 /* ~"N'élude pas la question : qui… ou qu'est-ce que… tu es ?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13877 /* ~"N'élude pas la question : tu fais partie des Chaoteux ?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13878 /* ~"Voici ma question : tu fais partie des Chiens Affamés Aboyants ?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13879 /* ~"Je peux rejoindre les Chaoteux ?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13880 /* ~"Rejoindre les Chaoteux moi pouvoir ?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13881 /* ~"Rejoindre les Chaoteux moi pouvoir ?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13882 /* ~"Je cherche un certain Pharod. Est-ce que tu le connais ?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13883 /* ~"Je cherche un journal perdu. Tu sais où je pourrais en trouver un ?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13884 /* ~"Qu'est-ce que tu disais sur mes journaux déjà ?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13885 /* ~"Qu'est-ce que ça me rapportera de rejoindre les Chaoteux ? Des pouvoirs ? Des talents spéciaux ?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13886 /* ~"Je peux voir les objets que vendent les Chaoteux à leurs membres ?"~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13887 /* ~"Euh… pas de questions aujourd'hui. Au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13888 /* ~"Euh… pas de questions aujourd'hui. Au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 7 // from: 5.7 5.8 6.7 6.8
  SAY #13799 /* ~Il fronce les sourcils, ferme les yeux, puis les rouvre. Alors qu'il parle à nouveau, sa voix est monocorde et compréhensible… comme si quelqu'un d'autre parlait. L'effet est inquiétant. "Plus d'un perdu, plus d'un tu dois trouver. Chaque partie de toi en avait un, tu dois donc en trouver plus d'un." Il cligne des yeux et secoue la tête pendant un moment, comme s'il s'étonnait lui-même, puis glousse sans conviction.~ */
  IF ~~ THEN REPLY #13889 /* ~"Tu peux au moins me dire où je peux en trouver un ?"~ */ JOURNAL #58924 /* ~J'ai 'discuté' avec Aboyant-Plusauvage devant le bar du Cadavre fumant. À ma grande surprise, il m'a dit qu'il savait où se trouvait mon journal mais, surtout, il m'a appris qu'il en existait plusieurs. Selon lui, l'un d'eux se trouve 'sur les murs d'un tombeau scellé loin en-dessous du lieu où pleurent les pierres de la cité', un second serait 'dans un placard de la chambre qui m'avait été allouée chez les Sensats', et il en existerait d'autres encore. Je ne sais si ses informations sont exactes ou non, mais il avait l'air sain d'esprit quand il me les a révélées.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #13800 /* ~Il semble sur le point de protester, mais son poing gauche se détend et le frappe en pleine tempe. Il répond par un hurlement, puis s'arrête soudain, clignant des yeux. "L'un d'eux se trouve dans ta chambre, chez les Sensats, et le suivant s'étale sur les murs d'un tombeau scellé dans les profondeurs de la cité. Les autres sont…" Avant qu'il ait eu le temps de finir, son poing droit se détend et le frappe en plein visage, provoquant un autre hurlement. Il cligne des yeux et secoue la tête un instant, comme s'il était surpris de sa réaction, puis sourit d'un air gêné.~ */
  IF ~~ THEN REPLY #13890 /* ~"La Salle des Sensats ? C'est où ?"~ */ GOTO 9
  IF ~~ THEN REPLY #13891 /* ~"Un tombeau sous la cité ? Où ça ?"~ */ GOTO 10
  IF ~~ THEN REPLY #13892 /* ~"Où sont ces autres journaux ?"~ */ GOTO 11
  IF ~~ THEN REPLY #13893 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13894 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13895 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0
  SAY #13801 /* ~Aboyant-Plusauvage lève les mains… on dirait qu'il ne se souvient pas de ce qu'il vient de dire.~ */
  IF ~~ THEN REPLY #13896 /* ~"Tu disais qu'il y en avait un dans un tombeau sous la cité ? Où ça ?"~ */ GOTO 10
  IF ~~ THEN REPLY #13897 /* ~"Où sont les journaux dont tu as parlé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #13898 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13899 /* ~"Alors, laisse tomber. J'essaierai de la trouver moi-même."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13900 /* ~"Alors, laisse tomber. J'essaierai de la trouver moi-même."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.1
  SAY #13802 /* ~Aboyant-Plusauvage a l'air effrayé un moment, puis indique quelque chose vers le haut avec une expression pleine d'espoir. "Euh… là ?" Il déglutit. Il n'a pas l'air de savoir et sans trop savoir pourquoi, tu le crois.~ */
  IF ~~ THEN REPLY #13901 /* ~"Tu disais qu'il y en avait un dans la Salle des Sensats ? Où est cette salle ?"~ */ GOTO 9
  IF ~~ THEN REPLY #13902 /* ~"Où sont les journaux dont tu as parlé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #13903 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13904 /* ~"Alors, laisse tomber. J'essaierai de la trouver moi-même."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13905 /* ~"Alors, laisse tomber. J'essaierai de la trouver moi-même."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.1
  SAY #13803 /* ~Aboyant-Plusauvage hausse les épaules, te regardant avec méfiance. "D'autres endroits, peut-être ?" Il déglutit.~ */
  IF ~~ THEN REPLY #13906 /* ~"Tu disais qu'il y en avait un dans la Salle des Sensats ? Où est cette salle ?"~ */ GOTO 9
  IF ~~ THEN REPLY #13907 /* ~"Tu disais qu'il y en avait un dans un tombeau sous la cité ? Où ça ?"~ */ GOTO 10
  IF ~~ THEN REPLY #13908 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13909 /* ~"Alors, laisse tomber. J'essaierai de les trouver moi-même."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13910 /* ~"Alors, laisse tomber. J'essaierai de les trouver moi-même."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 12 // from: 5.6 6.6
  SAY #13804 /* ~Aboyant-Plusauvage hausse les épaules, puis répond d'une voix chantante. "Simplement singulier ? Pas simple, pas singulier, pas perdu, pas aide…" Il gronde, comme pour se racler la gorge. "Peut-être tu le perds d'abord, puis tu me demandes, on sera alors à égalité ?"~ */
  IF ~~ THEN REPLY #13911 /* ~"Pour le perdre, il faudrait d'abord que je le trouve. J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13912 /* ~"Alors, laisse tomber. J'essaierai de le trouver moi-même."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13913 /* ~"Alors, laisse tomber. J'essaierai de le trouver moi-même."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1 6.0 6.1
  SAY #13805 /* ~"Cha-osse !" Il bredouille le mot, comme s'il avait des difficultés à placer sa langue. "Certains disent Xaositectes, je dis S-tecte-I-soax. CHAO-teux. Hommes non, semmoh non, hommes oui, trois non font un oui." Il s'accroupit et commence à se balancer, en chantant avec une voix enfantine de soprano. "Chaos-homme, chaos-homme, saut long maison, une faction c'est, mais nous-sommes-seuls."~ */
  IF ~~ THEN REPLY #13914 /* ~"Alors, tu es un Chaoteux. Très bien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13915 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13916 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 14 // from: 5.2 6.2
  SAY #13806 /* ~En réponse, il commence à hurler à tue-tête. Tu regardes la salive jaillir de sa bouche en arcs jaillissants, et tu recules d'un pas pour éviter le jet. Au bout d'un moment, il s'interrompt pour pousser un long hurlement désespéré.~ */
  IF ~~ THEN REPLY #13917 /* ~"Ça veut dire oui, je suppose. Très bien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13918 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13919 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 15 // from: 5.3 6.3
  SAY #13807 /* ~Il te regarde de biais, hausse les épaules, puis se penche pour te renifler. "Accroupi… raide, sec… humide, moite… lourd, abruti…" Il renifle et gronde. "Bougre !"~ */
  IF ~~ THEN REPLY #13920 /* ~"Ça veut dire non, je suppose. Très bien. J'ai d'autres questions…"~ */ GOTO 6
  IF ~  GlobalLT("Law","GLOBAL",-20)
~ THEN REPLY #13921 /* ~"Hmmmm. Rejoindre les Chaoteux moi pouvoir ?"~ */ GOTO 25
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13922 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13923 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 16 // from: 5.5 6.5
  SAY #13808 /* ~C'est la première chose que tu as dite à Aboyant-Plusauvage qui semble le perturber. Il réfléchit un moment, grogne, puis pointe son doigt vers toi. "Es un homme-de-chaos déjà toi ! Déjà tu es-es-es !"~ */
  IF ~~ THEN REPLY #13924 /* ~Souris en plissant les yeux et dis : "Ex-ac-te-ment."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_4","GLOBALLaw",-3)
AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #13925 /* ~"Oh, j'ai oublié. Excuse-moi. J'ai d'autres questions…"~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13926 /* ~"Ça valait le coup d'essayer. Alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13927 /* ~"Ça valait le coup d'essayer. Alors, au revoir."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13809 /* ~On dirait que quelqu'un a allumé une torche dans le crâne de Plusauvage, car ses yeux s'ouvrent grands et il sourit généreusement. Le sourire devient grimace, puis ricanement. Il commence à gambader et à danser devant toi. "Large ! Charge ! Barge !" Il te tape sur l'épaule des deux mains puis hurle vers le ciel. "Encore toi Xaositecte ! Deux fois ! Trois fois ! Poux !"~ */
  IF ~  GlobalGT("Law","GLOBAL",-20)
~ THEN REPLY #13928 /* ~"Lice-je-suis, Xaositecte-je-suis !"~ */ GOTO 18
  IF ~  GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13929 /* ~"Lice-je-suis, Xaositecte-je-suis !"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13810 /* ~Plusauvage cesse de danser, le temps de te fixer. "Tu seras bientôt un factol avec cet esprit-là, le prix que ton esprit paie pour ces pensées !" Il glousse et lève les mains en l'air. "Le roi fou vient et les plans culbutent !"~ */
  IF ~~ THEN REPLY #13930 /* ~"Peut-être, peut-être. Mais pour toi, d'autres questions j'ai…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #13811 /* ~Plusauvage forme un 'O' de surprise. "T'es devenu un factol, le prix que ton esprit paie pour ces pensées !" Il te désigne du doigt comme un spectre. "Salue, factol ! Roi des Chao-teux ? Je te fais homme de chair et femme du chaos ! Tu peux maintenant embrasser la mariée !"~ */
  IF ~~ THEN REPLY #13931 /* ~"Euh… un factol ?"~ */ GOTO 21
  IF ~~ THEN REPLY #13932 /* ~"Factol-je-suis ! Brides pour tout le personne !"~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 35.2
  SAY #13812 /* ~Plusauvage lève le regard en t'entendant et forme un "O" de surprise. Il saute sur ses pattes et te désigne du doigt comme un sceptre. "Salue, factol ! Roi de TOUS les Chao-teux ! Je te prononce homme de chair et femme de chaos ! Tu peux maintenant embrasser la mariée !"~ */
  IF ~~ THEN REPLY #13933 /* ~"Euh… un factol ?"~ */ GOTO 21
  IF ~~ THEN REPLY #13934 /* ~"Factol-je-suis ! Brides pour tout le personne !"~ */ GOTO 24
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #14006 /* ~"Tu n'écoutes pas mes QUEST-YONS, Plusauvage, des QUEST-YONS j'ai…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #13813 /* ~Plusauvage croise les bras. "Roi du Chaos, tu es, factol n'est qu'un nom que tu promènes comme une chemise sale."~ */
  IF ~~ THEN REPLY #13935 /* ~"Je ne veux pas être un factol."~ */ GOTO 22
  IF ~~ THEN REPLY #13936 /* ~"Factol-je-suis ! Chemises sales pour jamais personne !"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #13814 /* ~Plusauvage hausse les épaules, puis grimace méchamment. "Comme la vie, pas de choix. Que tu sois maudit !" Il ferme à moitié les yeux. "Tu veux changer de titre, change d'esprit. L'un est plus facile que l'autre, sauf si t'es un dur à cuire !"~ */
  IF ~~ THEN REPLY #13937 /* ~"Eh bien, je trouve ça injuste qu'on me transforme en factol sans me prévenir. Il devrait y avoir des règles."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wilder_1","GLOBALLaw",1)
~ GOTO 23
  IF ~~ THEN REPLY #13938 /* ~"Factol-je-suis ! Têtes dures tout autour !"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #13815 /* ~Plusauvage se courbe longtemps, puis forme un triangle avec ses doigts. "Rusé, rusé ! T'es pas un factol alors ! L'équité, les règles et les lois et toutes ces choses tenaces ne peuvent pas se trouver dans l'esprit d'un factol… Il réfléchit un moment. "Les chaînes sont brisées !" Il se renfrogne de nouveau, puis hausse les épaules. "Et les chaînes de nouveau ! Mais pas de factol maintenant."~ */
  IF ~~ THEN REPLY #13939 /* ~"Bon, maintenant j'ai quelques questions à te poser…"~ */ GOTO 6
  IF ~~ THEN REPLY #13940 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 22.1
  SAY #13816 /* ~Toi et Plusauvage cabriolent follement pendant plusieurs minutes, en hurlant au ciel. Plusieurs passants vous regardent surpris et quelqu'un au loin commence à vous crier de vous taire. Finalement, Plusauvage trébuche et la danse s'arrête comme il se remet sur ses pieds.~ */
  IF ~~ THEN REPLY #13941 /* ~"J'ai des questions !"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ GOTO 6
  IF ~~ THEN REPLY #13942 /* ~"Je n'ai pas de questions ! Revoir-au ! Revoir-au !"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 6.4 15.1
  SAY #13817 /* ~Alors que tu prononces les mots, une étincelle de lumière humaine semble jaillir de ses yeux. Il regarde le ciel un moment, puis soulève son pied gauche et regarde dessous. Il ne semble rien y trouver, alors il étire les mains et oriente un œil sur chacune, ce qui fait que ses yeux regardent dans des directions opposées. Il secoue ensuite la tête (réajustant ce faisant ses yeux) et te lorgne.~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13943 /* ~"Je suis déjà membre des Hommes-Dieux, mais…"~ */ GOTO 27
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13944 /* ~"Je suis déjà membre des Hommes-Poussière, mais…"~ */ GOTO 27
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13945 /* ~"Je suis déjà membre des Anarchistes, mais…"~ */ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13946 /* ~"Je suis déjà membre des Sensats, mais…"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13947 /* ~"Je suis déjà membre des Hommes-Dieux. J'ai changé d'avis… Je ne les empaillerai pas."~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13948 /* ~"Je suis déjà membre des Hommes-Poussière. J'ai changé d'avis… Je ne les empaillerai pas."~ */ GOTO 26
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13949 /* ~"Je suis déjà membre des Anarchistes. J'ai changé d'avis… Je ne les empaillerai pas."~ */ GOTO 26
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13950 /* ~"Je suis déjà membre des Sensats. J'ai changé d'avis… Je ne les empaillerai pas."~ */ GOTO 26
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13951 /* ~"Alors… c'est quoi la prochaine étape ?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13952 /* ~"Tu sais quoi ? C'est pas grave. J'aurais plutôt quelques questions…"~ */ GOTO 6
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13953 /* ~"En fait, laisse tomber. Je ne veux pas être un Chaoteux. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4 25.5 25.6 25.7
  SAY #13818 /* ~Plusauvage hausse les épaules. On dirait qu'il s'en fiche. "Pas-ccor, Ccor-Oui, hein ?"~ */
  IF ~~ THEN REPLY #13954 /* ~"Mais j'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #13955 /* ~"Euh… alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 25.2 25.3
  SAY #13820 /* ~"En arrière non…" Plusauvage marmonne, louchant encore. "Vieille faction pardonner-non…"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13956 /* ~"Moi d'accord pour rejoindre les Xaositectes. Aucune loyauté envers ancienne faction des Hommes-Dieux moi avoir."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13957 /* ~"Moi d'accord pour rejoindre les Xaositectes. Aucune loyauté envers ancienne faction des Hommes-Poussière moi avoir."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13958 /* ~"Moi d'accord pour rejoindre les Xaositectes. Aucune loyauté envers ancienne faction des Anarchistes moi avoir."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13959 /* ~"Moi d'accord pour rejoindre les Xaositectes. Aucune loyauté envers ancienne faction des Sensats moi avoir."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13960 /* ~Mensonge pour infiltrer les Chaoteux pour les Anarchistes : "Moi d'accord pour rejoindre les Xaositectes. Aucune loyauté envers ancienne faction moi avoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_2","GLOBALLaw",-1)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13961 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #13962 /* ~"Je crois que ce n'est pas encore le moment. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.8 27.0 27.1 27.2 27.3 27.4
  SAY #13819 /* ~Il marmonne un instant puis crie : "Pas d'importance !" Avant que tu aies eu le temps de réagir, il lance sa main dans l'espace dans un sifflement aigu et te frappe au visage. "Bienvenue ! Trois fois chaos tu es !" Il glousse tandis que la douleur cuisante persiste. Tu as le sentiment que tu viens d'être initié… et que le Plusauvage en a trop profité.~ */
  IF ~~ THEN REPLY #13963 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13964 /* ~"Alors, pour toi, moi autres questions avoir…"~ */ GOTO 6
  IF ~~ THEN REPLY #13965 /* ~"Euh… alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 5.9 6.9 6.10
  SAY #13821 /* ~L'homme gronde, puis sourit, en plaçant deux doigts sur sa tête comme pour imiter des cornes. "Aucun !" Il renifle, enlève ses fausses cornes et bat des mains pour imiter des ailes. "Tous !" Il sanglote et essuie ses yeux. "La quête mène à la découverte, la découverte mène à la quête…" Il tape dans ses mains. "Quelle importance ? Ne cherche pas un avant-âge, il te trouvera…"~ */
  IF ~~ THEN REPLY #13966 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #13967 /* ~"Euh… alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 5.10
  SAY #13822 /* ~Plusauvage semble soudain intéressé. "Qu'est-ce que t'as pour moi, hmmmm ?!"~ */
  IF ~~ THEN REPLY #13968 /* ~"Non, non, je t'ai demandé ce que tu avais pour moi."~ */ GOTO 32
  IF ~  PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13969 /* ~Montre-lui ce que tu as.~ */ DO ~TakePartyItemNum("Tail",1)
GiveItemCreate("Ratcharm",Protagonist,3,0,0)
SetGlobal("Wilder_Tail","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Wilder_Tail","GLOBAL",1)
~ THEN REPLY #13970 /* ~Montre-lui ce que tu as.~ */ GOTO 31
  IF ~  !PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13971 /* ~Montre-lui ce que tu as.~ */ GOTO 31
  IF ~~ THEN REPLY #13972 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.3
  SAY #13823 /* ~Il regarde tes choses désabusé. "Rien ! Un mélange de bêtises ! Des bibelots sans valeur !"~ */
  IF ~~ THEN REPLY #13973 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #13974 /* ~Laisse Plusauvage tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #13824 /* ~Il toussote et croise les bras. On dirait qu'il se cache sous sa chevelure. "Rien ai !"~ */
  IF ~~ THEN REPLY #13975 /* ~Donne-lui un coup de pied dans le tibia. Fort.~ */ GOTO 33
  IF ~~ THEN REPLY #13976 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #13977 /* ~Laisse Plusauvage tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #13825 /* ~Il crie… "Tout ! J'ai tout ! Et tout est rien, alors mieux vaut PARTIR !" Il pleurniche comme un enfant, empoignant son tibia. "Pauvre tibia, pauvre tibia, voulais pas te voir blessé…"~ */
  IF ~~ THEN REPLY #13978 /* ~"Alors, j'aurais d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #13979 /* ~Laisse Plusauvage tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #13826 /* ~Le regard de Plusauvage est immédiatement attiré par l'une de tes queues de rats. Il t'arrache la queue de rat des mains et la tient entre ses doigts comme s'il s'agissait d'un vers en contorsion. En un tour de mains, il lui donne une forme étrange et te le relance. "Charmé, ahhhm sûuuur…" Il bredouille des mots, puis glousse.~ */
  IF ~~ THEN REPLY #13980 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 6
  IF ~~ THEN REPLY #13981 /* ~"Merci, Plusauvage. Au revoir."~ */ EXIT
END

IF ~  Global("Wilder","GLOBAL",1)
~ THEN BEGIN 35 // from:
  SAY #13827 /* ~Tu aperçois Aboyant-Plusauvage. Il est encore replié sous ses longues mèches sales… il semble préoccupé par son propre grognement.~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13982 /* ~"Quest-YON, Plusauvage ! Bouche-toi les oreilles et écoute-moi !"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalGT("Law","GLOBAL",-36)
~ THEN REPLY #13983 /* ~"Quest-YON, Plusauvage ! Bouche-toi les oreilles et écoute-moi !"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13984 /* ~"Quest-YON, Plusauvage ! Bouche-toi les oreilles et écoute-moi !"~ */ GOTO 20
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #13985 /* ~"Tu n'écoutes pas mes QUEST-YONS, Plusauvage, des QUEST-YONS j'ai…"~ */ GOTO 6
  IF ~~ THEN REPLY #14005 /* ~Laisse Plusauvage tranquille.~ */ EXIT
END
