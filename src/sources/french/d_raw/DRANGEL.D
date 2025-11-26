// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRANGEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRANGEL~

IF ~  GlobalGT("Krystall","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #34502 /* ~"T'as marqué l'nom d' William le Véreux en rouge dans l'livre des morts, matois. Ça veut dire que tu peux traverser le territoire des Anges Rasoirs sans payer."~ */
  IF ~~ THEN REPLY #34503 /* ~"Merci. Au revoir."~ */ DO ~BitSet("0301_Status","AR0301",BIT4)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #34504 /* ~Cet habitant de l'allée t'accueille avec une politesse exagérée et une profonde révérence. "Bonjour, étranger. Tu as choisi un jour prometteur pour traverser notre territoire. Le péage sera d'à peine dix pièces."~ */
  IF ~~ THEN REPLY #34505 /* ~"Dix pièces ? C'est exorbitant !"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34506 /* ~"J'ai déjà payé ça aux biges qui sont là-bas !"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34507 /* ~"Dix ? D'accord. Tiens."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34508 /* ~"J'ai déjà payé."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34509 /* ~Bluff : "J'ai déjà payé ça."~ */ GOTO 6
  IF ~~ THEN REPLY #34510 /* ~"Il faudra que tu te battes avec moi pour les avoir."~ */ GOTO 2
  IF ~~ THEN REPLY #34511 /* ~"Il faudra d'abord que tu m'attrapes."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.5 7.0 7.5
  SAY #34512 /* ~"C'est à peine dix pièces. C'est notre territoire. J'suis sûr que tu t'doutais qu'c'était pas un endroit pour les mauviettes. T'es venu ici de ton plein gré. Maintenant, il faut que tu en payes le prix, d'une manière ou d'une autre : des pièces ou du sang. Qu'est-ce que ce sera ?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34513 /* ~"Des pièces. Tiens."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34514 /* ~"Du sang."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34515 /* ~"Essaie un peu de m'attraper !"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #34516 /* ~"Ouais, et ces biges sont pas nos alliés. Les Shivs sont nos ennemis mortels. Maintenant, égalise le score avec nous, ou on t'refroidit."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34517 /* ~"Bon. Tiens, prends l'argent."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34518 /* ~"Il faudra d'abord que tu meures, l'ami."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34519 /* ~"Essaie un peu de m'attraper !"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0 6.0 7.2
  SAY #34520 /* ~"T'as les r'merciements des Anges Rasoirs. Va en paix, voyageur."~ */
  IF ~~ THEN REPLY #34521 /* ~"Merci, bige. Au revoir."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #34522 /* ~L'Ange Rasoir jette un œil dans l'obscurité pendant un instant, fait un signe de la main, puis te fait un signe de tête. "C'est ça. Vas-y. On t'fera payer la prochaine fois que tu passeras."~ */
  IF ~~ THEN REPLY #34523 /* ~"Je n'en doute pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 7.4
  SAY #34524 /* ~L'Ange Rasoir jette un œil dans l'obscurité pendant un instant, fait un signe de la main, puis te fait un signe de tête. "Nan. C'est ton dernier avertissement. Dix pièces ou t'es refroidi."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34525 /* ~"Bon. Tiens, prends l'argent."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34526 /* ~"Essaie de me les prendre, bige."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34527 /* ~"Il faudra d'abord que tu m'attrapes."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #34528 /* ~"T'es revenu à c'que j'vois. C'est le même prix qu'avant, si tu veux passer. Dix pièces, l'ami, et toi et tes jolies cicatrices pourrez passer."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34529 /* ~"Dix pièces ? C'est exorbitant !"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34530 /* ~"J'ai déjà payé ça aux biges qui sont là-bas !"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34531 /* ~"Dix ? D'accord. Tiens."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34532 /* ~"J'ai déjà payé."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34533 /* ~Bluff : "J'ai déjà payé ça."~ */ GOTO 6
  IF ~~ THEN REPLY #34534 /* ~"Il faudra que tu te battes avec moi pour les avoir."~ */ GOTO 2
  IF ~~ THEN REPLY #34535 /* ~"Il faudra d'abord que tu m'attrapes."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #34536 /* ~"J'ai entendu dire que tu faisais un boulot pour Krystall. Bien. Faut qu'tu t'dépêches, t'entends ? Oh… avant qu'j'oublie, faut que tu paies l'péage. Puisque t'es d'notre côté, ça sera moitié prix : cinq petites pièces."~ */
  IF ~~ THEN REPLY #34537 /* ~"Mais je travaille pour Krystall !"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34538 /* ~"Tiens."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34539 /* ~"J'ai déjà payé ça aux biges qui sont là-bas !"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34540 /* ~"J'ai déjà payé."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34541 /* ~Bluff : "J'ai déjà payé ça."~ */ GOTO 14
  IF ~~ THEN REPLY #34542 /* ~"Il faudra d'abord que tu meures, l'ami."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34543 /* ~"Il faudra d'abord que tu m'attrapes."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34544 /* ~"T'as pas encore tué William le Véreux ? Faut que tu paies cinq pièces, jusqu'à c'que Krystall décide du contraire."~ */
  IF ~~ THEN REPLY #34545 /* ~"Mais je travaille pour Krystall !"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34546 /* ~"Tiens."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34547 /* ~"J'ai déjà payé ça aux biges qui sont là-bas !"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34548 /* ~"J'ai déjà payé."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34549 /* ~Bluff : "J'ai déjà payé ça."~ */ GOTO 14
  IF ~~ THEN REPLY #34550 /* ~"Il faudra d'abord que tu meures, l'ami."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #34551 /* ~"Il faudra d'abord que tu m'attrapes."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #34552 /* ~"Ouais. Moi aussi. On a tous des bouches à nourrir, alors tu vas nourrir les nôtres. Cinq pièces ou je t'allonge."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34553 /* ~"Tiens."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34554 /* ~"Il faudra d'abord que tu meures, l'ami."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34555 /* ~"Il faudra d'abord que tu m'attrapes."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.0 14.0
  SAY #34556 /* ~"C'est un plaisir. Bonne chance avec ce pourri d'William le Véreux."~ */
  IF ~~ THEN REPLY #34557 /* ~"Ouais, merci."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2
  SAY #34558 /* ~"Ouais, et il va falloir que tu les tues pour l'récupérer. Mais y'a eux, et y'a nous. Débourse, l'ami."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34559 /* ~"Tiens."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34560 /* ~"Essaie un peu de me prendre cet argent. Je t'attends."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34561 /* ~"Sûrement pas. Je m'en vais."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.3
  SAY #34562 /* ~L'Ange Rasoir regarde dans l'ombre pour obtenir une confirmation. Il se retourne. "Ouais, mes excuses. Vas-y."~ */
  IF ~~ THEN REPLY #34563 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.4
  SAY #34564 /* ~L'Ange Rasoir regarde dans l'ombre pour obtenir une confirmation. Il se retourne. "Nan. Paie, l'ami, ou tu verras même pas William le Véreux."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34565 /* ~"Tiens."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34566 /* ~"Je le tuerai dès que j'en aurai fini avec toi."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34567 /* ~"Ça m'étonnerait que tu puisses m'attraper."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END
