// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARQUEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARQUEZ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49143 /* ~Tu vois un blond trapu en armure de l'Harmonium. Il a le visage rosi par la boisson et un regard amer derrière un sourire de façade. Il prend la parole sans préambule. "Je t'explique : des esclavagistes ont enlevé la fille de Barlouche. Ta tâche consiste à la ramener. Je te dirai où les trouver ; tu les tues, tu me fais ton rapport, je t'aide à trouver le deva que tu recherches. Je t'apprendrai le maniement des armes, en plus. Marché conclu ?"~ */
  IF ~~ THEN REPLY #49144 /* ~"D'accord."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49145 /* ~"Il faut d'abord que je te pose quelques questions à ce sujet…"~ */ GOTO 2
  IF ~~ THEN REPLY #49146 /* ~"J'ai quelques questions à propos d'autre chose…"~ */ GOTO 2
  IF ~~ THEN REPLY #49147 /* ~"Non. Je ne le ferai pas."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50464 /* ~"Ils sont déjà tous morts."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50465 /* ~"Ils sont déjà tous morts. Mais elle aussi est morte."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 4.2 5.0 7.4 12.0 17.0
  SAY #49148 /* ~"Aux dernières nouvelles, les marchands d'esclaves étaient derrière la Caserne - c'est ça, ils ont eu la permission du garde de la cité. Trouve-les, assure-toi que la fille de Barlouche va bien et tue-les. Quand tu en auras fini, reviens ici et je t'indiquerai la première partie de la clé dont tu as besoin pour trouver le deva."~ */
  IF ~~ THEN REPLY #49149 /* ~"Très bien. Réponds à quelques questions à ce sujet."~ */ JOURNAL #49153 /* ~J'ai accepté d'aller trouver les esclavagistes qui opèrent derrière la caserne, puis de les tuer tous après m'être assuré que la fille de Barlouche allait bien. Je fais cela pour Marquez. En échange, il me donnera la première partie de la clé dont j'ai besoin pour atteindre le deva emprisonné.~ */ GOTO 7
  IF ~~ THEN REPLY #49150 /* ~"Bien. Au revoir."~ */ JOURNAL #49153 /* ~J'ai accepté d'aller trouver les esclavagistes qui opèrent derrière la caserne, puis de les tuer tous après m'être assuré que la fille de Barlouche allait bien. Je fais cela pour Marquez. En échange, il me donnera la première partie de la clé dont j'ai besoin pour atteindre le deva emprisonné.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 12.1 12.2
  SAY #49157 /* ~"Des questions ? Non. Il n'y a que deux réponses possibles. Tu es pour ou contre l'esclavage ?"~ */
  IF ~~ THEN REPLY #49158 /* ~"Je suis contre."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marquez_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #49159 /* ~"Je suis pour."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marquez_1","GLOBALGood",-2)
~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49160 /* ~"Alors, tu vas m'aider, hein ? Oui… ou non ?"~ */
  IF ~~ THEN REPLY #49161 /* ~"Oui."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49171 /* ~"Non."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #49173 /* ~Il te regarde, l'air dégoûté. "Est-ce que ça veut dire que tu refuses de m'aider… même si ton propre intérêt est en jeu ?"~ */
  IF ~~ THEN REPLY #49174 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49176 /* ~"Absolument, je ne t'aiderai pas."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #49177 /* ~"Bon, je vais t'aider."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49178 /* ~"Ce que je veux dire, c'est que tout le monde sait que tu es à la recherche du deva. Barlouche connaît un moyen de le trouver. Tu serais ridicule de refuser."~ */
  IF ~~ THEN REPLY #49179 /* ~"Bon, d'accord. Je vais t'aider."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49181 /* ~"C'est décidé, je ne t'aiderai pas."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.3 3.1 4.1 5.1 12.3 17.1
  SAY #49182 /* ~"Alors, tu es encore plus bête que ce que je croyais et on n'a plus rien à se dire. Au revoir." Il se replonge dans son verre.~ */
  IF ~~ THEN REPLY #49183 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 8.1 9.1 10.0 11.0 13.2 21.0
  SAY #49184 /* ~"Quoi ?"~ */
  IF ~~ THEN REPLY #49185 /* ~"Qui es-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #49186 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 9
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #49187 /* ~"Qu'est-ce que tu as à voir avec cette histoire d'esclavage ?"~ */ GOTO 10
  IF ~~ THEN REPLY #49188 /* ~"Qu'est-ce que tu peux me dire sur la clé ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49189 /* ~"Où sont ces marchands d'esclaves déjà ?"~ */ GOTO 1
  IF ~~ THEN REPLY #49190 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49191 /* ~"Moi, c'est Marquez, un ancien Mesure Trois de l'Harmonium. J'ai dit ancien, car je n'y suis plus depuis peu de temps."~ */
  IF ~~ THEN REPLY #49192 /* ~"Pourquoi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #49194 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #49195 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #49196 /* ~"Je bois. Ça se voit pas ? J'attends quelqu'un pour réparer les erreurs que j'ai commises. Tu me sembles bien adapté pour ce boulot."~ */
  IF ~~ THEN REPLY #49197 /* ~"Quelles erreurs ?"~ */ GOTO 10
  IF ~~ THEN REPLY #49199 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #49200 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.0 9.0
  SAY #49201 /* ~"J'ai découvert que l'Harmonium - un groupe auquel j'ai d'emblée cru - achetait des gens, les enlevait, les emmenait de force et détruisait leur vie. Il vidait les gens de toute vie pour avoir osé être différents et je ne pouvais plus le supporter. Il est temps que je vive un peu à ma façon, et non pas comme on me l'imposait. Les marchands d'esclaves que tu vas combattre sont mes anciens camarades." Il crache par terre. "Biges. Menteurs. On ne peut plus faire confiance à personne."~ */
  IF ~~ THEN REPLY #49203 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #49204 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #49205 /* ~"C'est une clé en cinq parties. Verbales. Contenues dans nos têtes." Il te fait un grand sourire. "Tu ne m'extorqueras rien par la torture et ça m'étonnerait que ce soit plus facile avec les autres. Nous avons bien verrouillé ce secret et tu vas devoir trouver les cinq parties de la clé pour le découvrir."~ */
  IF ~~ THEN REPLY #49206 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 7
  IF ~~ THEN REPLY #49207 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("Slavers","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #49208 /* ~"Te revoilà." Il finit son verre. "C'est donc Barlouche qui t'envoie. Bien. "Je t'explique : des esclavagistes ont enlevé sa fille. Tu dois la ramener. Je te dirai où les trouver ; tu les tues, tu me fais ton rapport, je t'aide à trouver ton deva et, par les enfers, peut-être même que je t'apprendrai le maniement des armes. Ça te convient ?"~ */
  IF ~~ THEN REPLY #49209 /* ~"D'accord."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49210 /* ~"Il faut d'abord que je te pose quelques questions à ce sujet…"~ */ GOTO 2
  IF ~~ THEN REPLY #49211 /* ~"J'ai quelques questions à propos d'autre chose…"~ */ GOTO 2
  IF ~~ THEN REPLY #49212 /* ~"Non. Je ne le ferai pas."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50468 /* ~"Ils sont déjà tous morts."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50469 /* ~"Ils sont déjà tous morts. Mais elle aussi est morte."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #49214 /* ~Marquez lève les yeux à ton approche. "Tu viens pour la fille de Barlouche, Jasilya ?"~ */
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #49215 /* ~"Elle est libre. Elle ne devrait pas tarder à arriver."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",5)
AddexperienceParty(65000)
~ GOTO 14
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49216 /* ~"Elle est morte pendant que j'essayais de la sauver."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
  IF ~~ THEN REPLY #49217 /* ~"Non. Mais j'ai quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #50466 /* ~"Apprends-moi davantage au sujet des armes."~ */ GOTO 21
  IF ~~ THEN REPLY #67822 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.4 12.4 13.0
  SAY #49219 /* ~Il te tape sur l'épaule. "Joli travail. Tu veux la première partie de la clé qui permet d'accéder sous Maudith ? La voici : "Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…" Va parler à Kitla, là-bas. Elle en a la deuxième partie."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Apprends-moi le maniement des armes, alors."~ */ JOURNAL #66862 /* ~J'ai obtenu la première partie de la clé qui me permettra d'ouvrir le passage menant au deva. Les mots sont les suivants : 'Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…' Je dois maintenant aller voir une certaine Kitla, à la taverne de la Porte du Traître.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Apprends-moi le maniement des armes, alors."~ */ JOURNAL #66862 /* ~J'ai obtenu la première partie de la clé qui me permettra d'ouvrir le passage menant au deva. Les mots sont les suivants : 'Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…' Je dois maintenant aller voir une certaine Kitla, à la taverne de la Porte du Traître.~ */ GOTO 20
  IF ~~ THEN REPLY #67824 /* ~"Merci. Au revoir."~ */ JOURNAL #66862 /* ~J'ai obtenu la première partie de la clé qui me permettra d'ouvrir le passage menant au deva. Les mots sont les suivants : 'Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…' Je dois maintenant aller voir une certaine Kitla, à la taverne de la Porte du Traître.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.5 12.5 13.1
  SAY #49222 /* ~"C'est vraiment dommage. Je suis sûr que c'était inévitable." Il te fixe d'un regard insondable. "Voici la première partie de la clé : 'Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…' Va parler à Kitla, là-bas. Elle a la deuxième partie de la clé."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Apprends-moi le maniement des armes, alors."~ */ JOURNAL #66862 /* ~J'ai obtenu la première partie de la clé qui me permettra d'ouvrir le passage menant au deva. Les mots sont les suivants : 'Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…' Je dois maintenant aller voir une certaine Kitla, à la taverne de la Porte du Traître.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Apprends-moi le maniement des armes, alors."~ */ JOURNAL #66862 /* ~J'ai obtenu la première partie de la clé qui me permettra d'ouvrir le passage menant au deva. Les mots sont les suivants : 'Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…' Je dois maintenant aller voir une certaine Kitla, à la taverne de la Porte du Traître.~ */ GOTO 20
  IF ~~ THEN REPLY #67826 /* ~"Merci. Au revoir."~ */ JOURNAL #66862 /* ~J'ai obtenu la première partie de la clé qui me permettra d'ouvrir le passage menant au deva. Les mots sont les suivants : 'Tel est l'endroit que la justice éternelle avait préparé pour ces rebelles…' Je dois maintenant aller voir une certaine Kitla, à la taverne de la Porte du Traître.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("Curst_Key","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #49224 /* ~"On s'est tout dit. Va donc voir Kitla ; elle te montrera le chemin pour la suite. Laisse-moi boire en paix, à moins que tu veuilles apprendre à mieux manier les armes…"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Apprends-moi le maniement des armes, alors."~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Apprends-moi le maniement des armes, alors."~ */ GOTO 20
  IF ~~ THEN REPLY #67821 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Slavers","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY #49230 /* ~"Tu as changé d'avis, à moins que tu aies des questions idiotes à me poser ?"~ */
  IF ~~ THEN REPLY #49228 /* ~"J'ai changé d'avis. Je vais t'aider."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49229 /* ~"Je n'ai pas changé d'avis."~ */ GOTO 6
END

IF WEIGHT #5 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 18 // from:
  SAY #49231 /* ~Tu vois un homme blond et robuste portant l'armure d'un officier de l'Harmonium. Son visage est rougi par la boisson et derrière son sourire, ses yeux sont remplis d'amertume. Il se met à parler sans préambule. "C'est Barlouche qui t'a envoyé ? Non ? Alors, arrête de me faire perdre mon temps." Il replonge le nez dans son whisky et t'ignore.~ */
  IF ~~ THEN REPLY #49232 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #49233 /* ~"C'est Barlouche qui t'a envoyé ? Non ? Alors, arrête de me faire perdre mon temps." Il se détourne de toi et t'ignore.~ */
  IF ~~ THEN REPLY #49234 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.1 15.1 16.1
  SAY #66962 /* ~"Tu n'es pas du genre à t'amuser avec les armes, tes cicatrices me le disent clairement. Tu souhaites abandonner ce que tu es ?"~ */
  IF ~~ THEN REPLY #66978 /* ~"Oui."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 22
  IF ~~ THEN REPLY #66979 /* ~"Non."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #66963 /* ~"Tu n'es pas encore prêt à recevoir mon enseignement. Vas au bout de tes leçons avec Jasilya et Barlouche, et peut-être que je te prendrai comme élève par la suite."~ */
  IF ~~ THEN REPLY #66980 /* ~"Bien. J'aurais encore quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #66981 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.0 20.0
  SAY #66964 /* ~"Tu te déplaces comme quelqu'un qui sait déjà se servir d'une arme, alors allons droit au but : qu'est-ce que tu veux vraiment ?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66982 /* ~"Tu peux me dire si je suis prêt pour plus d'instructions ?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66983 /* ~"Peux-tu me dire si je suis prêt à suivre de nouvelles leçons ?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #66984 /* ~"Je manie raisonnablement bien toutes les armes. Peux-tu m'enseigner autre chose ?"~ */ JOURNAL #66986 /* ~Marquez m'a dit que, si je souhaite en apprendre davantage au sujet des armes, je dois m'adresser à Korur, dans le Bas Quartier de Sigil. J'espère que je pourrai y retourner pour mettre sa suggestion en pratique.~ */ GOTO 24
  IF ~~ THEN REPLY #66985 /* ~"À rien pour l'instant. Je reviendrai plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #66965 /* ~"Dans ce cas, pourquoi tu me fais perdre mon temps ? Allez, file. Au moins, boire, c'est important."~ */
  IF ~~ THEN REPLY #66987 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 34.2
  SAY #66966 /* ~Il évalue tes compétences et laisse échapper un sifflement de surprise. "Tu es incroyablement doué, mon frère. Je ne connais qu'un seul type qui pourrait t'en enseigner davantage. Il s'appelle Korur et réside dans le Bas Quartier de Sigil. Va le voir, si tu le trouves."~ */
  IF ~~ THEN REPLY #66988 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0 33.1 34.0 35.0
  SAY #66967 /* ~"Tu n'es pas prêt pour en apprendre davantage. Reviens quand tu le seras."~ */
  IF ~~ THEN REPLY #66989 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1 27.6 28.6 29.6 30.6 31.6 33.0 34.1 35.1
  SAY #66968 /* ~"Je peux t'apprendre ce que tu souhaites savoir… du moins, jusqu'à une certaine limite. À quelles armes t'intéresses-tu ?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66990 /* ~"Apprends-moi à me battre avec les poings."~ */ GOTO 27
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66991 /* ~"Apprends-moi à utiliser les dagues."~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66992 /* ~"Apprends-moi à utiliser les gourdins."~ */ GOTO 29
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66993 /* ~"Apprends-moi à utiliser les haches."~ */ GOTO 30
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66994 /* ~"Apprends-moi à utiliser les marteaux."~ */ GOTO 31
  IF ~~ THEN REPLY #66995 /* ~"Je n'ai pas envie de m'entraîner aujourd'hui. Je reviendrai plus tard." ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #66969 /* ~"Le combat aux poings ? Le vrai corps à corps, quoi ?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66996 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66997 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66998 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66999 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67000 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67001 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67030 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 26
  IF ~~ THEN REPLY #67031 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #66970 /* ~"La dague, hein ? Une arme de fourbe, mais qui peut s'avérer utile. Tu veux en apprendre le maniement ?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67002 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67003 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67004 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67005 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67006 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67007 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67029 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 26
  IF ~~ THEN REPLY #67032 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #66971 /* ~"Toi, tu as envie de taper sur le crâne de quelqu'un, non ?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67008 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67009 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67010 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67011 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67012 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67013 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67028 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 26
  IF ~~ THEN REPLY #67033 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #66972 /* ~Il siffle entre ses dents. "Toi, tu as envie de faire mal à quelqu'un, pas vrai ? Tu veux apprendre le maniement de la hache ?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67014 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67015 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67016 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 33
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67017 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67018 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
~ THEN REPLY #67019 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67027 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 26
  IF ~~ THEN REPLY #67034 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY #66973 /* ~"Ah, une arme de gentilhomme… à condition d'être sacrément musclé. Tu veux apprendre le maniement du marteau ?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67020 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67021 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67022 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67023 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67024 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67025 /* ~"Oui, je voudrais apprendre à utiliser cette arme."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67026 /* ~"Non… de quelles autres armes tu peux m'apprendre à me servir ?"~ */ GOTO 26
  IF ~~ THEN REPLY #67035 /* ~"Non, je n'ai pas envie de m'entraîner aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 27.2 27.4 28.0 28.2 28.4 29.0 29.2 29.4 30.0 30.4 31.0 31.2 31.4
  SAY #66974 /* ~"Bien, allons-y !"~ */
  IF ~~ THEN REPLY #67037 /* ~"Quand tu veux…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2 32.0
  SAY #66975 /* ~Vous vous affrontez. Au bout de quelques minutes, Marquez s'essuie le front. "Tu es sacrément doué. Autre chose ?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67038 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 26
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67039 /* ~"Merci. Je voudrais savoir utiliser d'autres armes, si tu veux bien m'apprendre."~ */ GOTO 25
  IF ~~ THEN REPLY #67040 /* ~"Merci. C'est tout ce que je voulais savoir pour aujourd'hui."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.3 27.5 28.3 28.5 29.3 29.5 30.3 30.5 31.3 31.5
  SAY #66976 /* ~Il évalue tes compétence. "Tu as appris tout ce que je pouvais t'enseigner sur ce style de combat. Si tu veux encore progresser, va trouver Korur, qui réside dans le Bas Quartier de Sigil. Il est passé maître dans le maniement de toutes les armes, ou presque."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67041 /* ~"Peux-tu m'apprendre à manier une autre arme ?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67042 /* ~"Peux-tu m'apprendre à manier une autre arme ?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #67043 /* ~"Peux-tu m'apprendre à manier une autre arme ?"~ */ GOTO 24
  IF ~~ THEN REPLY #67044 /* ~"D'accord. Merci, et au revoir." ~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.1 28.1 29.1 30.1 31.1
  SAY #66977 /* ~Il évalue tes compétences. "Tu ne pourras pas progresser davantage dans ce style de combat. Ton corps n'est pas prêt."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67045 /* ~"Peux-tu m'apprendre à manier une autre arme ?"~ */ JOURNAL #68288 /* ~On m'a dit que je ne pourrai pas apprendre à manier d'autres armes à moins de choisir la voie du guerrier. Pour obtenir la spécialisation que je recherche, il me faut me concentrer sur l'art de la guerre, et ne jamais l'abandonner pour la magie ou les talents de voleur.~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67046 /* ~"Peux-tu m'apprendre à manier une autre arme ?"~ */ JOURNAL #68288 /* ~On m'a dit que je ne pourrai pas apprendre à manier d'autres armes à moins de choisir la voie du guerrier. Pour obtenir la spécialisation que je recherche, il me faut me concentrer sur l'art de la guerre, et ne jamais l'abandonner pour la magie ou les talents de voleur.~ */ GOTO 26
  IF ~~ THEN REPLY #67047 /* ~"D'accord. Merci, et au revoir." ~ */ JOURNAL #68288 /* ~On m'a dit que je ne pourrai pas apprendre à manier d'autres armes à moins de choisir la voie du guerrier. Pour obtenir la spécialisation que je recherche, il me faut me concentrer sur l'art de la guerre, et ne jamais l'abandonner pour la magie ou les talents de voleur.~ */ EXIT
END
