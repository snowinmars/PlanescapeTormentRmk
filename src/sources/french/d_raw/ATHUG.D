// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~ATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34604 /* ~"L'p'tit oiseau s'est perdu, hein ? Si l'p'tit oiseau veut passer, l'p'tit oiseau doit payer."~ */
  IF ~~ THEN REPLY #34605 /* ~"Combien ?"~ */ GOTO 1
  IF ~~ THEN REPLY #34606 /* ~"Si tu veux mon argent, il faudra que tu viennes le chercher."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34607 /* ~"Il faudra d'abord que tu m'attrapes."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34608 /* ~"Dix pièces, mon cher ami !"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34609 /* ~"Tiens."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34610 /* ~"Je n'ai pas ça sur moi."~ */ GOTO 3
  IF ~~ THEN REPLY #34611 /* ~"Laisse tomber. Il faudra d'abord que tu me passes sur le corps."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34612 /* ~"Il faudra d'abord que tu m'attrapes !"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.1 5.0
  SAY #34613 /* ~Le sicaire s'incline bas, moqueur. "J'espère qu'on refera affaire ensemble très bientôt."~ */
  IF ~~ THEN REPLY #34614 /* ~"Ouais, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #34615 /* ~Le sicaire fait comme s'il était choqué. "Dans ce cas, j'vais devoir te l'prendre en monnaie d'sang. Au revoir, l'ami."~ */
  IF ~~ THEN REPLY #34616 /* ~"Hé, attends…"~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #34617 /* ~"Allons-y."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #34618 /* ~"Le p'tit oiseau est revenu à la maison, hein ? Revenu nourrir le reste du nid ?"~ */
  IF ~~ THEN REPLY #34619 /* ~"De quoi tu parles ?"~ */ GOTO 5
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34620 /* ~"Oui. Voilà ce que je te dois."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34621 /* ~"Non. Je suis là pour te tuer."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34622 /* ~Ses traits se tordent en une parodie d'angoisse. "Tu veux dire qu't'as déjà oublié ? Ah, vraiment. C'est les dix pièces que tu m'dois pour le passage dans ma rue. Allez… débourse."~ */
  IF ~  PartyGoldGT(10)
~ THEN REPLY #34623 /* ~"Tiens, voilà."~ */ DO ~TakePartyGold(10)
~ GOTO 2
  IF ~~ THEN REPLY #34624 /* ~"Cette fois, si tu veux cet argent, il faudra que tu te battes avec moi."~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34625 /* ~"On ne pourrait pas trouver un petit arrangement ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #34626 /* ~"Désolé, bige. On a tous des règles à suivre, et t'as du sang à verser. Passe le bonjour aux Puissances de ma part."~ */
  IF ~~ THEN REPLY #34627 /* ~Bats-toi avec lui.~ */ DO ~Enemy()
ForceAttack(Protagonist,"Athug")
~ EXIT
  IF ~~ THEN REPLY #34628 /* ~Fuis.~ */ DO ~Enemy()
~ EXIT
END
