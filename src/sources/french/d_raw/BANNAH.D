// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BANNAH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~BANNAH~

IF ~  LastPersonTalkedTo("Morte")
Global("Annah_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31484 /* ~"Tiens tes distances, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63424 /* ~"TROUVE un moyen, crâne."~ [ANA575BD] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #63425 /* ~"Qu'est-ce qu't'regardes, crâne ?"~ [ANA576B] */
  IF ~~ THEN EXTERN ~DMORTE~ 614
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63426 /* ~"Ta langue va finir par t'valoir des ennuis."~ [ANA576BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",3)
~ THEN BEGIN 4 // from:
  SAY #63428 /* ~"Comment t'arrives à respirer en parlant tout l'temps comme ça ?"~ [ANA593A] */
  IF ~~ THEN EXTERN ~DMORTE~ 615
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #63429 /* ~"Si tu dois aller quelque part crâne, ne t'gêne surtout pas pour nous."~ [ANA595A] */
  IF ~~ THEN EXTERN ~DMORTE~ 616
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63430 /* ~"J'ai un *paquet* d'noms pour toi. Aucun peut être prononcé en public."~ [ANA595BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",4)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",5)
~ THEN BEGIN 7 // from:
  SAY #63431 /* ~"Hmmmm, crâne, je me demande combien j'pourrais gagner en te vendant aux Hommes-Poussière."~ [ANA597D] */
  IF ~~ THEN EXTERN ~DMORTE~ 617
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63432 /* ~"La mort, c'est encore trop bon pour toi, crâne."~ [ANA599A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",5)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #63433 /* ~"Si tes yeux s'posent encore une fois sur moi, crâne, c'est par terre qu'y finiront par s'poser."~ [ANA600A] */
  IF ~~ THEN EXTERN ~DMORTE~ 618
END

IF ~~ THEN BEGIN 10 // from:
  SAY #63434 /* ~"Oh, pourtant c'est *toi* qui parle, ici."~ [ANA600BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",6)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 11 // from:
  SAY #63435 /* ~"Crâne, si tu fais pas gaffe où tes yeux traînent, j'te les arrache."~ [ANA601A] */
  IF ~~ THEN EXTERN ~DMORTE~ 619
END

IF ~~ THEN BEGIN 12 // from:
  SAY #63436 /* ~"J'ai vraiment jamais pu t'encadrer."~ [ANA601BB] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Morte","GLOBAL",7)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 13 // from:
  SAY #63439 /* ~"T'fais pas avoir par cette succube… elle s'intéresse à toi uniquement à cause de ton cou : il est parfait pour qu'elle y plante ses dents."~ [ANA594A] */
  IF ~~ THEN EXTERN ~DMORTE~ 620
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
InParty("Grace")
~ THEN BEGIN 14 // from:
  SAY #63440 /* ~"J'ai pas confiance en c'te succube. C'est une fiélonne, c'est vrai ! Tous les fiélons sont pareils. Elle attend qu'tu baisses ta garde pour t'planter ses dents dans le cou. La quitte pas des yeux, ou elle s'en prendra à toi avant qu'tu puisses dire ouf. Tous les fiélons sont comme ça, c'est un fait."~ [ANA602A] */
  IF ~~ THEN EXTERN ~DMORTE~ 621
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63441 /* ~"Oh ouais, mais j'en ai juste les bons côtés. On dirait qu'elle elle a hérité de tous les mauvais."~ [ANA602BA] */
  IF ~~ THEN EXTERN ~DMORTE~ 622
END

IF ~  LastPersonTalkedTo("Grace")
Global("Annah_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #63442 /* ~"Combien de temps tu comptes voyager avec nous, succube ?"~ [ANA604A] */
  IF ~~ THEN EXTERN ~DGRACE~ 366
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63443 /* ~"Et ben, on n'te l'permet pas. J'te fais pas confiance."~ [ANA604BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #63444 /* ~"Donc, quand est-ce qu'tu retournes dans ton bordel, succube ?"~ [ANA605A] */
  IF ~~ THEN EXTERN ~DGRACE~ 367
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63445 /* ~"Ben, c'est à c'milieu qu't'APPARTIENS, alors tu d'vrais peut-être y songer."~ [ANA605BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",3)
~ THEN BEGIN 20 // from:
  SAY #63446 /* ~"T'as intérêt à faire attention, succube. Si tu franchis la limite et qu'tu t'mets à chasser des âmes, t'auras affaire à mes lames."~ [ANA606A] */
  IF ~~ THEN EXTERN ~DGRACE~ 368
END

IF ~~ THEN BEGIN 21 // from:
  SAY #63448 /* ~"Mouais, *j'aimerais* bien croire en ta parole mais, puisque vous autres, les succubes, vous êtes toutes des menteuses parfumées, j'éviterai."~ [ANA606BA] */
  IF ~~ THEN EXTERN ~DGRACE~ 369
END

IF ~~ THEN BEGIN 22 // from:
  SAY #63449 /* ~"Contente-toi de t'tenir à bonne distance de moi. En fait, tu f'rais mieux de t'éloigner de nous *tous*."~ [ANA606CA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",3)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #63450 /* ~"Encore combien d'temps tu comptes rester accrochée à nos basques, succube ?"~ [ANA608A] */
  IF ~~ THEN EXTERN ~DGRACE~ 370
END

IF ~~ THEN BEGIN 24 // from:
  SAY #63451 /* ~"Jalouse ? Je n'suis pas jalouse ! Je n'sais même pas comment ça s'écrit ! C'est juste que j'ai pas confiance en toi… comme tous les autres !"~ [ANA608BB] */
  IF ~~ THEN EXTERN ~DGRACE~ 371
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Annah_Talked_Grace","GLOBAL",5)
~ THEN BEGIN 25 // from:
  SAY #63452 /* ~"J'en ai assez d'elle et d'toi ! Vas-y, reste avec elle si t'apprécies sa compagnie ! J'veux plus rien avoir à faire avec toi !"~ [ANA609A] */
  IF ~~ THEN EXTERN ~DGRACE~ 372
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63453 /* ~"Oh non, pas de 'écoute Annah', catin au cœur noir, ou j'te jure que j'te mets en morceaux ! Toujours à prendre tes grands airs, avec tes vêtements délicats et tes manières hautaines - j'en ai assez d'toi ! Tu peux aller brûler n'importe où, j'm'en fiche !"~ [ANA609BA] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",5)
LeaveParty()
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Annah_Talked_Morte","GLOBAL",9)
~ THEN BEGIN 27 // from:
  SAY #64201 /* ~"Ne t'approche pas de moi, Morte."~ [ANA575F] */
  IF ~~ THEN EXTERN ~DMORTE~ 613
END
