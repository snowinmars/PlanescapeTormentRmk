// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEVORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEVORE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48410 /* ~Tu vois un petit homme aux yeux remplis de ressentiment refoulé. Il lance des ordres à ses ouvriers et se retourne d'un air impatient vers toi. "Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #48411 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48412 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #48413 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48414 /* ~"J'ai parlé avec Sinistrescalp. Il m'a dit que tu avais quelque chose qui lui appartenait."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48415 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Anarchist_Treasure","GLOBAL",2)
~ THEN BEGIN 1 // from: 8.0
  SAY #48416 /* ~"Je n'ai rien pour toi, l'ami, rien du tout. Laisse-moi faire mon travail en paix, d'accord ? S'il se passe quelque chose, reviens ici, on s'occupera de toi, mais pour le moment, il ne faut pas qu'on nous voie ensemble."~ */
  IF ~~ THEN REPLY #48417 /* ~"Très bien. Au revoir."~ */ JOURNAL #47845 /* ~Devore le marchand m'a proposé de revenir à son entrepôt en cas de pépin. En échange, je lui ai promis de le laisser tranquille.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #48418 /* ~"Quoi, encore toi ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #48419 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48420 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #48421 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48422 /* ~"J'ai parlé avec Sinistrescalp. Il m'a dit que tu avais quelque chose qui lui appartenait."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48423 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 2.0 7.0
  SAY #48424 /* ~"Moi, c'est Devore. Voilà mon entrepôt. Voilà mes ouvriers. Tu es en train de me faire perdre mon temps."~ */
  IF ~~ THEN REPLY #48425 /* ~"Très bien. J'avais d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #48426 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 2.1 7.1
  SAY #48427 /* ~Il soupire, exaspéré. "C'est un entrepôt. On y stocke des tas de choses - des armes, de l'or, de l'alcool, des étoffes, de la nourriture - tout ce dont les hommes ont besoin, quoi. Tu as déjà entendu parler des entrepôts, n'est-ce pas ?"~ */
  IF ~~ THEN REPLY #48428 /* ~"Bien sûr. J'avais d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #48429 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 2.2 7.2
  SAY #48430 /* ~"C'est une cité où les gens essaient de gagner leur vie. On s'en sort tous en faisant ce qu'on peut, mais on est parfois interrompus par des aventuriers qui semblent penser que tout ce qu'on a à faire, c'est de les attendre à longueur de journée pour répondre à leurs questions."~ */
  IF ~~ THEN REPLY #48431 /* ~"Très bien, j'avais d'autres questions…"~ */ GOTO 7
  IF ~~ THEN REPLY #48432 /* ~"J'ai compris le message. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 2.3 7.3
  SAY #48433 /* ~"Sinistrescalp ? Comment, il n'est pas mort ? La dernière fois que je l'ai vu, il se traînait vers… Oh, j'y suis. Il t'a envoyé pour me forcer à abandonner sa part du butin. Ou pour gentiment me la demander… À moins qu'il soit arrivé quelque chose à l'Anarchiste de Sigil ? Il a toujours aimé le danger. C'est par hasard que nous… ou plutôt, ILS, hé hé hé… ont réussi à le planter de plusieurs coups de couteaux. Je vais aller chercher son butin. Je reviens."~ */
  IF ~~ THEN REPLY #48434 /* ~"Dépêche-toi."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveGoldForce(250)
GiveItemCreate("OgrGaunt",Protagonist,1,0,0)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 3.0 4.0 5.0
  SAY #48435 /* ~Il soupire. "Quoi ?"~ */
  IF ~~ THEN REPLY #48436 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #48437 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #48438 /* ~"Qu'est-ce que tu peux me dire sur Maudith ?"~ */ GOTO 5
  IF ~  Global("Anarchist_Treasure","GLOBAL",1)
~ THEN REPLY #48439 /* ~"J'ai parlé avec Sinistrescalp. Il m'a dit que tu avais quelque chose qui lui appartenait."~ */ DO ~SetGlobal("Anarchist_Treasure","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 6
  IF ~~ THEN REPLY #48443 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #48440 /* ~Il revient avec un sac de pièces et une paire de dangereux gantelets. Il regarde nerveusement autour de lui et dit : "Tiens. Prends ça. Et maintenant, débarrasse le plancher."~ */
  IF ~~ THEN REPLY #48441 /* ~"J'avais encore quelques questions à te poser…"~ */ GOTO 1
  IF ~~ THEN REPLY #48442 /* ~"Au revoir."~ */ EXIT
END
