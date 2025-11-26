// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOOCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOOCH~

IF ~  Global("Mochai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3078 /* ~"Je m'en vais ! Je m'en vais ! Pas la peine de me harceler !"~ */
  IF ~~ THEN REPLY #10577 /* ~"Je vérifiais. Avance."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,INT)
~ THEN BEGIN 1 // from:
  SAY #10578 /* ~Tu vois une femme habillée comme un Homme-Poussière qui tient un verre à moitié vide à la main. Lorsque tu t'en approches, elle te hèle : "Hé, toi, là…" Il te semble qu'elle a quelque chose qui cloche… et ta familiarité avec les Hommes-Poussière te pousse à estimer qu'elle est trop gaie pour appartenir réellement à la faction en question.~ */
  IF ~~ THEN REPLY #10579 /* ~Aborde-la.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10580 /* ~Laisse-la tranquille.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10581 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #10582 /* ~Tu vois une femme Homme-Poussière. Lorsque tu t'en approches, elle te hèle : "Hé, toi, là…"~ */
  IF ~~ THEN REPLY #10583 /* ~Aborde-la.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10584 /* ~Laisse-la tranquille.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10585 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Mooch","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #10586 /* ~"Hum… tu veux quoi ?"~ */
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10587 /* ~"Barkis dit qu'il faut que tu paies ce que tu lui dois maintenant."~ */ GOTO 9
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10588 /* ~"Tu n'es pas vraiment un Homme-Poussière, si ?"~ */ GOTO 8
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10589 /* ~"Donne-moi plus d'argent et je garderai ton secret d'Homme-Poussière."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10590 /* ~"Donne-moi encore plus d'argent et je garderai ton secret d'Homme-Poussière."~ */ GOTO 21
  IF ~~ THEN REPLY #10591 /* ~"Je veux les réponses à quelques questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10592 /* ~"Rien."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #10593 /* ~"Un Homme-Poussière, c'est pas assez bien pour toi, hein ? Paie-moi un verre, et je te fiche la paix."~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10594 /* ~"Très bien. Voilà cinq pièces. Maintenant, laisse-moi tranquille."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10595 /* ~"Tu n'es pas vraiment un Homme-Poussière, si ?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10596 /* ~"Barkis dit qu'il faut que tu paies ce que tu lui dois maintenant."~ */ GOTO 9
  IF ~~ THEN REPLY #10597 /* ~"Sûrement pas. Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0
  SAY #10598 /* ~"Hé, matois… tu paies un verre à une dame ?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10599 /* ~"Tu n'es pas vraiment un Homme-Poussière, si ?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10600 /* ~"Barkis dit qu'il faut que tu paies ce que tu lui dois maintenant."~ */ GOTO 9
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Très bien. Voilà cinq pièces."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10601 /* ~"Qui es-tu ?"~ */ GOTO 24
  IF ~~ THEN REPLY #10602 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 25
  IF ~~ THEN REPLY #10603 /* ~"Parle-moi des autres clients."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10604 /* ~"Qui est le cadavre fumant ?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
Global("Mochai","GLOBAL",1)
CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10605 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10606 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ GOTO 15
  IF ~~ THEN REPLY #10607 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.2 12.0
  SAY #10608 /* ~"Merci, matois… Puisses-tu trouver la Vraie Mort." Elle empoche ton argent et jette un regard inquiet vers le comptoir.~ */
  IF ~~ THEN REPLY #10609 /* ~"Donne-moi tout de suite quelques réponses en échange de mon joncs."~ */ GOTO 7
  IF ~~ THEN REPLY #10610 /* ~"Bonne journée."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.4 6.0 9.2 10.1 12.1 13.3 13.4 14.3 14.4 15.2 18.0 19.0 20.1 21.0 24.0 25.0 26.0 27.0
  SAY #10611 /* ~"Heu… qu'est-ce que tu veux savoir ?"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10612 /* ~"Tu n'es pas vraiment un Homme-Poussière, si ?"~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10613 /* ~"Barkis dit qu'il faut que tu paies ce que tu lui dois maintenant."~ */ GOTO 9
  IF ~~ THEN REPLY #10614 /* ~"Qui es-tu ?"~ */ GOTO 24
  IF ~~ THEN REPLY #10615 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 25
  IF ~~ THEN REPLY #10616 /* ~"Parle-moi des autres clients."~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10617 /* ~"Qui est le cadavre fumant ?"~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10618 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10619 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ GOTO 15
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10620 /* ~"Donne-moi plus d'argent et je garderai ton secret d'Homme-Poussière."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10621 /* ~"Donne-moi encore plus d'argent et je garderai ton secret d'Homme-Poussière."~ */ GOTO 21
  IF ~~ THEN REPLY #10622 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 4.1 5.0 7.0
  SAY #10623 /* ~Elle jette un regard anxieux alentour et paraît soudain dessaouler. "Heu… pourquoi dis-tu ça ?"~ */
  IF ~~ THEN REPLY #10624 /* ~"Parce que tu ne te comportes pas comme un Homme-Poussière et que tu ne proposes pas de contrats. En fait, tu empoches l'argent au lieu de le donner pour le boulot qu'ils font à la Morgue avec les cadavres."~ */ GOTO 10
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10625 /* ~"Parce que je suis moi-même un Homme-Poussière."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.2 5.1 7.1
  SAY #10626 /* ~Elle sursaute et sa nervosité vire à la peur. "Qu'est-ce que tu vas faire ?"~ */
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10627 /* ~"Te demander d'aller payer. Tout de suite."~ */ GOTO 11
  IF ~  GlobalGT("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10628 /* ~"Te demander d'aller payer. Tout de suite."~ */ GOTO 22
  IF ~~ THEN REPLY #10629 /* ~"Rien, pour l'instant. Réponds à quelques questions pour moi."~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #10630 /* ~Elle réprime un cri de terreur et explique aussitôt : "Non, non, je ne suis pas un Homme-Poussière. J'ai trouvé cet habit dans la rue et je n'avais pas d'argent pour me payer des vêtements, et j'ai entendu dire qu'il y avait un voleur Homme-Poussière dans le coin, mais tu le trouveras sans doute dans la section sud-ouest de la Ruche. Je l'ai vu, mais je me suis cachée. Je t'en prie, ne me fais pas de mal."~ */
  IF ~~ THEN REPLY #10631 /* ~"Donne-moi de l'argent et je te laisserai partir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_One","GLOBALGood",-1)
IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(50)
~ GOTO 19
  IF ~~ THEN REPLY #10632 /* ~"Ça n'était pas mon intention. Tu devrais savoir que tu ne mens pas bien. Maintenant, réponds à quelques questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10633 /* ~"Non. Pas encore. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #10634 /* ~"Hum… Je ne peux pas. Tu peux m'en prêter dix pour cent ? Je… heu… les lui refile et il attendra pour le reste."~ */
  IF ~~ THEN REPLY #10635 /* ~"Combien tu veux ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10636 /* ~"Sûrement pas. Je ne travaille pas pour les bonnes œuvres. Pense à un autre moyen de le payer."~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Mochai","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #10637 /* ~"T'aurais quelques pièces pour un verre, matois ?"~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~"Très bien. Voilà cinq pièces."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10639 /* ~"Non. Réponds plutôt à quelques questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10640 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 22.0
  SAY #10641 /* ~"Hmm, je crois qu'il me faut une centaine de pièces pour commencer à régler ma dette."~ */
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10642 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10643 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ GOTO 15
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10644 /* ~"Je vais te prêter cet argent. Voilà. Prends-le et paie. Tout de suite."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Mensonge : "Je t'aurais bien prêté cet argent, mais je ne l'ai pas. Réponds à d'autres questions, d'accord ?"~ */ GOTO 7
  IF ~  PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Vérité : "Je t'aurais bien prêté cet argent, mais je ne l'ai pas. Réponds à d'autres questions, d'accord ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10652 /* ~"Je vais revenir avec de l'argent."~ */ EXIT
  IF ~~ THEN REPLY #10645 /* ~"Peux-tu réfléchir à une autre solution ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.6 22.1
  SAY #10646 /* ~"Un autre moyen ? Ah." Un sourire triste. "Tu pourrais… heu… me tuer, bien sûr."~ */
  IF ~  PartyHasItem("Embalm")
~ THEN REPLY #10647 /* ~En la distrayant : "Je pourrais, mais… Qu'est-ce qu'il y a là-bas ?"~ */ GOTO 15
  IF ~~ THEN REPLY #10648 /* ~"C'est vrai, mais je préférerais que tu trouves une autre solution."~ */ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10649 /* ~"Je te prête cet argent. Maintenant, va payer."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  False()
PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Mensonge : "Je t'aurais bien prêté cet argent, mais je ne l'ai pas. Réponds à d'autres questions, d'accord ?"~ */ GOTO 7
  IF ~  False()
PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Vérité : "Je t'aurais bien prêté cet argent, mais je ne l'ai pas. Réponds à d'autres questions, d'accord ?"~ */ GOTO 7
  IF ~  False()
~ THEN REPLY #10652 /* ~"Je vais revenir avec de l'argent."~ */ EXIT
  IF ~~ THEN REPLY #10653 /* ~"Je reviendrai plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.7 5.8 7.6 7.7 13.0 13.1 14.0
  SAY #10654 /* ~"Où ça ?" Elle tourne la tête dans la direction que tu indiques et tente de focaliser son regard brouillé par l'alcool. "Je ne vois rien."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Empoisonne son verre avec la lotion d'embaumement.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #10656 /* ~"Peu importe. Réponds à quelques questions pour moi, d'accord ?"~ */ GOTO 7
  IF ~~ THEN REPLY #10657 /* ~"Ce n'était sûrement rien. Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10658 /* ~Quand elle a les yeux tournés, tu te hâtes de vider la lotion d'embaumement dans son verre à moitié vide. Elle ne paraît pas remarquer la puanteur qui s'en dégage aussitôt. Elle se retourne et boit le breuvage toxique d'un trait. "Heu, y'avait quoi là-bas ? Qu'est-ce que j'étais censée voir ?" Soudain, elle commence à s'étouffer.~ */
  IF ~~ THEN REPLY #10659 /* ~"Ta mort. Au revoir, Mochai."~ */ DO ~Kill(Myself)
DestroyPartyItem("Embalm",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #10660 /* ~"Hum…qu'est-ce que tu fais ?" Elle t'a vu préparer ton flacon de lotion d'embaumement, et te regarde avec suspicion.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10661 /* ~"Je pose juste ma bouteille sur la table. J'ai apporté ma boisson."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10662 /* ~"Je pose juste ma bouteille sur la table. J'ai apporté ma boisson."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10663 /* ~"Je pose juste ma bouteille sur la table. J'ai apporté ma boisson."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10664 /* ~"Calme-toi. Je fouille dans mes affaires pour me souvenir de ce que j'ai."~ */ GOTO 18
  IF ~~ THEN REPLY #10665 /* ~"Ça ne te regarde pas."~ */ GOTO 18
  IF ~~ THEN REPLY #10666 /* ~"Rien. J'ai un rendez-vous ailleurs. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1 17.0 17.1 17.2 17.3 17.4
  SAY #10667 /* ~Elle te regarde en oscillant sur place avant de dire : "Hm. D'accord. Tu veux autre chose ?"~ */
  IF ~~ THEN REPLY #10668 /* ~"Oui. Quelques réponses."~ */ GOTO 7
  IF ~~ THEN REPLY #10669 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.0
  SAY #10670 /* ~"J'ai cinquante pièces. Je t'en prie, ne dis rien à personne."~ */
  IF ~~ THEN REPLY #10671 /* ~"On verra. Maintenant, réponds à d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10672 /* ~"Cinquante ? Ce n'est pas suffisant."~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(25)
~ GOTO 20
  IF ~~ THEN REPLY #10673 /* ~"On verra. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2 7.8 19.1
  SAY #10674 /* ~"Heu, plus ? Je ne peux pas me permettre autant que la dernière fois. Mais je te donne vingt-cinq pièces, si tu veux."~ */
  IF ~~ THEN REPLY #10675 /* ~"Ce n'est pas suffisant."~ */ GOTO 21
  IF ~~ THEN REPLY #10676 /* ~"Ça ira… Pour l'instant. En attendant, réponds à d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10677 /* ~"Ça ira… Pour l'instant. Je reviendrai."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.3 7.9 20.0
  SAY #10678 /* ~"Ah, heu, dommage. Parce que, heu, je ne peux pas te donner plus. Je n'ai, heu, plus du tout d'argent."~ */
  IF ~~ THEN REPLY #10679 /* ~"Dommage. Réponds à quelques questions pour moi."~ */ GOTO 7
  IF ~~ THEN REPLY #10680 /* ~"Dommage. On verra ce qui arrivera. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY #10681 /* ~Elle te lance un regard amer. "Je ne peux pas. Un, heu, bige m'a tout pris. Il me faudrait un prêt ou, hum, quelque chose pour la régler, cette note."~ */
  IF ~~ THEN REPLY #10682 /* ~"Combien tu veux ?"~ */ GOTO 13
  IF ~~ THEN REPLY #10683 /* ~"Sûrement pas. Je ne travaille pas pour les bonnes œuvres. Pense à un autre moyen de le payer."~ */ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 13.2 14.2
  SAY #10684 /* ~Elle empoche ton jonc, jette un coup d'œil vers la porte comme pour évaluer ses chances de filer, soupire lorsqu'elle réalise qu'elle n'en a aucune, et se dirige vers le comptoir. "Hum, merci, quand même."~ */
  IF ~~ THEN REPLY #10685 /* ~"Il n'y a pas de quoi. Et inutile d'essayer de te diriger vers la porte tant que tu n'as pas payé."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3 7.2
  SAY #10686 /* ~"Moi ? Je m'appelle Mochai. J'aime bien, hum, boire ici, et, hum…" Elle perd le fil de ses pensées, l'espace d'un instant. "Je ne suis qu'une personne, tu sais ?"~ */
  IF ~~ THEN REPLY #10687 /* ~"Je vois. Alors, réponds à autre chose pour moi."~ */ GOTO 7
  IF ~~ THEN REPLY #10688 /* ~"Je vois. Alors au revoir, Mochai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 7.3
  SAY #10689 /* ~"La Taverne du Cadavre fumant. Tu sais pas lire ? T'es encore plus, hum, bibé que moi ?"~ */
  IF ~~ THEN REPLY #10690 /* ~"Laisse tomber. Parle-moi d'autre chose."~ */ GOTO 7
  IF ~~ THEN REPLY #10691 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.5 7.4
  SAY #10692 /* ~"J'sais pas. C'est juste, hum, des gens. Je fréquente pas beaucoup les gens. Sauf s'ils m'offrent un verre…" Elle te regarde d'un air plein d'espoir.~ */
  IF ~~ THEN REPLY #10693 /* ~"Je vois. Donne-moi d'autres réponses."~ */ GOTO 7
  IF ~~ THEN REPLY #10694 /* ~"Je comprends pourquoi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.6 7.5
  SAY #10695 /* ~"C'est pas, hum, un cadavre. C'est un, hum, magicien fou. Si tu leur demandes, ils te raconteront certainement toute l'histoire."~ */
  IF ~~ THEN REPLY #10696 /* ~"Très bien. Alors, réponds à d'autres questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10697 /* ~"Au revoir."~ */ EXIT
END
