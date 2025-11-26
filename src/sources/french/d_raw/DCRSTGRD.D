// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1536 /* ~Tu vois l'un des gardes de Maudith. Il est ensanglanté et essoufflé. "J'ai pas l'temps d'parler. T'as une main libre, tu peux aider pour… la défense." Il te fait signe de t'écarter.~ */
  IF ~~ THEN REPLY #58830 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 1
  IF ~~ THEN REPLY #58832 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1538 /* ~"Ce qui s'est passé, c'est qu'un abruti a laissé quelque chose s'échapper et on se retrouve dans les Carcères, à se battre pour sauver notre peau. Et maintenant, sors d'ici et rends-toi utile."~ */
  IF ~~ THEN REPLY #58831 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1539 /* ~"Je t'ai pas dit de retourner à tes affaires ? J'suis sérieux ! Allez !"~ */
  IF ~~ THEN REPLY #58833 /* ~"Bien, bien."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 3 // from:
  SAY #1540 /* ~"Par les Neuf Enfers, qu'est-ce que tu fais là ?"~ */
  IF ~~ THEN REPLY #58834 /* ~"Je me promenais juste aux alentours."~ */ GOTO 5
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58835 /* ~"Que peux-tu me dire à propos de cette pièce d'armure ?"~ */ GOTO 6
  IF ~~ THEN REPLY #58836 /* ~"Je cherche un deva."~ */ GOTO 7
  IF ~~ THEN REPLY #58837 /* ~"Rien. Au revoir."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #1541 /* ~"Halte-là !" Le garde attaque !~ */
  IF ~~ THEN REPLY #58838 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58839 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 6.1
  SAY #58840 /* ~"Tu te promènes ? Dans la prison ? Tu es venu aider quelqu'un à s'échapper, oui !" Il te frappe de son arme !~ */
  IF ~~ THEN REPLY #58858 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58859 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #58841 /* ~"Je sais pas. Aussi longtemps que je me souvienne, la cellule a toujours fait partie de la prison. On n'a jamais pu l'ouvrir, et ce n'est pas faute d'avoir essayé. C'est une chouette armure aussi, mais on n'arrive pas à l'atteindre. À ton tour de répondre à une question: qu'est-ce que tu fais ici ?"~ */
  IF ~~ THEN REPLY #58860 /* ~"Je cherche un deva."~ */ GOTO 7
  IF ~~ THEN REPLY #58861 /* ~"Je me promène, c'est tout."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.0
  SAY #58842 /* ~Il sourit. "Tu rejoindras le chœur céleste bien assez tôt, bige." Il prend son arme et attaque !~ */
  IF ~~ THEN REPLY #58862 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58863 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #58843 /* ~Tu aperçois l'un des gardes de Maudith. Il paraît un peu las. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #58864 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 10
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58865 /* ~"Une femme nommée Dame Roberta complote le meurtre de son mari, Carl. Je crois qu'il est l'un des assistants du maire."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58866 /* ~"Je souhaite me constituer prisonnier pour le meurtre de Carl Perfidor."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58867 /* ~"L'un des officiels de cette ville m'a demandé de tuer un autre officiel. J'ai pensé qu'il était utile de t'avertir."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58868 /* ~"Je veux que tu m'arrêtes."~ */ GOTO 15
  IF ~~ THEN REPLY #58869 /* ~"Je cherche un deva."~ */ GOTO 16
  IF ~~ THEN REPLY #58870 /* ~"J'aimerais voir un responsable."~ */ GOTO 11
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58871 /* ~"L'un des officiels de cette ville m'a demandé de tuer un autre officiel. J'ai pensé qu'il était utile de t'avertir."~ */ GOTO 22
  IF ~~ THEN REPLY #58929 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from: 10.0 11.0 12.1 13.1 14.0 15.2 16.0 17.1 22.0
  SAY #58844 /* ~"Qu'est-ce que tu veux, maintenant ?"~ */
  IF ~~ THEN REPLY #58872 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 10
  IF ~~ THEN REPLY #58873 /* ~"J'aimerais voir un responsable."~ */ GOTO 11
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58874 /* ~"Une femme nommée Dame Roberta complote le meurtre de son mari, Carl. Je crois qu'il est l'un des assistants du maire."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58875 /* ~"Je souhaite me constituer prisonnier pour le meurtre de Carl Perfidor."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58876 /* ~"L'un des officiels de cette ville m'a demandé de tuer un autre officiel. J'ai pensé qu'il était utile de t'avertir."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58877 /* ~"Je veux que tu m'arrêtes."~ */ GOTO 15
  IF ~~ THEN REPLY #58878 /* ~"Je cherche un deva."~ */ GOTO 16
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58879 /* ~"L'un des officiels de cette ville m'a demandé de tuer un autre officiel. J'ai pensé qu'il était utile de t'avertir."~ */ GOTO 22
  IF ~~ THEN REPLY #58932 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #58845 /* ~"Nous sommes dans une zone verrouillée en ce moment même, à cause de la peste. Je sais pas ce qui la provoque, mais on met les quartiers de la ville en quarantaine jusqu'à ce qu'on le découvre. Autre chose ?"~ */
  IF ~~ THEN REPLY #58880 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #58881 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.6 9.1 17.0
  SAY #58846 /* ~"Quoi, le maire ? Il est dans le bâtiment administratif. T'auras de la chance si tu arrives à le voir. Il veut voir *personne* ces jours-ci. Il a l'esprit ailleurs, c'est le moins qu'on puisse dire…"~ */
  IF ~~ THEN REPLY #58882 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #58883 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 9.2
  SAY #58847 /* ~"Dame Roberta ?" son front se creuse tandis qu'il réfléchit. "On s'occupera de ça." Il détourne le regard. "Oh, merci."~ */
  IF ~~ THEN REPLY #58884 /* ~"Quoi ? Il n'y a pas de récompense pour ça ?"~ */ GOTO 17
  IF ~~ THEN REPLY #58885 /* ~"J'avais d'autres questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #58886 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2 9.3
  SAY #58848 /* ~"C'est pas une plaisanterie. On enquête sérieusement sur sa mort. Celui qui a fait le coup va se retrouver en prison pour un bon bout de temps."~ */
  IF ~~ THEN REPLY #58887 /* ~"Je suis sérieux. Je l'ai tué."~ */ GOTO 18
  IF ~~ THEN REPLY #58888 /* ~"Oh. Désolé pour la plaisanterie. J'ai d'autres questions."~ */ GOTO 9
  IF ~~ THEN REPLY #58889 /* ~"Oh. Désolé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3 9.4
  SAY #58849 /* ~Il secoue la tête. "T'as peut-être l'impression que je suis stupide, bige, mais je fourre pas mon nez dans les querelles politiques. Je tiens à mon boulot… et à ma vie. Va en parler au capitaine."~ */
  IF ~~ THEN REPLY #58890 /* ~"Très bien. J'ai d'autres questions, dans ce cas."~ */ GOTO 9
  IF ~~ THEN REPLY #58891 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4 9.5
  SAY #58850 /* ~"T'arrêter ? Pour quelle raison ?"~ */
  IF ~~ THEN REPLY #58892 /* ~"Je veux simplement aller en prison."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 19
  IF ~~ THEN REPLY #58893 /* ~"Parce que je suis complètement fou ! Blblbl -glagla -hohohooo !"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 20
  IF ~~ THEN REPLY #58894 /* ~"Pas grave. Réponds à quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #58895 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 9.6
  SAY #58851 /* ~"Dans ce cas, tu cherches du mauvais côté du Grand Anneau, bige, parce que même s'il y en avait un ici, tu le trouverais pas. Il serait sous clé, comme l'or d'un avare."~ */
  IF ~~ THEN REPLY #58896 /* ~"Très bien. J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #58897 /* ~"Alors, laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.0
  SAY #58852 /* ~Il sourit d'un air narquois. "La vertu est sa propre récompense, hein ? Si tu veux plus que ça, va en parler à mes supérieurs."~ */
  IF ~~ THEN REPLY #58898 /* ~"Alors je souhaite parler au responsable."~ */ GOTO 11
  IF ~~ THEN REPLY #58899 /* ~"Très bien. J'ai des questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #58900 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #58853 /* ~"Tu me suis tranquillement, ou il faut que je devienne méchant ?"~ */
  IF ~~ THEN REPLY #58901 /* ~"Je ne ferai pas d'histoires."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58902 /* ~"On va se battre."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #58854 /* ~"Si tu insistes, on y va."~ */
  IF ~~ THEN REPLY #58903 /* ~"J'ai changé d'avis. Laisse tomber."~ */ GOTO 21
  IF ~~ THEN REPLY #58904 /* ~"Très bien. Allons-y."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #58855 /* ~"Tu m'as convaincu, allons-y."~ */
  IF ~~ THEN REPLY #58905 /* ~"J'ai changé d'avis. Laisse tomber."~ */ GOTO 21
  IF ~~ THEN REPLY #58906 /* ~"Très bien. Allons-y."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #58856 /* ~"C'est un peu tard pour ça, bige. Tu me suis tranquillement ou pas ?"~ */
  IF ~~ THEN REPLY #58908 /* ~"Je ne ferai pas d'histoires."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58909 /* ~"On va se battre."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.7 9.7
  SAY #58928 /* ~Il secoue la tête. "Bige, j'ai peut-être l'air stupide, mais je ne mêle pas de politique. Je tiens à mon boulot… et à la vie. Va voir le capitaine. Tu le trouveras près du portail central qui donne accès à l'autre partie de la ville."~ */
  IF ~~ THEN REPLY #58930 /* ~"Très bien. J'ai d'autres questions, dans ce cas…"~ */ GOTO 9
  IF ~~ THEN REPLY #58931 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
Global("Curst_Arrest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #58933 /* ~"Qu'est-ce que… UNE ÉVASION !" Le garde attaque !~ */
  IF ~~ THEN REPLY #58934 /* ~Bats-toi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58935 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
