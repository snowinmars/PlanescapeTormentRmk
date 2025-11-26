// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBERROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBERROG~

IF ~  Global("Current_Area","GLOBAL",704)
Global("Know_Berrog","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3184 /* ~Tu vois un homme timide, aux yeux effarouchés. "Je t'en prie, ne me fais pas mal !" souffle-t-il. "Ils me tueront s'ils me trouvent !"~ */
  IF ~~ THEN REPLY #3185 /* ~"Qui va te tuer ?"~ */ GOTO 5
  IF ~~ THEN REPLY #56942 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #56943 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 7
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",0)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #56944 /* ~Tu aperçois un homme timide à l'air innocent dont les joues sont baignées de larmes. Coincé sous un wagon, il semble mourir à petit feu. Il lève un regard plein de douleur vers toi. "S'il te plaît, l'ami… sors-moi de là. J'vais quand même pas mourir comme ça…"~ */
  IF ~~ THEN REPLY #56945 /* ~"D'accord, je vais t'en débarrasser."~ */ GOTO 10
  IF ~~ THEN REPLY #56946 /* ~"Laisse tomber."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",1)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #56947 /* ~Tu aperçois Berrog Lestesemelle, l'apprenti-sauveur de devas, coincé sous un wagon qui a perdu un essieu. "S'il te plaît, l'ami… sors-moi de là."~ */
  IF ~~ THEN REPLY #56948 /* ~"D'accord, je vais t'en débarrasser."~ */ GOTO 10
  IF ~~ THEN REPLY #56949 /* ~"Laisse tomber."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY #56951 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #56952 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 6.1 7.2 8.2
  SAY #56954 /* ~"Les gardes. Ils sont après moi. Je crois que j'ai offensé quelqu'un de mes questions, ou dit quelque chose qu'il ne fallait pas. Je donnais juste mon avis, mais on dirait qu'il faut parler d'une certaine manière, ici. Tout est corrompu !"~ */
  IF ~~ THEN REPLY #56956 /* ~"Mais qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #56957 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #56958 /* ~"D'où viens-tu ?"~ */ GOTO 8
  IF ~~ THEN REPLY #56960 /* ~"Alors va-t'en."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.1 5.0 7.1 8.0
  SAY #56962 /* ~"Je suis Berrog Lestesemelle, voyageur et trouveur de solutions. Tu pourrais me considérer comme un voleur, mais je préfère me présenter comme ingénieur en énigmes, pièges et autres. Je n'utilise mes dons que pour les bonnes causes - je déteste faire du mal. Je crois qu'on utilise les ingénieurs à d'autres fins, ici." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #56965 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #56966 /* ~"Qui va te tuer ?"~ */ GOTO 5
  IF ~~ THEN REPLY #56968 /* ~"Alors va-t'en."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 0.2 5.1 6.0 8.1
  SAY #56969 /* ~"Je suis venu à Maudith parce que j'ai entendu dire qu'il y avait un deva coincé ici, et puisque j'ai des amis archons au Mont Céleste, je me suis dit que je pouvais l'aider. Mais cette ville… cet endroit est un cloaque, et je ne peux faire confiance à personne ! Comment est-ce que ces gens peuvent vivre comme ça ? Il faut que je m'en aille !"~ */
  IF ~~ THEN REPLY #56970 /* ~"Parle-moi du Mont Céleste."~ */ GOTO 8
  IF ~~ THEN REPLY #56971 /* ~"Mais qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #56972 /* ~"Qui va te tuer ?"~ */ GOTO 5
  IF ~~ THEN REPLY #56973 /* ~"Alors va-t'en."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 7.0
  SAY #56974 /* ~Son air devient rêveur. "Toute chose a sa place ici, et tout est beau. Des tas d'archons ailés évoluent dans les cieux en décrivant des figures à t'arracher une larme. Les fruits sont plus beaux, le gibier plus gros et les maisons ouvertes à tous. Pourtant, on s'efforce toujours de s'améliorer, en testant notre vertu et en nous rapprochant de la bonté… Je devrais rentrer chez moi dès que je le pourrai…"~ */
  IF ~~ THEN REPLY #56975 /* ~"Mais qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #56976 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #56977 /* ~"Qui essaie de te tuer ?"~ */ GOTO 5
  IF ~~ THEN REPLY #56978 /* ~"Alors va-t'en."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.3 6.2 7.3 8.3
  SAY #56979 /* ~Il te regarde d'un air incrédule. "Merci ! Tu ne me reverras pas !" Il décampe.~ */
  IF ~~ THEN REPLY #56980 /* ~"Au revoir."~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0 2.0
  SAY #56981 /* ~"Attends ! Est-ce… est-ce que cet autre gars est toujours coincé de l'autre côté ?"~ */
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #56982 /* ~"Il est toujours là-bas."~ */ GOTO 12
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #56983 /* ~"Il est déjà mort."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 13.1
  SAY #56992 /* ~"S'il te plaît… s'il te plaît…" Il tourne la tête dans la boue et pleure doucement.~ */
  IF ~~ THEN REPLY #56993 /* ~Pars.~ */ EXIT
  IF ~~ THEN REPLY #56994 /* ~Tue-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_2","GLOBALGood",-3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #56995 /* ~"Il… il faut que tu trouves un moyen de le sauver aussi. Plutôt lui que moi. Je crois qu'il était le maire de ce bled… du moins, si c'est le titre qu'on donne à cette fonction, ici."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 28
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #56996 /* ~"Alors soulève, l'ami…"~ */
  IF ~~ THEN REPLY #56997 /* ~Soulève-le.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #56998 /* ~"Pas grave. Je reviendrai peut-être plus tard."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.1
  SAY #56999 /* ~Il rampe tandis que tu pousses le wagon de côté. "Merci, l'ami. J'en ai…  assez de ce bled. Je retourne au Mont Céleste. J'espère que tes bonnes actions seront… récompensées, où que tu ailles." Il regarde le deva debout sur le balcon. "Je peux pas croire que je suis venu ici pour voir… ça."~ */
  IF ~~ THEN REPLY #57000 /* ~"De bonnes intentions et tout ça… au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #57001 /* ~"Aïeee ! Il y a quelqu'un de l'autre côté ! Tu es en train de me tuer !"~ */
  IF ~~ THEN REPLY #57002 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #57003 /* ~"Que fais-tu là-dessous ?"~ */ GOTO 17
  IF ~~ THEN REPLY #57004 /* ~Continue de soulever : "Dommage."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57005 /* ~"Mon nom… est Berrog Lestesemelle… je suis venu à Maudith pour libérer le deva… une créature du bien…. mais j'ai été mal informé. J'aurais jamais dû venir…"~ */
  IF ~~ THEN REPLY #57006 /* ~"Que fais-tu là-dessous ?"~ */ GOTO 17
  IF ~~ THEN REPLY #57007 /* ~Soulève le chariot du côté du maire : "Probablement pas."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57008 /* ~Soulève le chariot du côté de Berrog.~ */ EXTERN ~DBURGHER~ 23
  IF ~~ THEN REPLY #57009 /* ~"Peut-être que je ferais mieux de revenir plus tard…Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57010 /* ~"Je… fuyais la cité… lorsqu'elle a commencé à glisser. J'étais près de… lui… et il m'a attrapé. Le chariot est tombé du ciel et il a essayé de me pousser dessous… pendant qu'il s'échappait. Mais je te demande quand même… de trouver un moyen de le libérer aussi."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #57012 /* ~"Tu ne gagnes rien en me libérant… je dois l'avouer. Mais certainement que… le bien y gagnera… si tu me sauves sans rien espérer en retour… et nous sauver tous les deux serait encore mieux."~ */
  IF ~~ THEN REPLY #57013 /* ~Soulève le chariot du côté du maire : "Oui, mais il est utile."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57014 /* ~Soulève le chariot du côté de Berrog : "Il n'en vaut pas la peine."~ */ DO ~Kill("Burgher")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57015 /* ~"Et si je soulevais des deux côtés ? Mes compagnons et moi pouvons le faire si on s'y met tous."~ */ EXTERN ~DBURGHER~ 26
  IF ~~ THEN REPLY #57016 /* ~"J'essaierai de trouver une solution. Au revoir."~ */ EXIT
END
