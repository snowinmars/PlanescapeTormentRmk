// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWANGYAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWANGYAR~

IF ~  Global("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3009 /* ~Cette femme semble avoir une cinquantaine d'années. Ses cheveux commencent à grisonner. Des rides tissent son visage. À ta vue, elle semble hésiter entre te demander de partir ou appeler l'homme à la table.~ */
  IF ~~ THEN REPLY #3010 /* ~"Bonjour."~ */ DO ~SetGlobal("Wife_of_Angyar","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #11844 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11806 /* ~"Tu… tu ferais mieux de partir, ou j'appelle mon mari. Il sera furieux s'il apprend que tu t'es introduit chez nous."~ */
  IF ~~ THEN REPLY #11845 /* ~"Si tu avais dû l'appeler, tu l'aurais déjà fait. J'ai quelques questions à te poser…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11846 /* ~"Si jamais tu appelles ton mari, vous mourrez tous les deux. Maintenant, réponds à mes questions."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11847 /* ~"Du calme. J'ai juste quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #11848 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.2 25.1 25.3
  SAY #11807 /* ~Elle jette un regard soucieux vers son mari. "Je… je… n'ai pas le temps, étranger. Laisse-moi en paix."~ */
  IF ~~ THEN REPLY #11849 /* ~"Excuse-moi… Ça va ?"~ */ GOTO 4
  IF ~~ THEN REPLY #11850 /* ~"Tu trouveras le temps. Maintenant, j'ai des questions à te poser…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11851 /* ~"Alors au revoir. Excuse-moi de t'avoir dérangée."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.2 16.0 25.2
  SAY #11808 /* ~Elle pâlit, les yeux exorbités par la terreur, et, avant que tu aies pu lui poser une question, elle prend une grande inspiration et se met à hurler !~ */
  IF ~~ THEN REPLY #11852 /* ~"Bon sang…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #11809 /* ~"Moi ?" Elle paraît surprise. "Oh… oui, oui." Elle baisse la voix. "Tu ferais mieux de partir. Mon mari n'est pas lui-même… ta simple présence risque de le mettre en colère."~ */
  IF ~  Global("Angyar","GLOBAL",1)
~ THEN REPLY #11853 /* ~"Je lui ai parlé… Il a l'air inquiet. Qu'est-ce qu'il a ?"~ */ GOTO 5
  IF ~  Global("Angyar","GLOBAL",0)
~ THEN REPLY #11854 /* ~"Qu'est-ce qu'il a ?"~ */ GOTO 5
  IF ~~ THEN REPLY #11855 /* ~"Eh bien, il n'a pas intérêt à me provoquer, et toi non plus d'ailleurs. Maintenant, j'ai des questions à te poser…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11856 /* ~"Alors au revoir. Excuse-moi de t'avoir dérangée."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #11810 /* ~"Il n'est pas lui-même ces jours-ci… ça lui vient peut-être de sa toux…" Elle hausse les épaules. Ce n'est pas très convaincant.~ */
  IF ~~ THEN REPLY #11857 /* ~"Qu'est-ce qu'il a ?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #11858 /* ~"Si tu me disais ce qui ne va pas, je pourrais peut-être t'aider."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #11859 /* ~"Alors au revoir. Excuse-moi de t'avoir dérangée."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #11811 /* ~"Je crois… qu'il a fait quelque chose qu'il regrette." Son air inquiet tourne au désespoir. "Je crois qu'il a signé un Contrat à mort. Je ne comprends pas ce qui l'a poussé à commettre une idiotie pareille !"~ */
  IF ~~ THEN REPLY #11860 /* ~"Un Contrat à mort ?"~ */ GOTO 12
  IF ~~ THEN REPLY #11861 /* ~"Je… je vois. On dirait que tu as ta part de problèmes. Au revoir."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #11812 /* ~Elle t'arrête. "Je t'en prie, ne répète à personne ce que je t'ai dit, et surtout pas à mon mari…" Elle frissonne. "Jure-le-moi."~ */
  IF ~~ THEN REPLY #11862 /* ~"Pourquoi ?"~ */ GOTO 10
  IF ~~ THEN REPLY #11863 /* ~Mensonge : "Je te jure que je n'en parlerai à personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11864 /* ~Serment : "Je te jure que je n'en parlerai à personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11865 /* ~"Je ne peux pas te le promettre. Au revoir."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.2 10.3 10.4 11.1 11.2
  SAY #11813 /* ~Elle paraît se détendre… à peine. "Au revoir, alors."~ */
  IF ~~ THEN REPLY #11866 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #11814 /* ~Le désespoir envahit son visage. "Je… Je n'aurais *rien* dû te dire…" Ses yeux s'emplissent de larmes. "Je suis aussi bête que lui !"~ */
  IF ~~ THEN REPLY #11867 /* ~"Pourquoi vouloir garder ça secret ?"~ */ GOTO 10
  IF ~~ THEN REPLY #11868 /* ~"Tu as raison. Tu n'aurais jamais dû m'en parler. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #11869 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #11815 /* ~"Mon mari a un sale caractère… et il m'a fait jurer de ne dire à personne ce qui lui est arrivé…" Elle te regarde de nouveau. "Tu *dois* rester discret là-dessus."~ */
  IF ~~ THEN REPLY #11870 /* ~"Tu n'aurais pas dû m'en parler… Les promesses sont faites pour être tenues, sinon il n'y a plus de confiance possible entre deux personnes. Il aurait mieux valu que tu ne fasses pas cette promesse."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_2","GLOBALLaw",1)
~ GOTO 11
  IF ~~ THEN REPLY #11871 /* ~"Une promesse faite sous la menace n'en est pas une. À ta place, je n'aurais pas peur de manquer à ma parole."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11872 /* ~"Les promesses ne sont pas faites pour être tenues. L'intérêt des personnes passe avant."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_3","GLOBALLaw",-1)
~ GOTO 11
  IF ~~ THEN REPLY #11873 /* ~Mensonge : "Je te jure que je n'en parlerai à personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11874 /* ~Serment : "Je te jure que je n'en parlerai à personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11875 /* ~"Je ne peux pas te le promettre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2
  SAY #11816 /* ~Elle soupire. "N'empêche, je…"~ */
  IF ~~ THEN REPLY #11876 /* ~"Écoute, je peux peut-être t'aider… Qu'est-ce que c'est que ces Contrats à mort dont tu as parlé ?"~ */ GOTO 12
  IF ~~ THEN REPLY #11877 /* ~Mensonge : "D'accord. Je te jure que je n'en parlerai à personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #11878 /* ~Serment : "D'accord. Je te jure que je n'en parlerai à personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #11879 /* ~"On n'a plus rien à se dire. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 11.0 25.0
  SAY #11817 /* ~"Les Morts… Les Hommes-Poussière… ont des contrats qui leur donnent des droits sur le corps de quelqu'un à sa mort."~ */
  IF ~~ THEN REPLY #11880 /* ~"Que font les Hommes-Poussière avec le cadavre ?"~ */ GOTO 13
  IF ~~ THEN REPLY #11881 /* ~"Je… vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11818 /* ~"Ils l'animent grâce à leur magie noire et le font trimer jusqu'à ce qu'il…" Elle regarde son mari, désespérée. "… jusqu'à ce qu'il soit trop décomposé."~ */
  IF ~~ THEN REPLY #11882 /* ~"Pourquoi ton mari a signé ça ?"~ */ GOTO 14
  IF ~~ THEN REPLY #11883 /* ~"Ton mari n'aura pas besoin de son corps une fois mort. Où est le problème ?"~ */ GOTO 15
  IF ~~ THEN REPLY #11884 /* ~"On dirait que tu as ta part de problèmes. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.2
  SAY #11819 /* ~"Il voulait peut-être rapporter plus de jonc à la maison que d'habitude. Il a sa fierté… mais je crois qu'il s'est fait du mal."~ */
  IF ~~ THEN REPLY #11885 /* ~"C'est bien triste. Mais, j'ai quelques questions à te poser…"~ */ GOTO 16
  IF ~~ THEN REPLY #11886 /* ~"Ce contrat ne peut pas être annulé ?"~ */ GOTO 17
  IF ~~ THEN REPLY #11887 /* ~"Ton mari n'aura pas besoin de son corps une fois mort. Où est le problème ?"~ */ GOTO 15
  IF ~~ THEN REPLY #11888 /* ~"On dirait que tu as ta part de problèmes. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.2
  SAY #11820 /* ~"Mis à part le côté macabre du contrat, c'est la nature d'Angyar qui a changé… depuis qu'il l'a signé, il voit tout en noir, et il n'a plus l'énergie de chercher un travail honnête. À croire que l'ombre de la Dame pèse sur lui…" Elle pousse un soupir.~ */
  IF ~~ THEN REPLY #11889 /* ~"C'est bien triste. Mais, j'ai quelques questions à te poser…"~ */ GOTO 16
  IF ~~ THEN REPLY #11890 /* ~"Ce contrat ne peut pas être annulé ?"~ */ GOTO 17
  IF ~~ THEN REPLY #11891 /* ~"Pourquoi ton mari a signé ça ?"~ */ GOTO 14
  IF ~~ THEN REPLY #11892 /* ~"On dirait que tu as ta part de problèmes. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0 17.1 24.0
  SAY #11821 /* ~Elle jette un regard soucieux vers son mari. "Je… je… n'ai pas le temps, étranger. J'ai à faire dans la maison…"~ */
  IF ~~ THEN REPLY #11893 /* ~"Tu trouveras le temps. Maintenant, j'ai des questions à te poser…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11894 /* ~"Alors au revoir. Excuse-moi de t'avoir dérangée."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1 15.1
  SAY #11822 /* ~Elle te regarde, surprise, et soupire. "Mais j'ai *essayé* ! J'ai parlé à l'Homme-Poussière qui l'a fait signer, mais il a été glacial, le Mort typique ! Il m'a même sermonnée, et m'a dit que je n'avais pas le droit de venir en aide à mon mari !" Elle pince les lèvres, comme si elle revoyait le visage de l'homme. "Froid et cruel, qu'il était."~ */
  IF ~~ THEN REPLY #11895 /* ~"Je vais voir ce que je peux faire. Avec quel Homme-Poussière ton mari a passé ce Contrat ?"~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Wife_of_Angyar_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #11896 /* ~"C'est bien triste. Mais, j'ai quelques questions à te poser…"~ */ GOTO 16
  IF ~~ THEN REPLY #11897 /* ~"On dirait que tu as ta part de problèmes. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 20.0
  SAY #11823 /* ~"Je m'en voudrais de repousser une offre aussi généreuse." Elle paraît se réjouir, puis reprend son air soucieux. "Mais je t'en prie, ne dis à personne que j'ai fait appel à toi. Mon mari a très mauvais caractère. Si jamais il l'apprenait…" Elle frissonne.~ */
  IF ~~ THEN REPLY #11898 /* ~Mensonge : "Je te promets que ton mari n'en saura rien."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_3","GLOBALGood",-1)
~ GOTO 21
  IF ~~ THEN REPLY #11899 /* ~Serment : "Je te promets que ton mari n'en saura rien."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wife_of_Angyar_1","GLOBALLaw",1)
~ GOTO 21
  IF ~~ THEN REPLY #11900 /* ~"Je ne peux rien te promettre. On verra bien ce qui se passera."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 17.0
  SAY #11824 /* ~"L'Homme-Poussière se fait appeler Envoitombe… Je ne connais pas son prénom. Il a une table dans un bar à Hommes-Poussière de la Ruche. 'Poussière accumulée', c'est le nom de l'établissement. Lui, tu le trouveras là-bas, je parie, à persuader d'autres pauvres gens de signer ses contrats."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11902 /* ~"Ah, Mortaï ? Il est mort."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11903 /* ~"Alors, je vais essayer de le trouver. Où est le Bar de la Poussière accumulée ?"~ */ JOURNAL #64577 /* ~J'ai rencontré dans la Ruche une femme dont le mari, Angyar, a signé un contrat à mort auprès de l'un des Hommes-Poussière du bar de la Poussière accumulée (un certain Mortaï Envoitombe). J'ai accepté d'essayer de régler ce problème pour Angyar et sa femme, afin qu'ils retrouvent le sommeil. La femme m'a dit que le bar de la Poussière accumulée se trouvait au sud-ouest du Mémorial Homme-Poussière et qu'un zombi montait la garde à l'entrée.~ */ GOTO 20
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11904 /* ~"J'ai déjà le contrat de ton mari. Il est là."~ */ JOURNAL #64578 /* ~J'ai rencontré dans la Ruche une femme dont le mari, Angyar, a signé un contrat à mort auprès de l'un des Hommes-Poussière du bar de la Poussière accumulée (un certain Mortaï Envoitombe). Comme j'avais déjà récupéré le contrat d'Angyar, je n'ai pas eu besoin d'aller au bar.~ */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #11825 /* ~"Sors de la maison, va jusqu'au Mémorial, puis dirige-toi vers le sud-ouest…" Elle se tapote le menton. "Tu devrais tomber en plein dessus. Il y a toujours un de ces…" Elle plisse les lèvres, écœurée. "… un de ces morts errants planté devant."~ */
  IF ~~ THEN REPLY #11905 /* ~"Très bien. Je vais voir ce que je peux faire."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 18.0 18.1 38.0
  SAY #11826 /* ~"Merci, étranger… Ton aide est la bienvenue."~ */
  IF ~~ THEN REPLY #11906 /* ~"Pas de problème. Je vais voir si je peux faire annuler le contrat de ton mari."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.2
  SAY #11827 /* ~"Alors je te demande de rester le plus discret possible."~ */
  IF ~~ THEN REPLY #11907 /* ~"Très bien. Je vais voir si je peux faire annuler le contrat de ton mari."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 37.0
  SAY #11828 /* ~"Mort ?!" Elle se fige. "Mais le Contrat… il n'y a plus moyen de…"~ */
  IF ~  !PartyHasItem("Acontrac")
~ THEN REPLY #11908 /* ~"C'est un problème."~ */ JOURNAL #64579 /* ~J'ai rencontré dans la Ruche une femme dont le mari, Angyar, a signé un contrat à mort auprès de l'un des Hommes-Poussière du bar de la Poussière accumulée (un certain Mortaï Envoitombe). Le problème, c'est que j'avais déjà inscrit le nom de Mortaï dans le livre des morts. Dans le même temps, j'ai donc condamné Angyar et sa femme à la damnation éternelle.~ */ GOTO 24
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11909 /* ~"Ne t'inquiète pas. Le contrat est là."~ */ JOURNAL #64578 /* ~J'ai rencontré dans la Ruche une femme dont le mari, Angyar, a signé un contrat à mort auprès de l'un des Hommes-Poussière du bar de la Poussière accumulée (un certain Mortaï Envoitombe). Comme j'avais déjà récupéré le contrat d'Angyar, je n'ai pas eu besoin d'aller au bar.~ */ GOTO 28
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #11829 /* ~Sans un mot, elle jette un regard à son mari avant de se tourner vers toi. "Alors, il n'y a rien à faire." Sa voix a la finalité d'une pierre tombale. "Va-t'en, s'il te plaît."~ */
  IF ~~ THEN REPLY #11910 /* ~"J'avais d'abord quelques questions…"~ */ DO ~Enemy()
~ GOTO 16
  IF ~~ THEN REPLY #11911 /* ~"Au revoir."~ */ DO ~Enemy()
~ EXIT
END

IF ~  GlobalGT("Wife_of_Angyar","GLOBAL",0)
GlobalLT("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #11830 /* ~La femme d'Angyar lève sur toi un regard apeuré. "Je t'ai dit que tu n'étais pas le bienvenu… tu… tu ferais mieux de partir, ou j'appelle mon mari. Il sera furieux s'il apprend que tu t'es introduit chez nous."~ */
  IF ~  Global("Angyar_Quest","GLOBAL",1)
~ THEN REPLY #11912 /* ~"En quoi consistait ce Contrat à mort qu'a signé ton mari déjà ?"~ */ GOTO 12
  IF ~~ THEN REPLY #11913 /* ~"Si tu avais dû l'appeler, tu l'aurais déjà fait. Maintenant, j'ai quelques questions."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #11914 /* ~"Si jamais tu appelles ton mari, vous mourrez tous les deux. Maintenant, réponds à mes questions."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wife_of_Angyar_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #11915 /* ~"Du calme. J'ai juste quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #11917 /* ~"Au revoir."~ */ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",2)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #11831 /* ~La femme d'Angyar lève sur toi un regard plein d'espoir. "Tu as réussi… ?"~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11916 /* ~"Oui, j'ai réussi à récupérer le contrat auprès de Mortaï. Le voilà."~ */ GOTO 28
  IF ~~ THEN REPLY #11918 /* ~"Pas encore. Avec qui ton mari a passé ce contrat déjà ?"~ */ GOTO 37
  IF ~~ THEN REPLY #11919 /* ~"Je continue à chercher. Au revoir."~ */ EXIT
END

IF ~  Global("Angyar","GLOBAL",2)
~ THEN BEGIN 27 // from:
  SAY #11832 /* ~La femme d'Angyar sourit en te voyant. "Bonne rencontre ! Que puis-je pour toi ?"~ */
  IF ~~ THEN REPLY #11920 /* ~"Je me demandais si je pouvais me reposer ici."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #11921 /* ~"Je n'ai plus de réserves… Tu peux m'aider ?"~ */ DO ~StartStore("Wangyar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #11922 /* ~"Je voulais juste savoir comment tu allais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.2 23.1 26.0 37.2
  SAY #11833 /* ~Elle paraît soulagée, et ses yeux s'emplissent de larmes. "Oh, par les Puissances… tu dois être un deva déguisé pour rendre ainsi service à des inconnus…"~ */
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11923 /* ~Donne-lui le contrat.~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ JOURNAL #64580 /* ~J'ai récupéré le contrat d'Angyar et je l'ai ramené à sa femme. Elle m'a remercié et m'a dit de le montrer à son mari.~ */ GOTO 29
  IF ~~ THEN REPLY #11924 /* ~"Je n'ai pas fait ça pour rien, tu sais. J'attends quelque chose en retour."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11834 /* ~"Non, si tu pouvais montrer ce contrat à mon mari et lui dire, sans autre précision, que tu l'as récupéré pour son compte … je t'en serai reconnaissante."~ */
  IF ~~ THEN REPLY #11925 /* ~"Très bien. Je vais lui montrer alors."~ */ EXIT
  IF ~~ THEN REPLY #11926 /* ~"Je n'ai pas fait ça pour rien, tu sais. J'attends quelque chose en retour."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_2","GLOBALGood",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.1
  SAY #11835 /* ~Elle t'observe d'un air apeuré. "J'ai un peu d'argent, quelques cuivres… ça ira ?"~ */
  IF ~~ THEN REPLY #11927 /* ~"Oui."~ */ DO ~GivePartyGold(11)
~ GOTO 31
  IF ~~ THEN REPLY #11928 /* ~"Quelques pièces de cuivre ? Ce n'est pas suffisant. Qu'est-ce que tu as d'autre ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11836 /* ~Elle fouille les replis de sa robe et tire une poignée de pièces de cuivre. Elle les considère d'un air triste, puis te les tend. "Ce n'est pas cher payé pour l'âme de mon mari."~ */
  IF ~~ THEN REPLY #11929 /* ~"Ça suffirait tout juste à payer un hors-d'œuvre. Qu'est-ce que tu as d'autre ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_5","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #11930 /* ~"Bien. Voilà le contrat."~ */ JOURNAL #64580 /* ~J'ai récupéré le contrat d'Angyar et je l'ai ramené à sa femme. Elle m'a remercié et m'a dit de le montrer à son mari.~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1
  SAY #11837 /* ~"Non, si tu pouvais montrer ce contrat à mon mari et lui dire, sans autre précision, que tu l'as récupéré pour son compte … je t'en serai reconnaissante."~ */
  IF ~~ THEN REPLY #11931 /* ~"Très bien. Alors, je le lui montrerai."~ */ DO ~SetGlobal("Angyar_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.1 31.0
  SAY #11838 /* ~"Je n'ai… rien d'autre." Elle paraît terrorisée. "Vrai de vrai, rien d'autre. Mon mari n'aurait jamais signé ce contrat si…"~ */
  IF ~~ THEN REPLY #11932 /* ~"Ne me *mens* pas, femme. Qu'est-ce que tu as d'autre ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Wife_of_Angyar_6","GLOBALGood",-1)
~ GOTO 34
  IF ~~ THEN REPLY #11933 /* ~"Tant pis. Voilà le contrat."~ */ JOURNAL #64580 /* ~J'ai récupéré le contrat d'Angyar et je l'ai ramené à sa femme. Elle m'a remercié et m'a dit de le montrer à son mari.~ */ GOTO 32
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11839 /* ~Elle pâlit, les yeux exorbités par la terreur, et, avant que tu aies pu réagir, elle prend une grande inspiration et se met à hurler !~ */
  IF ~~ THEN REPLY #11934 /* ~"Bon sang…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Angyar","GLOBAL",3)
~ THEN BEGIN 35 // from:
  SAY #11840 /* ~La femme d'Angyar se tourne vers toi à ton approche et jette un regard soucieux vers son mari. "Je te remercie d'avoir repris ce contrat, mais tu as mis mon époux en colère. "Elle le considère d'un air apeuré. "Tu ferais mieux de partir."~ */
  IF ~~ THEN REPLY #11935 /* ~"Très bien. Excuse-moi de t'avoir dérangée."~ */ DO ~Enemy()
~ EXIT
END

IF ~  Global("Angyar_Quest","GLOBAL",3)
GlobalLT("Angyar","GLOBAL",2)
~ THEN BEGIN 36 // from:
  SAY #11841 /* ~La femme d'Angyar lève sur toi un regard plein d'espoir. "Tu le lui as donné… ?"~ */
  IF ~~ THEN REPLY #11936 /* ~"Pas encore. Je reviendrai quand ce sera fait."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 26.1
  SAY #11842 /* ~"L'Homme-Poussière se fait appeler Envoitombe… Je ne connais pas son prénom. Il a une table dans un bar à Hommes-Poussière de la Ruche. 'Poussière accumulée', c'est le nom de l'établissement. Lui, tu le trouveras là-bas, je parie, à persuader d'autres pauvres gens de signer ses contrats."~ */
  IF ~  Dead("Mortai")
~ THEN REPLY #11937 /* ~"Ah, Mortaï ? Il est mort."~ */ GOTO 23
  IF ~  !Dead("Mortai")
~ THEN REPLY #11938 /* ~"Alors, je vais essayer de le trouver. Où est le Bar de la Poussière accumulée ?"~ */ GOTO 38
  IF ~  PartyHasItem("Acontrac")
~ THEN REPLY #11939 /* ~"J'ai déjà le contrat de ton mari. Il est là."~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #11843 /* ~"Sors de la maison, va jusqu'au Mémorial, puis dirige-toi vers le sud-ouest…" Elle se tapote le menton. "Tu devrais tomber en plein dessus. Il y a toujours un de ces…" Elle plisse les lèvres, écœurée. "… un de ces morts errants planté devant."~ */
  IF ~~ THEN REPLY #11940 /* ~"Très bien. Je vais voir ce que je peux faire."~ */ GOTO 21
END
