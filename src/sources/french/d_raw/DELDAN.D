// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELDAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELDAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57545 /* ~Tu aperçois un vieil homme à la chevelure blanche et clairsemée. Ses habits ne sont pas neufs, mais ce ne sont pas non plus les loques portées par les autres prisonniers. Tu remarques des livres et des parchemins autour de lui. Il hausse un sourcil à ton approche.~ */
  IF ~~ THEN REPLY #57546 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57547 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57548 /* ~Il te dévisage et sourit. "Et bien… qu'est-ce que nous avons là ? Tu as l'air en piteux état, jeune homme…" Il continue à t'examiner, puis hausse les épaules. "Qu'est-ce que tu me veux ?"~ */
  IF ~~ THEN REPLY #57549 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57550 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.1 7.0 8.0 9.0
  SAY #57551 /* ~"Je peux peut-être t'aider. Pose tes questions." Il sourit.~ */
  IF ~~ THEN REPLY #57552 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #57553 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #57554 /* ~"On m'a dit qu'il y avait un deva par ici. Tu en as entendu parler ?"~ */ GOTO 8
  IF ~~ THEN REPLY #57555 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57556 /* ~"Je suis Eldan, un homme peu important ayant subi des revers de fortune…"~ */
  IF ~~ THEN REPLY #57557 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #57558 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57559 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57560 /* ~Il fronce les sourcils. "Mon employeur n'a plus eu besoin de mes services. Plutôt que de mettre un terme à mon emploi - et à mon existence - il a fait en sorte que je sois interné ici."~ */
  IF ~~ THEN REPLY #57561 /* ~"Pourquoi ferait-il cela ?"~ */ GOTO 5
  IF ~~ THEN REPLY #57562 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57563 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57564 /* ~"Il a pris part à des affaires douteuses et j'étais son scribe. Il m'a mis ici pour s'assurer que ses secrets seraient bien gardés… loin de ceux qui cherchent à les découvrir." Il soupire. "J'imagine qu'il vaut mieux ça que la mort, mais pas de beaucoup."~ */
  IF ~~ THEN REPLY #57565 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57566 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #57567 /* ~Il hausse les épaules. "Je ne sais rien, à part le fait que c'est une prison. Je suis dans cette cellule depuis mon arrivée et je ne vois pas grand intérêt à explorer ce qui paraît de manière évidente être un endroit dangereux."~ */
  IF ~~ THEN REPLY #57568 /* ~"Tu ne quittes jamais ta cellule ?"~ */ GOTO 7
  IF ~~ THEN REPLY #57569 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57570 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57571 /* ~"Non…" Il détourne le regard.~ */
  IF ~~ THEN REPLY #57572 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57573 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57574 /* ~Il fronce les sourcils et te regarde d'un air interrogateur. "Un deva ? J'ai du mal à imaginer ça… qu'est-ce qu'un deva ferait ici ?" Il hausse les épaules.~ */
  IF ~~ THEN REPLY #57576 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57577 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #57575 /* ~Tu aperçois Eldan. Il sourit à ton approche. "Tu me fais à nouveau la grâce de ta présence… pourquoi ?"~ */
  IF ~~ THEN REPLY #57578 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57579 /* ~"Peu importe, au revoir."~ */ EXIT
END
