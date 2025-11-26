// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOX~

IF ~  Global("Pox","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #8004 /* ~Cette silhouette encapuchonnée est adossée à l'entrée de la Morgue. Son visage est obscurci par l'ombre du capuchon… Tu ne vois que son menton, recouvert d'une barbe de plusieurs jours, et ce qui ressemble à une éruption vert-pourpre dégoûtante. Cette éruption semble accentuée dans la région du cou, s'atténuant en direction du menton.~ */
  IF ~~ THEN REPLY #8005 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #8037 /* ~Laisse la personne tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #8006 /* ~La silhouette ne bouge pas… Il y a un moment de silence, puis il répond d'une voix suraiguë qui ressemble plus à celle d'une gamine d'une dizaine d'années qu'à celle d'un homme. "Ouais ?"~ */
  IF ~~ THEN REPLY #8038 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #8039 /* ~Laisse la créature tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 4.1 5.2 6.3 7.2 8.2 9.1 10.0 11.0 12.5 13.1 14.2 15.2 16.1 17.1 18.1 19.1 20.3 22.2 23.0 24.2 25.1 26.1 27.1 28.1 29.2 30.0 31.3
  SAY #8007 /* ~"Ouais ?"~ */
  IF ~  Global("Pox","GLOBAL",0)
~ THEN REPLY #8040 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Pox","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8041 /* ~"D'où te vient un nom pareil, Variole ?"~ */ GOTO 10
  IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8042 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8043 /* ~"Est-ce que tu connais un certain Pharod ?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
GlobalGT("Pox","GLOBAL",0)
~ THEN REPLY #8044 /* ~"J'ai perdu un journal… T'en aurais pas vu un par hasard ?"~ */ GOTO 23
  IF ~  Global("Pox_Smuggle","GLOBAL",1)
~ THEN REPLY #8045 /* ~"Tu peux me faire entrer dans la Morgue ?"~ */ GOTO 31
  IF ~  GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8046 /* ~"Si je fais le mort, tu peux m'y faire entrer ?"~ */ GOTO 12
  IF ~~ THEN REPLY #8047 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #8008 /* ~"J'm'appelle Variole. Ouais."~ */
  IF ~~ THEN REPLY #8048 /* ~"Euh… Variole ?"~ */ GOTO 10
  IF ~~ THEN REPLY #8049 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #8050 /* ~"Est-ce que tu connais un certain Pharod ?"~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #8051 /* ~"J'ai perdu un journal… T'en aurais pas vu un par hasard ?"~ */ GOTO 23
  IF ~~ THEN REPLY #8052 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #8009 /* ~"J'attends les morts. Ouais."~ */
  IF ~~ THEN REPLY #8053 /* ~"Des 'morts' ? Des cadavres ? Pourquoi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #8054 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8055 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #8010 /* ~"J'trouve un mort, j'le fais passer par la porte, je prends l'jonc, et j'reviens attendre ici, ouais."~ */
  IF ~~ THEN REPLY #8056 /* ~"Par la porte ? Pourquoi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #8057 /* ~"La porte principale est-elle la seule entrée de la Morgue ?"~ */ GOTO 31
  IF ~~ THEN REPLY #8058 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8059 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #8011 /* ~"Un mort, pour un Homme-Poussière, c'est comme une pièce de cuiv'e pour un Récupérateur. Si tu leur amènes des morts, ils te paient, ouais."~ */
  IF ~~ THEN REPLY #8060 /* ~"Pourquoi les Hommes-Poussière achètent-ils les morts ?"~ */ GOTO 7
  IF ~~ THEN REPLY #8061 /* ~"Un Récupérateur ? Qu'est-ce que c'est ?"~ */ GOTO 22
  IF ~~ THEN REPLY #8062 /* ~"La porte principale est-elle la seule entrée de la Morgue ?"~ */ GOTO 31
  IF ~~ THEN REPLY #8063 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8064 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 22.0
  SAY #8012 /* ~"Les rues sont propres, les morts sont à leur place, les rues puent pas, les morts sont pas perdus. On les garde bien au chaud, ouais."~ */
  IF ~~ THEN REPLY #8065 /* ~"Que *font* les Hommes-Poussière avec les morts qu'ils achètent ?"~ */ GOTO 8
  IF ~~ THEN REPLY #8066 /* ~"La porte principale est-elle la seule entrée de la Morgue ?"~ */ GOTO 31
  IF ~~ THEN REPLY #8067 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8068 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #8013 /* ~"Ils traînent les morts à l'intérieur, les placent sur des dalles, les découpent, les enterrent, ou ils les font marcher, ouais."~ */
  IF ~~ THEN REPLY #8069 /* ~"Ils les font marcher ?"~ */ GOTO 9
  IF ~~ THEN REPLY #8070 /* ~"La porte principale est-elle la seule entrée de la Morgue ?"~ */ GOTO 31
  IF ~~ THEN REPLY #8071 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8072 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #8014 /* ~"Ouais, des fois, ils les font se relever, si les Hommes-Poussière en ont besoin, et les morts deviennent des squelettes ou des zombis."~ */
  IF ~~ THEN REPLY #8073 /* ~"La porte principale est-elle la seule entrée de la Morgue ?"~ */ GOTO 31
  IF ~~ THEN REPLY #8074 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8075 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.0
  SAY #8015 /* ~"Ma mère et mon père m'ont donné ce nom en souhaitant qu'la maladie s'abatte sur le nouveau-né, une malédiction qui s'est réalisée, ouais." Tes yeux sont de nouveau attirés par l'éruption vert-pourpre qui recouvre le menton et le cou de Variole.~ */
  IF ~~ THEN REPLY #8076 /* ~"Oh… J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #8077 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Pox","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #8016 /* ~Tu vois Variole adossé près de l'entrée de la Morgue. Elle… il… ne semble pas avoir bougé depuis que tu lui as parlé la dernière fois.~ */
  IF ~~ THEN REPLY #8078 /* ~"Variole, j'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #8079 /* ~Laisse Variole tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.6 20.2 31.2
  SAY #8017 /* ~"Montre à Variole comment tu fais le mort. Et si tu t'débrouilles bien, Variole t'fait rentrer, ouais."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #8080 /* ~Fais le mort…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8081 /* ~Fais le mort…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  False()
Global("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8082 /* ~Fais le mort…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Pox_Smuggle_XP","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8083 /* ~Fais le mort…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~  False()
GlobalGT("Pox_Smuggle_XP","GLOBAL",0)
~ THEN REPLY #8084 /* ~Fais le mort…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 14
  IF ~~ THEN REPLY #8085 /* ~"Pas maintenant. J'ai d'autres questions d'abord…"~ */ GOTO 2
  IF ~~ THEN REPLY #8086 /* ~"Peu importe, peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #8018 /* ~Variole te regarde t'exécuter sans un mot. Lorsque tu te relèves, il parle. "Les Hommes-Poussière croiront pas qu't'es mort. Y vérifient toujours si un mort est bien mort et, si le mort respire, y marchent pas. C'est pas une bonne affaire, ouais."~ */
  IF ~~ THEN REPLY #8087 /* ~"Et si j'étais vraiment mort ? Tu pourrais me vider et vendre mon corps ?"~ */ GOTO 15
  IF ~~ THEN REPLY #8088 /* ~"Ça c'est un problème. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8089 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 12.2 12.3 12.4
  SAY #8019 /* ~Variole te regarde t'exécuter sans un mot. Lorsque tu te relèves, il parle. "Ouais, Variole peut t'vendre. Tu veux êt'vendu maintenant ?"~ */
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",2)
~ THEN REPLY #8090 /* ~"Oui."~ */ DO ~TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~  Global("Pox_Smuggle_XP","GLOBAL",1)
~ THEN REPLY #8091 /* ~"Oui."~ */ DO ~AddexperienceParty(500)
TeleportParty("AR0202",[1480.2360],2)
~ EXIT
  IF ~~ THEN REPLY #8094 /* ~"Non, pas encore. J'ai d'autres questions d'abord."~ */ GOTO 2
  IF ~~ THEN REPLY #8095 /* ~"Peut-être une autre fois, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #8020 /* ~Variole ne se laisse pas déboussoler par cette question. "Ouais, j'le ferai, comme la dernière fois, hein ?"~ */
  IF ~~ THEN REPLY #8096 /* ~"Oui."~ */ GOTO 21
  IF ~~ THEN REPLY #8097 /* ~"Euh… la 'dernière fois' ?"~ */ GOTO 16
  IF ~~ THEN REPLY #8098 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8099 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 31.0
  SAY #8021 /* ~"Ouais. Tu m'l'as demandé plein d'fois, Variole l'a toujours fait."~ */
  IF ~~ THEN REPLY #8100 /* ~"Euh… Combien de fois exactement ?"~ */ GOTO 17
  IF ~~ THEN REPLY #8101 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8102 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #8022 /* ~"Ouais, plein d'fois."~ */
  IF ~~ THEN REPLY #8103 /* ~"Alors… nous nous sommes déjà rencontrés ?"~ */ GOTO 18
  IF ~~ THEN REPLY #8104 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8105 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #8023 /* ~"Ouais."~ */
  IF ~~ THEN REPLY #8106 /* ~"Que sais-tu sur moi ?"~ */ GOTO 19
  IF ~~ THEN REPLY #8107 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8108 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8024 /* ~"T'es un mort qui l'reste pas longtemps, ouais. T'es toujours réglo avec Variole, toujours."~ */
  IF ~~ THEN REPLY #8109 /* ~"Sais-tu autre chose sur moi ?"~ */ GOTO 20
  IF ~~ THEN REPLY #8110 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8111 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 20.0
  SAY #8025 /* ~"T'es un mort qui l'reste pas longtemps, ouais. T'es toujours réglo avec Variole, toujours."~ */
  IF ~~ THEN REPLY #8112 /* ~"Euh… et à part ça, tu ne sais rien d'autre ?"~ */ GOTO 20
  IF ~~ THEN REPLY #8113 /* ~"Alors, tue-moi. Je veux entrer dans la Morgue."~ */ GOTO 21
  IF ~~ THEN REPLY #8114 /* ~"Euh, bon, très bien. Et si je faisais simplement le mort, tu pourrais me faire entrer ?"~ */ GOTO 12
  IF ~~ THEN REPLY #8115 /* ~"Hmmm. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8116 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.0 20.1 31.1
  SAY #8026 /* ~Variole dégage ses bras de sa robe, laissant apparaître une dague rouillée dans chacune de ses mains couvertes de pustules. Dans un mouvement confus, les lames dessinent deux lignes le long de ta gorge, et tout devient noir…~ */
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",0)
~ THEN REPLY #8117 /* ~Tout devient noir…~ */ DO ~Kill(Protagonist)
~ EXIT
  IF ~  Global("Pox_Smuggle_Movie","GLOBAL",1)
~ THEN REPLY #8118 /* ~Tout devient noir…~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 6.1
  SAY #8027 /* ~"Ouais, Récupérateur. On ramasse des morts, on les amène aux Hommes-Poussière et on les échange contre du jonc."~ */
  IF ~~ THEN REPLY #8119 /* ~"Que font les Hommes-Poussière avec les morts… ces cadavres ?"~ */ GOTO 7
  IF ~~ THEN REPLY #8120 /* ~"La porte principale est-elle la seule entrée de la Morgue ?"~ */ GOTO 31
  IF ~~ THEN REPLY #8121 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8122 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 2.4 3.3
  SAY #8028 /* ~"Nan. J'ai pas vu d'journal. Y'a des choses qui se perdent dans la Ruche, on les r'trouve jamais. C'est p't'être l'cas du journal, ouais."~ */
  IF ~~ THEN REPLY #8123 /* ~"Je vois. Dis-moi, j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8124 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3 3.2
  SAY #8029 /* ~"Ouais, Pharod. Récupérateur, de taille, son nom est connu, il a l'bras long, ouais."~ */
  IF ~~ THEN REPLY #8125 /* ~"Un Récupérateur ?"~ */ GOTO 25
  IF ~~ THEN REPLY #8126 /* ~"Sais-tu où je pourrais le trouver ?"~ */ GOTO 26
  IF ~~ THEN REPLY #8127 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8128 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #8030 /* ~"Ouais, Récupérateur. On ramasse des morts et on les échange aux Hommes-Poussière contre du jonc."~ */
  IF ~~ THEN REPLY #8129 /* ~"Sais-tu où je pourrais le trouver ?"~ */ GOTO 26
  IF ~~ THEN REPLY #8130 /* ~"Oh. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8131 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #8031 /* ~"Ouais, dans la Ruche. Que'que part par là."~ */
  IF ~~ THEN REPLY #8132 /* ~"Tu peux être un peu plus précis ?"~ */ GOTO 27
  IF ~~ THEN REPLY #8133 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8134 /* ~"Alors, j'essaierai juste de retrouver sa trace. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #8032 /* ~"Ouais, que'que part dans la Ruche. Pharod se planque. Impossible de le trouver. Ça vaut pas la peine de l'chercher."~ */
  IF ~~ THEN REPLY #8135 /* ~"'Ça vaut pas la peine de le chercher' ? Qu'est-ce que tu veux dire ?"~ */ GOTO 28
  IF ~~ THEN REPLY #8136 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8137 /* ~"Alors, je le trouverai moi-même, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #8033 /* ~"Ouais, y'en a beaucoup qui l'détestent, même parmi les Récupérateurs. Partagetombe le hait, ouais."~ */
  IF ~~ THEN REPLY #8138 /* ~"Partagetombe ?"~ */ GOTO 29
  IF ~~ THEN REPLY #8139 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8140 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8034 /* ~"Ouais, Partagetombe. Le nom est connu, il a le bras long. C'est lui qui dit à Variole c'qu'y'doit faire."~ */
  IF ~  Global("Pox","GLOBAL",2)
~ THEN REPLY #8141 /* ~"Est-ce que ton chef… ce Partagetombe… saurait où se trouve Pharod ?"~ */ JOURNAL #66542 /* ~J'ai rencontré un Récupérateur malade du nom de 'Variole' à l'extérieur de la Morgue. Il connaissait Pharod, mais ignorait où trouver ce dernier. Il m'a dit de rechercher un certain 'Partagetombe' au Square du Chiffonnier, à quelques pâtés de maison à l'ouest de la Morgue. Selon lui, Partagetombe hait Pharod et sait où le trouver.~ */ GOTO 30
  IF ~  GlobalLT("Pox","GLOBAL",2)
~ THEN REPLY #8142 /* ~"Est-ce que ton chef… ce Partagetombe… saurait où se trouve Pharod ?"~ */ DO ~SetGlobal("Pox","GLOBAL",2)
~ JOURNAL #66542 /* ~J'ai rencontré un Récupérateur malade du nom de 'Variole' à l'extérieur de la Morgue. Il connaissait Pharod, mais ignorait où trouver ce dernier. Il m'a dit de rechercher un certain 'Partagetombe' au Square du Chiffonnier, à quelques pâtés de maison à l'ouest de la Morgue. Selon lui, Partagetombe hait Pharod et sait où le trouver.~ */ GOTO 30
  IF ~~ THEN REPLY #8143 /* ~"Hmmm. J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8144 /* ~"C'est tout ce que je voulais savoir, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1
  SAY #8035 /* ~"Ouais. Partagetombe connaît les ténèbres. Il sait qu'Pharod se planque. Partagetombe est au Square du Chiffonnier, plusieurs pâtés de maison à l'ouest d'ici. Tu diras à Partagetombe qu'c'est Variole qui t'envoie, vas-y, Partagetombe va se transformer en Partagejonc-avec-Variole, ouais."~ */
  IF ~~ THEN REPLY #8145 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #8146 /* ~"Le Square du Chiffonnier, à l'ouest d'ici ? Très bien, alors je vais aller y chercher ce Partagetombe."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 2.5 5.1 6.2 7.1 8.1 9.0 22.1
  SAY #8036 /* ~"Ouais. Y'a qu'les morts et les Hommes-Poussière qui peuvent entrer. Tu veux qu'Variole te transforme encore en mort ?"~ */
  IF ~~ THEN REPLY #8147 /* ~"Euh… Encore ?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #8148 /* ~"Oui, transforme-moi en mort. Je dois absolument entrer dans la Morgue."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #8149 /* ~"Et si je faisais semblant d'être mort, tu pourrais me faire entrer ?"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #8150 /* ~"Non, non… J'ai d'autres questions…"~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #8151 /* ~"Peut-être une autre fois, merci. Au revoir."~ */ DO ~SetGlobal("Pox_Smuggle","GLOBAL",1)
~ EXIT
END
