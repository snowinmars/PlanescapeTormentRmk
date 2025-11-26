// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTARIN~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33625 /* ~C'est l'un des deux hommes qui s'insultent et se défient de leurs armes. Ils semblent prêts à s'égorger…~ */
  IF ~~ THEN REPLY #33636 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #33637 /* ~Ne t'approche pas d'eux.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33626 /* ~L'homme, le visage rougi par les insultes qu'il crie à son adversaire, se retourne pour te faire face. "Qu'est-ce que tu veux ?! Tu vois pas qu'je suis *occupé*, bougre !"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33638 /* ~"Ta sœur voulait que je vous empêche de vous battre."~ */ GOTO 4
  IF ~~ THEN REPLY #33639 /* ~"Je me demande pourquoi vous vous battez."~ */ GOTO 2
  IF ~~ THEN REPLY #33640 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33627 /* ~"Ça t'regarde pas, bige. Va caguer !"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33641 /* ~"Ta sœur voulait que je vous empêche de vous battre."~ */ GOTO 4
  IF ~~ THEN REPLY #33643 /* ~"Je peux vous aider à résoudre votre différend ?"~ */ GOTO 3
  IF ~~ THEN REPLY #33644 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33628 /* ~"Non, tu peux pas ! Ce fils de traînée traite ma sœurette comme d'la bouse, et il va l'payer… c'est pas ton problème, alors t'en mêle pas !"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33645 /* ~"Ta sœur voulait que je vous empêche de vous battre."~ */ GOTO 4
  IF ~~ THEN REPLY #33646 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33629 /* ~L'homme devient brusquement silencieux. "Elyce t'a appelé à l'aide, hein ? J'sais pas qui t'es, bige, mais j'vois pas comment tu peux nous arrêter !"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33647 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33648 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33650 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33652 /* ~"En vous frappant tous les deux jusqu'au sang, si c'est nécessaire."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33654 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33656 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33658 /* ~"Moi non plus. Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33630 /* ~"Quoi ? T'es complètement *azimuté*, matois ? Regarde-toi… T'as beau être couvert de cicatrices, tu me fais pas peur ! Arrête de branler ton râtelier et *va caguer* !"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33659 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33660 /* ~"Écoutez, Elyce ne veut pas vous voir vous faire du mal… Vous ne pouvez pas régler votre problème sans lui foutre la trouille ?"~ */ GOTO 6
  IF ~~ THEN REPLY #33661 /* ~"Bon… Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33631 /* ~"Tu peux pas t'occuper de tes affaires ? ! Va te fourrer la tête dans un tas de fumier, bige !"~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33662 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33663 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33664 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33665 /* ~"Arrêtez de vous battre ou je vous frappe tous les deux jusqu'au sang."~ */ GOTO 5
  IF ~~ THEN REPLY #33666 /* ~"Bon… Au revoir."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33632 /* ~L'homme te regarde pendant quelques secondes. "Euh… ben… j'suis sûr qu'y a un meilleur moyen pour moi et cet enfumé de résoudre l'problème. Et puis ça ferait plaisir à Elyce…"~ */
  IF ~~ THEN REPLY #33667 /* ~"Ça me fait plaisir que tu le prennes comme ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33633 /* ~L'homme paraît réfléchir pendant un instant, puis acquiesce. "T'as raison, matois… J'essayais de protéger ses intérêts et puis voilà que j'ignore ses demandes." Il soupire. "J'crois que j'vais essayer d'arranger ça avec cet enfumé d'une autre manière…"~ */
  IF ~~ THEN REPLY #33668 /* ~"Ça me fait plaisir que tu le prennes comme ça. Au revoir."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33634 /* ~Le frère d'Elyce te fait un signe de tête approbateur. "Merci de nous avoir aidés à résoudre ça… t'es un digne matois, c'est sûr."~ */
  IF ~~ THEN REPLY #33669 /* ~"Merci. Au revoir."~ */ EXIT
END
