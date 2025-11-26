// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROYALGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DROYALGD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51341 /* ~Ce squelette imposant (bien plus grand qu'un squelette humain ordinaire) porte une armure de bronze ornée et gravée de symboles complexes. À ton approche, il te jette un bref coup d'œil, puis détourne le regard.~ */
  IF ~~ THEN REPLY #51342 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #51409 /* ~Laisse le squelette géant tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51410 /* ~"Bonjour, Vivant", retentit la voix de la chose. "Je suis un Garde Royal de sa majesté le Roi Silencieux. Je dois te demander d'éviter de me poser des questions pour ne pas me distraire de ma tâche."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51412 /* ~"Mais à quoi peuvent lui servir des gardes puisqu'il est mort ?"~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51411 /* ~"Mais à quoi peuvent lui servir des gardes puisqu'il est mort ?"~ */ GOTO 2
  IF ~~ THEN REPLY #51414 /* ~"Peux-tu au moins me dire qui tu es… ou étais ?"~ */ GOTO 4
  IF ~~ THEN REPLY #51415 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1
  SAY #51413 /* ~Le squelette géant sursaute, regarde autour de lui, puis te réprimande, en serrant les dents : "Tais-toi, imbécile ! Ose répéter ça et tu ne feras plus partie du monde des Vivants !"~ */
  IF ~~ THEN REPLY #51416 /* ~"Bon. Mais tu peux peut-être me dire qui tu es… où plutôt qui tu étais."~ */ GOTO 4
  IF ~~ THEN REPLY #51417 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #51418 /* ~"Le Roi Silencieux est bien plus qu'un corps flétri, Vivant. Même à l'époque, révolue depuis bien longtemps, où il nous parlait, le Roi Silencieux était bien *plus* qu'un homme admirable. Il est une *institution*, une institution que je protège depuis deux cents ans. Sa volonté continue à s'exprimer par les voix d'Hargrimm et de Salie Marie et, jusqu'à ce que mes os ne soient plus que poussière foulée au talon par un puissant ennemi, il en sera toujours ainsi."~ */
  IF ~~ THEN REPLY #51419 /* ~"Je vois. Qui es-tu… ou plutôt, qui étais-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #51420 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0
  SAY #51421 /* ~"J'étais, comme je le suis toujours, l'un des Quatre-Vingt-Dix-Neuf Fils des Montagnes Occidentales, conçus lorsque le membre d'Amahar fut tranché et jeté à la face d'Ith'hyr. L'honneur nous dictant de défendre notre reine, nous fûmes perdus pour ce monde lorsque les nôtres, notre reine comprise, furent décimés par le courroux d'un être divin, qui n'était autre qu'un frère d'Amahar. Nombres d'entre nous errent dans les plans, mais certains, comme moi, ont choisi de rester à Sigil. À ma mort, on m'a enterré ici et, plus tard, je me suis réveillé dans l'état dans lequel tu peux me voir aujourd'hui. J'ai alors choisi de défendre un nouveau maître, le Roi Silencieux."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51422 /* ~"Mais à quoi bon le défendre puisqu'il est mort ?"~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51423 /* ~"Pourquoi le défendre ? Il est mort après tout…"~ */ GOTO 2
  IF ~~ THEN REPLY #51424 /* ~"Je vois. Au revoir."~ */ EXIT
END
