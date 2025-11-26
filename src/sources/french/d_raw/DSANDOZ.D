// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSANDOZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSANDOZ~

IF ~~ THEN BEGIN 0 // from:
  SAY #46769 /* ~Une voix assourdie te parvient de l'autre côté de la porte : "Allez-vous-en !"~ */
  IF ~~ THEN REPLY #46770 /* ~"Tu es Sandoz ?"~ */ GOTO 2
  IF ~~ THEN REPLY #46915 /* ~"Très bien, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46916 /* ~La voix de Sandoz est assourdie par l'épaisseur de la porte. "Qu'est-ce que tu me veux ?" demande-t-il d'un ton où percent le désespoir et la solitude.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46917 /* ~"Je suis venu te parler, Sandoz."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46918 /* ~"Je suis venu te répéter ce que ta fille m'a dit."~ */ GOTO 4
  IF ~~ THEN REPLY #46919 /* ~"Je suis venu te dire que tu as tout intérêt à en finir au plus vite."~ */ GOTO 6
  IF ~~ THEN REPLY #46920 /* ~"Ils m'ont dit de venir discuter avec toi. J'imagine qu'ils ne veulent pas que tu te suicides."~ */ GOTO 8
  IF ~~ THEN REPLY #46921 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #46922 /* ~"Et où devrais-je être ?" tranche la voix. "Je suis ici dans mes quartiers, au sein de ma faction. (Un petit rire amer.) C'est ici que je mourrai."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46923 /* ~"Parle-moi de toi, Sandoz."~ */ GOTO 3
  IF ~  Global("G_Test3","GLOBAL",4)
~ THEN REPLY #46924 /* ~"Tu veux savoir ce que ta fille a dit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #46925 /* ~"Dans ce cas, bonne chance. Tout le monde s'en fout, tu sais."~ */ GOTO 6
  IF ~~ THEN REPLY #46926 /* ~"Ils m'ont dit de venir discuter avec toi. J'imagine qu'ils ne veulent pas que tu te suicides."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #46927 /* ~"Tu veux parler, c'est ça ? Et si tu m'écoutais, plutôt ?" Sandoz s'interrompt un instant, puis reprend de plus belle. "À quoi ça sert ; voilà ce que je voudrais savoir. Pourquoi agissons-nous de la sorte, qu'est-ce qui nous motive ? Hein ?"~ */
  IF ~~ THEN REPLY #46928 /* ~Attends qu'il poursuive.~ */ GOTO 15
  IF ~~ THEN REPLY #46929 /* ~"Moi, je dirais que c'est la vie qui nous pousse à aller de l'avant."~ */ GOTO 11
  IF ~~ THEN REPLY #46930 /* ~"Je ne sais pas. Quoi ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #46931 /* ~Il y a une longue pause, puis la voix revient, moins assurée que précédemment : "Tu as parlé à ma fille ?"~ */
  IF ~~ THEN REPLY #46932 /* ~"Oui. Elle a dit que la vie tout entière était une épreuve et qu'on ne pouvait se rendre directement à son terme. Car la réponse se trouve ailleurs. Seuls les Hommes-Poussière et la Garde Fatale croient au pourrissement de toute chose, et tu n'as jamais eu que mépris pour eux. Ne l'oublie pas."~ */ GOTO 5
  IF ~~ THEN REPLY #46933 /* ~"Oui, et elle a dit que tu pouvais te suicider si ça te chante."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46934 /* ~Sandoz part d'un rire sans joie. "Elle a dit ça, hein ? Attends, accorde-moi une minute…"~ */
  IF ~~ THEN REPLY #46935 /* ~"Prends tout le temps dont tu as besoin."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 4.1 9.2 10.4 13.1 15.1
  SAY #46936 /* ~Tu entends un sanglot étouffé, un juron et une pause. Puis viennent une chaise que l'on racle sur le sol, une série de mouvements soudains et un net craquement d'os brisés.~ */
  IF ~~ THEN REPLY #46937 /* ~"C'est décidé, alors ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
SetGlobal("G_Test3","GLOBAL",7)
MoveToPoint([337.740])
PlaySoundNotRanged("SPE_11")
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0 14.0
  SAY #46938 /* ~La voix a désormais l'air un peu plus assurée. "Va dire à Keldor que tu as réussi à me convaincre. Je finirai par aller le voir, mais tu as fait ton travail. Va, maintenant."~ */
  IF ~~ THEN REPLY #46939 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("G_Test3","GLOBAL",6)
SetDoorLocked("ar0511d1",FALSE)
OpenDoor("ar0511d1")
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 2.3
  SAY #46940 /* ~"Je vois… et ils ont eu l'idée d'envoyer un étranger me raisonner, hein ? Ha !" La voix devient un murmure complice. "Est-ce qu'ils t'ont dit que tu pourrais rejoindre la faction si tu venais me parler ? Peut-être ont-ils pensé que ça te motiverait davantage ?"~ */
  IF ~~ THEN REPLY #46941 /* ~Attends qu'il poursuive.~ */ GOTO 9
  IF ~~ THEN REPLY #46942 /* ~"Je voulais juste voir si je pouvais t'aider."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46943 /* ~"Eh bien, dis quelque chose ? Serais-tu soudain devenu sourd ? Ha ! Si tu avais contemplé ne serait-ce que la moitié des choses que j'ai vues… ne serait-ce que la moitié…"~ */
  IF ~~ THEN REPLY #46944 /* ~"Qu'est-ce que tu as vu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #46945 /* ~"Tu n'as pas la moindre idée de ce que moi j'ai pu voir, Sandoz. Et pourtant, je ne t'ai pas dit que j'avais l'intention de me suicider, si ? Reprends-toi, mon vieux, et deviens un peu adulte."~ */ GOTO 13
  IF ~~ THEN REPLY #46946 /* ~"Dans ce cas, il vaut probablement mieux que tu fasses le grand saut."~ */ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46947 /* ~"J'ai assisté à des horreurs inimaginables. J'ai vu un dieu brisé, prisonnier des fiélons qui le torturaient. J'ai observé un niveau des Abysses se condenser en un individu unique. J'ai vu toutes les lois de la nature perverties, et toutes les vérités de l'humanité décrétées fausses. Plus rien n'a de sens pour moi, et je suis incapable d'en supporter davantage. Quel est le sens de tout ça, je te le demande : quel est le sens ?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46948 /* ~"C'est la base même de la philosophie des Hommes-Dieux, Sandoz. Souviens-toi que la vie est une succession d'épreuves, et que celle qui t'est actuellement proposée a trait à ta compréhension des choses ou à la façon dont tu y réagis. Repense à tout ce que tu as fait, et demande-toi ce que ça peut t'enseigner."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #46949 /* ~"C'est la base même de la philosophie des Hommes-Dieux, Sandoz. Souviens-toi que la vie est une succession d'épreuves, et que celle qui t'est actuellement proposée a trait à ta compréhension des choses ou à la façon dont tu y réagis. Repense à tout ce que tu as fait, et demande-toi ce que ça peut t'enseigner."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #46950 /* ~"C'est la base même de la philosophie des Hommes-Dieux, Sandoz. Souviens-toi que la vie est une succession d'épreuves, et que celle qui t'est actuellement proposée a trait à ta compréhension des choses ou à la façon dont tu y réagis. Repense à tout ce que tu as fait, et demande-toi ce que ça peut t'enseigner."~ */ GOTO 12
  IF ~~ THEN REPLY #46951 /* ~"Je ne sais pas quel est le but de l'existence, sinon la vie elle-même."~ */ GOTO 11
  IF ~~ THEN REPLY #46952 /* ~"Il n'y a aucun but."~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 3.1 8.1 10.3
  SAY #46953 /* ~Tu l'entends exprimer son mépris en crachant par terre. "Va-t'en et ne reviens que quand tu auras un peu de jugeote ou quand quelqu'un t'aura expliqué." Il refuse de répondre à tes questions suivantes.~ */
  IF ~~ THEN REPLY #46954 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 10.1 10.2 16.0 17.1
  SAY #46956 /* ~Il part d'un rire bref. "Au moins, ils t'ont donné de bonnes leçons. Il faut que j'y réfléchisse. J'espère que tu n'es pas pressé.~ */
  IF ~~ THEN REPLY #46957 /* ~"Tu as tout le temps que tu veux pour y penser, Sandoz."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #46958 /* ~L'homme qui se trouve derrière la porte inspire brusquement puis laisse fuser un petit ricanement sans joie. "Le tact n'est pas ta spécialité, hein ? Et si je te disais que j'ai déjà passé le nœud coulant autour de mon cou ?"~ */
  IF ~~ THEN REPLY #46959 /* ~"Je te dirais bien d'arrêter de te comporter de manière puérile et de faire enfin face à la réalité. Te suicider ne servira à rien, sinon à démontrer que tu as échoué."~ */ GOTO 14
  IF ~~ THEN REPLY #46960 /* ~"Allez, je suis sûr que tu n'en es pas capable. Franchement, si tu es assez lâche pour avoir envie de te tuer, ça m'étonnerait que tu aies suffisamment de cran pour mettre ton plan à exécution."~ */ GOTO 6
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46961 /* ~"Tu… d'accord, je… laisse-moi réfléchir un instant…"~ */
  IF ~~ THEN REPLY #46962 /* ~"Prends tout le temps dont tu as besoin."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
END

IF ~~ THEN BEGIN 15 // from: 3.0 3.2
  SAY #46963 /* ~"L'orgueil ! L'orgueil et l'ego ! Nous nous répétons sans cesse que nous servons à quelque chose et que notre présence a un sens… mais, au bout du compte, il n'y a que les ténèbres. Je les ai vues de mes yeux vues et personne ne peut nier leur existence. Et pourtant, notre orgueil nous pousse à essayer, encore et encore. Mais où est le sens de tout ça ?"~ */
  IF ~~ THEN REPLY #46964 /* ~"Tu ne t'es jamais demandé si tu étais devenu Homme-Dieu pour une raison bien précise ?"~ */ GOTO 16
  IF ~~ THEN REPLY #46965 /* ~"Maintenant que tu m'y fais penser, c'est vrai que tu n'as pas tort…"~ */ GOTO 6
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #46966 /* ~"Qu'est-ce que tu veux dire ?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46967 /* ~"Autrefois, tu t'étais bien trouvé une raison de vivre. Tu pensais que nous étions tous mis à l'épreuve et qu'il nous fallait vaincre les ténèbres de l'au-delà. Ne me dis pas que tu es trop faible pour y croire encore."~ */ GOTO 12
  IF ~~ THEN REPLY #46968 /* ~"Pourquoi est-ce que tu as rejoint la faction des Hommes-Dieux ?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #46969 /* ~"Parce que je croyais que tout ça avait un sens, mais je me trompais. Il n'y a aucun sens. L'amour, la famille, la richesse, la réussite… tout ça, ça ne veut rien dire."~ */
  IF ~~ THEN REPLY #46970 /* ~"Tout ? Est-ce qu'il est possible de te démontrer que tu te trompes ?"~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #46971 /* ~"Sauf que tout continue. Tu es devenu Homme-Dieu car tu ne crois pas qu'une chose aussi magnifique que la vie ait pu apparaître par hasard. Surmonte cette épreuve, Sandoz, et ta force n'en deviendra que plus grande."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #46972 /* ~"Trouve quelqu'un qui saura me convaincre du contraire. Ce n'est manifestement pas ton cas, alors va chercher quelqu'un qui en soit capable." Il s'éloigne de la porte et toute conversation devient impossible.~ */
  IF ~~ THEN REPLY #46973 /* ~"Je vais revenir."~ */ EXIT
END

IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #46974 /* ~"Je te dois la vie, étranger, et je ne l'oublierai pas. Mais il faut d'abord que je réfléchisse. J'espère que tu ne m'en voudras pas de cesser de te parler."~ */
  IF ~~ THEN REPLY #46975 /* ~"D'accord. Au revoir."~ */ EXIT
END
