// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DP_STONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DP_STONE~

IF ~  Global("PStone","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49785 /* ~L'inscription située sur le socle de cette pierre sensorielle indique qu'elle contient l'expérience 'Chasse d'une semaine dans les forêts de l'Arborée'.~ */
  IF ~~ THEN REPLY #49786 /* ~Laisse les sensations affluer.~ */ DO ~SetGlobal("Pstone","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49787 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49788 /* ~Tu te trouves dans un cercle de tentes blanches situées quelque part au cœur de la forêt. Les arbres qui t'entourent sont, de loin, les plus grands que tu aies jamais vus. Tu ressens soudain une étrange sensation de picotement dans le bas du crâne…~ */
  IF ~~ THEN REPLY #49789 /* ~Poursuis l'expérience.~ */ GOTO 3
  IF ~~ THEN REPLY #49790 /* ~Interromps l'expérience et va-t'en.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #49791 /* ~Tu as beau essayer, tu ne parviens pas à te débarrasser de cette sensation. Elle continue d'attirer ton esprit encore plus loin au cœur de l'expérience…~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #49792 /* ~Les alentours perdent peu à peu leurs couleurs pour prendre l'apparence de ce qui ressemble à l'intérieur d'une grande sphère grise. Tu distingues en face de toi une silhouette qui ressemble à la tienne. Ses yeux brillent dans la pénombre et un sourire fou fend son visage. "Je SAVAIS que tu viendrais…"~ */
  IF ~~ THEN REPLY #49793 /* ~"Bonjour…"~ */ GOTO 4
  IF ~~ THEN REPLY #49794 /* ~"Qui es-tu ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #49795 /* ~"Oh, bonjour, bonjour, je suis si heureux de te voir." Il sourit d'un air moqueur. "J'ordonne à ta langue MEURTRIÈRE de se taire ! C'est vrai : meurtrière. Ta prétendue innocence est RISIBLE !"~ */
  IF ~~ THEN REPLY #49796 /* ~"Qui es-tu ?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #49797 /* ~"Oh, tu ne SAIS pas ? Ces SALES JOURNAUX, MENTEURS, PLUS QUE CONDAMNABLES ne t'ont-ils pas révélé qui je suis ? Ces journaux se trouvaient si commodément près de moi quand je me suis réveillé… Ces journaux qui me traitaient d'INCARNATION ! Ha ! Je les ai TOUS brûlés, oui, tous ceux que j'ai TROUVÉS…"~ */
  IF ~~ THEN REPLY #49798 /* ~"Qu'est-ce qu'ils disaient, exactement ?"~ */ GOTO 6
  IF ~~ THEN REPLY #49799 /* ~"Alors… Tu es l'une de mes précédentes incarnations ?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #49800 /* ~"Ce sont des tissus de MENSONGES, MENSONGES, MENSONGES et rien d'autre ! Des conneries sur un homme qui a oublié, d'autres incarnations, de conserver ses expériences par écrit pour que d'autres puissent en profiter… VOLEURS ! C'est MA vie, MA VIE ! TU VEUX JUSTE VOLER MON CORPS, MAIS TU NE L'AURAS PAS !"~ */
  IF ~~ THEN REPLY #49801 /* ~"Alors… Tu es l'une de mes précédentes incarnations ?"~ */ GOTO 7
  IF ~~ THEN REPLY #49802 /* ~"Où suis-je ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #49803 /* ~Il croise les bras et détourne le regard. "Si tu CROIS à ces CONNERIES, oui."~ */
  IF ~~ THEN REPLY #49804 /* ~"Que disaient ces journaux 'menteurs' ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #49805 /* ~"Oh, ÇA ?" Il fait de grands gestes en hennissant. "Un petit PIÈGE, c'est tout. Je me suis rendu compte que TUER les VOLEURS DE CORPS comme toi n'était pas suffisant… Je dois aussi te PIÉGER, te PIÉGER pour l'éternité. Tu as peut-être enfin compris qu'on ne peut pas sortir de cette pierre sensorielle… ton esprit y est enfermé. Tu remarqueras les environs ÉPARS que je t'ai laissé… pour te rendre RAPIDEMENT fou et pour te laisser pourrir." Il est pris d'un rire fou.~ */
  IF ~~ THEN REPLY #49806 /* ~"J'ai quelques questions, alors…"~ */ GOTO 10
  IF ~~ THEN REPLY #49807 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 10.3 11.3 12.3 15.4 16.1 19.4 20.3 21.3 22.3
  SAY #49808 /* ~Tu as essayé de t'échapper de l'expérience, mais en vain. Ta précédente incarnation éclate de rire. "Rends-toi ! Tu ne t'échapperas JAMAIS ! Tu ferais aussi bien de t'allonger et d'attendre le NÉANT. Je suis le seul à pouvoir te libérer et je n'en ferai rien."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49809 /* ~"Attends… mais *je* suis toi. Ce qui veut dire que je *peux* me libérer…"~ */ GOTO 14
  IF ~~ THEN REPLY #49810 /* ~"Alors, j'ai quelques questions à te poser…"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.1
  SAY #49811 /* ~Ta précédente incarnation se croise les bras et détourne le regard d'un air indigné. Hormis une chevelure un peu plus fournie que la tienne, il est pareil que toi - même ses bras portent les mêmes tatouages que les tiens.~ */
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49812 /* ~"Est-ce que c'est toi qui as créé ce dodécaèdre piégé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49813 /* ~"Comment est-ce que tu as fait ce piège ?"~ */ GOTO 15
  IF ~~ THEN REPLY #49814 /* ~"Est-ce que tu as mis ces tatouages ?"~ */ GOTO 19
  IF ~~ THEN REPLY #49815 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 10.0 15.2 19.2 20.1 21.1 22.1
  SAY #49816 /* ~"Je ne sais pas ce que tu racontes. Hé. Hé-hé. Très bien, c'ÉTAIT moi. SUPER, non ? Tu as un peu JOUÉ avec ? J'espère que tu as perdu un DOIGT ou un ŒIL ?" Il glousse joyeusement.~ */
  IF ~  Global("P_Journal","GLOBAL",5)
~ THEN REPLY #49817 /* ~"C'était astucieux, mais ça ne m'a pas empêché de l'ouvrir et de le lire."~ */ GOTO 12
  IF ~~ THEN REPLY #49818 /* ~"Comment est-ce que tu as fait ce piège ?"~ */ GOTO 15
  IF ~~ THEN REPLY #49819 /* ~"Est-ce que tu as mis ces tatouages ?"~ */ GOTO 19
  IF ~~ THEN REPLY #49820 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49821 /* ~Ta précédente incarnation semble horrifiée. "NON ! NON ! NON ! IMPOSSIBLE ! Personne ne peut comprendre la langue dans laquelle c'était écrit ; j'ai massacré le SEUL qui la connaissait après l'avoir apprise. Une langue MORTE, un linguiste MORT… une histoire de mort."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49822 /* ~Mensonge : "Si j'ai réussi à le lire, c'est parce que je suis *toi*. Je ne suis pas un de ces faux ; tu t'es toi-même piégé ici. Je me suis piégé. Tu ne comprends donc pas ?"~ */ GOTO 13
  IF ~~ THEN REPLY #49823 /* ~"Comment est-ce que tu as fait ce piège ?"~ */ GOTO 15
  IF ~~ THEN REPLY #49824 /* ~"Est-ce que tu as mis ces tatouages ?"~ */ GOTO 19
  IF ~~ THEN REPLY #49825 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0 15.0
  SAY #49826 /* ~"Mais… ce n'est pas… tu es un des… que je croyais avoir tout PRÉVU ! Comment AS-TU pu… ai-je pu… être aussi BÊTE !" Il se tord les mains et se mord la lèvre supérieure. "Comment FAIRE pour sortir ? COMMENT ? J'ai oublié… attends : 'Je suis le seul à pouvoir te libérer et je n'en ferai rien.' Si tu es moi, alors tu PEUX te libérer toi-même…"~ */
  IF ~~ THEN REPLY #49827 /* ~Essaie de te libérer en 'voulant' que le piège s'ouvre.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #49828 /* ~"Non ! Non… ça ne peut pas… S'ARRÊTER !"~ */
  IF ~~ THEN REPLY #49829 /* ~Essaie de te libérer en 'voulant' que le piège s'ouvre.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 11.1 12.1 19.3 20.2 21.2 22.2
  SAY #49830 /* ~"Impossible de te le dire… Mais c'est la dernière FOIS, la magie utilisée pour le créer a été PERDUE, même pour moi. Mais c'était MALIN… une expérience CACHÉE derrière une autre pour qu'aucune autre CHAIR que la MIENNE n'y puisse grand-chose…"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49831 /* ~"Mais alors… ça ne voudrait pas dire que je suis *toi* ? Tu t'es toi-même piégé. *Je* me suis piégé. Tu ne comprends donc pas ?"~ */ GOTO 13
  IF ~~ THEN REPLY #49832 /* ~"Alors, en fait, il y a deux sensations dans cette pierre ?"~ */ GOTO 16
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49833 /* ~"C'est toi qui as aussi créé ce dodécaèdre piégé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49834 /* ~"Est-ce que tu as mis ces tatouages ?"~ */ GOTO 19
  IF ~~ THEN REPLY #49835 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #49836 /* ~"Oui, celle de la chasse de l'Arborée et celle de ce PIÈGE." Il te regarde soudain d'un air soupçonneux. "POURQUOI ?"~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #49837 /* ~Essaie d'accéder à l'autre sensation à la force de ta volonté.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #49838 /* ~Essaie d'accéder à l'autre sensation à la force de ta volonté.~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49839 /* ~"Qu'est-ce… qu'est-ce que tu FAIS ? ARRÊTE ÇA !"~ */
  IF ~~ THEN REPLY #49840 /* ~Continue à essayer d'accéder à l'autre sensation.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #49841 /* ~Tu réussis enfin à te hisser à la 'surface' de l'expérience - la chasse de l'Arborée - et à mettre fin à la sensation avant de retomber dans le piège.~ */
  IF ~~ THEN REPLY #49842 /* ~Pars.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.2 11.2 12.2 15.3
  SAY #49843 /* ~"Non !" Il a l'air affolé. "C'est cette incarnation, cette incarnation 'PRATIQUE' qui l'a fait. J'ai essayé de les enlever, mais la peau se RÉGÉNÈRE et les tatouages sont toujours là ! J'ai essayé de les ENLEVER, de les frotter avec de l'ACIDE… Je les DÉTESTE…"~ */
  IF ~~ THEN REPLY #49844 /* ~"Mais… Pourquoi ?"~ */ GOTO 20
  IF ~~ THEN REPLY #49845 /* ~Lis les tatouages.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49846 /* ~"Est-ce que c'est toi qui as créé ce dodécaèdre piégé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49847 /* ~"Comment est-ce que tu as fait ce piège ?"~ */ GOTO 15
  IF ~~ THEN REPLY #49848 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #49849 /* ~Ses yeux clignent, révélant son embarras. "C'est exaspérant de sentir des YEUX sur toi, lisant en TOI comme dans un LIVRE ouvert…"~ */
  IF ~~ THEN REPLY #49850 /* ~Lis les tatouages.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49851 /* ~"Est-ce que c'est toi qui as créé ce dodécaèdre piégé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49852 /* ~"Comment est-ce que tu as fait ce piège ?"~ */ GOTO 15
  IF ~~ THEN REPLY #49853 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #49854 /* ~Ses yeux s'égarent. "Arrête ! ARRÊTE DE LIRE EN MOI !" Il lève les bras pour se cacher, en se détournant de toi.~ */
  IF ~~ THEN REPLY #49855 /* ~Continue à les lire.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 22
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49856 /* ~"D'accord. C'est toi qui as créé ce dodécaèdre piégé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49857 /* ~"Bien. Comment est-ce que tu as fait ce piège ?"~ */ GOTO 15
  IF ~~ THEN REPLY #49858 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49859 /* ~Les yeux de la silhouette s'égarent encore plus. "ARRÊTE ! Arrête IMMÉDIATEMENT ! Je te préviens !" Il se recroqueville davantage. Tu vois, sur son dos, la liste d'avertissements tatoués que Morte t'a lue à la Morgue. Mais il y a une ligne tout en bas que Morte a négligé de lire à haute voix : 'NE FAIS PAS CONFIANCE AU CRÂNE'. Ta précédente incarnation devient de plus en plus folle alors que tu continues de la dévisager. "DERNIER AVERTISSEMENT ! ARRÊTE !"~ */
  IF ~~ THEN REPLY #49860 /* ~"Tu ne peux pas me menacer… Tu n'es qu'un souvenir enregistré, une apparition. Je vais continuer à les lire jusqu'à ce que tu me laisses partir d'ici."~ */ GOTO 23
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49861 /* ~"D'accord. C'est toi qui as créé ce dodécaèdre piégé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49862 /* ~"Bien. Comment est-ce que tu as fait ce piège ?"~ */ GOTO 15
  IF ~~ THEN REPLY #49863 /* ~Essaie de mettre fin à l'expérience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #49864 /* ~Il hurle comme un forcené, en déblatérant des imbécillités, en se griffant les bras et en bavant. "DEHORS ! DEHORS ! DEHORS ! DEHORS ! DEHORS ! DEHORS ! DEHORS !" Et c'est alors que tout se *termine*… et que tu te retrouves de nouveau dans le sensorium, un peu sonné, mais sain et sauf.~ */
  IF ~~ THEN REPLY #49865 /* ~Pars.~ */ EXIT
END

IF ~  Global("PStone","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #49866 /* ~L'inscription figurant sur le socle de cette pierre sensorielle indique l'expérience 'Chasse d'une semaine dans les forêts de l'Arborée'. Mais si tu venais à la toucher, tu serais de nouveau piégé dans cette folle incarnation.~ */
  IF ~~ THEN REPLY #49867 /* ~Laisse la chose tranquille.~ */ EXIT
END
