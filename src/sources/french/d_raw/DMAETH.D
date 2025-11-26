// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAETH~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33587 /* ~C'est l'un des deux hommes qui s'insultent et se défient de leurs armes. Ils semblent prêts à s'égorger…~ */
  IF ~~ THEN REPLY #33598 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #33599 /* ~Ne t'approche pas d'eux.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33588 /* ~L'homme, le visage rougi par les insultes qu'il crie à son adversaire, se retourne pour te faire face. "Qu'est-ce que tu veux ?! Tu vois pas qu'je suis *occupé*, bougre !"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33600 /* ~"Ta copine voulait que je vous empêche de vous battre."~ */ GOTO 4
  IF ~~ THEN REPLY #33601 /* ~"Je me demande pourquoi vous vous battez."~ */ GOTO 2
  IF ~~ THEN REPLY #33602 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33589 /* ~"Ça t'regarde pas, bige. Va caguer !"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33603 /* ~"Ta copine voulait que je vous empêche de vous battre."~ */ GOTO 4
  IF ~~ THEN REPLY #33604 /* ~"Je peux vous aider à résoudre votre différend ?"~ */ GOTO 3
  IF ~~ THEN REPLY #33605 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33590 /* ~"Non, tu peux pas ! Cette espèce de fils de traînée arrête pas d'mettre son nez puant dans ma vie et celle d'Elyce, et j'vais lui en mettre plein sa face pourrie ! Ça t'regarde pas, alors reste en dehors de ça !"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33606 /* ~"Ton amour voulait que je vous empêche de vous battre."~ */ GOTO 4
  IF ~~ THEN REPLY #33607 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33591 /* ~L'homme devient brusquement silencieux. "Elyce t'a appelé à l'aide, hein ? J'sais pas qui t'es, bige, mais j'vois pas comment tu peux nous arrêter !"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33608 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33609 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33610 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33611 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33612 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33613 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33614 /* ~"Moi non plus. Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33592 /* ~"Quoi ? T'es complètement *azimuté*, matois ? Regarde-toi… T'as beau être couvert de cicatrices, tu me fais pas peur ! Arrête de branler ton râtelier et *va caguer* !"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33615 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33616 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33617 /* ~"Bon… Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33593 /* ~"Tu peux pas t'occuper de tes affaires ? ! Va te fourrer la tête dans un tas de fumier, bige !"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33618 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33619 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33620 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33621 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ GOTO 5
  IF ~~ THEN REPLY #33622 /* ~"Bon… Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33594 /* ~L'homme te regarde pendant quelques secondes. "Euh… ben… j'suis sûr qu'y a un meilleur moyen pour moi et cet enfumé de résoudre l'problème. Et puis ça ferait plaisir à Elyce…"~ */
  IF ~~ THEN REPLY #33623 /* ~"Ça me fait plaisir que tu le prennes comme ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33595 /* ~L'homme paraît réfléchir pendant un instant, puis acquiesce. "T'as raison, matois… J'essayais de lui donner une chance d'échapper à son frère et puis voilà que j'ignore sa demande et que j'essaie d'faire les choses à ma manière." Il soupire. "J'crois que j'vais essayer d'arranger ça avec cet enfumé d'une autre manière…"~ */
  IF ~~ THEN REPLY #33624 /* ~"Ça me fait plaisir que tu le prennes comme ça. Au revoir."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33596 /* ~L'amant d'Elyce te fait un signe de tête et sourit. "Mes r'merciements pour avoir arrêté ce combat… t'es un digne matois, c'est sûr."~ */
  IF ~~ THEN REPLY #33597 /* ~"Merci. Au revoir."~ */ EXIT
END
