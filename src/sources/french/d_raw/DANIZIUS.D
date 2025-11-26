// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANIZIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANIZIUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #59314 /* ~Le githyanki te regarde amèrement. Lorsque tu essaies de lui parler, il crache par terre et se détourne.~ */
  IF ~~ THEN REPLY #59317 /* ~"Alors, au revoir."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("Ddakkon")
~ THEN BEGIN 1 // from:
  SAY #59321 /* ~Tu vois un githyanki à la peau jaunâtre, au visage fin et à l'air méchant qui marche d'un pas assuré. Sa rage est presque palpable. Alors que tu t'approches de lui, il te regarde. "Qu'est-ce que tu veux ?" grogne-t-il.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59323 /* ~"Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59327 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #59328 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 3
  IF ~~ THEN REPLY #59329 /* ~"Est-ce que tu as entendu parler d'un deva ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #59331 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.2 18.1 25.1
  SAY #59334 /* ~"Je m'appelle An'izius et tu dois m'appeler Votre Honneur. Je fais partie des chefs de la cité et j'ai gagné cet honneur." Il te regarde de plus près. "Tu n'es pas d'ici. Qu'est-ce que tu veux ?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59335 /* ~"Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59338 /* ~"Je cherche un deva."~ */ GOTO 4
  IF ~~ THEN REPLY #59339 /* ~"Je cherche ce que j'ai perdu."~ */ GOTO 5
  IF ~~ THEN REPLY #59341 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 18.2 25.2
  SAY #59345 /* ~Il pouffe. "Demande à quelqu'un qui a du temps. J'ai des affaires d'État dans la tête."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59346 /* ~"Un ami m'a dit que vous aviez besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59350 /* ~"Des affaires d'État ?"~ */ GOTO 6
  IF ~~ THEN REPLY #59352 /* ~"Mais qui êtes-vous ?"~ */ GOTO 2
  IF ~~ THEN REPLY #59354 /* ~"Je cherche un deva."~ */ GOTO 4
  IF ~~ THEN REPLY #59356 /* ~"Je le ferai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.1 3.3 18.3 25.3
  SAY #59401 /* ~Il fronce les sourcils. "Un deva ? Qu'est-ce que tu ferais avec un deva, et pourquoi tu en cherches un à Maudith ?"~ */
  IF ~~ THEN REPLY #59410 /* ~"Je crois qu'il renferme le secret de ma mortalité."~ */ GOTO 7
  IF ~~ THEN REPLY #59411 /* ~"J'ai entendu dire qu'il y en avait un ici. Tu sais quelque chose là-dessus ?"~ */ GOTO 8
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59413 /* ~"Laisse tomber. Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59415 /* ~"Laisse tomber. Je dois partir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #59417 /* ~"De quoi peut-il s'agir ? En tant que chef de la cité, je peux peut-être t'aider."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59418 /* ~"En tant que chef de la cité, tu risques d'avoir besoin de *moi*. Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59419 /* ~"J'ai perdu ma mortalité. Il faut que je la retrouve."~ */ GOTO 7
  IF ~~ THEN REPLY #59420 /* ~"Rien d'important. Je me débrouillerai tout seul."~ */ GOTO 9
  IF ~~ THEN REPLY #59421 /* ~"Rien d'important. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 8.0
  SAY #59422 /* ~Il te dévisage, comme s'il voulait lire dans ton esprit, et te juge : "Rien auquel tu pourrais contribuer. Maintenant, écarte-toi. Je dois réfléchir."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59423 /* ~"Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59424 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.1
  SAY #59427 /* ~Il te regarde comme si tu avais sombré dans la folie. "Je peux peut-être t'aider. Tu veux que je t'aide ?"~ */
  IF ~~ THEN REPLY #59431 /* ~"Non, je vais me débrouiller tout seul. Au revoir"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #59434 /* ~"Je ne vois pas." Il continue à te regarder. "Si tu veux bien m'excuser, j'ai des choses importantes à faire."~ */
  IF ~~ THEN REPLY #59436 /* ~"Des affaires d'État ?"~ */ GOTO 6
  IF ~~ THEN REPLY #59438 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #59441 /* ~"Alors, pourquoi tu m'as dérangé dans mes pensées ? Je devrais te mettre aux fers ! Va-t'en !" Il se détourne de toi.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59444 /* ~"Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59448 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #59451 /* ~"Parfait. Tu trouveras peut-être ton deva une fois enfermé sous Maudith. Gardes !" Des gardes se matérialisent tout autour de toi et tu reçois un gros coup sur la nuque. Tout devient noir…~ */
  IF ~~ THEN REPLY #59454 /* ~"Malédictions…"~ */ DO ~FadeToColor([20.0],0)
SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 4.2 5.0 6.0 9.0 18.0 25.0
  SAY #59460 /* ~Son intensité redouble. "Qu'est-ce que tu as entendu ?"~ */
  IF ~~ THEN REPLY #59462 /* ~"Juste que tu avais des ennuis avec un ennemi politique."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #59464 /* ~Ses yeux s'écarquillent pendant une fraction de seconde avant de se plisser de nouveau. "Je vois. Et tu vas m'aider ?"~ */
  IF ~~ THEN REPLY #59468 /* ~"Tout dépend de ce que tu veux de moi."~ */ GOTO 14
  IF ~~ THEN REPLY #59471 /* ~"Oui."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59473 /* ~"Non."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.1
  SAY #59485 /* ~"Alors, tu ne m'es d'aucune utilité. Va-t'en !" Il te fait signe de t'en aller et t'ignore.~ */
  IF ~~ THEN REPLY #59486 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #59490 /* ~"Quelle nature délicate ! Un rival a besoin d'éducation. Tu n'auras pas à la tuer, si cela te dégoûte."~ */
  IF ~~ THEN REPLY #59493 /* ~"Bon, je m'en charge."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59496 /* ~"Laisse tomber."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0 19.0
  SAY #59499 /* ~"Voilà ce que tu dois faire : cette femme, Siabha… elle vend son influence au plus offrant, ce qui affecte ma position auprès du Maire de cette cité. Je veux l'humilier. Tout ce que tu dois faire, c'est dire à un capitaine des gardes qu'elle a essayé de t'embaucher pour m'attaquer et tu seras bien récompensé."~ */
  IF ~~ THEN REPLY #59502 /* ~"Je vais revenir."~ */ JOURNAL #59505 /* ~An'Izius, fonctionnaire githyanki de la ville de Maudith, souhaite que j'humilie l'une de ses adversaires politiques en mentant au capitaine de la garde.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("Ddakkon")
~ THEN BEGIN 16 // from:
  SAY #59515 /* ~Tu vois un githyanki à la peau jaunâtre, au visage fin et à l'air méchant qui marche d'un pas assuré. Sa rage est presque palpable. Alors que tu t'approches de lui, il te regarde. "Qu'est-ce que tu veux ?" grogne-t-il.~ */
  IF ~~ THEN REPLY #59516 /* ~"J'ai quelques questions à te poser…"~ */ EXTERN ~DDAKKON~ 357
END

IF ~~ THEN BEGIN 17 // from:
  SAY #59519 /* ~Le githyanki plisse les yeux. "J'ai mis de côté la haine que j'éprouvais pour ton peuple. J'ai dépassé l'inimitié mesquine que se vouent nos deux races. C'est pour cela que j'ai été exilé, mais dans mon cœur, je les ai toujours préférés. Peux-tu en dire de même ?"~ */
  IF ~~ THEN REPLY #59526 /* ~"Très bien, vous deux… ça suffit. J'avais quelques questions."~ */ GOTO 18
  IF ~~ THEN REPLY #59527 /* ~"Laisse tomber. On s'en va."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #59530 /* ~"Quelles sont-elles ?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59533 /* ~"Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59537 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #59540 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 3
  IF ~~ THEN REPLY #59542 /* ~"Est-ce que tu as entendu parler d'un deva ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #59544 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("C_Off","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #59547 /* ~"Qu'est-ce que tu veux, chien ?"~ */
  IF ~~ THEN REPLY #59549 /* ~"J'ai changé d'avis. Je vais t'aider. Qu'est-ce que tu veux ?"~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59553 /* ~"Rien. Au revoir."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",9)
~ THEN BEGIN 20 // from:
  SAY #59558 /* ~"Eh bien ? Et ta progression ?"~ */
  IF ~  Global("C_Off","GLOBAL",4)
~ THEN REPLY #59560 /* ~"Ta rivale m'a proposé une grosse somme pour te duper."~ */ GOTO 21
  IF ~  Global("C_Off","GLOBAL",7)
~ THEN REPLY #59562 /* ~"J'ai parlé au capitaine des gardes et il a dit qu'il enverrait un détachement pour l'escorter jusqu'à la prison."~ */ DO ~SetGlobal("C_Off","GLOBAL",9)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #59578 /* ~An'Izius m'a offert une belle somme pour livrer Siabha aux gardes de Maudith. C'est plus qu'assez pour un petit mensonge.~ */ GOTO 22
  IF ~~ THEN REPLY #59568 /* ~"J'y travaille. J'avais quelques questions…"~ */ GOTO 23
  IF ~~ THEN REPLY #59574 /* ~"J'y travaille. Je vais revenir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #59582 /* ~"Quoi ? Je la doublerai moi-même !"~ */
  IF ~~ THEN REPLY #59585 /* ~"C'est d'accord."~ */ DO ~SetGlobal("C_Off","GLOBAL",5)
~ GOTO 23
  IF ~~ THEN REPLY #59588 /* ~"On verra. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #59590 /* ~"Alors, je te dois ça." Il te tend une bourse remplie de pièces. "Maintenant, va-t'en."~ */
  IF ~~ THEN REPLY #59592 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0
  SAY #59595 /* ~"Alors va-t'en ! Va-t'en ! Ou je t'écorche vif !"~ */
  IF ~~ THEN REPLY #59599 /* ~"Au revoir."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #59601 /* ~"Nous n'avons plus rien à nous dire. Notre travail est terminé. Il ne faut pas éveiller les soupçons. Va-t'en."~ */
  IF ~~ THEN REPLY #59603 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 25 // from:
  SAY #59605 /* ~"Pourquoi tu me tourmentes comme ça ?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59606 /* ~"Un ami m'a dit que tu avais besoin d'aide."~ */ GOTO 11
  IF ~~ THEN REPLY #59609 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #59610 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 3
  IF ~~ THEN REPLY #59611 /* ~"Est-ce que tu as entendu parler d'un deva ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #59612 /* ~"Rien. Laisse tomber."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 26 // from:
  SAY #66922 /* ~Le fonctionnaire githyanki a l'air désespéré. "Je t'en prie, l'étranger, aide-moi ! Tu dois convaincre le juge que les crimes dont il m'accuse ne reposent que sur des insinuations !"~ */
  IF ~~ THEN REPLY #66923 /* ~"Je vais essayer…"~ */ EXIT
  IF ~~ THEN REPLY #66924 /* ~"Nous verrons bien…"~ */ EXIT
END
