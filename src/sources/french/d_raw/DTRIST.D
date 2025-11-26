// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRIST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #37971 /* ~~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #37972 /* ~Tu vois une jeune femme qui tente d'attirer ton attention. Elle porte des vêtements usés mais dégage une certaine élégance contrairement aux personnes qui l'entourent. En la regardant de plus près, tu remarques que sa peau est propre et lisse, dépourvue de la coloration jaune des habitants du coin. En te voyant t'approcher, elle te sourit.~ */
  IF ~~ THEN REPLY #37973 /* ~"Bonjour."~ */ GOTO 2
  IF ~~ THEN REPLY #37974 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37975 /* ~"Je remercie les puissances, tu m'as remarquée. J'ai besoin d'un mercenaire…" Elle s'arrête et t'examine avec soin. "À en juger par ton apparence, tu pourrais m'intéresser."~ */
  IF ~~ THEN REPLY #37976 /* ~"Les apparences sont parfois trompeuses."~ */ GOTO 3
  IF ~~ THEN REPLY #37977 /* ~"Qu'est-ce que tu attends de moi, exactement ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37978 /* ~"Tout ça ne me dit rien qui vaille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37979 /* ~Un air d'inquiétude passe sur son visage. "Oui, matois. Pardonne-moi, je ne voulais pas t'offenser. Je suis dans une situation on ne peut plus… euh, désespérée. J'ai épuisé toutes les ressources disponibles pour remédier à ma situation, mais…"~ */
  IF ~~ THEN REPLY #37980 /* ~"Qu'est-ce que tu attends de moi, exactement ?"~ */ GOTO 4
  IF ~~ THEN REPLY #37981 /* ~"Tout ça ne me dit rien qui vaille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #37982 /* ~Elle te fait un signe de la tête. "Le fond du problème, c'est que je vais être vendue pour un crime que je n'ai pas commis. J'ai besoin de quelqu'un pour me défendre, quelqu'un capable de m'aider à prouver mon innocence et me délivrer de ce destin…" Elle s'arrête et te regarde comme si elle attendait quelque chose.~ */
  IF ~~ THEN REPLY #37983 /* ~"Explique-moi ce qui se passe, exactement."~ */ GOTO 5
  IF ~~ THEN REPLY #37984 /* ~"Tout ça ne me dit rien qui vaille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37985 /* ~Elle réfléchit. "C'est une longue histoire, matois, je t'en prie, fais preuve de patience avec moi."~ */
  IF ~~ THEN REPLY #37986 /* ~"Continue."~ */ GOTO 6
  IF ~~ THEN REPLY #37987 /* ~"Je n'ai pas le temps. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 25.1 26.1
  SAY #37988 /* ~Elle soupire en commençant à raconter son histoire. "Mon mari est récemment mort en me laissant son entreprise. Je ne suis pas très douée pour les affaires et j'ai donc décidé de la vendre. Peu de temps après, j'ai été contactée par un prêteur me disant qu'un prêt n'avait pas été honoré…" Elle s'arrête pour rassembler ses pensées.~ */
  IF ~~ THEN REPLY #37989 /* ~"Continue."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37990 /* ~"J'ai examiné tous les documents de mon mari et j'ai découvert qu'il avait bien contracté un emprunt, mais que depuis peu, tout était remboursé. J'en ai fait part au prêteur et, quelques jours après, il m'a demandé copie du document… Et impossible de le retrouver." Elle a l'air soucieuse et s'arrête pour réfléchir.~ */
  IF ~~ THEN REPLY #37991 /* ~"Continue."~ */ GOTO 8
  IF ~~ THEN REPLY #51297 /* ~"Je crois que j'en ai assez entendu. Si tu en venais au fait !"~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37992 /* ~"Et comme je ne pouvais pas prouver que l'emprunt avait été remboursé, le prêteur m'a traînée devant les tribunaux. Mes économies ont été saisies pour le remboursement. Mais comme elles ne suffisaient pas à rembourser l'emprunt, je vais être vendue aux enchères pour essayer de rembourser ce qu'il reste." Elle te lance un regard triste.~ */
  IF ~~ THEN REPLY #37993 /* ~"Je ne comprends pas. Pourquoi te vendre comme esclave ?"~ */ GOTO 9
  IF ~~ THEN REPLY #37994 /* ~"Je crois que j'en ai assez entendu. Si tu en venais au fait !"~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #37995 /* ~Elle hausse les épaules. "Cela sert de nombreux objectifs. D'abord, à n'emprisonner que les criminels les plus vils. Ensuite, la vente des détenus sert à payer les dommages et frais divers qui en découlent. Enfin, une fois que les détenus ont purgé leur peine et qu'ils sont relâchés… ils sont normalement devenus de meilleurs citoyens."~ */
  IF ~~ THEN REPLY #37996 /* ~"Tout ça est très intéressant, mais je ne vois pas comment je pourrais t'aider."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.1 9.0
  SAY #37998 /* ~"J'ai… j'ai besoin de quelqu'un pour trouver le document disparu, celui qui prouve que l'emprunt est bien remboursé. Ou si tu achetais mon contrat, je te rembourserais…" Elle t'implore du regard. "Je ne peux pas passer les cinq prochaines années de ma vie dans ce quartier, matois. J'en mourrai ! Tu as certainement remarqué la maladie dont souffrent tous ceux qui vivent ici !"~ */
  IF ~~ THEN REPLY #37999 /* ~"Non, de quelle maladie tu parles ?"~ */ GOTO 11
  IF ~~ THEN REPLY #38000 /* ~"Oui, la couleur jaune de la peau et la toux…"~ */ GOTO 12
  IF ~~ THEN REPLY #38001 /* ~"Tout ça ne me regarde pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #38002 /* ~Elle montre les gens autour d'elle. "Regarde-les, matois… leur peau jaune, leur toux persistante ! Et regarde là-haut, ces nuages de fumées qui imprègnent l'air…" Elle désigne la masse au-dessus d'elle. "Ça vous tue, à moins de pouvoir s'offrir un guérisseur. Et comme esclave, ça m'étonnerait que j'en aie les moyens."~ */
  IF ~~ THEN REPLY #38003 /* ~"Alors, c'est pour ça qu'ils ont tous la peau jaune…"~ */ GOTO 12
  IF ~~ THEN REPLY #38004 /* ~"Tout ça ne me regarde pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0 25.0 26.0
  SAY #38005 /* ~Elle hoche la tête. "Oui, matois. S'il te plaît, auras-tu le cœur de m'aider…" Elle te regarde, l'air anxieux. "S'il te plaît…"~ */
  IF ~~ THEN REPLY #38006 /* ~"Qu'est-ce que ça me rapportera de t'aider ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trist_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~~ THEN REPLY #38007 /* ~Vérité : "C'est le tribunal qui t'a déclarée coupable. Seule la justice peut t'aider."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Trist_1","GLOBALLaw",1)
~ GOTO 37
  IF ~~ THEN REPLY #38008 /* ~"Oui, je vais t'aider. Mais j'ai quelques questions…"~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Une femme du nom de Trist va être vendue en tant qu'esclave si le document de prêt qui a disparu n'est pas retrouvé. J'ai accepté de l'aider.~ */ GOTO 13
  IF ~~ THEN REPLY #38009 /* ~"Non, je ne veux pas être mêlé à ça."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38010 /* ~"Il me faut un peu de temps pour y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.2 15.1 16.0 17.0 18.4 19.1 20.0 21.0 22.0 23.0 27.1 35.1 36.1 37.0
  SAY #38011 /* ~Elle hoche frénétiquement la tête. "Demande ce que tu veux, matois."~ */
  IF ~~ THEN REPLY #38012 /* ~"Comment s'appelle le prêteur ?"~ */ DO ~SetGlobal("Know_Byron","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #38013 /* ~"À qui je dois m'adresser pour parler de ton contrat ?"~ */ GOTO 16
  IF ~~ THEN REPLY #38014 /* ~"Tu n'aurais pas pu égarer le document de prêt ?"~ */ GOTO 17
  IF ~~ THEN REPLY #38015 /* ~"Tu crois que le document de prêt a pu être volé ?"~ */ GOTO 18
  IF ~~ THEN REPLY #38016 /* ~"Est-ce que tu as expliqué tout ça lors du procès ?"~ */ GOTO 21
  IF ~~ THEN REPLY #38017 /* ~"Je crois qu'il vaut mieux que je m'en aille, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #38018 /* ~"Je connais bien son nom, matois. Après tout ce que j'ai traversé, je ne suis pas près de l'oublier…" Le regard perdu au loin, elle frissonne. "Byron Tourloupe, c'est son nom." Elle s'interrompt un instant. "Et je crois que son associé s'appelle Lenny."~ */
  IF ~~ THEN REPLY #38019 /* ~"Qui est ce Lenny ?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38020 /* ~"Où est-ce que je peux trouver Byron ?"~ */ GOTO 15
  IF ~~ THEN REPLY #38021 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38022 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1 36.0
  SAY #38023 /* ~Elle réfléchit un moment. "Je crois que tu pourras le trouver sur le marché en plein air ou dans les environs. Excuse-moi, je n'en suis pas certaine."~ */
  IF ~~ THEN REPLY #38024 /* ~"Tu as parlé de Lenny. Qui est-ce ?"~ */ DO ~SetGlobal("Know_Lenny","GLOBAL",1)
~ GOTO 34
  IF ~~ THEN REPLY #38025 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38026 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #38027 /* ~"Ce serait Deran, le commissaire-priseur. Il se trouve généralement là-bas, où ont lieu les enchères." Elle désigne l'avant de la plate-forme.~ */
  IF ~~ THEN REPLY #38028 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38029 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #38030 /* ~Elle secoue la tête. "Non, matois. Je suis quelqu'un de très méticuleux. Le document est dans un coffret, dans le bureau de mon mari. Il n'a jamais quitté cette pièce…"~ */
  IF ~~ THEN REPLY #38031 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38032 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.3
  SAY #38033 /* ~Elle hausse les épaules. "Je ne sais pas. Pourquoi volerait-on cela, sans toucher aux autres choses de valeur ? Ça n'a pas de sens."~ */
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Et bien… Le prêteur a peut-être volé le document pour t'obliger à rembourser deux fois ton emprunt…"~ */ GOTO 19
  IF ~  GlobalGT("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"Et bien… Ce n'était qu'une supposition…"~ */ GOTO 22
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #38034 /* ~"Et bien… Le prêteur a peut-être volé le document pour t'obliger à rembourser deux fois ton emprunt…"~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Stolen_Papers","GLOBAL",0)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #38035 /* ~"Et bien… Ce n'était qu'une supposition…"~ */ DO ~SetGlobal("Stolen_Papers","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #38036 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38037 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.2
  SAY #38038 /* ~Elle te regarde, interloquée. "C'est… c'est une idée horrible !" Elle hésite et réfléchit en se tapotant le menton. "Mais très ingénieuse, je l'admets, matois. Ce Byron Tourloupe m'a en effet tout l'air d'un chevalier de la gueuserie."~ */
  IF ~~ THEN REPLY #38039 /* ~"Un quoi ?"~ */ GOTO 20
  IF ~~ THEN REPLY #38040 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38041 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #38042 /* ~Elle te lance un regard perplexe. "Un voleur ou un tricheur, matois. On les appelle des chevaliers de la gueuserie."~ */
  IF ~~ THEN REPLY #38043 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38044 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.4
  SAY #38045 /* ~Elle hoche la tête. "Oh oui, matois. J'ai expliqué ma situation à beaucoup de monde. Tu es le premier à bien vouloir m'aider." Elle te sourit chaleureusement.~ */
  IF ~~ THEN REPLY #38046 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38047 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.1 18.3
  SAY #38048 /* ~Elle hausse les épaules. "Une idée intéressante, matois… qui vaut ce qu'elle vaut."~ */
  IF ~~ THEN REPLY #38050 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38113 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #38051 /* ~Elle te fixe d'un air déconcerté qui, au bout d'un moment, fait place à l'inquiétude. "Je… je n'ai rien à te donner, matois. J'ai tout perdu." Elle semble soudain désespérée. "Je t'en prie, ne me laisse pas à mon triste sort…"~ */
  IF ~~ THEN REPLY #38052 /* ~"Oui, je vais t'aider. Mais j'ai quelques questions…"~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ JOURNAL #37704 /* ~Une femme du nom de Trist va être vendue en tant qu'esclave si le document de prêt qui a disparu n'est pas retrouvé. J'ai accepté de l'aider.~ */ GOTO 13
  IF ~~ THEN REPLY #38053 /* ~"Non, je ne veux pas être mêlé à ça."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38054 /* ~"Il me faut un peu de temps pour y réfléchir. Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #38055 /* ~Tu vois Trist. Elle te regarde d'un air désespéré. "Rebonjour, matois. Puis-je te parler de quelque chose de grave ?"~ */
  IF ~~ THEN REPLY #38056 /* ~"D'accord."~ */ GOTO 6
  IF ~~ THEN REPLY #38057 /* ~"Je n'ai pas le temps pour le moment. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #38058 /* ~Tu vois Trist. Elle te regarde d'un air désespéré. "Rebonjour, matois. Puis-je te parler de quelque chose de grave ?"~ */
  IF ~~ THEN REPLY #38059 /* ~"Tu cherches toujours quelqu'un pour régler ton problème ?"~ */ GOTO 12
  IF ~~ THEN REPLY #38060 /* ~"Raconte-moi de nouveau ton histoire."~ */ GOTO 6
  IF ~~ THEN REPLY #38061 /* ~"Ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #38062 /* ~Tu vois Trist. Elle te regarde d'un air désespéré. "Rebonjour, matois. Peut-être viens-tu pour m'aider ? As-tu changé d'avis ?"~ */
  IF ~~ THEN REPLY #38063 /* ~"Tu cherches toujours quelqu'un pour régler ton problème ?"~ */ GOTO 12
  IF ~~ THEN REPLY #38064 /* ~"Raconte-moi de nouveau ton histoire."~ */ GOTO 6
  IF ~~ THEN REPLY #38065 /* ~"Non, ça ne m'intéresse pas. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Trist_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #38066 /* ~Tu vois Trist. Elle sourit en te voyant arriver et son regard est plein d'espoir. "Tu as trouvé le document, matois ? Tu peux me libérer ?"~ */
  IF ~  PartyHasItem("LoanDoc")
~ THEN REPLY #38067 /* ~"Oui, je vais aller le donner à Deran et il te libérera."~ */ GOTO 28
  IF ~~ THEN REPLY #38068 /* ~"Non, pas encore. Au revoir."~ */ GOTO 13
  IF ~~ THEN REPLY #67814 /* ~"Non, j'y travaille toujours. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #38069 /* ~Elle a soudain l'air soulagé. Tu la crois sur le point de s'évanouir, mais elle se reprend très vite. "Merci, matois. S'il te plaît, reviens me voir quand tu auras parlé à Deran."~ */
  IF ~~ THEN REPLY #38070 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Trist_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #38071 /* ~Trist te sourit chaleureusement. "Tu es mon sauveur, matois. Tu as ma reconnaissance éternelle."~ */
  IF ~~ THEN REPLY #38072 /* ~"Ça m'a fait plaisir de t'aider, Trist."~ */ GOTO 30
  IF ~~ THEN REPLY #38073 /* ~"Ne me reparle pas de tes problèmes. C'était assez chiant comme ça."~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #38074 /* ~"Merci, matois." Elle regarde autour d'elle, puis réfléchit un moment. "Tu m'as sauvée d'une mort certaine, matois. D'une mort lente et douloureuse…." Elle fronce les sourcils et réfléchit. "Attends ici, s'il te plaît, je reviens tout de suite." Elle tourne les talons et part.~ */
  IF ~~ THEN REPLY #38075 /* ~"D'accord, Trist."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #38077 /* ~Tu vois Trist arriver, elle sourit et te fait signe. "Rebonjour, matois. Merci d'avoir attendu." Elle regarde autour d'elle pendant un moment, puis retire une bourse des plis de sa robe. "Grâce au document que tu as fourni, je retrouverai mon statut et mon argent. Ce n'est pas grand-chose, mais c'est une récompense bien méritée pour ce que tu as fait." Elle te tend une bourse.~ */
  IF ~~ THEN REPLY #38078 /* ~"Merci, Trist."~ */ DO ~AddexperienceParty(4000)
GiveGoldForce(1000)
~ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #38079 /* ~Elle sourit. "Non, je te remercie. Au revoir, matois."~ */
  IF ~~ THEN REPLY #38080 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #38081 /* ~Elle fronce les sourcils, puis acquiesce d'un signe de tête. "Oui, matois, je peux imaginer. Encore merci et au revoir."~ */
  IF ~~ THEN REPLY #38082 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 14.0 15.0
  SAY #38083 /* ~Elle réfléchit un moment. "Un petit homme aux allures de sauvage est venu plusieurs fois au tribunal. Il s'asseyait derrière Tourloupe et lui chuchotait des choses par moments." Elle s'arrête et semble perdue dans ses pensées.~ */
  IF ~~ THEN REPLY #38084 /* ~"Continue."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #38085 /* ~Elle fronce les sourcils. "Je me souviens de lui, car il ne semblait jamais à l'aise dans ses vêtements. Il n'arrêtait pas de leur tirer dessus comme s'ils étaient neufs et inconfortables, comme s'il n'était pas habitué à les porter." Elle s'arrête de nouveau. "Une fois, Tourloupe lui a demandé de se tenir tranquille et d'arrêter de remuer. Il l'a appelé Lenny."~ */
  IF ~~ THEN REPLY #38086 /* ~"Où est-ce que je pourrais trouver Lenny ?"~ */ GOTO 36
  IF ~~ THEN REPLY #38087 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38088 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #38089 /* ~Elle réfléchit, puis hausse les épaules "Je ne sais pas, en fait. Mon mari m'a dit qu'on pouvait trouver des brigands au sud-est du marché, près de la tour de siège."~ */
  IF ~~ THEN REPLY #38090 /* ~"Où est-ce que je peux trouver Byron ?"~ */ GOTO 15
  IF ~~ THEN REPLY #38091 /* ~"J'ai d'autres questions…"~ */ GOTO 13
  IF ~~ THEN REPLY #38092 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 12.1
  SAY #38093 /* ~L'inquiétude se lit sur son visage. "Tu sais bien que même la justice se trompe parfois, matois… Si un innocent devait souffrir d'une telle bévue… ce serait une grave erreur judiciaire." Elle semble à présent désespérée. "Je t'en prie, ne me laisse pas à ce triste sort…"~ */
  IF ~~ THEN REPLY #38094 /* ~"Oui, je vais t'aider. Mais j'ai quelques questions…"~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",3)
~ GOTO 13
  IF ~~ THEN REPLY #38095 /* ~"Non, je ne veux pas être mêlé à ça."~ */ DO ~SetGlobal("Trist_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #38096 /* ~"Il me faut un peu de temps pour y réfléchir. Au revoir."~ */ EXIT
END
