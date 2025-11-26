// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DULTHERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DULTHERA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #64787 /* ~Tu vois une vieille femme de forte corpulence, vêtue de loques. Elle semble errer par les rues, sans but, et marmonne en marchant. Quand elle te voit approcher, elle t'accueille d'un sourire qui découvre sa mâchoire édentée : "Tu es venu voir Ulthéra, c'est ça ? Qu'est-ce qu'elle peut faire pour toi ?"~ */
  IF ~~ THEN REPLY #64788 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #64789 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64790 /* ~"Bonjour à toi…" Elle te regarde sous toutes les coutures et son sourire s'élargit. "Ulthéra reçoit pas souvent la visite de quelqu'un comme toi. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #64791 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64792 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.2 8.1 9.0 12.1 13.2 14.1 15.1 16.1 17.1 18.1 24.0 30.0
  SAY #64793 /* ~"Pose-les alors."~ */
  IF ~~ THEN REPLY #64794 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #64795 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 5
  IF ~~ THEN REPLY #64796 /* ~"Que peux-tu me dire sur cet endroit ?"~ */ GOTO 13
  IF ~  Global("Sheryl_Quest","GLOBAL",3)
~ THEN REPLY #64797 /* ~"Je voulais t'interroger à propos du père de Sheryl, Arkin."~ */ GOTO 16
  IF ~~ THEN REPLY #64798 /* ~"Rien, je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64799 /* ~"Tu m'entends ? Est-ce que des cicatrices ont poussé sur tes oreilles et t'ont rendu sourd ?" Elle incline la tête de côté et commence à examiner tes oreilles. "C'est pas grave ! On m'appelle Ulthéra la sorcière."~ */
  IF ~~ THEN REPLY #64800 /* ~"Tu es une sorcière ?"~ */ GOTO 4
  IF ~~ THEN REPLY #64801 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64802 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64803 /* ~Elle laisse échapper un gloussement qui fait mal aux oreilles. "Bien sûr que non, bige. Les gens ne comprennent pas Ulthéra. Ils pensent qu'elle est folle, étrange… une vraie sorcière. C'est tout."~ */
  IF ~~ THEN REPLY #64804 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64805 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #64806 /* ~"Ce que fait Ulthéra…" Elle plisse le front et son visage n'est plus qu'un ensemble de rides. "Elle devine ce que les gens ont perdu. Ils viennent la voir pour lui poser des questions. Et elle trouve les choses qu'ils lui demandent."~ */
  IF ~~ THEN REPLY #64807 /* ~"J'ai perdu mes souvenirs, peux-tu me les retrouver ?"~ */ GOTO 6
  IF ~~ THEN REPLY #64808 /* ~"J'ai perdu mon nom, peux-tu me le retrouver ?"~ */ GOTO 10
  IF ~~ THEN REPLY #64809 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64810 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64811 /* ~Elle te regarde un moment en fronçant les sourcils, puis te tend sa main desséchée. "Ta main, donne-la à Ulthéra."~ */
  IF ~~ THEN REPLY #64812 /* ~Prends sa main.~ */ GOTO 7
  IF ~~ THEN REPLY #64813 /* ~Refuse.~ */ GOTO 30
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64814 /* ~Tu tends la main et prends celle d'Ulthéra. Pendant un moment, rien ne se passe. Puis soudain tu sens en toi une présence étrangère, qui scrute tes pensées les plus profondes. Cette sensation est bizarre et quelque peu effrayante. Instinctivement, tu résistes et essaies de chasser cet envahisseur de ton être. Tu entends Ulthéra pousser un soupir lorsqu'elle relâche ta main.~ */
  IF ~~ THEN REPLY #64815 /* ~"Alors ?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64816 /* ~"Tu es bien étrange, toi…" Elle secoue la tête tristement. "Ulthéra sait pas… Tes souvenirs semblent plus cachés que perdus… À moins qu'un autre s'en soit emparé… Ulthéra ressent un grand abîme…" Elle soupire. "Ulthéra ne peut pas t'aider… Tu es au-delà de ses faibles capacités."~ */
  IF ~~ THEN REPLY #64817 /* ~"Je ne comprends pas de quoi tu parles. Que veux-tu dire ?"~ */ GOTO 9
  IF ~~ THEN REPLY #64818 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64819 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.0
  SAY #64820 /* ~Elle grogne puis secoue la tête. "Ulthéra comprend moins de choses que toi… Pardonne à une vieille femme. Ulthéra ne peut pas t'aider."~ */
  IF ~~ THEN REPLY #64821 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64822 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #64823 /* ~Elle te regarde un moment en fronçant les sourcils, puis te tend sa main desséchée. "Ta main, donne-la à Ulthéra."~ */
  IF ~~ THEN REPLY #64824 /* ~Prends sa main.~ */ GOTO 11
  IF ~~ THEN REPLY #64826 /* ~Refuse.~ */ GOTO 30
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #64825 /* ~Tu tends la main et prends celle d'Ulthéra. Pendant un moment, rien ne se passe. Puis soudain tu sens en toi une présence étrangère, qui scrute tes pensées les plus profondes. Cette sensation est bizarre et quelque peu effrayante. Instinctivement, tu résistes et essaies de chasser cet envahisseur de ton être. Tu entends Ulthéra pousser un soupir lorsqu'elle relâche ta main.~ */
  IF ~~ THEN REPLY #64827 /* ~"Alors ?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #64828 /* ~"Tu es bien étrange, toi…" Elle secoue la tête tristement. "Ulthéra ne sait pas… Ton nom n'est pas perdu ; tu l'as abandonné de ton plein gré… Tu es sans nom et tu le resteras. C'est un choix que tu as fait… Ulthéra ne peut pas t'aider."~ */
  IF ~~ THEN REPLY #64829 /* ~"Je ne comprends pas de quoi tu parles. Que veux-tu dire ?"~ */ GOTO 9
  IF ~~ THEN REPLY #64830 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64831 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #64832 /* ~Elle promène son regard alentour et sourit. "Tu es dans le royaume de Pharod. On l'appelle le Village Enseveli… Sigil le surplombe, au-dessus des catacombes… Ulthéra n'en sait pas plus…"~ */
  IF ~~ THEN REPLY #64833 /* ~"Je cherche Pharod, où peut-on le trouver ?"~ */ GOTO 14
  IF ~~ THEN REPLY #64834 /* ~"Parle-moi des catacombes."~ */ GOTO 15
  IF ~~ THEN REPLY #64835 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64836 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #64837 /* ~"Il faut que tu ailles quelque part au nord et à l'est. Ulthéra ne sait pas où exactement. Pharod a des gardes, alors cherche des gardes. Si tu en trouves, Pharod ne peut pas être loin…"~ */
  IF ~~ THEN REPLY #64838 /* ~"Tu as parlé des catacombes, que peux-tu m'en dire ?"~ */ GOTO 15
  IF ~~ THEN REPLY #64839 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64840 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 14.0
  SAY #64841 /* ~Elle semble contrariée. "C'est les cryptes des morts. On les appelle les cryptes de la Pierre Pleureuse. Le séjour des morts y est pas paisible ; ils parcourent les tunnels… Prends garde si tu y vas." Elle pointe son doigt dans une direction vague. "Tu dois aller vers le sud et à l'est si tu cherches la Pierre Pleureuse…"~ */
  IF ~~ THEN REPLY #64842 /* ~"Tu as mentionné le nom de Pharod, où peut-on le trouver ?"~ */ GOTO 14
  IF ~~ THEN REPLY #64843 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64844 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.3
  SAY #64845 /* ~"Ah ! C'est donc la jeune Sheryl qui t'envoie !" Sa réponse ressemble plus à une affirmation qu'à une question. Elle te lance un regard furieux, puis reprend : "Qu'est-ce que tu veux savoir sur Arkin ?"~ */
  IF ~~ THEN REPLY #64846 /* ~"Sheryl dit qu'il a disparu. Elle est inquiète à son sujet." ~ */ GOTO 17
  IF ~~ THEN REPLY #64847 /* ~"Peu importe, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64848 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #64849 /* ~Elle hoche la tête pensivement. "Je vois, il a disparu. Et cette jeune imbécile est venue demander à Ulthéra… ou plutôt l'accuser ! Oui, l'accuser de faire de mauvaises choses… Ulthéra est insultée !"~ */
  IF ~~ THEN REPLY #64850 /* ~"Tu peux certainement pardonner à une enfant inquiète pour son père disparu."~ */ GOTO 18
  IF ~~ THEN REPLY #64851 /* ~"Peu importe, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64852 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #64853 /* ~Ulthéra te lance un regard furieux mais sa colère disparaît rapidement et elle hoche la tête. "Mais Ulthéra sait pardonner. Le souci peut faire oublier ses bonnes manières à une si jeune personne… Comment Ulthéra peut-elle t'aider ?"~ */
  IF ~~ THEN REPLY #64854 /* ~"Arkin cherchait des clés de portails. Si je comprends bien, il est venu demander ton aide ?"~ */ GOTO 19
  IF ~~ THEN REPLY #64855 /* ~"Peu importe, j'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64856 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64857 /* ~"Ouais !" Elle hoche la tête. "Arkin est venu voir Ulthéra et lui a demandé de deviner ce que pouvaient être les clés… des clés perdues, perdues pour le temps, perdues pour l'homme… Ulthéra les a retrouvées… elle les a données à Arkin. Arkin a les clés."~ */
  IF ~~ THEN REPLY #64858 /* ~"Et que sont-elles ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64859 /* ~"Ah… Ulthéra les a, les clés… Elles sont toutes simples." Elle glousse en fouillant dans ses poches. Après un moment, une expression de joie passe sur son visage ridé. "Voilà : la clé pour entrer…" Elle te tend un chandelier.~ */
  IF ~~ THEN REPLY #64860 /* ~"… et la clé de la sortie ?"~ */ DO ~GiveItemCreate("Candle",Protagonist,1,0,0)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #64861 /* ~Un rire hystérique, déclenché par une plaisanterie inconnue, la secoue quelques instants. "Ouais, la clé de la sortie… une bourse vide ! Oui, tu dois quitter la tombe avec une bourse vide…" Ulthéra te tend une bourse vide.~ */
  IF ~~ THEN REPLY #64862 /* ~"Maintenant, il me faut juste l'emplacement du portail. Où est-il ?"~ */ DO ~GiveItemCreate("Purse",Protagonist,1,0,0)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #64863 /* ~Elle rit de nouveau, puis hausse les épaules. "Ulthéra sait pas… il est perdu. Arkin le savait, mais pas Ulthéra." Elle te regarde de façon solennelle et baisse la voix. "Ulthéra peut le trouver, mais tu dois lui apporter quelque chose…"~ */
  IF ~~ THEN REPLY #64864 /* ~"Qu'est-ce qu'il te faut ?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #64865 /* ~Elle se caresse le menton de ses doigts osseux. "Hmm. Si tu trouvais une tombe… Ce serait bien… Rapporte à Ulthéra un fémur humain. Elle te trouvera le portail. Maintenant, va-t'en !"~ */
  IF ~~ THEN REPLY #64866 /* ~"Très bien, Ulthéra. Je te rapporterai un fémur humain. Au revoir."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthéra la sorcière m'a donné les clés du portail qu'Arkin, le père de Sheryl, souhaitait explorer. La clé d'entrée est un vieux bougeoir, celle de sortie une bourse vide. Ulthéra ignore où se trouve le portail, mais elle pense pouvoir le découvrir si je lui ramène un fémur humain. Je lui ai dit que je le ferais.~ */ EXIT
  IF ~~ THEN REPLY #64867 /* ~"N'y compte pas. Je ne veux pas faire ça. Au revoir."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64868 /* ~Hmm. J'ai besoin d'y réfléchir. Au revoir."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 25 26 27 29 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #64869 /* ~Tu vois la devineresse Ulthéra. Elle agite une main noueuse à ton approche. "Ah, tu es de retour. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #64870 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64871 /* ~"Rien, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #64872 /* ~Tu vois la devineresse Ulthéra. Elle agite une main noueuse à ton approche. "Ah, tu es de retour. Je le savais. Si tu apportes à Ulthéra un fémur humain, elle te trouvera le portail. Alors ?"~ */
  IF ~~ THEN REPLY #64873 /* ~"Très bien, Ulthéra. Je te rapporterai un fémur humain. Au revoir."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthéra la sorcière m'a donné les clés du portail qu'Arkin, le père de Sheryl, souhaitait explorer. La clé d'entrée est un vieux bougeoir, celle de sortie une bourse vide. Ulthéra ignore où se trouve le portail, mais elle pense pouvoir le découvrir si je lui ramène un fémur humain. Je lui ai dit que je le ferais.~ */ EXIT
  IF ~~ THEN REPLY #64874 /* ~"N'y compte pas. Je ne veux pas faire ça. Au revoir."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #64875 /* ~"J'y penserai. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 27 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #64876 /* ~Tu vois la devineresse Ulthéra. Elle agite une main noueuse à ton approche. "Ah, tu es de retour. Tu m'as refusé ton aide. Si tu apportes à Ulthéra un fémur humain, elle te trouvera le portail. Alors ?"~ */
  IF ~~ THEN REPLY #64877 /* ~"Très bien, Ulthéra. Je te rapporterai un fémur humain. Au revoir."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",3)
~ JOURNAL #64937 /* ~Ulthéra la sorcière m'a donné les clés du portail qu'Arkin, le père de Sheryl, souhaitait explorer. La clé d'entrée est un vieux bougeoir, celle de sortie une bourse vide. Ulthéra ignore où se trouve le portail, mais elle pense pouvoir le découvrir si je lui ramène un fémur humain. Je lui ai dit que je le ferais.~ */ EXIT
  IF ~~ THEN REPLY #64878 /* ~"N'y compte pas. Je ne veux pas faire ça. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #64879 /* ~"J'y penserai. Au revoir."~ */ DO ~SetGlobal("Ulthera_Quest","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 29 even though they appear after this state */
~  Global("Ulthera_Quest","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #64880 /* ~Tu vois la devineresse Ulthéra. Elle agite une main noueuse à ton approche. "Ah, tu es de retour. Tu as accepté de m'aider. Si tu apportes à Ulthéra un fémur humain, elle te trouvera le portail. Où est cet os ?"~ */
  IF ~  !PartyHasItem("Legclub")
~ THEN REPLY #64881 /* ~"Je ne l'ai pas encore trouvé. Au revoir."~ */ EXIT
  IF ~  PartyHasItem("Legclub")
~ THEN REPLY #64882 /* ~"Le voici. Dis-moi maintenant où est le portail."~ */ DO ~DestroyItemObject("Legclub",Protagonist,TRUE)
SetGlobal("Ulthera_Quest","GLOBAL",4)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #64883 /* ~Ulthéra regarde prudemment autour d'elle, puis te prend l'os des mains. Elle le tient serré contre sa poitrine et commence à psalmodier en se balançant. L'anxiété monte dans sa voix, alors que celle-ci faiblit jusqu'à devenir à peine audible. Enfin, Ulthéra pousse un soupir et brandit l'os dans la direction du nord-ouest. "Ouais, il est au nord et à l'ouest, près de l'entrée de la ville… Ulthéra te l'a trouvé, maintenant va-t'en !"~ */
  IF ~~ THEN REPLY #64884 /* ~"Merci, Ulthéra. Au revoir."~ */ JOURNAL #64936 /* ~J'ai trouvé le fémur que voulait Ulthéra et je lui ai demandé où se trouvait le portail utilisé par Arkin. Elle a commencé par me raconter des trucs sans intérêt, puis a dit qu'il se trouvait au nord-ouest, près de l'entrée du village enseveli. J'espère qu'elle ne se trompe pas.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Ulthera_Quest","GLOBAL",4)
~ THEN BEGIN 29 // from:
  SAY #64885 /* ~Tu vois la devineresse Ulthéra. Elle agite une main noueuse à ton approche. "Ah, tu es de retour. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #64886 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 6.1 10.1
  SAY #64932 /* ~Ulthéra te regarde en fronçant les sourcils, puis met les mains sur les hanches. "Tu crains une vieille femme ? Tu crois peut-être qu'Ulthéra va te mordre ? Peu importe. Tu veux quoi d'autre ?"~ */
  IF ~~ THEN REPLY #64933 /* ~"J'ai d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #64934 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END
