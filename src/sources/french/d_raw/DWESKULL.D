// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWESKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWESKULL~

IF ~  Global("WeSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31810 /* ~Ce squelette à la forme étrange émet un ricanement aigu avant de s'adresser à toi. "P-p-p-uis-je t-t'aider ?"~ */
  IF ~~ THEN REPLY #31811 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31812 /* ~"Comment es-tu arrivée ici ?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31813 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31814 /* ~"Qu'est-ce que tu peux me dire sur les autres crânes de l'étagère ?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31815 /* ~"Non. Au revoir."~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("WeSkull_Talk","AR0508",1)
~ THEN BEGIN 1 // from:
  SAY #31816 /* ~"E-e-e-e-encore toi ?"~ */
  IF ~~ THEN REPLY #31817 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31818 /* ~"Comment est-ce que tu as atterri ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31819 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 4
  IF ~~ THEN REPLY #31820 /* ~"Qu'est-ce que tu peux me dire sur les autres crânes de l'étagère ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31821 /* ~"Pas pour longtemps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #31822 /* ~"Je suis P-p-p-p-Peignebouc. J'étais un rat-garou."~ */
  IF ~~ THEN REPLY #31823 /* ~"Un RAT-garou ? Mais il y a combien de bêtes-garou ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 5.1
  SAY #31824 /* ~"C'est e-e-e-eembarrassant. J'étais dans ma forme de rat, en train de chercher de la n-n-n-nourriture au Cadavre fumant, lorsque… disons j-j-j-juste que je n'aurais jamais pensé qu'un larbin aurait une f-f-f-fourchette en argent. Mantuok m'a trouvé, et j'ai atterri ici."~ */
  IF ~~ THEN REPLY #31825 /* ~"Qu'est-ce que tu peux me dire sur Mantuok ?"~ */ GOTO 7
  IF ~~ THEN REPLY #31826 /* ~"Qu'est-ce que tu peux me dire sur les autres crânes qui sont là ?"~ */ GOTO 5
  IF ~~ THEN REPLY #31827 /* ~"Qu'est-ce que tu peux me dire sur Lothar ?"~ */ GOTO 4
  IF ~~ THEN REPLY #31828 /* ~"Je vois. Et bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.2 5.2
  SAY #31829 /* ~Le crâne de Peignebouc redevient silencieux. S'il avait des yeux, ils seraient terrifiés. "Va… t-en…" murmure le crâne. Il refuse de te parler.~ */
  IF ~~ THEN REPLY #31830 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 3.1
  SAY #31831 /* ~"Ils sont tous c-c-c-critiques. J-j-juste parce qu'ils étaient des crânes d'hu-hu-humains, ils p-p-pensent qu'ils valent mieux que m-m-moi. Je l-l-les HAIS."~ */
  IF ~~ THEN REPLY #31832 /* ~"C'est une attitude saine. Parle-moi de toi, tu veux bien ?"~ */ GOTO 2
  IF ~~ THEN REPLY #31833 /* ~"C'est bien. Comment tu as atterri ici ?"~ */ GOTO 3
  IF ~~ THEN REPLY #31834 /* ~"Alors, tu dois bien aimer Lothar, non ?"~ */ GOTO 4
  IF ~~ THEN REPLY #31835 /* ~"Tant mieux pour toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #31836 /* ~"Oh, un g-g-g-grand nombre. C-c-corbeaux, l-loups, o-o-ours, blaireaux… même les c-c-crocodiles ! C'est comme si tous les animaux du Pays des Bêtes avaient un équivalent lycanthrope. C'est a-a-aassez intéressant en vérité."~ */
  IF ~~ THEN REPLY #31837 /* ~"Quels rats-garou sont dans le coin ?"~ */ GOTO 8
  IF ~~ THEN REPLY #31838 /* ~"Comment on tue une bête-garou ?"~ */ GOTO 9
  IF ~~ THEN REPLY #31839 /* ~"Et comment ! Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0 8.0
  SAY #31840 /* ~"Ce b-b-b-bougre de sorcier ! Ce b-b-b-bon à rien ! J'ai fait de lui ce qu'il est. Il y a des a-a-a-années, lorsqu'il n'était qu'un b-b-b-bipède puant, je l'ai découvert et me suis r-r-r-régalé de sa jambe. Il avait un goût de v-v-vinaigre. J'en suis resté saoul pendant des j-j-jours. Puis il s'est montré. Il m'a r-r-ramené ce d-d-drôle de livre, et m'voilà hi-hi-histoire ancienne et décoration sur un é-é-étagère. Le salaud."~ */
  IF ~~ THEN REPLY #31841 /* ~"Tu connais certains de ses secrets ?"~ */ GOTO 10
  IF ~~ THEN REPLY #31842 /* ~"Comment je pourrais le tuer ?"~ */ GOTO 9
  IF ~~ THEN REPLY #31843 /* ~"Quelle vie ! Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #31844 /* ~"Il y a M-m-m-mantuok et sa bande. Je l'ai créé, et qu-qu-qu'est-ce qu'il fait ? Il va me vendre à L-l-lothar ! C'est pas trop mal, quand même… J'ai r-r-révélé tous ses secrets au patron. Mantuok pense qu'il est en s-s-sécurité, mais Lothar s-s-s-sait tout."~ */
  IF ~~ THEN REPLY #31845 /* ~"Qu'est-ce que tu peux me dire sur Mantuok ?"~ */ GOTO 7
  IF ~~ THEN REPLY #31846 /* ~"Comme quoi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #31847 /* ~"Comment je pourrais le tuer ?"~ */ GOTO 9
  IF ~~ THEN REPLY #31848 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.2
  SAY #31849 /* ~"T-t-tuer un lycanthrope, c'est facile. T-t-trouve juste une arme en argent, ou magique et plante-la ! Les armes n-n-normales ne marchent pas si bien… fut un t-t-temps, les gens me tiraient des tas d'flèches. F-f-faisait rien qu'piquer. Mais j'ressemblais à un p-p-p-porc-épic !"~ */
  IF ~~ THEN REPLY #31850 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.1
  SAY #31851 /* ~"Son s-s-s-secret est qu'il travaille pour Lothar m-m-mais aussi pour Tant-en-un, l'esprit rat-crâne de la Ruche. Je sais pas ce qu-qu-qu'il prépare, m-m-mais… c'est pas g-g-grave, parce que j'ai t-t-tout dit à Lothar."~ */
  IF ~~ THEN REPLY #31852 /* ~"Je vois. Merci et au revoir."~ */ EXIT
END
