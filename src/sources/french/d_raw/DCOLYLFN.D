// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLYLFN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLYLFN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #18505 /* ~Ce type à l'air rusé rôde furtivement dans les détritus comme une ombre loqueteuse. Il feint de ne pas te remarquer, mais tu sens qu'il te regarde à la dérobée. Soudain, il te fait signe : "Pssst. Toi. Psssst ! Eh !"~ */
  IF ~~ THEN REPLY #18506 /* ~Avance-toi vers lui.~ */ GOTO 58
  IF ~~ THEN REPLY #18507 /* ~Ignore l'homme, continue ton chemin.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #18508 /* ~Ce type à l'air rusé rôde furtivement dans les détritus comme une ombre loqueteuse. En vous voyant toi et Morte, il vous fait signe : "Psssssst… eh ! Le crâne. Tu l'as eu où ce crâne, hein ? C'est mon crâne ! Rends-le moi."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #18509 /* ~Ce type à l'air rusé rôde furtivement dans les détritus comme une ombre loqueteuse. En voyant Annah, ses yeux s'agrandissent, il salive entre ses dents jaunies, se faisant à l'idée d'un bon repas. "Psssst…eh ! Des sous-sous pour la p'tite ? Mignonne, mignonne." Il lèche ses lèvres fissurées, croûteuses.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 108
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #18510 /* ~"Eh. Qu'est-ce qu'tu veux ?!"~ */
  IF ~~ THEN REPLY #18511 /* ~"Je cherche des informations…"~ */ GOTO 23
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 4 // from:
  SAY #18512 /* ~"Eh, comment va mon crâne ?" Il rit d'un rire poussif, horrible.~ */
  IF ~~ THEN REPLY #18513 /* ~"Je cherche des informations…"~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18514 /* ~"Voleur ! Espèce de vautour, de mouette galeuse, qui vole, ramasse les choses des autres, qui les prend ! Rends-moi mon crâne ! C'est le mien !"~ */
  IF ~~ THEN REPLY #18515 /* ~"Ce n'est pas ton crâne."~ */ GOTO 6
  IF ~~ THEN REPLY #18516 /* ~Vérité : "Vas-y, prends le crâne."~ */ GOTO 9
  IF ~~ THEN REPLY #18517 /* ~Attaque-le au moment où il baisse sa garde : "Vas-y, prends le crâne."~ */ GOTO 10
  IF ~~ THEN REPLY #18518 /* ~"Tu peux prouver que c'est bien ton crâne ?"~ */ GOTO 12
  IF ~~ THEN REPLY #18519 /* ~Vérité : "Si tu peux me prouver que c'est bien ton crâne, je te le donne. Ce n'est que justice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18520 /* ~"Je t'achète le crâne. Ça te va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18521 /* ~"Qui es-tu ?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18522 /* ~"Oublie que tu l'as vu. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18523 /* ~"Oublie que tu l'as vu. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0 13.0 16.6 19.2
  SAY #18524 /* ~"Tu m'traites de *menteur*, hein ? C'est *mon* crâne ! Le mien !" Il marmonne un moment, ses yeux te dardant d'éclairs. "Toi le voleur, cracheur de mensonges… je vais t'étriper."~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18525 /* ~"Ne me touche pas ou je te tue sans même te laisser le temps de le regretter."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18526 /* ~"À ta place, je ne ferais pas ça."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18527 /* ~"Vas-y, essaie un peu. On verra ce qui arrivera."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18528 /* ~"Oublie que tu l'as vu. Au revoir."~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18529 /* ~"Oublie que tu l'as vu. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18530 /* ~"Ne me touche pas ou je te tue sans même te laisser le temps de le regretter."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18531 /* ~"À ta place, je ne ferais pas ça."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18532 /* ~"Vas-y, essaie un peu. On verra ce qui arrivera."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18533 /* ~"Oublie que tu l'as vu. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18534 /* ~"Oublie que tu l'as vu. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #18546 /* ~L'homme te regarde, les yeux plissés. Il n'a pas l'air trop sûr de ses chances - il marmonne un peu, mais ne fait rien. "Mon crâne. T'es un voleur. Un voleur. Tu voles…"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18547 /* ~"Disparais, bige."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18548 /* ~"Disparais, bige."~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~~ THEN REPLY #18549 /* ~Vérité : "Alors, vas-y. Prends le crâne."~ */ GOTO 9
  IF ~~ THEN REPLY #18550 /* ~Attaque-le au moment où il baisse sa garde : "Alors, vas-y. Prends le crâne."~ */ GOTO 10
  IF ~~ THEN REPLY #18551 /* ~"Tu peux prouver que c'est bien ton crâne ?"~ */ GOTO 12
  IF ~~ THEN REPLY #18552 /* ~Vérité : "Si tu peux me prouver que c'est bien ton crâne, je te le donne. Ce n'est que justice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18553 /* ~"Je t'achète le crâne. Ça te va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18554 /* ~"Qui es-tu ?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18555 /* ~"Oublie que tu l'as vu. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18556 /* ~"Oublie que tu l'as vu. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.5 6.6 6.7
  SAY #18557 /* ~L'homme te regarde, les yeux plissés. Soudain, il attaque !~ */
  IF ~~ THEN REPLY #18558 /* ~Réponds à son attaque.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18559 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.2 12.1 13.1 19.0
  SAY #18560 /* ~Il ricane sèchement et sourit. Comme il essaie d'attraper Morte, un *craquement* se produit et l'homme retire sa main. Il se met à hurler : "Aïïïïïïeee ! Aïïïïïe !!! Je vais te *tuer* ! Te *tuer* !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.3 12.2 13.2 19.1
  SAY #18561 /* ~Il ricane sèchement et sourit. Il essaie d'attraper Morte et avant que tu puisses bouger, un *craquement* se produit et l'homme retire sa main. Il se met à hurler. "Aïïïïïïeee ! Aïïïïïe !!! Je vais te *tuer* ! Te *tuer* !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18562 /* ~L'homme, en se mordant la lèvre de douleur, te regarde. Soudain, il attaque !~ */
  IF ~~ THEN REPLY #18563 /* ~Réponds à son attaque.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18564 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3 5.4 7.4 7.5 13.3 13.4
  SAY #18565 /* ~Il te regarde un moment, comme si tu étais azimuté. "C'est le mien, parle de preuves, y sait rien du tout ! Rends-moi mon crâne, tout de suite !"~ */
  IF ~~ THEN REPLY #18566 /* ~"Ce n'est pas ton crâne."~ */ GOTO 6
  IF ~~ THEN REPLY #18567 /* ~Vérité : "Alors, vas-y. Prends le crâne."~ */ GOTO 9
  IF ~~ THEN REPLY #18568 /* ~Attaque-le au moment où il baisse sa garde : "Alors, vas-y. Prends le crâne."~ */ GOTO 10
  IF ~~ THEN REPLY #18569 /* ~"Je t'achète le crâne. Ça te va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18570 /* ~"Qui es-tu ?"~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18571 /* ~"Oublie que tu l'as vu. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18572 /* ~"Oublie que tu l'as vu. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.6 7.7 12.4
  SAY #18573 /* ~"C'est mon crâne, c'est l'mien, eh ! Donne-le moi, j'oublierai que tu l'as volé." Il marmonne, son regard te transperce.~ */
  IF ~~ THEN REPLY #18574 /* ~"Ce n'est pas ton crâne."~ */ GOTO 6
  IF ~~ THEN REPLY #18575 /* ~Vérité : "Vas-y, prends le crâne."~ */ GOTO 9
  IF ~~ THEN REPLY #18576 /* ~Attaque-le au moment où il baisse sa garde : "Vas-y, prends le crâne."~ */ GOTO 10
  IF ~~ THEN REPLY #18577 /* ~"Tu peux prouver que c'est bien ton crâne ?"~ */ GOTO 12
  IF ~~ THEN REPLY #18578 /* ~Vérité : "Si tu peux me prouver que c'est bien ton crâne, je te le donne. Ce n'est que justice."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18579 /* ~"Je t'achète le crâne. Ça te va ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18580 /* ~"Oublie que tu l'as vu. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18581 /* ~"Oublie que tu l'as vu. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.5 7.6 12.3 13.5
  SAY #18582 /* ~Ses yeux se ferment à moitié, ses lèvres dévoilant des dents tachées, courbées dans un ricanement tordu. "Ce crâne… y vaut *beaucoup* de jonc. T'es prêt à payer ? Il vaut beaucoup pour moi, ce crâne."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 191
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18583 /* ~L'homme siffle méchamment à Morte : "C'est comme ça qu'tu m'parles, à moi ton propriétaire ?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 192
END

IF ~~ THEN BEGIN 16 // from:
  SAY #18584 /* ~L'homme se tourne vers toi toutes dents dehors et plus en colère que jamais. "Oh, ça va coûter cher… très cher pour arranger l'affaire."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #18585 /* ~Donne-lui une pièce de cuivre.~ */ DO ~TakePartyGold(1)
~ GOTO 17
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18586 /* ~Donne-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18587 /* ~Donne-lui cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
~ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18588 /* ~Donne-lui cent pièces de cuivre.~ */ DO ~TakePartyGold(100)
~ GOTO 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18589 /* ~Donne-lui cinq cents pièces de cuivre.~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  PartyGold(0)
~ THEN REPLY #18590 /* ~"Je n'ai pas d'argent à te donner."~ */ GOTO 19
  IF ~~ THEN REPLY #18591 /* ~"Laisse tomber. C'est pas ton crâne et tu l'auras pas."~ */ GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #18592 /* ~"C'est un début… maintenant crache le reste et je m'en irai."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 193
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2 16.3 16.4
  SAY #18593 /* ~"Eh… tout est réglé entre nous." Il ricane horriblement. "Mais vole-moi encore, et…"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 194
END

IF ~~ THEN BEGIN 19 // from: 16.5
  SAY #18594 /* ~"Rends-moi le crâne alors, voleur ! Rends-le moi ! Donne-le, donne-le moi !"~ */
  IF ~~ THEN REPLY #18595 /* ~Vérité : "Très bien. Prends-le."~ */ GOTO 9
  IF ~~ THEN REPLY #18596 /* ~Attaque-le au moment où il baisse sa garde : "Très bien. Prends-le."~ */ GOTO 10
  IF ~~ THEN REPLY #18597 /* ~"Non. Tu ne l'auras pas."~ */ GOTO 6
  IF ~~ THEN REPLY #18598 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #18599 /* ~"T'inquiètes… il va y en avoir des ennuis, tu peux en être sûr. Plein d'ennuis !"~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18600 /* ~"Ne fais pas l'erreur de croire que je t'ai payé par peur ou par faiblesse… Ça risquerait de te coûter la vie."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18601 /* ~"Ne fais pas l'erreur de croire que je t'ai payé par peur ou par faiblesse… Ça risquerait de te coûter la vie."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18602 /* ~"Ne fais pas l'erreur de croire que je t'ai payé par peur ou par faiblesse… Ça risquerait de te coûter la vie."~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18603 /* ~"Ne fais pas l'erreur de croire que je t'ai payé par peur ou par faiblesse… Ça risquerait de te coûter la vie."~ */ GOTO 22
  IF ~~ THEN REPLY #18604 /* ~"Je vois. J'ai des questions…"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18605 /* ~"Ah, des 'ennuis'. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18606 /* ~"Ah, des 'ennuis'. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18607 /* ~"Hmff." Il ferme à moitié ses yeux, mais ne dit rien. Il a l'air mal à l'aise.~ */
  IF ~~ THEN REPLY #18608 /* ~"J'ai des questions…"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18609 /* ~"Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18610 /* ~"Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 20.3
  SAY #18611 /* ~"Bah ! Va branler ton râtelier ailleurs. Dégage. Sale voleur. Voleur de voleur… " Il s'éloigne.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18612 /* ~Pars.~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18613 /* ~Pars.~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.0 4.0 20.4 21.0 58.0 59.0
  SAY #18614 /* ~Il ricane. "C'est pas donné la chanson." Il frotte ensemble deux de ses doigts jaunis. "Des sous-sous ?" Ses yeux, constamment en mouvement lorsqu'il te parle, semblent se poser fréquemment sur ta bourse.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18615 /* ~Donne-lui deux pièces.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18616 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18617 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18618 /* ~"Tu n'auras rien. Crache la chanson."~ */ GOTO 27
  IF ~~ THEN REPLY #18619 /* ~"Euh… Pourquoi tu as les doigts jaunes ?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18620 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18621 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 27.1 30.0
  SAY #18622 /* ~Il ricane. "C'est pas *donné* la chanson. T'es sourd ? *Écoute* quand je te parle."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18623 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18624 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18625 /* ~"Tu n'auras rien. Crache la chanson."~ */ GOTO 27
  IF ~~ THEN REPLY #18626 /* ~"Euh… Pourquoi tu as les doigts jaunes ?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18627 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18628 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 27.2 30.1
  SAY #18629 /* ~Il étudie les pièces un moment puis te regarde de biais. "J'en sais un peu. Qu'est-ce qu'tu veux savoir ?"~ */
  IF ~~ THEN REPLY #18630 /* ~"Parle-moi de Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18631 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18632 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18633 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18634 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18635 /* ~"Rien, peu importe. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18636 /* ~"Rien, peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 24.1 27.3 30.2
  SAY #18637 /* ~"Parle. J'écoute, j'aurais peut'être ben quelque chose à dire…"~ */
  IF ~~ THEN REPLY #18638 /* ~"Parle-moi de Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18639 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18640 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18641 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18642 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18643 /* ~"Rien, peu importe. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18644 /* ~"Rien, peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3 24.2 30.3
  SAY #18645 /* ~"J'dirai rien'." Il ricane en te regardant, puis se désigne. "Je connais la chanson, toi *pas*. T'as du jonc, toi aussi tu connais la chanson - vu ?"~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18646 /* ~Saisis-le, secoue-le un peu.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_3","GLOBALGood",-1)
~ GOTO 54
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18647 /* ~Donne-lui deux pièces.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18648 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18649 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18650 /* ~"Euh… Pourquoi tu as les doigts jaunes ?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18651 /* ~"Alors, oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18652 /* ~"Alors, oublie ce que je t'ai demandé. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4 24.3 27.4
  SAY #18653 /* ~"Eh ? Tu r'viendras ?" Ses yeux se réduisent à des fentes ; il t'observe de biais.~ */
  IF ~~ THEN REPLY #18654 /* ~"Finalement, je ne veux pas le savoir. Peu importe."~ */ GOTO 30
  IF ~~ THEN REPLY #18655 /* ~"Tes doigts : ils sont jaunes. Pourquoi ?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18656 /* ~"Peu importe. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18657 /* ~"Peu importe. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #18658 /* ~"Un p'tit quelque chose qu'j'ai ramassé sur un cadavre… une p'tite pourriture de cadavre, pour dire vrai."~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.0
  SAY #18659 /* ~"T'inquiète… du jonc pour la chanson, tu t'rappelles ? Des sous-sous ?" Il tend ses paumes et les avance vers toi.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18660 /* ~Donne-lui deux pièces.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18661 /* ~Lance-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18662 /* ~Verse dix pièces de cuivre dans le creux de ses mains.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18663 /* ~"Tu n'auras rien. Crache la chanson."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18664 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18665 /* ~"Oublie ce que je t'ai demandé. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.0 26.0 33.2 34.1 35.1 39.0 40.0
  SAY #18666 /* ~"Cette maudit'cité, pauvre bougre… l'p'tit anneau, la cité dans un anneau. Centre des grands anneaux."~ */
  IF ~~ THEN REPLY #18667 /* ~"Parle-moi encore de la cité."~ */ GOTO 32
  IF ~~ THEN REPLY #18668 /* ~"Parle-moi de cette région."~ */ GOTO 32
  IF ~~ THEN REPLY #18669 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18670 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18671 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18672 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18673 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18674 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #18675 /* ~"T'es en train d'perdre mon temps et ton argent… T'as qu'à trouver un rabatteur pour tes questions."~ */
  IF ~~ THEN REPLY #18676 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18677 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18678 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18679 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18680 /* ~"Je vais aller en trouver un, alors. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18681 /* ~"Je vais aller en trouver un, alors. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.1 26.1 31.2 32.0 39.1 40.1
  SAY #18682 /* ~"Oui ?" Il a l'air dérouté. "Qu'est-ce tu veux savoir sur eux ?"~ */
  IF ~~ THEN REPLY #18683 /* ~"Qu'est-ce qu'ils font ?"~ */ GOTO 34
  IF ~~ THEN REPLY #18684 /* ~"Tu en es un ?"~ */ GOTO 35
  IF ~~ THEN REPLY #18685 /* ~"Parle-moi de Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18686 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18687 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18688 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18689 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18690 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #18691 /* ~Il te regarde comme si t'étais azimuté. "Ils ramassent les morts. Les laissent chez les Hommes-Poussière et récupèrent le jonc pour la course. Alors ?"~ */
  IF ~~ THEN REPLY #18692 /* ~"Tu en es un ?"~ */ GOTO 35
  IF ~~ THEN REPLY #18693 /* ~"Parle-moi de Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18694 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18695 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18696 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18697 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18698 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #18699 /* ~"Peut-être. À l'occasion. Qu'est-ce que ça fait ?"~ */
  IF ~~ THEN REPLY #18700 /* ~"Qu'est-ce qu'ils font ?"~ */ GOTO 34
  IF ~~ THEN REPLY #18701 /* ~"Parle-moi de Sigil."~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18702 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18703 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18704 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18705 /* ~"Rien. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18706 /* ~"Rien. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 26.2 31.3 32.1 33.3 34.2 35.2 39.2 40.2
  SAY #18707 /* ~Il plisse soudainement les yeux. "Eh…" Il relève la tête, en t'examinant. "Pharod… c'est *pas donné* d'en savoir sur lui et d'l'ouvrir… Ça te met dans le livre des morts, non, non, *pas donné* du tout."~ */
  IF ~~ THEN REPLY #18708 /* ~"Tu sais où il est ?"~ */ GOTO 37
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18709 /* ~Offre-lui cinq pièces de plus.~ */ GOTO 38
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18710 /* ~"Alors, oublie ce que je t'ai demandé. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18711 /* ~"Alors, oublie ce que je t'ai demandé. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18712 /* ~Il acquiesce, puis regarde autour. "Cette chanson… elle est *pas* donnée."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18713 /* ~Offre-lui cinq pièces de plus.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #18714 /* ~Il regarde autour de lui, puis se penche à ton oreille : "Va à l'est du Square et attends - J'te retrouve dans une heure. J'veux pas qu'on m'voie avec toi. Plus de questions… va, va !" Il s'apprête à te dépasser.~ */
  IF ~~ THEN REPLY #18715 /* ~"Attends…"~ */ GOTO 62
  IF ~~ THEN REPLY #18716 /* ~Laisse-le partir.~ */ GOTO 62
END

IF ~~ THEN BEGIN 39 // from: 25.4 26.4 31.5 32.3 33.5 34.4 35.4 40.3
  SAY #18717 /* ~"Sale *sorcière* pleine de pustules !" Il crache et fait un demi-cercle sur son cœur. "Que cette vieille bâtarde finisse en Baator ! Puissent *mille et mille* pestes lui ronger les entrailles. Si tu veux aller lui cracher dessus, elle crèche dans une hutte à l'extérieur du square, le long des planches pleines de détritus. Va la chercher si tu veux, mais viens pas me parler ensuite !"~ */
  IF ~~ THEN REPLY #18718 /* ~"Parle-moi de Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18719 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18720 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18721 /* ~"Je cherche un journal que j'ai perdu."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18722 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18723 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 25.3 26.3 31.4 32.2 33.4 34.3 35.3 39.3
  SAY #18724 /* ~"Eh… peut-être… peut-être… non. Je l'ai pas vu, j'ai pas vu de livres."~ */
  IF ~~ THEN REPLY #18725 /* ~"Parle-moi de Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #18726 /* ~"Parle-moi des Récupérateurs."~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18727 /* ~"Je cherche un certain Pharod."~ */ GOTO 36
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18728 /* ~"Parle-moi de Mebbeth."~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18729 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18730 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.7 6.3 6.8 7.0 7.8 12.5 13.6 20.5 21.1 22.0 23.5 24.4 25.5 26.5 27.5 28.2 30.4 31.6 32.4 33.6 34.5 35.5 36.2 39.4 40.4 58.1 59.1
  SAY #18731 /* ~Tu t'aperçois soudain que Doigts Jaunes se tient trop près de toi et que sa main se tend, comme pour t'arracher ta bourse.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18732 /* ~Prends sa main.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18733 /* ~Prends sa main.~ */ GOTO 42
  IF ~  Global("Yellow_PP","GLOBAL",0)
~ THEN REPLY #18734 /* ~Observe attentivement son geste.~ */ DO ~GiveExperience(Protagonist,200)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
SetGlobal("Yellow_PP","GLOBAL",1)
TakePartyGold(5)
~ GOTO 57
  IF ~~ THEN REPLY #18735 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 50
  IF ~~ THEN REPLY #18736 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1 57.1
  SAY #18737 /* ~Il saute en arrière et commence à fuir !~ */
  IF ~~ THEN REPLY #18738 /* ~"La vache…"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 57.0
  SAY #18739 /* ~Tu attrapes sa main. Doigts Jaunes a l'air effrayé. "Eh ! Eh ! Qu'est-ce qu'tu fais ! Lâche-moi !" Il se débat, mais ne parvient pas à te faire lâcher prise.~ */
  IF ~~ THEN REPLY #18740 /* ~Vérité : "Tu essayais de me voler. Je vais te tuer."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18741 /* ~Bluff : "Tu essayais de me voler. Je vais te tuer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 50.3
  SAY #18742 /* ~"Eh ! Eh  ! Attends ! Tu t'trompes, tu t'trompes ! On peut s'arranger sans y mêler le livre des morts !"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18743 /* ~"Si tu me donnes des informations, je te laisserai la vie sauve."~ */ GOTO 45
  IF ~~ THEN REPLY #18744 /* ~"Donne-moi tout ce que tu as et je te laisserai vivre."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18745 /* ~"Va-t'en d'ici et que je ne te revoie plus jamais !"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #18746 /* ~Il acquiesce vigoureusement. "Oui, oui, demande ! Vas-y !"~ */
  IF ~~ THEN REPLY #18747 /* ~"Dis-moi où se trouve le dénommé Pharod."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #18748 /* ~"Eh…" Il a l'air embarrassé. "C'est une chanson dangereuse, Pharod. Un peu de jonc ferait du bien… eh ?"~ */
  IF ~~ THEN REPLY #18749 /* ~"Tu oublies que c'est pour ta vie. Réponds-moi… Tout de suite."~ */ GOTO 47
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18750 /* ~Donne-lui trois pièces de cuivre.~ */ DO ~TakePartyGold(3)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #18751 /* ~"Eh… bon, je sais qu'sa guitoune est pas ici… mais c'est près, très près, cachée. Il va et il vient, toujours en mouvement… il doit y avoir un endroit par où il entre et il sort. Quelqu'un par ici doit savoir où est l'entrée… pas moi en tout cas."~ */
  IF ~~ THEN REPLY #18752 /* ~Vérité : "Je crois que tu mens. Crache la chanson ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_1","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #18753 /* ~Bluff : "Je crois que tu mens. Crache la chanson ou je te tue."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_2","GLOBALLaw",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0 47.1
  SAY #18754 /* ~"Eh…" Il se lèche les lèvres et regarde autour. "Bon, bon… eh… il y a une porte, hein ? Regarde dans l'angle nord-ouest du square… J'te parie que c'est là que se terre ce vieux serpent. Mais je sais pas comment on peut passer la porte."~ */
  IF ~~ THEN REPLY #18755 /* ~"Maintenant, donne-moi tout ce que tu as."~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18756 /* ~"Va-t'en d'ici… Et que je ne te revoie plus jamais !"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 48.0
  SAY #18757 /* ~Il acquiesce. Les yeux emplis de crainte et de mépris, Doigts Jaunes te tend une poignée de pièces.~ */
  IF ~~ THEN REPLY #18758 /* ~"Va-t'en d'ici… Et que je ne te revoie plus jamais !"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.3 57.2
  SAY #18759 /* ~Il fronce les sourcils et te regarde du coin de l'œil comme si tu étais azimuté. "Eh ? Quoi ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18760 /* ~"Pourquoi tu essaies de me voler ? Je te donnerai ce que tu veux."~ */ EXTERN ~DMORTE~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18761 /* ~"Pourquoi tu essaies de me voler ? Je te donnerai ce que tu veux."~ */ GOTO 51
  IF ~~ THEN REPLY #18762 /* ~Vérité : "Tu essayais de me voler. Je vais te tuer."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18763 /* ~Bluff : "Tu essayais de me voler. Je vais te tuer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #18765 /* ~"Tu essayais de me voler. Va-t'en et que je ne te revoie plus jamais !"~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #18764 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #18766 /* ~Doigts Jaunes te regarde l'air incrédule. "Du jonc en quantité me ferait pas d'mal. Je meurs de faim… la vie dans les rues de la Ruche n'est pas si folichonne."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18767 /* ~Donne-lui cinq pièces de cuivre.~ */ DO ~TakePartyGold(5)
~ GOTO 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18768 /* ~Donne-lui dix pièces de cuivre.~ */ DO ~TakePartyGold(10)
~ GOTO 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18769 /* ~Donne-lui cinquante pièces de cuivre.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18770 /* ~Donne-lui cent pièces de cuivre.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #18771 /* ~"Je retire ce que j'ai dit. Va-t'en et que je ne te revoie plus jamais."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #18772 /* ~Doigts Jaunes te regarde l'air incrédule. "Du jonc en quantité me ferait pas d'mal. Je meurs de faim… la vie dans les rues de la Ruche n'est pas si folichonne."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 196
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 51.3
  SAY #18773 /* ~"Eh… merci beaucoup. C'est très généreux. Puisse l'ombre de la Dame à jamais t'épargner."~ */
  IF ~~ THEN REPLY #18774 /* ~"N'essaie plus de me voler. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 27.0
  SAY #18775 /* ~Tu tends les mains pour saisir ses vêtements souillés - il est mince, assez léger pour que tu puisses le soulever et le secouer. "Gaaah ! Je vais te le dire, promis ! Pose-moi !"~ */
  IF ~~ THEN REPLY #18776 /* ~Jette-le par terre.~ */ GOTO 55
  IF ~~ THEN REPLY #18777 /* ~Pose-le, mais ne le lâche pas.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #18778 /* ~Tu le renvoies avec fracas en arrière mais en s'écrasant sur le sol, il se remet sur pied et prend ses jambes à son cou !~ */
  IF ~~ THEN REPLY #18779 /* ~"La vache…"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #18780 /* ~Alors que tu attrapes Doigts Jaunes, il te donne un coup de pied dans le tibia, tu le laisses tomber et dans la demi-seconde qu'il t'a fallu pour t'en remettre, il est déjà loin.~ */
  IF ~~ THEN REPLY #18781 /* ~"La vache…"~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 41.2
  SAY #18782 /* ~Tu surveilles les doigts habiles de Doigts Jaunes qui se glissent dans ta bourse… et en ressortent, tenant sans doute plusieurs pièces. Malgré la rapidité, tu as l'impression que cet acte t'est familier et que tu pourrais faire la même chose avec un peu de pratique.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18783 /* ~Attrape-lui la main.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18784 /* ~Attrape-lui la main.~ */ GOTO 42
  IF ~~ THEN REPLY #18785 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 50
  IF ~~ THEN REPLY #18786 /* ~Attaque-le.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66861 /* ~Ignore-le et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.0
  SAY #18787 /* ~"Je sais que t'me regardais… qu'est-ce qu'tu veux ? Hein ?"~ */
  IF ~~ THEN REPLY #18788 /* ~"J'ai quelques questions…"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18789 /* ~"Rien. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18790 /* ~"Rien. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #18791 /* ~"Eh. Calme-toi, p'tite à queue." Il se tourne vers toi. "Je sais que tu me regardais… qu'est-c'qu'tu veux ? Eh ?"~ */
  IF ~~ THEN REPLY #18792 /* ~"J'ai des questions…"~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18793 /* ~"Rien. Au revoir."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18794 /* ~"Rien. Au revoir."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #18795 /* ~"Eh. Calme-toi, p'tite à queue." Il se tourne vers toi et remarque Morte. "Eh ! Le crâne. Tu l'as pris où ce crâne ? C'est mon crâne ! Rends-le moi."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF ~~ THEN BEGIN 61 // from:
  SAY #54287 /* ~Doigts Jaunes trottine, tout en murmurant amèrement.~ */
  IF ~~ THEN REPLY #54288 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 38.0 38.1
  SAY #54786 /* ~Alors que tu regardes Doigts Jaunes détaler, tu as brusquement le sentiment que tu ne le reverras pas de si tôt.~ */
  IF ~~ THEN REPLY #54787 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END
