// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2835 /* ~Le garde te lance un regard mêlé de crainte et de dédain, mais il se dépêche de t'ouvrir les portes. Ses yeux ne rencontrent pas les tiens sur ton passage.~ */
  IF ~~ THEN REPLY #2836 /* ~"Bien le bonjour, les gars !"~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #19865 /* ~Le garde se redresse. "T'as ce que Pharod veut, bige ?"~ */
  IF ~~ THEN REPLY #19866 /* ~"Oui."~ */ GOTO 2
  IF ~~ THEN REPLY #19867 /* ~"Pas encore."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19868 /* ~"Montre-le moi, bige et je lèverai la porte. Pas avant, compris ?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #19869 /* ~Montre-lui.~ */ GOTO 4
  IF ~~ THEN REPLY #19870 /* ~"Très bien, je ne l'ai pas. Mais j'ai quelque chose qui devrait t'intéresser."~ */ GOTO 5
  IF ~~ THEN REPLY #19871 /* ~"Pas question. Je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #19872 /* ~"S'tu l'as pas, pourquoi tu me fais perdre mon temps ?" Le garde ricane en aparté.~ */
  IF ~~ THEN REPLY #19873 /* ~"Je ne l'ai pas, mais j'ai quelque chose qui devrait t'intéresser…"~ */ GOTO 5
  IF ~~ THEN REPLY #19874 /* ~"Très bien. Maintenant, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #19875 /* ~"D'accord. Reviens alors."~ */
  IF ~~ THEN REPLY #19876 /* ~"Merci."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #19877 /* ~"Ouais ? Qu'est-ce que ça pourrait être ?"~ */
  IF ~~ THEN REPLY #19878 /* ~"Du jonc. Qu'est-ce que tu dirais d'une pièce ?"~ */ GOTO 7
  IF ~~ THEN REPLY #19879 /* ~"Du jonc. Qu'est-ce que tu dirais de dix pièces ?"~ */ GOTO 8
  IF ~~ THEN REPLY #19880 /* ~"Du jonc. Qu'est-ce que tu dirais de vingt-cinq pièces de cuivre ?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19881 /* ~"Du jonc. Qu'est-ce que tu dirais de cinquante pièces de cuivre ?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19882 /* ~"Du jonc. Qu'est-ce que tu dirais de cinquante pièces de cuivre ?"~ */ GOTO 11
  IF ~~ THEN REPLY #19883 /* ~"Du jonc. Qu'est-ce que tu dirais de cent pièces ?"~ */ GOTO 12
  IF ~~ THEN REPLY #19884 /* ~"Finalement, rien."~ */ GOTO 6
  IF ~~ THEN REPLY #19885 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.6
  SAY #19886 /* ~"Alors tu rentres pas, bige." Il crache à tes pieds.~ */
  IF ~~ THEN REPLY #19887 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #19888 /* ~Il sourit de travers. "Hé bige, t'es presque en train de m'insulter. Essaie encore voir."~ */
  IF ~~ THEN REPLY #19889 /* ~"Très bien. Qu'est-ce que tu dirais de dix pièces ?"~ */ GOTO 8
  IF ~~ THEN REPLY #19890 /* ~"Très bien. Qu'est-ce que tu dirais de vingt-cinq pièces ?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19892 /* ~"Très bien. Qu'est-ce que tu dirais de cinquante ?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19893 /* ~"Très bien. Qu'est-ce que tu dirais de cinquante ?"~ */ GOTO 11
  IF ~~ THEN REPLY #19895 /* ~"Très bien. Qu'est-ce que tu dirais de cent ?"~ */ GOTO 12
  IF ~~ THEN REPLY #19896 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #19899 /* ~"Je ne crois pas…"~ */
  IF ~~ THEN REPLY #19900 /* ~"Très bien. Qu'est-ce que tu dirais de vingt-cinq pièces ?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19901 /* ~"Très bien. Qu'est-ce que tu dirais de cinquante ?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19902 /* ~"Très bien. Qu'est-ce que tu dirais de cinquante ?"~ */ GOTO 11
  IF ~~ THEN REPLY #19903 /* ~"Très bien. Qu'est-ce que tu dirais de cent ?"~ */ GOTO 12
  IF ~~ THEN REPLY #19904 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 7.1 8.0
  SAY #19905 /* ~"Tu chauffes, bige, mais tu n'y es pas encore."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19906 /* ~"Très bien. Qu'est-ce que tu dirais de cinquante ?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19907 /* ~"Très bien. Qu'est-ce que tu dirais de cinquante ?"~ */ GOTO 11
  IF ~~ THEN REPLY #19908 /* ~"Très bien. Qu'est-ce que tu dirais de cent ?"~ */ GOTO 12
  IF ~~ THEN REPLY #19909 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3 7.2 8.1 9.0 25.1
  SAY #19910 /* ~Un sourire fend son visage hideux. "Ça ira. Passe-les et j'ouvrirai la porte."~ */
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19911 /* ~"Je crois que je n'ai pas assez."~ */ GOTO 14
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19912 /* ~Donne-lui cinquante pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19913 /* ~Donne-lui quarante pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19914 /* ~Fais en sorte qu'il tende la main : "Prends, c'est à toi."~ */ GOTO 15
  IF ~~ THEN REPLY #19915 /* ~"Laisse tomber. Je retourne dans les catacombes."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.4 7.3 8.2 9.1
  SAY #19916 /* ~Il calcule, puis répond, "Non. Pour rentrer, il en faut plus."~ */
  IF ~~ THEN REPLY #19917 /* ~"Bon, très bien. Qu'est-ce que tu dirais de cent ?"~ */ GOTO 12
  IF ~~ THEN REPLY #19918 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.5 7.4 8.3 9.2 11.0 26.1
  SAY #19919 /* ~"Ça ira. Ça fera l'affaire. Passe-les et j'ouvre la porte."~ */
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19920 /* ~"Je crois que je n'ai pas assez."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19921 /* ~Donne-lui cent pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19922 /* ~Donne-lui quatre-vingt-dix pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19923 /* ~Fais en sorte qu'il tende la main : "Prends, c'est à toi."~ */ GOTO 16
  IF ~~ THEN REPLY #19924 /* ~"Laisse tomber. Je retourne dans les catacombes."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 10.2 12.1 12.2 15.4 15.5 16.5 16.6
  SAY #19925 /* ~Il les soupèse, faisant glisser des pièces entre ses doigts, et déclare : "On dirait que le compte y est." Il ouvre la porte.~ */
  IF ~~ THEN REPLY #19926 /* ~"Au revoir, pour le moment."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 12.0 15.6 16.4 21.0 25.0 26.0
  SAY #19927 /* ~"C'est dommage. On s'reverra quand t'en auras assez. En attendant, tu rentres pas." Il s'en va.~ */
  IF ~~ THEN REPLY #19928 /* ~"Bon, très bien…"~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #19929 /* ~Il attrape à travers la porte les pièces que tu lui tends.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19930 /* ~Attrape son bras et coince-le.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19931 /* ~Attrape son bras et coince-le.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19932 /* ~Attrape son bras et coince-le.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19933 /* ~Attrape son bras et coince-le.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19934 /* ~Donne-lui cinquante pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19935 /* ~Donne-lui quarante pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19936 /* ~"Je crois que je n'ai pas assez."~ */ GOTO 14
  IF ~~ THEN REPLY #19937 /* ~"Laisse tomber. Je redescends."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #19938 /* ~Il attrape à travers la porte les pièces que tu lui tends.~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19939 /* ~Attrape son bras et coince-le.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19940 /* ~Attrape son bras et coince-le.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19941 /* ~Attrape son bras et coince-le.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19942 /* ~Attrape son bras et coince-le.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19943 /* ~"Je crois que je n'ai pas assez."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19944 /* ~Donne-lui cent pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19945 /* ~Donne-lui quatre-vingt-dix pièces. "Voilà. Tout y est."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19946 /* ~"Laisse tomber. Je retourne dans les catacombes."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0
  SAY #19947 /* ~Tu lui agrippes prestement le bras et le tord en le plaquant contre le portail. Le garde hurle de douleur quand son bras se déboîte.~ */
  IF ~~ THEN REPLY #19948 /* ~"Laisse-moi entrer ou je te le casse !"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19949 /* ~Relâche-le. "Maintenant, laisse-moi entrer ou je te fracasse le crâne. On en a assez de ton petit jeu."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1 15.2 16.1 16.2
  SAY #19950 /* ~Comme il tend le bras pour prendre les pièces, tu le saisis. Il essaie de se libérer, mais tu réussis finalement à le plaquer contre le portail et à le tordre. Il râle de douleur.~ */
  IF ~~ THEN REPLY #19951 /* ~"Laisse-moi entrer ou je te le casse !"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19952 /* ~Relâche-le. "Maintenant, laisse-moi passer ou je te fracasse le crâne. On en a assez de ton petit jeu."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.3 16.3
  SAY #6783 /* ~Comme il va prendre les pièces, tu essaies d'agripper son bras. Il le retire vivement et hurle, "Tu vas payer double, ordure ! Hors de ma vue !" Il s'éloigne de toi.~ */
  IF ~~ THEN REPLY #6844 /* ~"Alors, au revoir…"~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.1 18.0 18.1
  SAY #19953 /* ~Il se hâte d'ouvrir la porte avant que tu mettes à exécution ta menace et se tient à distance tandis que tu entres.~ */
  IF ~~ THEN REPLY #19954 /* ~"Si jamais je te recroise, on retrouvera tes membres éparpillés dans trois cryptes. Compris ? Bon."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19955 /* ~"Que ça te serve de leçon ! Sois un peu plus respectueux la prochaine fois. Au revoir."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  Global("No_Pin","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #19956 /* ~Le garde te regarde d'un air menaçant. "Deux cents pièces pour entrer ici, bige. Et pas d'entourloupes, compris !"~ */
  IF ~~ THEN REPLY #19957 /* ~"Je n'ai pas cette somme."~ */ GOTO 14
  IF ~  PartyGoldGT(199)
~ THEN REPLY #19958 /* ~"Très bien. Voilà."~ */ DO ~TakePartyGold(200)
~ GOTO 22
  IF ~~ THEN REPLY #19959 /* ~"Alors, laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #19960 /* ~Il prend l'argent et le compte soigneusement. Lorsqu'il est certain que tu ne l'as pas volé d'une seule pièce, il ouvre la porte. "N'oublie pas, bige… ça sera la même somme pour repasser !"~ */
  IF ~~ THEN REPLY #19961 /* ~"Ouais, peu importe."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19962 /* ~"J'aurai sûrement plus qu'il ne m'en faudra."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
!Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #19963 /* ~Le garde se redresse légèrement. "Tu as l'argent pour payer le droit de passage ?"~ */
  IF ~~ THEN REPLY #19965 /* ~"Le droit de passage ? C'est combien ?"~ */ GOTO 25
  IF ~~ THEN REPLY #19966 /* ~"Je ne savais pas qu'il y avait un droit de passage."~ */ GOTO 24
  IF ~~ THEN REPLY #19967 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #19964 /* ~"Y'en a beaucoup qui le savent pas. Mais y'en a un."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19968 /* ~"C'est combien ?"~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19969 /* ~"C'est combien ?"~ */ GOTO 26
  IF ~~ THEN REPLY #19970 /* ~"Bon, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #19971 /* ~"Pour toi ? Cinquante pièces."~ */
  IF ~~ THEN REPLY #19972 /* ~"Cinquante ? Ça me paraît un peu cher."~ */ GOTO 14
  IF ~~ THEN REPLY #19973 /* ~"Je crois que je peux payer."~ */ GOTO 10
  IF ~~ THEN REPLY #19974 /* ~"Bon, laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #19975 /* ~"Pour toi ? Cent pièces."~ */
  IF ~~ THEN REPLY #19976 /* ~"Cent ? Ça me paraît un peu cher."~ */ GOTO 14
  IF ~~ THEN REPLY #19977 /* ~"Je crois que je peux payer."~ */ GOTO 12
  IF ~~ THEN REPLY #19978 /* ~"Bon, laisse tomber."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 30.2 31.0 32.1 33.0 34.0 35.0 37.0 38.0
  SAY #19979 /* ~"Qu'est-ce que tu veux cette fois-ci ?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19980 /* ~"Pharod m'a autorisé à descendre dans les catacombes. Il faut que tu m'ouvres la porte."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19981 /* ~"Qu'est-ce qu'il y a derrière la porte ?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19982 /* ~"Qu'est-ce qu'il y a derrière la porte ?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19983 /* ~"Je voudrais redescendre."~ */ GOTO 36
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19984 /* ~"Parle-moi de ce qu'il y a de l'autre côté."~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19985 /* ~"Je voudrais y descendre."~ */ GOTO 35
  IF ~~ THEN REPLY #19986 /* ~"Qui es-tu ?"~ */ GOTO 37
  IF ~~ THEN REPLY #19987 /* ~"Que fais-tu ?"~ */ GOTO 38
  IF ~~ THEN REPLY #19988 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 28 // from:
  SAY #19989 /* ~Tu aperçois un homme massif, vêtu de haillons rapiécés et qui empeste la bière. Il est vraiment énorme - il est évident qu'il a été choisi pour ce boulot uniquement pour ses muscles et non pour sa cervelle. "Qu'est-ce que tu veux ?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19990 /* ~"Pharod m'a autorisé à descendre dans les catacombes. Il faut que tu m'ouvres la porte."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19991 /* ~"Qu'est-ce qu'il y a derrière la porte ?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19992 /* ~"Qu'est-ce qu'il y a derrière la porte ?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19993 /* ~"Parle-moi de ce qu'il y a de l'autre côté."~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19994 /* ~"Je voudrais y descendre."~ */ GOTO 35
  IF ~~ THEN REPLY #19995 /* ~"Qui es-tu ?"~ */ GOTO 37
  IF ~~ THEN REPLY #19996 /* ~"Que fais-tu ?"~ */ GOTO 38
  IF ~~ THEN REPLY #19997 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #19998 /* ~Il ouvre la porte. "Alors passe, bige, et ne nous fais pas perdre notre temps."~ */
  IF ~~ THEN REPLY #19999 /* ~"Au revoir."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.4 28.1 28.3
  SAY #20000 /* ~"Les catacombes de la Pierre pleureuse. Beaucoup de morts, beaucoup de cryptes à piller."~ */
  IF ~~ THEN REPLY #20001 /* ~"Pourquoi ça s'appelle les catacombes de la Pierre Pleureuse ?"~ */ GOTO 31
  IF ~~ THEN REPLY #20002 /* ~"Tu peux préciser ?"~ */ GOTO 32
  IF ~~ THEN REPLY #20003 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 27
  IF ~~ THEN REPLY #20004 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #20005 /* ~"Beaucoup d'eau s'égoutte d'en haut, on dirait que les murs pleurent. D'où leur nom."~ */
  IF ~~ THEN REPLY #20006 /* ~"Je comprends. Tu peux répondre à d'autres questions ?"~ */ GOTO 27
  IF ~~ THEN REPLY #20007 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #20008 /* ~Pas beaucoup. J'y suis allé moi-même une ou deux fois… ce sont surtout les autres qui vont pêcher les cadavres là-bas. Gris est celui qui a fait le plus de pillage, et on pense qu'il a été attrapé par quelque chose en bas et qu'il est inscrit dans le livre des morts."~ */
  IF ~~ THEN REPLY #20009 /* ~"Gris ?"~ */ GOTO 33
  IF ~~ THEN REPLY #20010 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 27
  IF ~~ THEN REPLY #20011 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #20012 /* ~"Ouais, 'Gris le Vautour'. Lui et deux des gars y sont allés il y a quelque temps, on les a pas revus depuis. Si tu trouves son corps, ramène-le." Il te sourit comme un chacal. "On pourra le vendre aux Hommes-Poussière pour un peu de jonc."~ */
  IF ~~ THEN REPLY #20013 /* ~"Ha. J'ai d'autres questions…"~ */ GOTO 27
  IF ~~ THEN REPLY #20014 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.2 28.2
  SAY #20015 /* ~Le garde te regarde un moment, puis ricane. "La chambre à coucher de ta mère. On doit garder la porte fermée à cause de la circulation qui devenait trop dense, tu piges ?" Il hurle de rire. "Va caguer si tu veux pas aller rejoindre les morts d'en bas."~ */
  IF ~~ THEN REPLY #20016 /* ~"Réponds juste à d'autres questions…"~ */ GOTO 27
  IF ~~ THEN REPLY #20017 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.5 28.4
  SAY #20018 /* ~Le garde jette un regard dans ta direction, puis secoue la tête. "Ouais, ouais… on veut tous y aller en bas. Regarde. T'es vraiment pas d'ici. Va caguer."~ */
  IF ~~ THEN REPLY #20019 /* ~"Alors, réponds juste à quelques questions…"~ */ GOTO 27
  IF ~~ THEN REPLY #20020 /* ~"Bien."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.3
  SAY #20021 /* ~Il te regarde et ouvre les portes sans un mot.~ */
  IF ~~ THEN REPLY #20022 /* ~"Au revoir."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.6 28.5
  SAY #20023 /* ~"Ça te regarde pas. Va caguer."~ */
  IF ~~ THEN REPLY #20024 /* ~"Réponds d'abord à une ou deux questions…"~ */ GOTO 27
  IF ~~ THEN REPLY #20025 /* ~"Merci… mon ami."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.7 28.6
  SAY #20026 /* ~"Qu'est-ce qu'tu crois que j'fais, que j'lave tes sous-vêtements ? Dégage, quoqueret !"~ */
  IF ~~ THEN REPLY #20027 /* ~"Encore une question…"~ */ GOTO 27
  IF ~~ THEN REPLY #20028 /* ~"Peu importe."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Open_Door","AR0109",0)
~ THEN BEGIN 39 // from:
  SAY #56027 /* ~"La porte n'est pas bouclée pour l'instant, alors pas la peine de me déranger."~ */
  IF ~~ THEN REPLY #56028 /* ~Pars.~ */ EXIT
END
