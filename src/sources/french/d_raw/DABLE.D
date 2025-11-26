// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DABLE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #2873 /* ~Ce vieillard a des airs de livre. Ses habits et ses accessoires sont parfaitement propres et entretenus. Il les frotte souvent pour enlever poussières et peluches. Un poignard stylisé transperçant une flamme est brodé sur sa tunique.~ */
  IF ~~ THEN REPLY #2874 /* ~"Bonjour…"~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30849 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 23.0
  SAY #30708 /* ~Le regard de l'homme passe sur toi, et se met à briller en apercevant Morte. "Bon sang ! Regardez-moi ça ! Un crâne flottant !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 292
END

IF ~~ THEN BEGIN 2 // from:
  SAY #30709 /* ~L'homme déglutit. "Par les lois injustes de Tuerny l'Impitoyable !"~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30850 /* ~"Qui ?"~ */ GOTO 3
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30851 /* ~"Qui ça ?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30852 /* ~"Qui ça ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #30710 /* ~Il porte soudain la main à sa bouche d'un geste d'excuse. "Désolé, désolé… c'était un horrible tyran, mort depuis bien longtemps. Son nom ne devrait pas être prononcé ainsi ; c'est plutôt vulgaire."~ */
  IF ~~ THEN REPLY #30853 /* ~"Alors, fais attention à ce que tu dis."~ */ GOTO 7
  IF ~~ THEN REPLY #30854 /* ~"Dis ce que tu veux, je ne suis pas susceptible."~ */ GOTO 7
  IF ~~ THEN REPLY #30855 /* ~Ignore-le.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #30711 /* ~Il porte soudain la main à sa bouche d'un geste d'excuse et regarde Tombée-en-Disgrâce. "Désolé, désolé… c'était un horrible tyran, mort depuis bien longtemps. Son nom ne devrait pas être prononcé ainsi ; c'est plutôt vulgaire. Mes excuses les plus sincères, Dame Grâce. Je ne voulais pas vous offenser."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 128
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30712 /* ~"Oui, oui, vous avez sans doute raison."~ */
  IF ~~ THEN REPLY #30856 /* ~Essaie d'attirer son attention.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #30713 /* ~Il porte soudain la main à sa bouche d'un geste d'excuse et regarde Annah. "Désolé, désolé… c'était un horrible tyran, mort depuis bien longtemps. Son nom ne devrait pas être prononcé ainsi ; c'est plutôt vulgaire. Mes excuses les plus sincères, m'dame. Je ne voulais pas vous offenser."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 167
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 5.0
  SAY #30714 /* ~Il se retourne vers Morte. "Mais regardez ! Un crâne, qui flotte, qui lévite au-dessus du sol, qui réagit à son environnement, et qui est capable de voir, d'entendre et de parler !"~ */
  IF ~~ THEN REPLY #30857 /* ~"En f-"~ */ GOTO 8
  IF ~~ THEN REPLY #30858 /* ~"J'avais-"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30715 /* ~Il se retourne vers toi, comme si tu étais devenu son confident. "C'est vraiment l'une des raisons pour lesquelles je ne m'ennuierai jamais dans les plans - on pense avoir tout vu, et les plans vous montrent un nouveau coin à explorer, et…" Il lève les mains dans un geste large. "… soudain des horizons merveilleux, totalement nouveaux s'ouvrent à vous."~ */
  IF ~~ THEN REPLY #30859 /* ~"En fait, un crâne qui flotte et qui parle, ce n'est pas si rare - là-haut avec les amnésiques auto-résurrecteurs qui fouillent Sigil à la recherche de leur identité perdue."~ */ GOTO 9
  IF ~~ THEN REPLY #30860 /* ~"Je ne ne suis pas sûr que Morte représente un 'horizon nouveau'."~ */ GOTO 9
  IF ~~ THEN REPLY #30861 /* ~"Oui, oui… J'ai des questions…"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1 8.2
  SAY #30716 /* ~L'homme t'ignore pour regarder Morte. "Dis-voir, crâne…" commence-t-il.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 293
END

IF ~~ THEN BEGIN 10 // from:
  SAY #30717 /* ~L'homme semble t'avoir complètement oublié, et, choqué, se tourne pour regarder cet 'autre' crâne flottant. "Non ! Où ? Où !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 294
END

IF ~~ THEN BEGIN 11 // from:
  SAY #30718 /* ~"Où ? Je ne le vois pas !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 295
END

IF ~~ THEN BEGIN 12 // from:
  SAY #30719 /* ~Il se tourne et s'éclaircit la gorge. "Je vois que vous possédez un sens de l'humour assez particulier."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 296
END

IF ~~ THEN BEGIN 13 // from: 18.2 19.2 20.2 21.2 22.1
  SAY #30720 /* ~Il semble t'apercevoir pour la première fois…~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #30721 /* ~Les yeux de l'homme s'écarquillent. "Par les lois injustes de Tuerny l'Imp… !" Il se reprend, navré. "Dites, est-ce que ça va ? Vous avez l'air…" Il cherche ses mots. "… mal en point."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #30862 /* ~"Ça va. J'ai des questions…"~ */ GOTO 16
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #30863 /* ~"Ça va."~ */ EXTERN ~DANNAH~ 168
END

IF WEIGHT #4 /* Triggers after states #: 24 17 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #30722 /* ~Ce vieillard a des airs de livre. Ses habits et ses accessoires sont parfaitement propres et entretenus. Il les frotte souvent pour enlever poussières et peluches. Un poignard stylisé transperçant une flamme est brodé sur sa tunique.~ */
  IF ~~ THEN REPLY #30864 /* ~"Bonjour…"~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 14.0 18.1 19.1 20.1 21.1 22.0 25.3 26.1 27.1 28.2 29.3 30.3 31.2 32.3 33.1 34.6 35.1 36.3 37.1 38.1 40.1 41.1 42.1 43.4 45.2 47.2 49.10 50.9 52.3 54.3 55.2 57.2 61.3 63.2 64.4 65.2 66.2 67.2 70.2 71.2 75.3 76.2 77.2 79.2 81.1 82.0 83.3 84.1 86.0 87.1 102.0 103.0 104.0 105.0 106.0 107.0 108.0
  SAY #30723 /* ~L'homme secoue la tête… avec impatience. "Bien sûr, bien sûr ! Je suis toujours plus qu'heureux de répondre aux questions quand je le peux, jeune homme."~ */
  IF ~  Global("CW_Research_Language","AR0600",2)
~ THEN REPLY #30865 /* ~"Tu as trouvé quelque chose au sujet de ces écritures dans le 'journal' que je t'ai montré ?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ JOURNAL #30878 /* ~Pensée Pondérée m'a expliqué que la langue utilisée dans l'étrange journal que j'avais trouvé était une langue morte. Il m'a dit qu'il avait entendu parler d'un spécialiste de langue à la Salle des Fêtes, Rhyseen Zhan, capable de m'aider à traduire ce qui était écrit.~ */ GOTO 86
  IF ~  Global("CW_Research_Ravel","AR0600",2)
~ THEN REPLY #30866 /* ~"Trouve tout ce que tu peux sur Ravel Puits-de-Rébus."~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",3)
~ JOURNAL #30880 /* ~Pensée Pondérée m'a dit que Ravel avait été jetée dans l'un des dédales de la Dame des Douleurs, et que selon la rumeur, la clé du portail de son dédale était une partie d'elle-même. Ça ne m'a pas beaucoup avancé.~ */ GOTO 87
  IF ~  Global("CW_Research_Incarnations","AR0600",2)
~ THEN REPLY #30868 /* ~"Tu as découvert quelque chose d'intéressant sur les hommes morts qui correspondent à ma description ?"~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",3)
~ JOURNAL #30881 /* ~Pensée Pondérée m'a parlé de ce qui correspond, d'après moi, à mes deux précédentes "incarnations"… un meurtrier sanguinaire et un reclus méfiant… et un Sensat, bizarrement… qui a détruit toute trace de son existence avant de disparaître.~ */ GOTO 88
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30869 /* ~"Je peux te demander de chercher quelque chose pour moi ?"~ */ GOTO 83
  IF ~~ THEN REPLY #30870 /* ~"J'ai des questions à te poser sur toi…"~ */ GOTO 25
  IF ~~ THEN REPLY #30871 /* ~"J'ai des questions sur cet endroit…"~ */ GOTO 32
  IF ~~ THEN REPLY #30873 /* ~"J'ai des questions sur cette cité…"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #30874 /* ~"Que sais-tu de Ravel Puits-de-Rébus ?"~ */ GOTO 78
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #30876 /* ~"Qu'est-ce que tu sais sur la Guerre Sanglante ?"~ */ GOTO 82
  IF ~~ THEN REPLY #30877 /* ~"En fait, je n'ai pas de questions pour le moment. Au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #30724 /* ~Ce vieillard a des airs de livre. Ses habits et ses accessoires sont parfaitement propres et entretenus. Il les frotte souvent pour enlever poussières et peluches. Un poignard stylisé transperçant une flamme est brodé sur sa tunique.~ */
  IF ~~ THEN REPLY #30882 /* ~"Bonjour…"~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30883 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #30725 /* ~Les yeux de l'homme passent rapidement sur toi, se fixant, le regard brillant sur Nordom. "Un tétradrone, n'est-ce pas ?" Il paraît perplexe. "Toutefois… oh, bon sang ! Un modrone hors la loi ! Oh, zut alors !" Il paraît affligé.~ */
  IF ~~ THEN REPLY #30887 /* ~"Qu'est-ce qui ne va pas ?"~ */ GOTO 19
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30888 /* ~"Ne t'inquiète pas pour ça. J'ai des questions…"~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30889 /* ~"Ne t'inquiète pas pour ça. J'ai des questions…"~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #30726 /* ~"Eh bien, c'est un renégat. C'est un modrone contaminé, et, en tant que tel, il ne fait que soutirer du pouvoir à son plan d'origine, Méchanus. Vous voyez, tous les modrones ont en eux une part de la Source de Méchanus… si l'un d'eux ne fonctionne pas correctement ou quitte les autres modrones, il affaiblit tout Méchanus."~ */
  IF ~~ THEN REPLY #30890 /* ~"Continue…"~ */ GOTO 20
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30891 /* ~"Je n'ai pas de temps à perdre avec ça. J'ai des questions…"~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30892 /* ~"Je n'ai pas de temps à perdre avec ça. J'ai des questions…"~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #30727 /* ~"Lorsque les autres - les autres modrones - le trouveront, ils le ramèneront à Méchanus pour qu'il soit puni. Il sera détruit. Un modrone détruit doit retourner à la Source."~ */
  IF ~~ THEN REPLY #30893 /* ~"Mais pourquoi ?"~ */ GOTO 21
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30894 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30895 /* ~"Je vois. J'ai quelques questions…"~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #30728 /* ~"Parce qu'il n'est pas un modrone, et pourtant il les affaiblit par sa présence. Il affaiblit Méchanus sans raison ni droit. Il doit devenir partie intégrante de Méchanus pour que cela soit corrigé."~ */
  IF ~~ THEN REPLY #30899 /* ~"Je ne *veux* pas qu'il soit corrigé. Nordom s'aime tel qu'il est."~ */ GOTO 22
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30901 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30902 /* ~"Je vois. J'ai quelques questions…"~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #30729 /* ~"Il est terriblement malavisé, dans ce cas-là ! Je peux contacter des gens…"~ */
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30903 /* ~"Non. J'ai quelques questions…"~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30904 /* ~"Non. J'ai quelques questions…"~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF WEIGHT #1 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 23 // from:
  SAY #30730 /* ~Tu as déjà rencontré ce vieil homme à l'air érudit. Il paraît perdu dans ses pensées et ne t'a pas encore remarqué.~ */
  IF ~~ THEN REPLY #30905 /* ~"Bonjour…"~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30906 /* ~Laisse-le tranquille.~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 24 // from:
  SAY #30731 /* ~Tu as déjà rencontré ce vieil homme à l'air érudit. Il paraît perdu dans ses pensées et ne t'a pas encore remarqué.~ */
  IF ~~ THEN REPLY #30907 /* ~"Bonjour…"~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30908 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.4 26.0 27.0 28.1 29.2 30.2 31.1
  SAY #30732 /* ~"Moi ? Certainement…"~ */
  IF ~~ THEN REPLY #30909 /* ~"Qui es-tu ?"~ */ GOTO 26
  IF ~~ THEN REPLY #30910 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 27
  IF ~~ THEN REPLY #30911 /* ~"C'est quoi ce symbole brodé sur ta tunique ?"~ */ GOTO 28
  IF ~~ THEN REPLY #30912 /* ~"En fait, j'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #30913 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #30733 /* ~"Eh bien, mon nom est Pensée Pondérée."~ */
  IF ~~ THEN REPLY #30914 /* ~"J'ai d'autres questions à te poser sur toi…"~ */ GOTO 25
  IF ~~ THEN REPLY #30915 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #30916 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #30734 /* ~"Je viens juste de passer mon examen d'administrateur, et j'ai le statut de 'A9', consultant en recherche dans la Salle des Enregistrements, l'un des services spécialisés dans les lois physiques et l'histoire de Sigil. J'effectue des recherches sur ces sujets pour le compte d'autres personnes. C'est assez fascinant, en vérité…"~ */
  IF ~~ THEN REPLY #30918 /* ~"J'ai d'autres questions à te poser sur toi…"~ */ GOTO 25
  IF ~~ THEN REPLY #30919 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #30920 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #30735 /* ~"Eh bien, c'est le symbole de la Fraternité de l'Ordre. Nous sommes responsables de la création des lois et du fonctionnement des tribunaux ici, à Sigil. De nombreux juges, avocats et autres clercs sont membres de notre ordre, et nous avons le plaisir de pouvoir aider à faire respecter les lois de Sigil et de garder les choses en ordre. Nous effectuons un effort spécial pour apprendre les lois, qu'elles affectent Sigil, les plans, ou le multivers lui-même."~ */
  IF ~~ THEN REPLY #30922 /* ~"En quoi croit la Fraternité de l'Ordre ?"~ */ JOURNAL #31027 /* ~Pensée Pondérée m'a expliqué que la Fraternité de l'Ordre croit que le multivers est gouverné par les lois. Selon eux, il faut connaître toutes les lois pour comprendre le multivers. En outre, en comprenant les lois et leurs limites, ils apprennent à en éviter certaines.~ */ GOTO 29
  IF ~~ THEN REPLY #30923 /* ~"J'ai d'autres questions à te poser sur toi…"~ */ GOTO 25
  IF ~~ THEN REPLY #30924 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #30925 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 45.0 49.0 50.0
  SAY #30736 /* ~"La Fraternité de l'Ordre estime que le multivers est gouverné par des lois. Lorsque l'on connaîtra toutes les lois, on pourra comprendre le multivers. C'est notre but. En comprenant les lois, et leurs limites, nous apprenons à en éviter certaines."~ */
  IF ~~ THEN REPLY #30927 /* ~"Si je peux me permettre, quels sont les avantages de ce courant de pensée ?"~ */ GOTO 30
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #30929 /* ~"J'ai d'autres questions à te poser sur toi…"~ */ GOTO 25
  IF ~~ THEN REPLY #30930 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #30931 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #30737 /* ~"Eh bien, notre fraternité nous permet de déchiffrer les langues assez facilement. Et nous pouvons à l'occasion utiliser certaines règles du multivers à notre bénéfice."~ */
  IF ~  PartyHasItem("P_JRNL")
~ THEN REPLY #30933 /* ~"Des langues ? Est-ce que tu peux lire ça ? Je crois que c'est une sorte de journal."~ */ GOTO 31
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #30934 /* ~"J'ai d'autres questions à te poser sur toi…"~ */ GOTO 25
  IF ~~ THEN REPLY #30935 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #30936 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #30738 /* ~Il le regarde, sourcils haussés. "Étrange ! Non, Je ne peux pas. C'est un langage ?"~ */
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30937 /* ~"Je crois. Tu peux chercher ?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ JOURNAL #30941 /* ~Dans le Quartier des Gratte-Papier, j'ai rencontré un homme, Pensée Pondérée, qui travaille comme consultant et qui a accepté de faire quelques recherches pour moi.~ */ GOTO 84
  IF ~~ THEN REPLY #30938 /* ~"Je ne sais pas vraiment. J'ai d'autres questions à te poser sur toi…"~ */ GOTO 25
  IF ~~ THEN REPLY #30939 /* ~"Je ne sais pas, vraiment. J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #30940 /* ~"Je n'en suis pas sûr moi-même. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.5 33.0 34.5 35.0 36.2 37.0 38.0 40.0 41.0 42.0
  SAY #30739 /* ~"Je dois admettre que je connais mal cette partie du Quartier des Gratte-Papier, mais je vous en prie… posez vos questions."~ */
  IF ~~ THEN REPLY #30942 /* ~"Pourquoi ça s'appelle le Quartier des Gratte-Papier ?"~ */ GOTO 33
  IF ~~ THEN REPLY #30943 /* ~"Qu'est-ce qu'il y a d'intéressant dans le coin ?"~ */ GOTO 34
  IF ~~ THEN REPLY #30944 /* ~"Tu sais si on peut trouver du travail dans le coin ?"~ */ GOTO 42
  IF ~~ THEN REPLY #30945 /* ~"Je voudrais te demander autre chose, en fait…"~ */ GOTO 16
  IF ~~ THEN REPLY #30946 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #30740 /* ~"C'est le siège d'une grande partie des salles d'enregistrements et d'administration de Sigil. Le nom du quartier vient de ses employés. De nombreux gratte-papier, scribes, prêtres, bureaucrates et officiels de l'administration y vivent."~ */
  IF ~~ THEN REPLY #30947 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30948 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30949 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #30741 /* ~"L'un des avocats les plus distingués de Sigil fait office ici. La Salle des Fêtes, siège de la Société des Sensations, se trouve aussi dans les environs." Il baisse le ton. "Ainsi, monsieur, que la Maison de tolérance des Plaisirs Intellectuels…"~ */
  IF ~~ THEN REPLY #30950 /* ~"Parle-moi de l'Avocat."~ */ GOTO 35
  IF ~~ THEN REPLY #30951 /* ~"Parle-moi de la Salle des Fêtes."~ */ GOTO 36
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30952 /* ~"Parle-moi de la Maison de tolérance."~ */ GOTO 38
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30953 /* ~"Parle-moi de la Maison de tolérance."~ */ GOTO 39
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30954 /* ~"Parle-moi de la Maison de tolérance."~ */ GOTO 41
  IF ~~ THEN REPLY #30955 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30956 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30957 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #30742 /* ~"Il est aussi membre de la Fraternité de l'Ordre, bien que sa fréquentation ait baissé depuis ses malheureux ennuis… Mais qui suis-je pour en parler… Sa résidence est située non loin d'ici, au sud-est."~ */
  IF ~~ THEN REPLY #30958 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30959 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30960 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #30743 /* ~"C'est un bel édifice, qui fait office de siège pour la Société des Sensations et de salle des arts de Sigil et des Plans. C'est un opéra, un musée, une galerie d'art, une boutique de caviste, une taverne, un Sensorium… on peut trouver de tout ici."~ */
  IF ~~ THEN REPLY #30961 /* ~"Parle-moi de la Société des Sensations."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Pensée Pondérée m'a expliqué que la Société des Sensations était l'une des factions les plus prestigieuses parmi les quinze factions de Sigil. Selon eux, il n'est possible de connaître les véritables secrets du multivers qu'en connaissant l'univers à fond, en testant toutes les substances, en ressentant toutes les émotions et en visitant tous les lieux du multivers.~ */ GOTO 62
  IF ~~ THEN REPLY #30962 /* ~"Des sensoriums ?"~ */ GOTO 37
  IF ~~ THEN REPLY #30963 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30964 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30965 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #30744 /* ~"Oui, les Sensats possèdent des pierres sensorielles, des minéraux dans lesquelles les expériences vécues d'une personne peuvent être stockées. On peut ensuite toucher la pierre et revivre l'expérience emmagasinée dedans. Assez curieux, en vérité !"~ */
  IF ~~ THEN REPLY #30967 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30968 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30969 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.2
  SAY #30745 /* ~Il acquiesce, mais paraît toutefois embarrassé. "Oui, j'y vais parfois, en effet… pour la conversation. C'est un grand bâtiment rond, au centre de cette partie du quartier."~ */
  IF ~~ THEN REPLY #30970 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30971 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30972 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.3
  SAY #30746 /* ~Il acquiesce, mais paraît toutefois embarrassé. "Oui, j'y vais parfois, en effet… pour la conversation." Il se retourne vers Tombée-en-Disgrâce. "Vous vous êtes engagée dans une noble cause, Dame Grâce. Si vous pouviez instruire vos élèves d'une manière plus orthodoxe, et peut-être leur donner un aperçu global des lois et politiques de la cité ; alors ils…"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 129
END

IF ~~ THEN BEGIN 40 // from:
  SAY #30747 /* ~Il digère cela, puis acquiesce, radieux. "Merci, Dame Grâce." Il se tourne une fois de plus vers toi.~ */
  IF ~~ THEN REPLY #30975 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30976 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30978 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.4
  SAY #30748 /* ~Il acquiesce, mais paraît toutefois embarrassé. "Oui, j'y vais parfois, en effet… pour la conversation." Il jette un coup d'œil à Annah, puis rougit encore plus. "C'est un grand bâtiment rond, au centre de cette partie du quartier."~ */
  IF ~~ THEN REPLY #30979 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30981 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30983 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 32.2
  SAY #30749 /* ~"Rien de temporaire, non."~ */
  IF ~~ THEN REPLY #30984 /* ~"J'ai d'autres questions sur le Quartier…"~ */ GOTO 32
  IF ~~ THEN REPLY #30985 /* ~"J'ai des questions sur autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30986 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 16.6 45.1 47.1 49.9 52.2 54.2 55.1 57.1 61.2 63.1 64.3 65.1 66.1 67.1 70.1 71.1 75.2 76.1 77.1
  SAY #30750 /* ~"Des questions concernant Sigil ? Je vous en prie… demandez-moi ce que vous voulez !"~ */
  IF ~~ THEN REPLY #30987 /* ~"Je voudrais en savoir plus sur les factions."~ */ DO ~SetGlobal("Know_Factions","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #30988 /* ~"Je voudrais en savoir plus sur la Dame des Douleurs."~ */ GOTO 71
  IF ~~ THEN REPLY #30989 /* ~"Qu'est-ce qu'il y a à l'extérieur de Sigil ?"~ */ GOTO 44
  IF ~~ THEN REPLY #30991 /* ~"D'où vient cette lumière du jour ? Je ne vois pas de soleil."~ */ GOTO 46
  IF ~~ THEN REPLY #30992 /* ~"En fait, je voudrais te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #30993 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2
  SAY #30751 /* ~"Personne ne le sait, et ce n'est pas faute d'avoir essayé. Aux endroits où aucun vrai mur n'existe se trouvent de solides murs de bâtiments, sans fenêtre. Certains prétendent avoir escaladé les toits et vu au-delà de Sigil, mais décrivent le dehors comme un *néant*…"~ */
  IF ~~ THEN REPLY #30994 /* ~Continue d'écouter.~ */ GOTO 45
  IF ~~ THEN REPLY #30995 /* ~Essaie de l'interrompre.~ */ GOTO 45
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #30996 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 89
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1 89.0
  SAY #30752 /* ~Il continue : "C'est une explication inacceptable, mais cela demeure un mystère. Une rumeur prétend, sans être appuyée par des faits, que quitter les murs de Sigil mène le voyageur dans un plan au hasard, mais cela n'a jamais été confirmé. La Fraternité de l'Ordre a monté de nombreuses expéditions, mais doit encore récupérer des informations concrètes."~ */
  IF ~~ THEN REPLY #30997 /* ~"La Fraternité de l'Ordre ?"~ */ JOURNAL #31027 /* ~Pensée Pondérée m'a expliqué que la Fraternité de l'Ordre croit que le multivers est gouverné par les lois. Selon eux, il faut connaître toutes les lois pour comprendre le multivers. En outre, en comprenant les lois et leurs limites, ils apprennent à en éviter certaines.~ */ GOTO 29
  IF ~~ THEN REPLY #30998 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #30999 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31000 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY #30753 /* ~"La brume le rend difficile à déterminer avec certitude, et je comprends donc vos difficultés. La lumière ne provient pas d'un astre, mais d'une luminescence graduelle emplissant le ciel…"~ */
  IF ~~ THEN REPLY #31002 /* ~Continue d'écouter.~ */ GOTO 47
  IF ~~ THEN REPLY #31004 /* ~Essaie de l'interrompre.~ */ GOTO 47
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31006 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 90
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 90.0
  SAY #30754 /* ~Il continue : "Elle atteint son apogée, appelé le *pic*, puis diminue jusqu'à ce que Sigil soit plongée dans l'obscurité, ce qu'on appelle l'*anti-pic*. La source de cette luminescence n'est pas connue, mais doit dépendre du vouloir de la dame."~ */
  IF ~~ THEN REPLY #31007 /* ~"La Dame ?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #31009 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31010 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31011 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0
  SAY #30755 /* ~"Oui, il y a quinze factions à Sigil. Il fut un temps où il en existait quarante-neuf. Puis, il y a environ six cents ans, la Dame des Douleurs fit savoir qu'il ne devait en rester que quinze. On appela cela le Grand Bouleversement…"~ */
  IF ~~ THEN REPLY #31012 /* ~Continue d'écouter.~ */ GOTO 49
  IF ~~ THEN REPLY #31013 /* ~Essaie de l'interrompre.~ */ GOTO 49
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31014 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 91
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 91.0
  SAY #30756 /* ~Il continue : "Et bien sûr, en une quinzaine de jours, trente-quatre d'entre elles périrent ou disparurent. Des milliers de personnes périrent par l'épée ou par un autre moyen… beaucoup furent simplement retrouvées mortes. Je suis moi-même un membre de la Fraternité de l'Ordre. Parmi les autres figurent les Adorateurs de la Source, les Hommes-Poussière, l'Harmonium, les Rectifieurs, la Ligue Révolutionnaire, la Société des Sensations et les Xaositectes."~ */
  IF ~~ THEN REPLY #31015 /* ~"Parle-moi de la Fraternité de l'Ordre."~ */ JOURNAL #31027 /* ~Pensée Pondérée m'a expliqué que la Fraternité de l'Ordre croit que le multivers est gouverné par les lois. Selon eux, il faut connaître toutes les lois pour comprendre le multivers. En outre, en comprenant les lois et leurs limites, ils apprennent à en éviter certaines.~ */ GOTO 29
  IF ~~ THEN REPLY #31016 /* ~"Parle-moi des Adorateurs de la Source."~ */ JOURNAL #31028 /* ~Pensée Pondérée m'a expliqué que les Adorateurs de la Source, ou Hommes-Dieux, croient que toute créature vivante du multivers peut devenir une divinité.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31017 /* ~"Parle-moi des Hommes-Poussière."~ */ JOURNAL #31029 /* ~Pensée Pondérée m'a expliqué que les Hommes-Poussière croient que nous sommes déjà morts, que Sigil et les plans sont les lieux où nous finissons tous après notre mort. Selon leurs croyances, tout est mort et cette existence est fausse. Le fait de garder des liens avec cette existence ou de lui rester attaché ne fait qu'empêcher l'âme de véritablement mourir.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31018 /* ~"Parle-moi des Hommes-Poussière."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Pensée Pondérée m'a expliqué que les Hommes-Poussière croient que nous sommes déjà morts, que Sigil et les plans sont les lieux où nous finissons tous après notre mort. Selon leurs croyances, tout est mort et cette existence est fausse. Le fait de garder des liens avec cette existence ou de lui rester attaché ne fait qu'empêcher l'âme de véritablement mourir.~ */ GOTO 53
  IF ~~ THEN REPLY #31019 /* ~"Parle-moi de l'Harmonium."~ */ JOURNAL #31031 /* ~Pensée Pondérée m'a expliqué que l'Harmonium était consacré à la paix et à l'harmonie dans l'ensemble des plans… d'où son nom. Cependant, ils pensent aussi que la fin justifie les moyens, et sont prêts à tout pour nous faire voir les choses à 'leur façon'.~ */ GOTO 55
  IF ~~ THEN REPLY #31020 /* ~"Parle-moi des Rectifieurs."~ */ JOURNAL #31032 /* ~Pensée Pondérée m'a expliqué que la justice était tout pour les Rectifieurs. Mallin, leur dernier factol, a dit que, correctement infligée, la punition mène à la perfection.~ */ GOTO 56
  IF ~~ THEN REPLY #31021 /* ~"Parle-moi de la Ligue Révolutionnaire."~ */ JOURNAL #31033 /* ~Pensée Pondérée m'a expliqué que la Ligue Révolutionnaire était très répandue dans Sigil. Ils pensent que toutes les institutions ont été mises en place pour les empêcher d'accéder à la vérité du multivers. Pour eux, le seul moyen de découvrir la vérité est de détruire toutes les organisations. Ils affirment que la vérité ne peut être découverte que lorsque les êtres sont complètement 'libres'.~ */ GOTO 58
  IF ~~ THEN REPLY #31022 /* ~"Parle-moi de la Société des Sensations."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Pensée Pondérée m'a expliqué que la Société des Sensations était l'une des factions les plus prestigieuses parmi les quinze factions de Sigil. Selon eux, il n'est possible de connaître les véritables secrets du multivers qu'en connaissant l'univers à fond, en testant toutes les substances, en ressentant toutes les émotions et en visitant tous les lieux du multivers.~ */ GOTO 62
  IF ~~ THEN REPLY #31023 /* ~"Parle-moi des Xaositectes."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Pensée Pondérée m'a expliqué que les Xaositectes croient qu'il suffit de se fondre dans le chaos aléatoire pour en apprendre ses secrets.~ */ GOTO 64
  IF ~~ THEN REPLY #31024 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31025 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31026 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 29.1 30.1 52.1 54.1 55.0 57.0 61.1 63.0 64.2 65.0 66.0 67.0 70.0
  SAY #30757 /* ~"Oh ? Laquelle ?"~ */
  IF ~~ THEN REPLY #31037 /* ~"Parle-moi de la Fraternité de l'Ordre."~ */ JOURNAL #31027 /* ~Pensée Pondérée m'a expliqué que la Fraternité de l'Ordre croit que le multivers est gouverné par les lois. Selon eux, il faut connaître toutes les lois pour comprendre le multivers. En outre, en comprenant les lois et leurs limites, ils apprennent à en éviter certaines.~ */ GOTO 29
  IF ~~ THEN REPLY #31038 /* ~"Parle-moi des Adorateurs de la Source."~ */ JOURNAL #31028 /* ~Pensée Pondérée m'a expliqué que les Adorateurs de la Source, ou Hommes-Dieux, croient que toute créature vivante du multivers peut devenir une divinité.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31039 /* ~"Parle-moi des Hommes-Poussière."~ */ JOURNAL #31029 /* ~Pensée Pondérée m'a expliqué que les Hommes-Poussière croient que nous sommes déjà morts, que Sigil et les plans sont les lieux où nous finissons tous après notre mort. Selon leurs croyances, tout est mort et cette existence est fausse. Le fait de garder des liens avec cette existence ou de lui rester attaché ne fait qu'empêcher l'âme de véritablement mourir.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31040 /* ~"Parle-moi des Hommes-Poussière."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Pensée Pondérée m'a expliqué que les Hommes-Poussière croient que nous sommes déjà morts, que Sigil et les plans sont les lieux où nous finissons tous après notre mort. Selon leurs croyances, tout est mort et cette existence est fausse. Le fait de garder des liens avec cette existence ou de lui rester attaché ne fait qu'empêcher l'âme de véritablement mourir.~ */ GOTO 53
  IF ~~ THEN REPLY #31041 /* ~"Parle-moi de l'Harmonium."~ */ JOURNAL #31031 /* ~Pensée Pondérée m'a expliqué que l'Harmonium était consacré à la paix et à l'harmonie dans l'ensemble des plans… d'où son nom. Cependant, ils pensent aussi que la fin justifie les moyens, et sont prêts à tout pour nous faire voir les choses à 'leur façon'.~ */ GOTO 55
  IF ~~ THEN REPLY #31042 /* ~"Parle-moi des Rectifieurs."~ */ JOURNAL #31032 /* ~Pensée Pondérée m'a expliqué que la justice était tout pour les Rectifieurs. Mallin, leur dernier factol, a dit que, correctement infligée, la punition mène à la perfection.~ */ GOTO 56
  IF ~~ THEN REPLY #31043 /* ~"Parle-moi de la Ligue Révolutionnaire."~ */ JOURNAL #31033 /* ~Pensée Pondérée m'a expliqué que la Ligue Révolutionnaire était très répandue dans Sigil. Ils pensent que toutes les institutions ont été mises en place pour les empêcher d'accéder à la vérité du multivers. Pour eux, le seul moyen de découvrir la vérité est de détruire toutes les organisations. Ils affirment que la vérité ne peut être découverte que lorsque les êtres sont complètement 'libres'.~ */ GOTO 58
  IF ~~ THEN REPLY #31044 /* ~"Parle-moi de la Société des Sensations."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Pensée Pondérée m'a expliqué que la Société des Sensations était l'une des factions les plus prestigieuses parmi les quinze factions de Sigil. Selon eux, il n'est possible de connaître les véritables secrets du multivers qu'en connaissant l'univers à fond, en testant toutes les substances, en ressentant toutes les émotions et en visitant tous les lieux du multivers.~ */ GOTO 62
  IF ~~ THEN REPLY #31045 /* ~"Parle-moi des Xaositectes."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Pensée Pondérée m'a expliqué que les Xaositectes croient qu'il suffit de se fondre dans le chaos aléatoire pour en apprendre ses secrets.~ */ GOTO 64
  IF ~~ THEN REPLY #31046 /* ~"En fait, je voudrais te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31047 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1
  SAY #30758 /* ~"Les Adorateurs de la Source, ou Hommes-Dieux, pensent que tout être vivant du multivers a le potentiel de devenir une Puissance…"~ */
  IF ~~ THEN REPLY #31053 /* ~Continue d'écouter.~ */ GOTO 52
  IF ~~ THEN REPLY #31054 /* ~Essaie de l'interrompre.~ */ GOTO 52
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31055 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 92
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 92.0
  SAY #30759 /* ~Il continue : "Le quartier général des Hommes-Dieux se trouve à la Grande Fonderie, et ils ont pris part au maintien de la paix sur Sigil de nombreuses manières… ils souhaitent qu'aucune créature sur Sigil ne soit inscrite au livre des morts avant d'avoir atteint son plein potentiel."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #31056 /* ~"J'adhère à leurs croyances. Tu sembles les désapprouver…"~ */ GOTO 66
  IF ~~ THEN REPLY #31057 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31058 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31059 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31060 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.2 49.3 50.2 50.3
  SAY #30760 /* ~"Les Hommes-Poussière pensent que nous sommes déjà morts, et que Sigil et les Plans sont l'endroit où nous finissons tous après notre mort. Selon leurs croyances, tout est mort, et cette existence est factice. Garder des liens ou des sentiments dans cette existence ne fait qu'empêcher les âmes de vraiment mourir."~ */
  IF ~~ THEN REPLY #31061 /* ~Continue d'écouter.~ */ GOTO 54
  IF ~~ THEN REPLY #31062 /* ~Essaie de l'interrompre.~ */ GOTO 54
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31063 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 93
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 93.0
  SAY #30761 /* ~Il continue : "Vous voyez, les Hommes-Poussière pensent que cette 'existence' n'est qu'une question de degré, et que seuls ceux qui sont vraiment morts et ont renoncé à tout ce qui les lie à cette existence peuvent espérer reposer en paix. Une philosophie qui est en partie fondée, mais qui mérite aussi un réexamen attentif."~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #31064 /* ~"J'adhère à leurs croyances. Tu sembles les désapprouver…"~ */ GOTO 67
  IF ~~ THEN REPLY #31065 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31066 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31067 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31068 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.4 50.4
  SAY #30762 /* ~"Les membres de l'Harmonium sont dévoués à la paix et l'harmonie à travers les Plans… d'où leur nom. Ils pensent toutefois que la fin justifie les moyens, et sont en conséquence prêts à tout pour que les autres se rangent à leurs opinions. Si l'on ne tient pas compte de son opinion personnelle à leur sujet, ils se débrouillent bien lorsqu'il s'agit de maintenir l'ordre dans les rues de Sigil."~ */
  IF ~~ THEN REPLY #31069 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31070 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31071 /* ~"Laisse-moi te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31072 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 49.5 50.5
  SAY #30763 /* ~"Les Rectifieurs pensent que la justice est tout. Mallin, leur dernier factol, a déclaré un jour que, proprement exécuté, le châtiment mène à la perfection…"~ */
  IF ~~ THEN REPLY #31073 /* ~Continue d'écouter.~ */ GOTO 57
  IF ~~ THEN REPLY #31074 /* ~Essaie de l'interrompre.~ */ GOTO 57
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31075 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 94
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 94.0
  SAY #30764 /* ~Il continue : "Ceux qui sont nouveaux sur Sigil commettent souvent l'erreur de croire que leur nom implique qu'ils jouent les redresseurs de torts, mais en fait leur fonction est bien, plutôt, de *rectifier* au sens argotique. Les membres de la faction se font un devoir de punir les coupables de Sigil, quel qu'en soit le coût."~ */
  IF ~~ THEN REPLY #31076 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31077 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31078 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31079 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.6 50.6
  SAY #30765 /* ~"On les appelle aussi les Anarchistes. Peu le savent, mais la Ligue Révolutionnaire compte en fait de nombreux adeptes à Sigil… ce qui est honteux, bien sûr. Ils pensent à tort que les institutions ont été établies pour leur bloquer l'accès aux vérités concernant le multivers."~ */
  IF ~~ THEN REPLY #31080 /* ~Continue d'écouter.~ */ GOTO 59
  IF ~~ THEN REPLY #31081 /* ~Essaie de l'interrompre.~ */ GOTO 59
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31082 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 95
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1 95.0
  SAY #30766 /* ~"Pour eux, le seul moyen de découvrir la vérité constitue à détruire toute organisation. Ils affirment que la vérité ne sera découverte que lorsque les gens seront totalement 'libres'." Il secoue la tête. "Je souhaite souvent qu'ils ouvrent les yeux sur la vérité qui les entoure. Ils ne font que se voiler la face et bloquer l'accès de tous à la vérité."~ */
  IF ~~ THEN REPLY #31083 /* ~Continue d'écouter.~ */ GOTO 60
  IF ~~ THEN REPLY #31084 /* ~Essaie de l'interrompre.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #30767 /* ~Il soupire longuement, puis agite un doigt d'un geste de désapprobation, comme s'il parlait à un vilain garnement imaginaire. "Il est intéressant de constater qu'ils n'ont aucun plan réel, autre que détruire tout ce qu'ils voient. Très intéressant, en vérité."~ */
  IF ~~ THEN REPLY #31085 /* ~Continue d'écouter.~ */ GOTO 61
  IF ~~ THEN REPLY #31086 /* ~Essaie de l'interrompre.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0 60.1
  SAY #30768 /* ~Il fronce les sourcils. "Il est aussi intéressant de constater que, bien que la Ligue Révolutionnaire compte de nombreux membres, la nature même de leur faction fait que ses membres travaillent les uns contre des autres. Souvent, les cellules se combattent, affirmant connaître le 'bon' moyen de tout détruire."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31087 /* ~"Est-ce que la méthode importe dans la mesure où ce qui est faux est écarté ?"~ */ GOTO 68
  IF ~~ THEN REPLY #31088 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31089 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31090 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31091 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 36.0 49.7 50.7
  SAY #30769 /* ~"Ah, la Société des Sensations ! Ils constituent l'une des factions les plus importantes de Sigil. Leur croyance veut que le véritable soltif du multivers ne puisse être connu qu'en faisant l'expérience de tout le multivers ; en goûtant à toutes ses substances, en ressentant toutes les émotions, en visitant tout le multivers."~ */
  IF ~~ THEN REPLY #31092 /* ~Continue d'écouter.~ */ GOTO 63
  IF ~~ THEN REPLY #31093 /* ~Essaie de l'interrompre.~ */ GOTO 63
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31094 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 96
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1 96.0
  SAY #30770 /* ~Il continue : "Le quartier général de leur faction se trouve dans la Salle des Fêtes, où ils désirent faire partager leurs expériences à tout Sigil. À l'heure actuelle, ils constituent la faction la plus importante… et la plus puissante. Si je ne me trompe, son recensement le plus récent fait état de plus de vingt mille membres."~ */
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31095 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31097 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31098 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31100 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 49.8 50.8
  SAY #30771 /* ~"Des fauteurs de troubles !" grommelle-t-il. "Pas du tout une véritable faction, cette bande de pouilleux. Honnêtement, même la Ligue Révolutionnaire est mieux organisée ! Les Xaositectes pensent qu'en adoptant le chaos, ils découvriront d'une manière ou d'une autre les secrets du multivers. Quelle idée absurde !"~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #31101 /* ~"Eh bien, en ce qui me concerne, j'envisage de découvrir les secrets du multivers en me frottant du fromage sur le ventre et en ingurgitant de grandes quantités de poissons d'eau douce. Mmm… du fromage."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ GOTO 65
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #31102 /* ~"Eh bien, en ce qui me concerne, j'envisage de découvrir les secrets du multivers en me frottant du fromage sur le ventre et en ingurgitant de grandes quantités de poissons d'eau douce. Mmm… du fromage."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 297
  IF ~~ THEN REPLY #31103 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31104 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31105 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31106 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #30772 /* ~L'homme te fixe pendant un instant. "Pardon… Vous… fromage ? Je…ferais mieux de partir, monsieur…"~ */
  IF ~~ THEN REPLY #31107 /* ~"Attends… Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31109 /* ~"Attends. J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31110 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31111 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 52.0
  SAY #30773 /* ~"Je trouve leur philosophie digne de respect… bonne sous tous ses aspects pour Sigil et ses habitants… mais elle est beaucoup trop simple. Comment découvrir les secrets du multivers en se contentant  de vivre bien ?' Est-ce que ce savoir se manifestera spontanément un beau jour, apportant la lumière à l'une de nos nombreuses incarnations ? Enfin, si de telles choses existent ! Mais je vois que vous manquez de temps pour en débattre. Je vais donc clore le sujet."~ */
  IF ~~ THEN REPLY #31112 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31113 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31114 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31115 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 54.0
  SAY #30774 /* ~"Tout simplement parce que le point d'orgue de leurs croyances n'est qu'une question de *foi*. J'exige des faits concrets - et rien de moins, mon bon monsieur - pour abandonner mon intérêt pour cette vie si facilement. Mais je vois que vous manquez de temps pour en débattre. Je vais donc clore le sujet."~ */
  IF ~~ THEN REPLY #31116 /* ~"Je voudrais en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31117 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31118 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31119 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 61.0
  SAY #30775 /* ~"La méthode *elle-même* est fallacieuse ! Comment…" il s'arrête et plisse les yeux avec suspicion. "Un instant… vous n'êtes pas… pas…"~ */
  IF ~~ THEN REPLY #31120 /* ~"Si. Allez, dis-le : un Anarchiste."~ */ GOTO 69
  IF ~~ THEN REPLY #31121 /* ~Mensonge : "Pas un… quoi ? Je ne vois pas de quoi tu parles."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_2","GLOBALLaw",-1)
~ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #30776 /* ~Il recule et appelle les gardes. "Gardes ! Un anarchiste ! GARDES !"~ */
  IF ~~ THEN REPLY #31122 /* ~Attaque-le.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #31123 /* ~Essaie de partir avant que quelqu'un arrive.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 68.1
  SAY #30777 /* ~"Hmmm…"~ */
  IF ~~ THEN REPLY #31124 /* ~"Je voudrais, euh, en savoir plus sur les autres factions…"~ */ GOTO 50
  IF ~~ THEN REPLY #31125 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31126 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31127 /* ~"Je ferais mieux de partir maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #30778 /* ~"La Dame des Douleurs, oui, oui… elle est la force qui soutient Sigil, vous savez. Un personnage impressionnant, mais dont on ne connaît presque rien."~ */
  IF ~~ THEN REPLY #31128 /* ~"Qu'est-ce *qu'on* sait sur elle ?"~ */ GOTO 72
  IF ~~ THEN REPLY #31129 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31130 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31131 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 47.0 71.0
  SAY #30779 /* ~Il commence à compter sur ses doigts : "Un : Elle n'est pas seulement un symbole de Sigil, comme certains le prétendent. Elle est réelle, et très dangereuse. Deux : On dit que c'est elle qui tient les Puissances… les divinités… à l'écart de Sigil. Tant qu'elle se trouve ici, les Puissances ne peuvent pas y pénétrer…"~ */
  IF ~~ THEN REPLY #31132 /* ~Continue d'écouter.~ */ GOTO 73
  IF ~~ THEN REPLY #31133 /* ~Essaie de l'interrompre.~ */ GOTO 73
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31134 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 97
END

IF ~~ THEN BEGIN 73 // from: 72.0 72.1 97.0
  SAY #30780 /* ~"Trois : elle empêche toute téléportation non autorisée et empêche les créatures des Plans Extérieurs d'utiliser des sorts dits de Seuil pour amener davantage d'entre elles sur Sigil en n'empruntant pas les voies conventionnelles. Quatre : Elle n'a jamais parlé. À personne. Cinq : Elle a pris le pouvoir à Sigil en renversant Aoskar, une Puissance que l'on dit maintenant morte."~ */
  IF ~~ THEN REPLY #31135 /* ~Continue d'écouter.~ */ GOTO 74
  IF ~~ THEN REPLY #31136 /* ~Essaie de l'interrompre.~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1
  SAY #30781 /* ~"Six : Quiconque menace Sigil… ou elle… est châtié, soit en tombant sous son ombre, ce qui provoque une série de coups de poignard invisibles pouvant tuer même le plus grand des baatezus, ou en étant envoyé dans les dédales, desquels personne ne s'échappe. Sept : Elle n'aime pas être vénérée. Ceux qui le font sont souvent retrouvés écorchés."~ */
  IF ~~ THEN REPLY #31137 /* ~Continue d'écouter.~ */ GOTO 75
  IF ~~ THEN REPLY #31138 /* ~Essaie de l'interrompre.~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #30782 /* ~"Et enfin : Selon la croyance, la voir rend fou."~ */
  IF ~~ THEN REPLY #31139 /* ~"Elle a usurpé le contrôle de Sigil à une Puissance ? Comment tu sais ça ?"~ */ GOTO 76
  IF ~~ THEN REPLY #31140 /* ~"Les gens deviennent fous en la voyant ?"~ */ GOTO 77
  IF ~~ THEN REPLY #31141 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31142 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31143 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #30783 /* ~"Ce sont les croyances de mon ordre."~ */
  IF ~~ THEN REPLY #31144 /* ~"Tu as dit qu'en la voyant, les gens devenaient fous ?"~ */ GOTO 77
  IF ~~ THEN REPLY #31145 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31146 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31147 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1 76.0
  SAY #30784 /* ~"Oui." Il y réfléchit pendant un instant. "Mais je dois avouer que je ne l'ai jamais vue, vous comprenez."~ */
  IF ~~ THEN REPLY #31148 /* ~"Alors, comment tu sais qu'elle a créé Sigil ?"~ */ GOTO 76
  IF ~~ THEN REPLY #31149 /* ~"J'ai d'autres questions sur Sigil…"~ */ GOTO 43
  IF ~~ THEN REPLY #31150 /* ~"Je peux te demander autre chose…"~ */ GOTO 16
  IF ~~ THEN REPLY #31151 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 16.7 83.1
  SAY #30785 /* ~"Ravel… *si* elle a vraiment existé, et il n'y a pas grand-chose qui le prouve… était une guenaude noire, une habitante de la Gaste Grise, l'un des Plans Inférieurs, souvent considéré comme le pire de tous…"~ */
  IF ~~ THEN REPLY #31152 /* ~Continue d'écouter.~ */ GOTO 79
  IF ~~ THEN REPLY #31153 /* ~Essaie de l'interrompre.~ */ GOTO 79
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31154 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 98
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.1 98.0
  SAY #30786 /* ~Il continue : "Selon la légende, Ravel a été enfermée dans les dédales il y a bien des siècles. On la disait maîtresse de nombreuses magies, et apparemment sa présence sur Sigil représentait une menace pour la Dame. Je crains de ne savoir que peu de choses à son sujet."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31155 /* ~"Mais alors, tu peux faire des recherches sur elle ?"~ */ GOTO 84
  IF ~~ THEN REPLY #31156 /* ~"Enfermée dans les dédales ?"~ */ GOTO 80
  IF ~~ THEN REPLY #31157 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31158 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.1 87.0
  SAY #30787 /* ~"Les dédales ! Ce sont des créations de la Dame… tu vois, elle prend une petite partie de Sigil, la copie, puis utilise un portail pour placer la copie dans l'Éthéré Profond. Une fois là-bas, cette partie de Sigil devient un demi-plan, un dédale sans fin, tournant et tournoyant sans fin sur lui-même…"~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31159 /* ~"Mais alors, tu peux faire des recherches sur elle ?"~ */ GOTO 84
  IF ~~ THEN REPLY #31160 /* ~Continue d'écouter.~ */ GOTO 81
  IF ~~ THEN REPLY #31161 /* ~Essaie de l'interrompre.~ */ GOTO 81
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31162 /* ~Fouille ses poches pendant qu'il parle.~ */ GOTO 99
END

IF ~~ THEN BEGIN 81 // from: 80.1 80.2 99.0
  SAY #30788 /* ~Il continue : "La Dame utilise ces dédales pour emprisonner quiconque menace son pouvoir. Une fois qu'elle a décidé de vous emprisonner, pas moyen de leur échapper. On dit qu'il y a un moyen de sortir de chaque dédale, mais que la tâche est extrêmement difficile."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31163 /* ~"Mais alors, tu peux faire des recherches sur elle ?"~ */ GOTO 84
  IF ~~ THEN REPLY #31164 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31165 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 16.8
  SAY #30789 /* ~"La guerre de longue date entre les chaotiques tanar'ris et les loyaux baatezus. C'est un combat d'idéologies qui a fait rage depuis que les chemins des deux races se sont croisés dans les Plans Inférieurs, et le multivers en souffre depuis lors. J'ai bien peur que ma connaissance de la Guerre Sanglante soit quelque peu partielle, car il y a eu de nombreux affrontements au cours des millénaires."~ */
  IF ~~ THEN REPLY #31166 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31167 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 16.3 84.0
  SAY #30790 /* ~"Je peux essayer, monsieur… que voulez-vous savoir ?"~ */
  IF ~  PartyHasItem("P_JRNL")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #31168 /* ~Ouvre le dodécaèdre à une page 'écrite' et demande-lui s'il peut l'étudier.~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ GOTO 84
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("CW_Research_Ravel","AR0600",0)
~ THEN REPLY #31169 /* ~"Je voudrais en savoir plus sur une guenaude noire dénommée Ravel Puits-de-Rébus."~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",1)
~ GOTO 78
  IF ~  Global("CW_Research_Incarnations","AR0600",0)
~ THEN REPLY #31170 /* ~"Je voudrais en savoir plus sur toutes les personnes décédées qui correspondent à ma description."~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",1)
~ GOTO 85
  IF ~~ THEN REPLY #31171 /* ~"En fait, je voudrais te demander autre chose."~ */ GOTO 16
  IF ~~ THEN REPLY #31172 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 31.0 79.0 80.0 81.0 83.0 85.0
  SAY #30791 /* ~"Oui, je me renseignerai. Je devrais avoir ces informations dans moins d'une journée."~ */
  IF ~~ THEN REPLY #31173 /* ~"Merci. Je peux te demander d'étudier autre chose ?"~ */ GOTO 83
  IF ~~ THEN REPLY #31174 /* ~"Merci. J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31175 /* ~"C'est génial. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 83.2
  SAY #30792 /* ~Il paraît perplexe. "Une… étrange requête. Ces hommes devraient être des notables pour que je trouve quelque fait important. Recherchez-vous des renseignements sur l'un de vos ancêtres… ?"~ */
  IF ~~ THEN REPLY #31176 /* ~"Quelque chose comme ça. Tu peux vérifier ?"~ */ GOTO 84
END

IF ~~ THEN BEGIN 86 // from: 16.0
  SAY #30793 /* ~"Seulement que c'est une langue morte… Il y avait un professeur de langues à la Salle des Fêtes, Finam, que tu aurais sans doute intérêt à consulter. Il connaît peut-être cette langue, s'il est toujours là-bas."~ */
  IF ~~ THEN REPLY #31177 /* ~"Je te remercie. J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31178 /* ~"C'est génial. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 16.1
  SAY #30794 /* ~"Oui, on dit qu'elle a disparu de la Salle des Fêtes une nuit, au grand soulagement de tous. On dit aussi qu'une part d'elle-même est nécessaire pour ouvrir le portail menant à son dédale, mais personne ne sait ni ne désire rechercher ce dont il s'agit. Peut-être pourriez-vous questionner les gens à l'intérieur de la Salle des Fêtes à son sujet."~ */
  IF ~~ THEN REPLY #31179 /* ~"Son 'dédale' ?"~ */ GOTO 80
  IF ~~ THEN REPLY #31180 /* ~"Intéressant. J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31181 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 16.2
  SAY #30795 /* ~"Eh bien, oui, en fait. Plutôt curieux ! J'ai trouvé trace de deux hommes correspondant à votre description… tous deux de l'espèce la plus méprisable, j'ai bien peur. Le premier était fou à lier… un fou dangereux, un mercenaire assoiffé de sang, un duelliste ayant tué tous ceux qui l'ont défié."~ */
  IF ~~ THEN REPLY #31182 /* ~"Continue…"~ */ GOTO 100
END

IF ~~ THEN BEGIN 89 // from: 44.2
  SAY #30796 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31183 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 45
END

IF ~~ THEN BEGIN 90 // from: 46.2
  SAY #30797 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31184 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 48.2
  SAY #30798 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31185 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 49
END

IF ~~ THEN BEGIN 92 // from: 51.2
  SAY #30799 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31186 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 52
END

IF ~~ THEN BEGIN 93 // from: 53.2
  SAY #30800 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31187 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 54
END

IF ~~ THEN BEGIN 94 // from: 56.2
  SAY #30801 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31188 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 57
END

IF ~~ THEN BEGIN 95 // from: 58.2
  SAY #30802 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31189 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 59
END

IF ~~ THEN BEGIN 96 // from: 62.2
  SAY #30803 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31190 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 63
END

IF ~~ THEN BEGIN 97 // from: 72.2
  SAY #30804 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31191 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 73
END

IF ~~ THEN BEGIN 98 // from: 78.2
  SAY #30805 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31192 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 79
END

IF ~~ THEN BEGIN 99 // from: 80.3
  SAY #30806 /* ~Tu glisses la main dans la bourse de l'homme et en retire quelques pièces.~ */
  IF ~~ THEN REPLY #31193 /* ~Empoche les pièces et continue à écouter.~ */ DO ~GiveGoldForce(4)
~ GOTO 81
END

IF ~~ THEN BEGIN 100 // from: 88.0
  SAY #30807 /* ~Il acquiesce. "Il a été finalement capturé - et par la suite exécuté - par deux douzaines de Rectifieurs, après s'être déchaîné dans un bar du Bas Quartier. Ses restes ont été répandus au-delà des murs de Sigil. Tout cela a eu lieu il y a plus de trois siècles."~ */
  IF ~~ THEN REPLY #31194 /* ~"Et l'autre homme ?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #30808 /* ~"On en sait peu sur lui. Mes recherches indiquent qu'il était un Sensat qui, peut avant sa mort, a détruit les dizaines de pierre sensorielles dans lesquelles il avait enregistré ses expériences vécues. Cela a apparemment constitué une grande perte pour cette faction, car cet homme - agressif envers quiconque l'approchait, et quelque peu misanthrope - était censé avoir réuni une grande collection de merveilleuses sensations."~ */
  IF ~~ THEN REPLY #31195 /* ~"Comment il est mort ?"~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #30809 /* ~Il hausse les épaules. "Je ne sais pas. Les archives ne le mentionnent pas."~ */
  IF ~~ THEN REPLY #31196 /* ~"Je te remercie. J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31197 /* ~"C'est génial. Au revoir."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,1)
~ THEN BEGIN 103 // from:
  SAY #30810 /* ~Pensée Pondérée sourit à ton approche. "Ah, nous nous rencontrons à nouveau ! Vous savez, je réfléchissais…" Il commence à parler longuement des politiques et procédures dans les tribunaux de Sigil et comment les formalités pourraient être rendues plus efficaces.~ */
  IF ~~ THEN REPLY #31198 /* ~"Attends… J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31199 /* ~"Oui… très intéressant… mais je dois partir. Au revoir."~ */ EXIT
END

IF WEIGHT #6 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,2)
~ THEN BEGIN 104 // from:
  SAY #30811 /* ~Pensée Pondérée sourit à ton approche. "Ah, nous nous rencontrons à nouveau ! Vous savez je réfléchissais…" Il commence à parler longuement de la structure du complexe administratif dans lequel il travaille, et comment le fonctionnement des procédures pourrait être facilité par l'utilisation des horaires aménagés.~ */
  IF ~~ THEN REPLY #31200 /* ~"Attends… J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31201 /* ~"Oui… très intéressant… mais je dois partir. Au revoir."~ */ EXIT
END

IF WEIGHT #7 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,3)
~ THEN BEGIN 105 // from:
  SAY #30812 /* ~Pensée Pondérée sourit à ton approche. "Ah, nous nous rencontrons à nouveau ! Vous savez, je réfléchissais…" Il commence à commenter longuement les rejets de gaz toxiques divers dans l'atmosphère par la Grande Fonderie et les effets négatifs qu'ils ont sur la santé.~ */
  IF ~~ THEN REPLY #31202 /* ~"Attends… J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31203 /* ~"Oui… très intéressant… mais je dois partir. Au revoir."~ */ EXIT
END

IF WEIGHT #8 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,4)
~ THEN BEGIN 106 // from:
  SAY #30813 /* ~Pensée Pondérée sourit à ton approche. "Ah, nous nous rencontrons à nouveau ! Vous savez, je réfléchissais…" Il commence à parler longuement de la manière dont la Fraternité de l'Ordre, l'Harmonium et les Rectifieurs travaillent ensemble pour promouvoir la paix et la stabilité sur Sigil.~ */
  IF ~~ THEN REPLY #31204 /* ~"Attends… J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31205 /* ~"Oui… très intéressant… mais je dois partir. Au revoir."~ */ EXIT
END

IF WEIGHT #9 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,5)
~ THEN BEGIN 107 // from:
  SAY #30814 /* ~Pensée Pondérée sourit à ton approche. "Ah, nous nous rencontrons à nouveau ! Vous savez, je réfléchissais…" Il commence à parler longuement des différentes modes vestimentaires et de leur croissance et déclin au travers des décennies qu'il a vécues sur Sigil.~ */
  IF ~~ THEN REPLY #31206 /* ~"Attends… J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31207 /* ~"Oui… très intéressant… mais je dois partir. Au revoir."~ */ EXIT
END

IF WEIGHT #10 ~  GlobalGT("Able","GLOBAL",0)
~ THEN BEGIN 108 // from:
  SAY #30815 /* ~Pensée Pondérée sourit à ton approche. "Ah, nous nous rencontrons à nouveau ! Vous savez, je réfléchissais…" Il commence à parler longuement de son travail de consultant en recherche dans la Salle des Enregistrements, te donnant mot après mot le contenu des diverses conversations qu'il a eues avec ses collègues durant la semaine.~ */
  IF ~~ THEN REPLY #31208 /* ~"Attends… J'ai des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #31209 /* ~"Oui…très intéressant… mais je dois partir. Au revoir."~ */ EXIT
END
