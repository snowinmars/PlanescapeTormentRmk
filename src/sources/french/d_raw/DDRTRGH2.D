// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH2~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38622 /* ~"Tue le troco pour nous, oui, et tu pourrrras prendre ssson argent. Nous prendrons ssssa nourriture. D'accord ?"~ */
  IF ~~ THEN REPLY #38623 /* ~"Qu'est-ce que c'est que cette créature ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38636 /* ~"Bien sûr."~ */ GOTO 4
  IF ~~ THEN REPLY #38637 /* ~"Sûrement pas."~ */ GOTO 3
  IF ~~ THEN REPLY #38638 /* ~"Qu'est-ce qu'il a, ton ami ?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #38624 /* ~"Trocopotoca. T'aimes ? Pas nous, non… des vilains monstres affreux. Ils nous aiment pas. Çuilà, il garde le corps qu'on veut. Toi le tuer ?"~ */
  IF ~~ THEN REPLY #38625 /* ~"Qu'est-ce qu'il a, ton ami ?"~ */ GOTO 2
  IF ~~ THEN REPLY #38632 /* ~"Je le tuerai."~ */ GOTO 4
  IF ~~ THEN REPLY #38635 /* ~"Je vous laisse ce plaisir."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3 1.0
  SAY #38626 /* ~"Pas ami ! Vantard ! Grosse goule ! Peur de rien, qu'il diiiit ! Tu l'as vu s'approcher du troco ? Non ! Trouillard, va ! Tue-le et montre-lui qui est le preux !"~ */
  IF ~~ THEN REPLY #38627 /* ~"Mais qu'est-ce que c'est ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38628 /* ~"D'accord. Je le tuerai."~ */ GOTO 4
  IF ~~ THEN REPLY #38631 /* ~"Non, sûrement pas."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.2
  SAY #38629 /* ~"Beeeerk… chaiiiir délétère ! De l'air !"~ */
  IF ~~ THEN REPLY #38630 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #38633 /* ~"Merciiii… des sous t'auras quand il mourrrrra."~ */
  IF ~~ THEN REPLY #38634 /* ~"Ça me va."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38639 /* ~"Pourquoi toi pas tuer troco ? Troco doooit mourir ! Tue-le !"~ */
  IF ~~ THEN REPLY #38640 /* ~"Alors, j'y vais."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38641 /* ~"Qu… qu'essse qui te ramène ici, viande pourrie ? Crèèève !" L'effrayante créature bondit sur toi !~ */
  IF ~~ THEN REPLY #38642 /* ~Bats-toi.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #38643 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38644 /* ~"Qu… qu'essse qui te ramène ici, viande pourrie ? Crèèève !" L'effrayante créature bondit sur toi !~ */
  IF ~~ THEN REPLY #38645 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38646 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38647 /* ~"Toi prendre ton trésor, d'accooord ? Prends et va-t'en, sac à viande."~ */
  IF ~~ THEN REPLY #38648 /* ~"C'est quoi, cette chose ?"~ */ GOTO 9
  IF ~~ THEN REPLY #38651 /* ~"C'est d'accord."~ */ GOTO 10
  IF ~~ THEN REPLY #38652 /* ~"Pas si tu meurs avant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38649 /* ~"Trocopotoca, d'accooord ? T'aimes ? Pas nous, non… des vilains monstres affreux. Ils nous aiment pas. Morts maintenant, d'accooord ?~ */
  IF ~~ THEN REPLY #38650 /* ~"De rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38653 /* ~"Déjàààà ?! Va-t'en. On mange."~ */
  IF ~~ THEN REPLY #38654 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #67831 /* ~"Déjà de retouuuur ? Bien. Mangeons."~ */
  IF ~~ THEN REPLY #67832 /* ~"Très bien. Au revoir."~ */ EXIT
END
