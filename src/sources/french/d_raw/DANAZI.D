// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAZI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAZI~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #3024 /* ~Tu aperçois une femme githzeraï à l'air maladif. Elle est voûtée et bossue, et on voit tout de suite que la toux chronique dont elle souffre est douloureuse. Elle tient devant sa bouche un mouchoir maculé de sang et de glaire. Elle siffle méchamment en t'apercevant.~ */
  IF ~~ THEN REPLY #3025 /* ~"Bonjour."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42426 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42427 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42428 /* ~"Je n'ai aucune question à te poser. Au revoir."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #42429 /* ~An'azi te regarde en clignant des paupières, ses yeux chassieux emplis de larmes, et elle adresse quelques mots à Dak'kon en sifflant.~ */
  IF ~~ THEN REPLY #42430 /* ~"Qu'est-ce qu'elle a dit ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ EXTERN ~DDAKKON~ 132
  IF ~~ THEN REPLY #42431 /* ~"Tue-la, Dak'kon. Fais-la souffrir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DDAKKON~ 126
  IF ~~ THEN REPLY #42432 /* ~"Dak'kon, mets fin à ses souffrances. Apparemment, elle souffre énormément et il ne lui reste plus longtemps à vivre."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DDAKKON~ 130
  IF ~~ THEN REPLY #42433 /* ~"Allons-nous-en d'ici, Dak'kon. Dis-lui au revoir."~ */ EXTERN ~DDAKKON~ 128
  IF ~~ THEN REPLY #42434 /* ~Mets fin à ses souffrances.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #42435 /* ~Poignarde-la juste pour le plaisir.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_2","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 0.3
  SAY #42436 /* ~Elle te regarde fixement et marmonne quelques mots à Dak'kon.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 124
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 3 // from:
  SAY #42467 /* ~Tu vois une femme githzeraï malade. Elle est voûtée et courbée et sa toux constante la fait manifestement souffrir - elle tient sur son visage un mouchoir imbibé de sang et de crachats. Elle remarque ta présence et siffle.~ */
  IF ~~ THEN REPLY #42468 /* ~"Bonjour."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42469 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42470 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42471 /* ~"Tu veux te faire soigner ? Je peux faire quelque chose pour toi ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #42472 /* ~"Qu'est-ce qui ne va pas chez toi ?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #42473 /* ~"Je n'ai aucune question à te poser. Au revoir."~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 4 // from:
  SAY #42474 /* ~La vieille femme githzeraï semble, si c'est possible, encore plus malade qu'auparavant. Elle tente de te dire quelque chose, mais elle est interrompue par une quinte de toux qui lui fait cracher du sang.~ */
  IF ~~ THEN REPLY #42475 /* ~"Tu veux te faire soigner ? Je peux faire quelque chose pour toi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #42476 /* ~"Qu'est-ce qui ne va pas chez toi ?"~ */ GOTO 9
  IF ~~ THEN REPLY #42477 /* ~"Tu pourrais répondre à quelques questions ?"~ */ GOTO 7
  IF ~~ THEN REPLY #42478 /* ~"Au revoir, vieille femme."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 3.2 3.5
  SAY #42479 /* ~Elle tousse encore et encore, emplissant son mouchoir trempé de crachats. Elle te regarde méchamment.~ */
  IF ~~ THEN REPLY #42480 /* ~"Tu veux te faire soigner ? Je peux faire quelque chose pour toi ?"~ */ GOTO 6
  IF ~~ THEN REPLY #42481 /* ~"Qu'est-ce qui ne va pas chez toi ?"~ */ GOTO 9
  IF ~~ THEN REPLY #42482 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3 4.0 5.0
  SAY #42483 /* ~Elle tousse. Elle te fait signe de partir. Elle se recroqueville dans ses guenilles, montrant clairement qu'elle veut qu'on la laisse mourir en paix.~ */
  IF ~~ THEN REPLY #42484 /* ~"Tu souffres ? Est-ce que je peux faire *quelque chose* pour toi ?"~ */ GOTO 7
  IF ~~ THEN REPLY #42485 /* ~Donne-lui quelques pièces.~ */ GOTO 8
  IF ~~ THEN REPLY #42486 /* ~"Écoute, réponds juste à quelques questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #42487 /* ~"Bon, très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.2
  SAY #42488 /* ~En toussant, elle prononce quelques mots dans une langue que tu ne comprends pas et son agonie redouble de violence alors qu'une nouvelle quinte de toux tord son corps de douleur.~ */
  IF ~~ THEN REPLY #42489 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #42490 /* ~Elle prend les pièces et les jette dans la rue. Elle t'adresse un nouveau sifflement affaibli.~ */
  IF ~~ THEN REPLY #42491 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.1 5.1
  SAY #42492 /* ~Avec peine, elle fait quelques signes au-dessus d'elle. Elle désigne la Grande Fonderie, les ordures, le tas de charbon, puis sa poitrine. Comme pour accentuer ses paroles, une nouvelle quinte de toux vient la tordre de douleur et couvrir ses lèvres de sang.~ */
  IF ~~ THEN REPLY #42493 /* ~"C'est la fumée ?"~ */ GOTO 10
  IF ~~ THEN REPLY #42494 /* ~"Est-ce que je peux faire quelque chose pour t'aider à te soigner ?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42495 /* ~Elle acquiesce et recommence à tousser.~ */
  IF ~~ THEN REPLY #42496 /* ~"Est-ce que je peux faire quelque chose pour t'aider à te soigner ?"~ */ GOTO 11
  IF ~~ THEN REPLY #42497 /* ~"Alors, je ne peux rien faire pour toi. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #42498 /* ~Ses yeux s'assombrissent alors qu'elle désigne ton arme avant de se montrer elle-même du doigt.~ */
  IF ~~ THEN REPLY #42499 /* ~"Tu veux que je te tue ?"~ */ GOTO 12
  IF ~~ THEN REPLY #42500 /* ~"Je ne te ferai pas ça. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #42501 /* ~Elle secoue la tête aussi énergiquement qu'elle le peut, mais cet effort se solde par une violente quinte de toux. Elle montre fermement ton arme du doigt. Ses yeux jaunis ne laissent paraître aucune peur.~ */
  IF ~~ THEN REPLY #42502 /* ~"Bon, très bien. Je te souhaite beaucoup de chance dans ta prochaine vie."~ */ GOTO 14
  IF ~~ THEN REPLY #42503 /* ~"Je ne te ferai pas ça."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 12.1 14.1
  SAY #42504 /* ~Elle crache un gros morceau de mucosités teinté de sang à tes pieds alors que tu te détournes d'elle.~ */
  IF ~~ THEN REPLY #42505 /* ~Laisse-la tranquille.~ */ EXIT
  IF ~~ THEN REPLY #42506 /* ~Tue-la.~ */ DO ~AddexperienceParty(4000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.4 1.5 12.0
  SAY #42507 /* ~Elle te fait face courageusement, sans peur, attendant le coup fatal.~ */
  IF ~~ THEN REPLY #42508 /* ~Mets fin à ses souffrances.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #42509 /* ~"Je ne peux pas te faire ça."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42510 /* ~D'un coup rapide, tu la tues. Son corps s'effondre sur le pavé - mais elle semble reconnaissante.~ */
  IF ~~ THEN REPLY #42511 /* ~"Au revoir, githzeraï."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill(Myself)
~ JOURNAL #67286 /* ~J'ai tué une githzeraï malade dans le courant de la journée. Elle éprouvait des difficultés à respirer l'air épais du Bas Quartier et n'avait pas peur de la mort.~ */ EXIT
END
