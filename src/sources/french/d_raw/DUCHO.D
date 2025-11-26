// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUCHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUCHO~

IF ~  True()
True()
~ THEN BEGIN 0 // from:
  SAY #49968 /* ~Cette belle et séduisante prostituée se démarque de celles que tu as vues à la Ruche. Elle sent le parfum chic et les contours de son visage sont subtilement rehaussés par des traits aux couleurs douces et chaudes. Elle te sourit alors que tu t'approches et te salue avec grâce. "Bonjour. Tu cherches à assouvir un plaisir que la Maison de tolérance de Maîtresse Grâce ne peut satisfaire, j'espère ?"~ */
  IF ~  Global("AR0605_Visited","GLOBAL",0)
~ THEN REPLY #61436 /* ~"Je ne connais pas de "Maison de Tolérance",' mais je veux bien essayer ce que tu as à proposer."~ */ GOTO 4
  IF ~  Global("AR0605_Visited","GLOBAL",1)
~ THEN REPLY #61437 /* ~"Oui."~ */ GOTO 4
  IF ~  Global("Morte_UCHO","GLOBAL",1)
~ THEN REPLY #61438 /* ~"Non, pas moi, mais il faudrait le proposer à Morte…"~ */ GOTO 9
  IF ~~ THEN REPLY #61439 /* ~"Non… mais j'ai quelques questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #61440 /* ~"Non merci. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY #49972 /* ~Elle pose un doigt sur tes lèvres pour te faire taire. "Je ne réponds qu'à une question, monsieur, et la réponse est : "Oui, pour cinq cents pièces," tu vois ?~ */
  IF ~~ THEN REPLY #49973 /* ~"Cinq cents ? C'est un peu cher…"~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61441 /* ~"Parfait. Oui, allons-y."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61442 /* ~"Parfait. Oui, allons-y."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61443 /* ~"Parfait. Oui, allons-y."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61444 /* ~"Je n'ai pas assez, en fait."~ */ GOTO 7
  IF ~~ THEN REPLY #61445 /* ~"Non merci. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.5 3.7 4.5
  SAY #49975 /* ~"Dommage. N'hésite pas à revenir, mon bon monsieur, si jamais tu changes d'avis. Je t'attendrai avec impatience. Au revoir."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #49976 /* ~Pars.~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61446 /* ~Pars.~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61447 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #49977 /* ~Elle sourit. "Oh, vraiment, mon bon monsieur…" Elle se rapproche de toi pour te chuchoter quelque chose à l'oreille : "Ça en vaut vraiment la peine."~ */
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #49978 /* ~"Parfait. Oui, allons-y."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61448 /* ~"Parfait. Oui, allons-y."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61449 /* ~"Parfait. Oui, allons-y."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61450 /* ~"Je n'ai pas assez, en fait."~ */ GOTO 7
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61451 /* ~"J'en doute. Au revoir."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61452 /* ~"J'en doute. Au revoir."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61453 /* ~"J'en doute. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #61454 /* ~"Non, merci. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1
  SAY #61401 /* ~"Cinq cents pièces, mon bon monsieur, et mille plaisirs…" Elle incline la tête d'un air candide et t'adresse un sourire espiègle. "Tu me suis, alors?"~ */
  IF ~~ THEN REPLY #61459 /* ~"Cinq cents ? C'est un peu cher…"~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61455 /* ~"Excellent. On y va."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61456 /* ~"Excellent. On y va."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61457 /* ~"Excellent. On y va."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61458 /* ~"Je n'ai pas assez, en fait."~ */ GOTO 7
  IF ~~ THEN REPLY #61460 /* ~"Non, merci. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #61402 /* ~La courtisane a un sourire narquois et te fait la révérence. "Peut-être une autre fois, mon bon monsieur. Viens moins… accompagné. Au revoir."~ */
  IF ~~ THEN REPLY #61461 /* ~"Zut, Annah… bon, au revoir."~ */ EXIT
  IF ~~ THEN REPLY #61462 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61403 /* ~La courtisane recule, apeurée. Une fois hors de portée d'Annah, elle reprend contenance et grimace à l'adresse de la tieffeline. "On n'est pas dans ton caniveau de la Ruche, sang-mêlée… avise-toi un peu de me toucher et toute une patrouille de l'Harmonium te traînera hors du Quartier par la queue !"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 286
END

IF ~~ THEN BEGIN 7 // from: 1.4 3.3 4.4
  SAY #61404 /* ~"Dommage. S'il te plaît, reviens si ta situation… évolue. Je t'attendrai bien volontiers. Au revoir."~ */
  IF ~~ THEN REPLY #61463 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 3.0 4.1
  SAY #61405 /* ~"Bon… j'espère que ça t'a plu, mon bon monsieur."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61464 /* ~"Ne t'en fais pas ; il n'y a aucun doute. Au revoir."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61465 /* ~"Ne t'en fais pas ; il n'y a aucun doute. Au revoir."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61466 /* ~"Ne t'en fais pas ; il n'y a aucun doute. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY #61406 /* ~La jeune femme étudie Morte d'un œil critique, puis hoche la tête. "Oui… oui, ça devrait être possible. Je ne doute pas de trouver… un angle d'attaque. Pour le même tarif, bien sûr - à peine cinq cents communs."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61467 /* ~"Bien sûr. Voilà…"~ */ DO ~TakePartyGold(500)
IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
~ EXTERN ~DMORTE~ 601
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61468 /* ~"Navré, Morte. On n'a pas assez de cuivre. Allons-y."~ */ EXIT
  IF ~~ THEN REPLY #61469 /* ~"En fait, Morte, il faut qu'on y aille. Au revoir, mademoiselle."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61407 /* ~La courtisane revient enfin, suivie de Morte qui vole plus erratiquement que d'habitude. Il est revêtu d'une sorte d'enduit brillant - comme si on l'avait ciré - et arbore une tache rouge en forme de lèvres sur l'occiput. "Ça a eu l'air de plaire à ton… mimir ?… mon bon monsieur."~ */
  IF ~~ THEN REPLY #61470 /* ~"Morte ?"~ */ EXTERN ~DMORTE~ 602
  IF ~~ THEN REPLY #61471 /* ~"Bien. Au revoir."~ */ EXIT
END
