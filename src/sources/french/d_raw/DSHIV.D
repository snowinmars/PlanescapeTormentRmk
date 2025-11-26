// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHIV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHIV~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3796 /* ~"Alors, tu t'es débarrassé de Krystall, hein ? Tu crois que ça veut dire que c'est gratuit ? Dommage, t'as raison. Vas-y."~ */
  IF ~~ THEN REPLY #3797 /* ~"Merci. Au revoir."~ */ DO ~BitSet("0301_Status","AR0301",BIT3)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #3798 /* ~"Bonjour, étranger. On dirait que tu es maintenant sur le territoire des Shivs de Sombrallée. J'crois que t'as une bourse un peu trop lourde. À ta place, j'prierais pour qu'y'en ait assez."~ */
  IF ~~ THEN REPLY #3799 /* ~"Il faut que je parle à ton chef."~ */ GOTO 2
  IF ~~ THEN REPLY #3800 /* ~"Combien tu veux ?"~ */ GOTO 3
  IF ~~ THEN REPLY #34436 /* ~"J'aimerais bien te voir essayer de me la prendre avec des trous dans la peau."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34437 /* ~"J'ai déjà payé."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34438 /* ~Bluff : "J'ai déjà payé."~ */ GOTO 8
  IF ~~ THEN REPLY #34439 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #34440 /* ~" William le Véreux ? Ouais, j'te laisserai aller lui parler dès que tu m'auras montré l'intérieur de ta bourse."~ */
  IF ~~ THEN REPLY #34441 /* ~"Sûrement pas. Il faudra d'abord que je te saigne."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34442 /* ~"Combien tu veux ?"~ */ GOTO 3
  IF ~~ THEN REPLY #34443 /* ~"Non. Ce n'est pas si important."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 9.1
  SAY #34444 /* ~"C'est pas beaucoup", dit-il d'un air magnanime. "Dix pièces suffiront à ton passage."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34445 /* ~"C'est d'accord."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 5
  IF ~~ THEN REPLY #34446 /* ~"Pas question."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #34447 /* ~"Alors tu t'rendras compte que c'est pas si important, quand tu commenceras à saigner."~ */
  IF ~~ THEN REPLY #34448 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34449 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #34450 /* ~Il prend ton argent, l'empoche, et déclare, "Fiche le camp d'ici, maintenant."~ */
  IF ~~ THEN REPLY #34451 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #34452 /* ~"Alors tu ne sortiras pas d'ici vivant." Il tire son couteau et attaque !~ */
  IF ~~ THEN REPLY #34453 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34454 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3 9.3 10.5 11.5 14.4
  SAY #34455 /* ~Il regarde en direction de l'obscurité, fait un mouvement de la main, puis te regarde. "Bien. Vas-y, bige."~ */
  IF ~~ THEN REPLY #34456 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 9.4 10.6 11.6 14.5
  SAY #34457 /* ~Il regarde en direction de l'obscurité, fait un mouvement de la main, puis te regarde. "Non. Tu vas mourir."~ */
  IF ~~ THEN REPLY #34458 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34459 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34460 /* ~"Quoi, encore toi ? T'en as pas marre de nous filer ton jonc ? À croire que non, puisque t'es ici. Dix pièces, et tu peux revenir un autre jour."~ */
  IF ~~ THEN REPLY #34461 /* ~"Il faut que je parle à ton chef."~ */ GOTO 2
  IF ~~ THEN REPLY #34462 /* ~"Combien tu veux ?"~ */ GOTO 3
  IF ~~ THEN REPLY #34463 /* ~"J'aimerais bien te voir essayer de me la prendre avec des trous dans la peau."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34464 /* ~"J'ai déjà payé."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34465 /* ~Bluff : "J'ai déjà payé."~ */ GOTO 8
  IF ~~ THEN REPLY #34466 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #34467 /* ~"J'ai entendu dire que William le Véreux t'avait envoyé tuer quelqu'un, hein ? Tu devras payer, jusqu'à ce que ce soit fait. Dix pièces."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34468 /* ~"Très bien. Voilà."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34469 /* ~"Je n'ai pas cette somme."~ */ GOTO 13
  IF ~~ THEN REPLY #34470 /* ~"Mais je travaille pour William le Véreux !"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34471 /* ~"T'as pas vraiment besoin de cet argent."~ */ GOTO 15
  IF ~~ THEN REPLY #34472 /* ~"Il faudrait d'abord que tu me passes sur le corps."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34473 /* ~"J'ai déjà payé."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34474 /* ~Bluff : "J'ai déjà payé."~ */ GOTO 8
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #34475 /* ~"T'as pas encore commis c'meurtre pour William le Véreux ? Va falloir payer pour le retard. Dix pièces et tu pourras continuer ton chemin tranquille."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34476 /* ~"D'accord. Voilà."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34477 /* ~"Je n'ai pas ça sur moi."~ */ GOTO 13
  IF ~~ THEN REPLY #34478 /* ~"Mais je travaille pour William le Véreux !"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34479 /* ~"T'as pas vraiment besoin de cet argent."~ */ GOTO 15
  IF ~~ THEN REPLY #34480 /* ~"Il faudrait d'abord que tu me passes sur le corps."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34481 /* ~"J'ai déjà payé."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34482 /* ~Bluff : "J'ai déjà payé."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 14.0
  SAY #34483 /* ~"Tout l'plaisir est pour moi. Reviens m'voir personnellement, hein ?" Il te fait un clin d'œil.~ */
  IF ~~ THEN REPLY #34484 /* ~"Très amusant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 14.1
  SAY #34485 /* ~"Quel dommage. William le Véreux sera triste d'apprendre que tu as dérapé sur un couteau." Il tire son arme et part à l'attaque.~ */
  IF ~~ THEN REPLY #34486 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34487 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2
  SAY #34488 /* ~"J'suis comme ça. Qu'est-ce que t'en dis ? Payer et rester, ou saigner ?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34489 /* ~"Je vais payer."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34490 /* ~"Je n'ai pas ça sur moi."~ */ GOTO 13
  IF ~~ THEN REPLY #34491 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34492 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34493 /* ~"J'ai déjà payé."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34494 /* ~Bluff : "J'ai déjà payé."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34495 /* ~"T'as pas vraiment besoin de cet argent."~ */ GOTO 15
  IF ~~ THEN REPLY #34496 /* ~"Il faudrait d'abord que tu me passes sur le corps."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 14.6
  SAY #34497 /* ~Il te regarde avec attention et réfléchit à ce que tu viens de dire. "Cette fois-ci," dit-il, "j'te laisse filer. Déguerpis."~ */
  IF ~~ THEN REPLY #34498 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4 11.4 14.7
  SAY #34499 /* ~"Tu peux pas t'imaginer c'que ça m'fait plaisir d'entendre ça." Il tire son couteau et attaque.~ */
  IF ~~ THEN REPLY #34500 /* ~Bats-toi.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34501 /* ~Fuis.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END
