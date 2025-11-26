// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH1~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38573 /* ~"Ssss… créature viandue… trocopotoca nous empêche d'avoir le trésor, d'accord ? Le troco doit mourir. Toi garder trésor. Nous garder corps. D'accooord ?"~ */
  IF ~~ THEN REPLY #38588 /* ~"Qu'est-ce que c'est que cette créature ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38589 /* ~"Bien sûr."~ */ GOTO 2
  IF ~~ THEN REPLY #38590 /* ~"Sûrement pas."~ */ GOTO 3
  IF ~~ THEN REPLY #38591 /* ~"Qu'est-ce qu'il a, ton ami ?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #38592 /* ~"C'est un trocopotoca. Blanc. Des cooornes. Méchhhant. Trocos manger chair. Nos ennemiiiis. Toi le tuer, d'accooord ?"~ */
  IF ~~ THEN REPLY #38593 /* ~"Qu'est-ce qu'il a, ton ami ?"~ */ GOTO 4
  IF ~~ THEN REPLY #38594 /* ~"Je le tuerai."~ */ GOTO 2
  IF ~~ THEN REPLY #38595 /* ~"Je vous laisse ce plaisir."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.1
  SAY #38596 /* ~"D'accooord… bien. Toi prendre trésor sur corps. Nous prendre viande. Vas-y ! Tue !"~ */
  IF ~~ THEN REPLY #38597 /* ~"D'accord, j'y vais."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.2
  SAY #38598 /* ~"Sssss… Créature viandue inutile. Va-t'en !"~ */
  IF ~~ THEN REPLY #38599 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.0
  SAY #38600 /* ~"Ha ha… c'est un froussard. Peur d'un troco. Ha ha. Tue-le pour nous, d'accooord ?"~ */
  IF ~~ THEN REPLY #38601 /* ~"Mais qu'est-ce que c'est ?"~ */ GOTO 1
  IF ~~ THEN REPLY #38602 /* ~"D'accord. Je le tuerai."~ */ GOTO 2
  IF ~~ THEN REPLY #38603 /* ~"Non, sûrement pas."~ */ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38604 /* ~"Ha ha… c'est un froussard. Peur d'un troco. Ha ha. Tue-le pour nous, d'accooord ?"~ */
  IF ~~ THEN REPLY #38605 /* ~"Alors, j'y vais."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38606 /* ~"Il est mort… de ta faute ! Il est mort ! Crève, chaiiir !" La goule t'attaque !~ */
  IF ~~ THEN REPLY #38607 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38608 /* ~Fuis.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38609 /* ~"Il est mort… de ta faute ! Il est mort ! Crève, chaiiir !" La goule t'attaque !~ */
  IF ~~ THEN REPLY #38610 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38611 /* ~Fuis.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38612 /* ~"Ssss… troco mort… toi prendre trésor, nous prendre viande, d'accooord ?"~ */
  IF ~~ THEN REPLY #38613 /* ~"C'est quoi, cette chose ?"~ */ GOTO 9
  IF ~~ THEN REPLY #38614 /* ~"C'est d'accord."~ */ GOTO 10
  IF ~~ THEN REPLY #38615 /* ~"Pas si tu meurs avant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38616 /* ~"C'est un trocopotoca. Blanc. Des cooornes. Méchaaant. Trocos manger chair. Nos ennemiiiis. Pas bon goût. Morts maintenant. Grand merciii, créature viandue."~ */
  IF ~~ THEN REPLY #38617 /* ~"De rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38618 /* ~"Prends et va-t'en… faut qu'on maaaange."~ */
  IF ~~ THEN REPLY #38619 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #38620 /* ~"Encore toi, créature viandue ? Prends tes piècettes et la poudre d'escampette."~ */
  IF ~~ THEN REPLY #38621 /* ~"Très bien. Au revoir."~ */ EXIT
END
