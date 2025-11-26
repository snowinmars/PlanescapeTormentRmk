// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHAD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23954 /* ~Ce cadavre de Récupérateur roux est couvert de méchantes morsures. Le cou de l'homme mort se tord encore, comme s'il essayait de se dégager de son corps.~ */
  IF ~~ THEN REPLY #23967 /* ~"C'est… intéressant."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",3)
~ THEN BEGIN 1 // from:
  SAY #23968 /* ~Le cadavre de Chad parle d'une voix d'outre-tombe : "Qu'est-ce que tu veux, mon pote ?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23969 /* ~"Où se trouve cette carafe déjà ?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23970 /* ~"J'aimerais savoir où est cet objet dont tu parlais."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #23971 /* ~"Parle-moi de toi."~ */ GOTO 5
  IF ~~ THEN REPLY #23972 /* ~"Parle-moi des autres Récupérateurs."~ */ GOTO 6
  IF ~~ THEN REPLY #23973 /* ~"Qu'est-ce que tu peux me dire sur les catacombes ?"~ */ GOTO 8
  IF ~~ THEN REPLY #23974 /* ~"Rien pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0 4.1 5.0 6.1 7.0 8.0 14.1
  SAY #23975 /* ~"Ahh, allez, pote." Il s'interrompt. "Que veux-tu ?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23976 /* ~"Où se trouve cette carafe déjà ?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23977 /* ~"J'aimerais savoir où est cet objet dont tu parlais."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #23978 /* ~"Parle-moi de toi."~ */ GOTO 5
  IF ~~ THEN REPLY #23979 /* ~"Parle-moi des autres Récupérateurs."~ */ GOTO 6
  IF ~~ THEN REPLY #23980 /* ~"Qu'est-ce que tu peux me dire sur les catacombes ?"~ */ GOTO 8
  IF ~~ THEN REPLY #23981 /* ~"Rien pour l'instant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0
  SAY #23982 /* ~"Tu passes discrètement devant les morts ou les rats pour aller dans les Nations Englouties. Une fois arrivé, tu prends le principal passage après trois portes sur ta gauche. Tu passeras sous une arche, puis tu prendras la première porte à gauche. C'est sous l'arche la plus proche du mur de derrière. Je ne connais pas le mot de passe… mais il en restera encore quelques gouttes pour toi. Pigé, mon pote ?"~ */
  IF ~~ THEN REPLY #23983 /* ~"Je pense. Mais j'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #23984 /* ~"Je pense. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 14.0
  SAY #23985 /* ~"D'accord, j'vais t'expliquer : il y a une raison au nom des Nations Englouties. Il y a une bouteille magique qui n'arrête jamais de couler, une carafe, cachée dans les catacombes des Nations Englouties. Tu la trouves et t'as toute l'eau fraîche dont tu pouvais rêver."~ */
  IF ~~ THEN REPLY #23986 /* ~"Très bien. Où elle est ?"~ */ GOTO 3
  IF ~~ THEN REPLY #23987 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #23988 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2
  SAY #23989 /* ~"Moi ? Je m'appelle Chad. J'étais un artiste, mon pote. Argent, gloire, respect, femmes, puis plus rien. J'ai rejoint Pharod et sa clique et je suis devenu un des meilleurs rôdeurs de catacombe du lot - je pouvais voler des trucs sous le nez de la reine goule elle-même. Puis… puis je suis devenu un peu trop sûr de moi et j'ai eu des vues sur une des gardes pierre - c'est ce que j'appelle les catacombes *sérieuses* ici - et je me suis transformé en bouffe à vargouille. J'suis presque devenu une vargouille moi-même. C'est par ma force de volonté uniquement que j'ai réussi à garder ma tête. C'est bien que tu sois venu."~ */
  IF ~~ THEN REPLY #23990 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 2
  IF ~~ THEN REPLY #23991 /* ~"C'est une bonne chose, en effet. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #23992 /* ~"Eh… nous sommes nombreux. Gris était le meilleur, après moi bien sûr."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #23993 /* ~"Gris est mort aussi."~ */ GOTO 7
  IF ~~ THEN REPLY #23994 /* ~"J'ai d'autres questions, alors."~ */ GOTO 2
  IF ~~ THEN REPLY #23995 /* ~"Bien sûr. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23996 /* ~"Ah bon ?" Sa voix s'égaie. "Au moins, il n'ira pas se vanter partout qu'il est meilleur que moi."~ */
  IF ~~ THEN REPLY #23997 /* ~"Non, sans doute pas. Réponds à d'autres questions, veux-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #23998 /* ~"Ça m'étonnerait, en effet. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.4
  SAY #23999 /* ~"Qu'est-ce que je peux te dire sur les catacombes, mon pote ? Y a beaucoup de monstres et si t'es malin, tu perdras pas ton temps ici. Va chercher ce que tu veux et tire-toi. Beaucoup de ces endroits comportent des pièges et bien trop hébergent des choses que tu ne préférerais pas voir. Mon conseil est de te tirer tant que c'est possible."~ */
  IF ~~ THEN REPLY #24000 /* ~"Réponds seulement à quelques-unes de mes questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #24001 /* ~"J'y réfléchirai."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #24002 /* ~Le cou du cadavre se tord encore lorsque tu t'approches. "T'as pas encore trouvé celui qui m'a roulé, hein, pote ?" demande le cadavre.~ */
  IF ~~ THEN REPLY #24003 /* ~"Pas encore. Mais je cherche toujours. J'avais besoin de quelques réponses d'abord."~ */ GOTO 10
  IF ~~ THEN REPLY #24004 /* ~"Pas encore. Je cherche toujours."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #24005 /* ~"Grouille-toi, bige ! J'sais pas combien de temps mon cou pourra encore résister…"~ */
  IF ~~ THEN REPLY #24006 /* ~"Dis-moi ce que tu vas me donner pour ça."~ */ GOTO 11
  IF ~~ THEN REPLY #24007 /* ~"Parle-moi de toi."~ */ GOTO 12
  IF ~~ THEN REPLY #24008 /* ~"Parle-moi de ces catacombes."~ */ GOTO 12
  IF ~~ THEN REPLY #24009 /* ~"Qu'est-ce que tu voulais me faire faire, déjà ?"~ */ GOTO 13
  IF ~~ THEN REPLY #24010 /* ~"Très bien, très bien. Inutile de t'emballer."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #24011 /* ~"J'ai promis de te dire… comment trouver… erph… un objet magique qui pourrait t'être utile…"~ */
  IF ~~ THEN REPLY #24012 /* ~"Bien, bien. D'autres réponses, s'il-te-plaît…"~ */ GOTO 10
  IF ~~ THEN REPLY #24013 /* ~"Je cherche toujours. Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 17 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",1)
~ THEN BEGIN 12 // from: 10.1 10.2 17.1 17.2 17.3
  SAY #24014 /* ~"Écoute… ma tête est sur le point d'exploser… je n'ai pas vraiment le *temps* de parler pour l'instant… demande-le moi… plus tard."~ */
  IF ~  Global("Revenge_V","GLOBAL",1)
~ THEN REPLY #24015 /* ~"Qu'est-ce que tu voulais me faire faire, déjà ?"~ */ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24016 /* ~"Que veux-tu de moi ?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24017 /* ~"Qu'est-ce que tu peux bien vouloir ?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.3 12.0 12.1 12.2 17.0 17.4
  SAY #24018 /* ~"Tu vois… ce… cou ?" Il s'étire comme de la mélasse et se contracte. "C'est une foutue vargouille qui m'a mordu. Je suis mort et… je dois tenir ma tête si je ne veux pas devenir… une de ces foutues bestioles." Il fait des efforts pour parler. "Tu dois tuer toutes les vargouilles de ce passage… pour me préserver de ça."~ */
  IF ~~ THEN REPLY #24019 /* ~"Qu'est-ce que tu me donneras en échange ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Chad_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #24020 /* ~"C'est d'accord."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Chad_1","GLOBALGood",1)
~ GOTO 15
END

IF WEIGHT #2 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #24021 /* ~Tu remarques que le cou de Chad va mieux maintenant… il ne fait plus saillie comme s'il voulait se séparer du torse. "Merci, mon pote… je sais au moins que je ne deviendrai jamais une vargouille… Tu veux ta récompense maintenant ?"~ */
  IF ~~ THEN REPLY #24022 /* ~"Dis-moi."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #24023 /* ~"Non. Réponds à d'autres questions que j'ai à te poser."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.0 13.1
  SAY #24024 /* ~"En échange… je t'expliquerai comment… trouver… un objet magique puissant… ma vision de mort me dit… que tu en auras peut-être besoin…"~ */
  IF ~~ THEN REPLY #24025 /* ~"Qu'est-ce que c'est ?"~ */ GOTO 16
  IF ~~ THEN REPLY #24026 /* ~"J'y vais."~ */ EXIT
  IF ~~ THEN REPLY #24027 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #24028 /* ~"Trouve-le et… je te le dirai. Pas avant."~ */
  IF ~~ THEN REPLY #24029 /* ~"Bien. J'y vais."~ */ EXIT
  IF ~~ THEN REPLY #24030 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",0)
~ THEN BEGIN 17 // from:
  SAY #24031 /* ~Ce cadavre de Récupérateur roux est couvert de méchantes morsures. Le cou de l'homme mort se tord encore, comme s'il essayait de se détacher du corps. Il fait des efforts pour parler : "Eh, mon pote… je m'appelle Chad… j'ai besoin de ton aide…"~ */
  IF ~~ THEN REPLY #24032 /* ~"Qu'est-ce qui ne va pas chez toi ?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #24033 /* ~"Que peux-tu me dire sur ces catacombes ?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24034 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24035 /* ~"Où sommes-nous ?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24036 /* ~"Non. Au revoir."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END
