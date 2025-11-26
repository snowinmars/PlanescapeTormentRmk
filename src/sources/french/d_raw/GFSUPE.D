// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFSUPE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~GFSUPE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5336 /* ~"Gardes ! Gardes ! Arrêtez cet homme ! ARRÊTEZ-LE !"~ */
  IF ~~ THEN REPLY #5337 /* ~Terminé.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5338 /* ~"Dégage, bige. Reviens plus tard, et on pourra peut-être discuter."~ */
  IF ~~ THEN REPLY #5339 /* ~"J'ai juste quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #5502 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #5340 /* ~"J'ai… dit… DÉGAGE. Reviens quand tu auras décidé de mieux respecter les instructions."~ */
  IF ~~ THEN REPLY #5341 /* ~Pars.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 20 9 even though they appear after this state */
~  Global("GearRepair","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #5342 /* ~Elle te sourit d'un air sarcastique : "Merci infiniment d'avoir accepté de réparer notre équipement. Ton intérêt pour la Grande Fonderie est touchant et réconfortant. Bige." Elle crache par terre et s'en va.~ */
  IF ~~ THEN REPLY #5343 /* ~Attaque-la.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5344 /* ~"J'ai quelques questions à te poser."~ */ GOTO 4
  IF ~~ THEN REPLY #5345 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #5346 /* ~"Quoi ? Alors grouille-toi, bougre… Les gens comme toi me font perdre patience, et j'ai du pain sur la planche par ta faute."~ */
  IF ~~ THEN REPLY #5347 /* ~"J'ai réfléchi. Je vais t'aider à réparer le matériel."~ */ GOTO 5
  IF ~~ THEN REPLY #5348 /* ~"Peux-tu me rappeler où se trouve le bureau du gratte-papier ?"~ */ GOTO 6
  IF ~~ THEN REPLY #5349 /* ~"Que dois-je faire pour devenir un Homme-Dieu ?"~ */ GOTO 7
  IF ~~ THEN REPLY #5350 /* ~"Qu'est-ce que je peux faire pour toi en compensation ?"~ */ GOTO 8
  IF ~~ THEN REPLY #5351 /* ~"Laisse tomber. Je m'en allais de toute façon."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #5352 /* ~"Oh, alors, comme ça, quand t'as besoin de quelque chose, tu te montres coopératif ? Tes tests ont peut-être tous mis en évidence ton comportement individualiste, bige, mais ce n'est pas pour autant que je les apprécie. Je ne t'apprécie pas non plus, d'ailleurs. Quelqu'un est déjà chargé de les réparer. Alors, va caguer." Elle tourne les talons et s'éloigne.~ */
  IF ~~ THEN REPLY #5353 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 7.0
  SAY #5354 /* ~"Demande à quelqu'un d'autre, bige, ou débrouille-toi tout seul." Elle tourne les talons et s'éloigne.~ */
  IF ~~ THEN REPLY #5355 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #5356 /* ~Elle paraît un moment troublée, comme si elle pesait le pour et le contre entre le fait de t'envoyer caguer ou d'avoir un nouveau membre dans sa faction. À contrecœur, elle explique : "Passe par le mur de droite et va à la Grande Fonderie et dans la salle de réunion. Cherche Keldor de Durian. Il pourra t'aider."~ */
  IF ~~ THEN REPLY #5357 /* ~"Merci. J'ai une autre question."~ */ GOTO 6
  IF ~~ THEN REPLY #5358 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3
  SAY #5359 /* ~"Me revaloir ça ? Ah non ! J'crois pas, bougre. Va te faire voir." Elle tourne les talons et s'éloigne.~ */
  IF ~~ THEN REPLY #5360 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY #5361 /* ~"Bonjour, étranger. En quoi puis-je t'être utile ? Je te prierais d'être bref… nous avons des délais à respecter."~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5362 /* ~"J'ai besoin de me procurer quelque chose auprès du gratte-papier. Où est-ce que je peux le trouver ?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
~ THEN REPLY #5363 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5364 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
~ THEN REPLY #5366 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
~ THEN REPLY #5367 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas et j'ai perdu mon jeton."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
!HasItem("GToken",Myself)
~ THEN REPLY #5368 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas et j'ai perdu mon jeton."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5372 /* ~"J'ai besoin d'utiliser la forge."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5373 /* ~"J'ai besoin d'utiliser la forge."~ */ GOTO 14
  IF ~~ THEN REPLY #5374 /* ~"Où est-ce que je peux me procurer les outils pour travailler à la forge ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5375 /* ~"Je n'ai besoin de rien, je crois. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 16.0
  SAY #5376 /* ~"Tu vois cette salle avec le bureau là-bas ? C'est son bureau. Tu devrais y trouver ce que tu cherches."~ */
  IF ~~ THEN REPLY #5377 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5379 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 16.1
  SAY #5378 /* ~Elle regarde un moment autour d'elle pour s'assurer que personne ne l'observe, puis elle enlève un médaillon en or qu'elle porte autour du cou et te le passe furtivement. "Ne dis à personne qui te l'a donné", murmure-t-elle.~ */
  IF ~~ THEN REPLY #5380 /* ~"Merci. J'ai d'autres questions."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5381 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2 16.2 16.3 16.7 16.8
  SAY #5382 /* ~"J'aimerais t'aider, mais seuls les grossiums peuvent donner cette autorisation. Il faudra en parler à Keldor ou à Sandoz."~ */
  IF ~~ THEN REPLY #5383 /* ~"Bien. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5384 /* ~"Merci pour rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.6 16.10
  SAY #5385 /* ~"Bien sûr. Vérifie que tu as ce qu'il faut : protection contre les flammes, pinces, marteau, sans oublier, bien sûr, le minerai de fer."~ */
  IF ~~ THEN REPLY #5386 /* ~"Bon. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5387 /* ~"Où est-ce que je peux me procurer ces objets ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5388 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.7 16.11
  SAY #5389 /* ~"Nous devons donner une chance aux autres membres de travailler à la forge. Tu l'as déjà bien assez monopolisée comme ça."~ */
  IF ~~ THEN REPLY #5390 /* ~"Bien. Alors, j'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5391 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3 16.4
  SAY #5392 /* ~"Je me ferais une joie de t'aider, mais je crois que j'ai perdu le jeton qui me servait de ticket d'entrée. Toutes mes excuses, étranger."~ */
  IF ~~ THEN REPLY #5393 /* ~"Ce n'est rien. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5394 /* ~"Oh bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0 11.0 12.0 13.0 14.0 15.0 17.0 18.0 19.0 20.0 21.1 22.3 23.5 23.6 24.0 25.2 26.2 27.2 28.0 29.0 32.0 33.1 34.0 35.0 36.0 37.0
  SAY #5395 /* ~"D'autres questions ? Que veux-tu savoir ?"~ */
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #5396 /* ~"J'ai besoin de me procurer quelque chose auprès du gratte-papier. Où est-ce que je peux le trouver ?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5397 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #5398 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalLT("Token_A","GLOBAL",1)
HasItem("Gtoken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5399 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5400 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 15
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5401 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas et j'ai perdu mon jeton."~ */ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_K","GLOBAL",2)
!HasItem("GToken",Myself)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5402 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas et j'ai perdu mon jeton."~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",0)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5403 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",2)
HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5404 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas et j'ai perdu mon jeton."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Token_A","GLOBAL",1)
!HasItem("GToken",Myself)
!Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #5405 /* ~"J'ai besoin d'entrer dans cette salle gardée là-bas et j'ai perdu mon jeton."~ */ GOTO 18
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #5406 /* ~"J'ai besoin d'utiliser la forge."~ */ GOTO 13
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #5407 /* ~"J'ai besoin d'utiliser la forge."~ */ GOTO 14
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5408 /* ~"Sous l'autorité de Keldor, j'enquête sur le meurtre qui a été commis ici. Qu'est-ce que tu peux m'en dire ?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5409 /* ~"Je cherche la sortie."~ */ GOTO 31
  IF ~~ THEN REPLY #5410 /* ~"Je cherche le bureau de récupération. Un objet m'y attend."~ */ GOTO 32
  IF ~~ THEN REPLY #5411 /* ~"Je voudrais faire une visite guidée."~ */ GOTO 33
  IF ~~ THEN REPLY #5412 /* ~"Qui es-tu ?"~ */ GOTO 34
  IF ~~ THEN REPLY #5413 /* ~"Que se passe-t-il ici ?"~ */ GOTO 35
  IF ~~ THEN REPLY #5414 /* ~"Qui sont exactement les Hommes-Dieux ?"~ */ GOTO 36
  IF ~~ THEN REPLY #5415 /* ~"Où est-ce que je peux me procurer les outils pour travailler à la forge ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5416 /* ~"Je n'ai besoin de rien, je crois. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4 16.5
  SAY #5417 /* ~"Heureusement que j'ai toujours le mien. Prends-le, mais ne dis à personne que je te l'ai donné, d'accord ? Bonne chance."~ */
  IF ~~ THEN REPLY #5418 /* ~"Merci. J'ai d'autres questions."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ GOTO 16
  IF ~~ THEN REPLY #5419 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Token_A","GLOBAL",1)
GiveItem("Gtoken",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.5 16.6 16.9
  SAY #5420 /* ~"Je n'en ai plus non plus. Je m'excuse. Tu devras trouver un autre moyen d'entrer."~ */
  IF ~~ THEN REPLY #5421 /* ~"Merci. J'ai d'autres questions."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #5422 /* ~"Merci. Au revoir."~ */ DO ~SetGlobal("Token_A","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 9.8 13.1 16.19 20.1
  SAY #5423 /* ~"Si tu n'en trouves pas par ici, il faudra que tu les achètes au gratte-papier… pour une somme modique, bien sûr."~ */
  IF ~~ THEN REPLY #5424 /* ~"Je vois. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5425 /* ~"Merci. Au revoir."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("G_Test1","GLOBAL",1)
GlobalLT("G_Test1","GLOBAL",6)
~ THEN BEGIN 20 // from:
  SAY #5426 /* ~"Eh bien ? Qu'est-ce que tu attends ? Commence à forger ! On ne peut pas laisser le travail s'entasser pendant que tu rêvasses."~ */
  IF ~~ THEN REPLY #5427 /* ~"Eh bien, j'ai d'abord quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #5428 /* ~"Peux-tu me rappeler où je peux trouver ces objets pour la forge ?"~ */ GOTO 19
  IF ~~ THEN REPLY #5429 /* ~"D'accord, d'accord. Je m'en vais."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("G_Test2","GLOBAL",1)
GlobalLT("G_Test2","GLOBAL",11)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 21 // from:
  SAY #5430 /* ~"Je t'ai déjà dit tout ce que je savais ! Que veux-tu savoir d'autre ?"~ */
  IF ~~ THEN REPLY #5431 /* ~"Je voudrais que tu me racontes de nouveau ton histoire… lentement."~ */ GOTO 22
  IF ~~ THEN REPLY #5432 /* ~"J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5433 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.12 21.0 29.1 30.0
  SAY #5434 /* ~"Tu veux savoir ce que j'ai vu la nuit du meurtre ? Eh bien… je travaillais tard, quand j'ai entendu le bruit d'une bagarre. Quand je suis sortie, j'ai vu une ombre passer dans la salle de réunion et j'ai déclenché l'alarme."~ */
  IF ~~ THEN REPLY #5435 /* ~"As-tu d'autres détails ?"~ */ GOTO 23
  IF ~~ THEN REPLY #5436 /* ~"C'est tout ?"~ */ GOTO 23
  IF ~~ THEN REPLY #5437 /* ~"Qu'est-ce qui me dit que ce n'est pas toi ?"~ */ GOTO 24
  IF ~~ THEN REPLY #5438 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5439 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #5440 /* ~"Je ne connais que trois personnes qui avaient accès au bâtiment cette nuit-là : Thildon, Saros et Bedai-Lihn. Leurs trois silhouettes sont très différentes, mais, dans la fumée de la fonderie, je n'ai rien pu distinguer."~ */
  IF ~~ THEN REPLY #5441 /* ~"Qu'est-ce qui me dit que ce n'est pas toi ?"~ */ GOTO 24
  IF ~~ THEN REPLY #5442 /* ~"Alors, ce sont les trois seuls suspects ? Ça a l'air trop simple."~ */ GOTO 24
  IF ~~ THEN REPLY #5443 /* ~"D'accord. Où est-ce que je peux trouver Thildon ?"~ */ GOTO 25
  IF ~~ THEN REPLY #5445 /* ~"Bien. Où est-ce que je peux trouver Saros ?"~ */ GOTO 26
  IF ~~ THEN REPLY #5446 /* ~"Pratique. Où est-ce que je peux trouver Bedai-Lihn ?"~ */ GOTO 27
  IF ~~ THEN REPLY #5447 /* ~"Bien. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5448 /* ~"J'ai d'autres questions."~ */ GOTO 16
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0 23.1
  SAY #5444 /* ~"J'ai un alibi. Sans compter que Keldor l'a déjà vérifié. Je n'ai rien à cacher. Ce qui ne semble pas être le cas de Thildon, Saros et Bedai-Lihn, car ils n'ont pas voulu se soumettre au sort de Keldor."~ */
  IF ~~ THEN REPLY #5449 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5450 /* ~"Où est-ce que je peux trouver Thildon ?"~ */ GOTO 25
  IF ~~ THEN REPLY #5451 /* ~"Où est-ce que je peux trouver Saros ?"~ */ GOTO 26
  IF ~~ THEN REPLY #5452 /* ~"Où est-ce que je peux trouver Bedai-Lihn ?"~ */ GOTO 27
  IF ~~ THEN REPLY #5453 /* ~"Merci. Ça devrait m'aider. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.1 26.0 27.0
  SAY #5454 /* ~"En général, il va et vient entre la fonderie principale et la salle d'expérimentation. Tu ne devrais pas avoir de mal à le trouver."~ */
  IF ~~ THEN REPLY #5455 /* ~"Où puis-je trouver Saros ?"~ */ GOTO 26
  IF ~~ THEN REPLY #5456 /* ~"Où puis-je trouver Bedai-Lihn ?"~ */ GOTO 27
  IF ~~ THEN REPLY #64145 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #64146 /* ~"Je verrai avec lui. Tu n'as pas fini d'entendre parler de moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.2 25.0 27.1
  SAY #5457 /* ~"Il reste généralement dans la salle de réunion principale. Tu ne peux pas le manquer."~ */
  IF ~~ THEN REPLY #5458 /* ~"Où puis-je trouver Thildon ?"~ */ GOTO 25
  IF ~~ THEN REPLY #5459 /* ~"Où puis-je trouver Bedai-Lihn ?"~ */ GOTO 27
  IF ~~ THEN REPLY #64147 /* ~"J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #64148 /* ~"Je m'en assurerai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.4 24.3 25.1 26.1
  SAY #5460 /* ~"Tu la trouveras dans l'une des zones de la Grande Fonderie. C'est l'une de nos ingénieurs en chef, et c'est donc elle qui dirige cet endroit. Tu devrais la reconnaître sans problème."~ */
  IF ~~ THEN REPLY #5461 /* ~"Où puis-je trouver Thildon ?"~ */ GOTO 25
  IF ~~ THEN REPLY #5462 /* ~"Où puis-je trouver Saros ?"~ */ GOTO 26
  IF ~~ THEN REPLY #64149 /* ~"Je le ferai. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #64150 /* ~"Je le ferai. Au revoir."~ */ EXIT
END

IF WEIGHT #6 ~  Global("GearRepair","GLOBAL",5)
~ THEN BEGIN 28 // from:
  SAY #5463 /* ~"Merci d'avoir réparé notre matériel. On aurait sans doute pu s'en charger, mais ça nous aurait pris bien plus de temps. Merci infiniment. Qu'est-ce que je peux faire d'autre pour toi ?"~ */
  IF ~~ THEN REPLY #5464 /* ~"J'ai des questions."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ GOTO 16
  IF ~~ THEN REPLY #5465 /* ~"Eh bien, pas grand-chose, en fait. Au revoir."~ */ DO ~SetGlobal("GearRepair","GLOBAL",6)
~ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 29 // from:
  SAY #5466 /* ~"Encore toi ? Qu'est-ce que tu veux encore ? Pardon de montrer tant d'impatience, mais nous avons des délais à respecter, ici."~ */
  IF ~~ THEN REPLY #5467 /* ~"J'ai des questions à te poser."~ */ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5468 /* ~"Sous l'autorité de Keldor, j'enquête sur le meurtre qui a été commis ici. Qu'est-ce que tu peux m'en dire ?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5469 /* ~"Rien pour l'instant. Je reviendrai."~ */ EXIT
END

IF WEIGHT #8 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 30 // from:
  SAY #5470 /* ~Tu vois une petite femme avec de petites cornes sur le front et des oreilles fortement repliées sur le crâne. Elle dégage une légère odeur de soufre, même dans la puanteur des flammes de la Grande Fonderie. "Bonjour. Qu'est-ce que je peux faire pour toi ?"~ */
  IF ~  Global("G_Test2","GLOBAL",1)
~ THEN REPLY #5471 /* ~"Sous l'autorité de Keldor, j'enquête sur le meurtre qui a été commis ici. Qu'est-ce que tu peux m'en dire ?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #5472 /* ~"Je cherche la sortie."~ */ GOTO 31
  IF ~~ THEN REPLY #5473 /* ~"Je cherche le bureau de récupération. Un objet m'y attend."~ */ GOTO 32
  IF ~~ THEN REPLY #5474 /* ~"Je voudrais faire une visite guidée."~ */ GOTO 33
  IF ~~ THEN REPLY #5475 /* ~"Qui es-tu ?"~ */ GOTO 34
  IF ~~ THEN REPLY #5476 /* ~"Que se passe-t-il ici ?"~ */ GOTO 35
  IF ~~ THEN REPLY #5477 /* ~"Qui sont exactement les Hommes-Dieux ?"~ */ GOTO 36
  IF ~~ THEN REPLY #5478 /* ~"Rien, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.13 30.1
  SAY #5479 /* ~"Jette un coup d'œil en arrière, par là. Tu vois ce long tunnel ? Contente-toi de le suivre et tu te retrouveras à la porte principale."~ */
  IF ~~ THEN REPLY #5480 /* ~"Merci."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.14 30.2
  SAY #5481 /* ~"C'est cette pièce avec le bureau. Il devrait être assis juste derrière ce bureau."~ */
  IF ~~ THEN REPLY #5482 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5483 /* ~"Merci. Adieu."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.15 30.3
  SAY #5484 /* ~"En temps normal, rien ne pourrait me faire plus plaisir. Malheureusement, nous sommes plutôt occupés en ce moment. Reviens dans un an ou deux, et je me ferai un plaisir de te faire visiter."~ */
  IF ~~ THEN REPLY #5485 /* ~"Qu'est-ce qui se passe ?"~ */ GOTO 35
  IF ~~ THEN REPLY #5486 /* ~"D'accord. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5487 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 16.16 30.4
  SAY #5488 /* ~"Je suis Alissa Tield, directrice de cette zone. Il s'agit de la zone principale de la Grande Fonderie, où le gros de notre travail s'effectue. La Grande Fonderie est encore plus grande, bien sûr, mais nous travaillons sur un gros contrat confidentiel, si bien que la majeure partie de la zone de travail est secrète. Toutes mes excuses."~ */
  IF ~~ THEN REPLY #5489 /* ~"Je comprends. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5490 /* ~"Hors limite ? C'est ridicule ! Adieu !"~ */ EXIT
  IF ~~ THEN REPLY #5491 /* ~"Je vois. Merci de m'avoir accordé un peu de ton temps."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 16.17 30.5 33.0
  SAY #5492 /* ~"On a signé un énorme contrat ultra secret, et il monopolise la quasi-totalité de nos ressources. Nous réservons une petite partie de notre temps à nos autres commandes, mais la Grande Fonderie est actuellement consacrée principalement à ce contrat. Inutile de me demander ce dont il s'agit, je ne te le dirai pas."~ */
  IF ~~ THEN REPLY #5493 /* ~"Tu as l'air très ferme là-dessus. Très bien. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5494 /* ~"Tu as l'air ferme là-dessus. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.18 30.6
  SAY #5495 /* ~"C'est à la fois une faction commune et une faction individuelle ; le thème varie en fonction de la personne à qui l'on s'adresse, mais l'important dans l'affaire est que la vie, enfin, l'existence elle-même, est un test permanent. Tout ce qui nous arrive constitue un test, et notre façon de réagir détermine notre rapprochement de la véritable compréhension universelle. Nous cherchons la vérité derrière le multivers, et nous sommes persuadés que nous agissons comme il faut."~ */
  IF ~~ THEN REPLY #5496 /* ~"Je… je vois. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5497 /* ~"Que dois-je faire pour devenir membre ?"~ */ GOTO 37
  IF ~~ THEN REPLY #5498 /* ~"Hum. Merci de m'avoir accordé un peu de ton temps."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #5499 /* ~"Va parler à Keldor de Durian, dans la salle de réunion, par la porte du mur de droite."~ */
  IF ~~ THEN REPLY #5500 /* ~"Merci. J'ai d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #5501 /* ~"Merci. Adieu."~ */ EXIT
END
