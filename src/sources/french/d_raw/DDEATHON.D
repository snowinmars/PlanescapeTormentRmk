// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHON~

IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7288 /* ~Tu vois un Homme-Poussière au sourire de travers. Malgré ce sourire, ses yeux sont durs comme de la pierre. Son bras droit est plus court que le gauche et il le garde collé au flanc, comme s'il portait un bébé.~ */
  IF ~~ THEN REPLY #7289 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7290 /* ~Laisse l'homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7291 /* ~Les yeux de l'Homme-Poussière se posent sur toi. "Nom." Dans sa bouche, ce mot résonne comme un son de cloche.~ */
  IF ~~ THEN REPLY #7292 /* ~"Je… je ne sais pas."~ */ GOTO 2
  IF ~~ THEN REPLY #7293 /* ~"Euh… désolé de t'avoir dérangé."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 9.0
  SAY #7294 /* ~"Pas de nom, pas de nom, j'peux pas t'aider." Le timbre de la voix de l'Homme-Poussière est étrangement chantant. "Il m'faut un nom, sinon tu pourras pas voir son emplacement."~ */
  IF ~~ THEN REPLY #7295 /* ~"Quoi ?"~ */ DO ~SetGlobal("Death_of_Names","GLOBAL",1)
~ JOURNAL #66659 /* ~J'ai rencontré un Homme-Poussière estropié près du Mémorial Homme-Poussière. On l'appelle 'Mort-des-Noms', et son travail consiste apparemment à 'enterrer' les noms en les inscrivant sur les murs du monument ; Ce lieu me rend mal à l'aise ; chacun de ses murs me semble être une pierre tombale géante.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7296 /* ~"On reçoit un nom à la naissance, et on le rend quand on n'en a plus besoin. Mort-des-Noms, Mort-des-Noms." Ses yeux parcourent le monolithe, puis les murs. "Y a beaucoup d'noms qui ont été enterrés ici par Mort-des-Noms. Dis-moi un nom et je te montrerai son tombeau."~ */
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7297 /* ~"Xachariah."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7298 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7299 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7300 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7303 /* ~"Quentin."~ */ GOTO 13
  IF ~~ THEN REPLY #7304 /* ~"Euh… je ne sais pas. Essaie 'Adahn'."~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #9766 /* ~"Hmmm. Peux-tu enterrer un nom pour moi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #9767 /* ~"Pas de nom aujourd'hui. Excuse-moi, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.5 5.3 5.5 9.4 9.6 9.10
  SAY #7305 /* ~Il secoue la tête. "Ce nom est pas encore mort. Pas enterré ici. Pas encore temps, pas encore temps."~ */
  IF ~~ THEN REPLY #7306 /* ~"Laisse-moi essayer un autre nom…"~ */ GOTO 9
  IF ~~ THEN REPLY #7307 /* ~"Peux-tu enterrer un nom pour moi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #7308 /* ~"Très… très bien. Pardon, je ne voulais pas te déranger."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.1 7.1 9.1 10.2 11.1 12.1 13.2 14.1 16.1
  SAY #7309 /* ~Il acquiesce, puis sort sa petite main. Elle semble atrophiée… Elle a la taille d'une main d'enfant. "Ça coûte cher d'enterrer un nom. Trois pièces de cuivre, ouais, trois."~ */
  IF ~  PartyGoldGT(2)
GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7310 /* ~"Xachariah."~ */ GOTO 12
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7311 /* ~"Deionarra."~ */ GOTO 12
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",0)
~ THEN REPLY #7312 /* ~"Dhall."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Dhall","GLOBAL",1)
~ GOTO 6
  IF ~  PartyGoldGT(2)
GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7313 /* ~"Dhall."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
Dead("Quentin")
Global("Death_of_Names_Quentin","GLOBAL",0)
~ THEN REPLY #7317 /* ~"Quentin."~ */ DO ~TakePartyGold(3)
SetGlobal("Death_of_Names_Quentin","GLOBAL",1)
~ GOTO 15
  IF ~  PartyGoldGT(2)
GlobalGT("Quentin","GLOBAL",0)
!Dead("Quentin")
~ THEN REPLY #9768 /* ~"Quentin."~ */ GOTO 4
  IF ~  PartyGoldGT(2)
Global("Crier_Quest","GLOBAL",1)
~ THEN REPLY #9769 /* ~"Hmmmm…. Es-Annon."~ */ DO ~TakePartyGold(3)
AddexperienceParty(500)
SetGlobal("Crier_Quest","GLOBAL",2)
~ JOURNAL #26108 /* ~J'ai fait graver le nom de la Cité d'Es-Annon sur le Mémorial Homme-Poussière, à l'extérieur de la Morgue. Je vais y retourner et prévenir le Crieur d'Es-Annon qu'il est déchargé de son devoir de commémoration.~ */ GOTO 6
  IF ~  PartyGoldLT(3)
~ THEN REPLY #9770 /* ~"Je n'ai pas de… jonc. Peut-être une autre fois."~ */ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #26086 /* ~"Pas de nom aujourd'hui. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 5.6
  SAY #7350 /* ~Les pièces tombent dans la main de Mort-des-Noms, qui replie son bras. Ses yeux, soudain réanimés, roulent à l'arrière de sa tête, puis se précipitent à l'avant et commencent à parcourir à toute vitesse le monolithe et les murs du monument.~ */
  IF ~~ THEN REPLY #7351 /* ~Attends…~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7352 /* ~Il remarque un point sur le mur, accoure, s'abaisse et se met à enlever des éclats de mur. Il s'interrompt au bout de quelques instants, lève la tête puis se retourne vers toi. "Enterré." Ce mot porte en lui une finalité qui te met mal à l'aise.~ */
  IF ~~ THEN REPLY #7353 /* ~"J'aimerais que tu cherches un nom pour moi…"~ */ GOTO 9
  IF ~~ THEN REPLY #7354 /* ~"J'aimerais enterrer un autre nom."~ */ GOTO 5
  IF ~~ THEN REPLY #7355 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7356 /* ~Tu aperçois Mort-des-Noms. Il se tient à côté du monument et arbore le même sourire de travers, le bras collé à son flanc.~ */
  IF ~~ THEN REPLY #7357 /* ~"Bonjour."~ */ GOTO 9
  IF ~~ THEN REPLY #7358 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 8.0 10.1 11.0 12.0 13.1 14.0 16.0
  SAY #7359 /* ~Une fois de plus, il te dévisage du regard. "Nom." Dans sa bouche, ce mot résonne comme un son de cloche.~ */
  IF ~~ THEN REPLY #7360 /* ~"Je… je ne sais pas."~ */ GOTO 2
  IF ~~ THEN REPLY #7361 /* ~"J'aimerais enterrer un nom."~ */ GOTO 5
  IF ~  GlobalGT("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #7362 /* ~"Xachariah."~ */ GOTO 10
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7363 /* ~"Deionarra."~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Dead("Dhall")
~ THEN REPLY #7364 /* ~"Dhall."~ */ GOTO 4
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Dead("Dhall")
Global("Death_of_Names_Dhall","GLOBAL",1)
~ THEN REPLY #7365 /* ~"Dhall."~ */ GOTO 10
  IF ~  Global("Know_Xixi","GLOBAL",1)
GlobalLT("Xixi_Back","GLOBAL",2)
~ THEN REPLY #7366 /* ~"Xixi."~ */ GOTO 4
  IF ~  Global("Know_Xixi","GLOBAL",1)
Global("Xixi_Back","GLOBAL",3)
~ THEN REPLY #7367 /* ~"Xixi."~ */ GOTO 10
  IF ~  Global("Death_of_Names_Quentin","GLOBAL",1)
~ THEN REPLY #7368 /* ~"Quentin."~ */ GOTO 13
  IF ~  Global("Crier_Quest","GLOBAL",2)
~ THEN REPLY #9771 /* ~"Es-Annon."~ */ GOTO 10
  IF ~~ THEN REPLY #9772 /* ~"Euh… 'Adahn' ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALAdahn_Death_of_Names_1","GLOBALAdahn",1)
~ GOTO 4
  IF ~~ THEN REPLY #26109 /* ~"Excuse-moi de t'avoir dérangé. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.0 3.1 3.3 9.2 9.3 9.5 9.7 9.9
  SAY #7369 /* ~Ses yeux se mettent à tourner dans leurs orbites puis reviennent en place. Dans un éclair sauvage, ils parcourent les murs du monument, lisant les noms à une vitesse inhumaine. Il indique ensuite une section du mur. "Enterré."~ */
  IF ~~ THEN REPLY #7370 /* ~Examine l'endroit qu'il t'indique.~ */ GOTO 11
  IF ~~ THEN REPLY #7371 /* ~"J'avais un autre nom…"~ */ GOTO 9
  IF ~~ THEN REPLY #7372 /* ~"J'aimerais enterrer un nom."~ */ GOTO 5
  IF ~~ THEN REPLY #7373 /* ~"Je venais voir, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7374 /* ~Le nom que tu recherches est gravé dans la pierre noire en petits caractères irréguliers. Il est presque noyé dans la masse des noms qui l'entourent.~ */
  IF ~~ THEN REPLY #7375 /* ~"J'avais un autre nom…"~ */ GOTO 9
  IF ~~ THEN REPLY #7376 /* ~"J'aimerais enterrer un nom…"~ */ GOTO 5
  IF ~~ THEN REPLY #7377 /* ~"Je venais voir, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 5.1
  SAY #7378 /* ~Il secoue la tête. "Enterré."~ */
  IF ~~ THEN REPLY #7380 /* ~"J'avais un autre nom…"~ */ GOTO 9
  IF ~~ THEN REPLY #7382 /* ~"J'aimerais enterrer un nom…"~ */ GOTO 5
  IF ~~ THEN REPLY #7383 /* ~"Je venais voir, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.4 9.8
  SAY #7384 /* ~Ses yeux roulent à l'arrière de sa tête, puis reviennent précipitamment. Dans un éclair sauvage, ils parcourent les murs du monument, lisant les noms à une vitesse inhumaine. Il indique ensuite la base du monument. "Enterré."~ */
  IF ~~ THEN REPLY #7386 /* ~Examine l'endroit qu'il t'indique.~ */ GOTO 14
  IF ~~ THEN REPLY #7387 /* ~"J'avais un autre nom…"~ */ GOTO 9
  IF ~~ THEN REPLY #7388 /* ~"J'aimerais enterrer un nom."~ */ GOTO 5
  IF ~~ THEN REPLY #7390 /* ~"Je venais voir, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7391 /* ~Le nom de Quentin est gravé dans la pierre noire en petits caractères irréguliers. Malheureusement pour Quentin, son nom ne semble pas avoir suffi à fendre le monument comme il l'espérait.~ */
  IF ~~ THEN REPLY #7392 /* ~"J'avais un autre nom…"~ */ GOTO 9
  IF ~~ THEN REPLY #7394 /* ~"J'aimerais enterrer un nom…"~ */ GOTO 5
  IF ~~ THEN REPLY #7403 /* ~"Je venais voir, c'est tout. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.4
  SAY #7404 /* ~Les pièces tombent dans la main de Mort-des-Noms, qui replie son bras. Ses yeux, soudain réanimés, roulent à l'arrière de sa tête, puis se précipitent à l'avant et commencent à parcourir à toute vitesse le monolithe et les murs du monument.~ */
  IF ~~ THEN REPLY #7405 /* ~Attends…~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7406 /* ~Il se retourne vers la base du monolithe, accoure, s'abaisse, puis commence à enlever des éclats de monument. Malheureusement pour Quentin, le monument ne bouge pas une fois son nom gravé. Mort-des-Noms s'arrête au bout de quelques instants, lève la tête, puis se tourne vers toi. "Enterré." Ce mot porte en lui une finalité qui te met mal à l'aise.~ */
  IF ~~ THEN REPLY #7407 /* ~"J'aimerais que tu cherches un nom pour moi…"~ */ GOTO 9
  IF ~~ THEN REPLY #7408 /* ~"J'aimerais enterrer un autre nom."~ */ GOTO 5
  IF ~~ THEN REPLY #7409 /* ~"Merci. Au revoir."~ */ EXIT
END
