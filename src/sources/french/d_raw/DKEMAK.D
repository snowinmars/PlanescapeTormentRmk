// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKEMAK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKEMAK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57593 /* ~Tu aperçois un jeune homme vêtu pauvrement. Il fait un geste obscène à ton approche.~ */
  IF ~~ THEN REPLY #57594 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #57595 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57596 /* ~"Prends un balai et va caguer, bige." Il te regarde d'un air méchant.~ */
  IF ~~ THEN REPLY #57597 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #57598 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57599 /* ~"J'me fiche de tes questions comme du derrière d'un rat. J't'ai dit d'aller caguer, alors fiche le camp !"~ */
  IF ~~ THEN REPLY #57600 /* ~"Je crois que je vais t'apprendre les manières à coups de poing."~ */ GOTO 3
  IF ~~ THEN REPLY #57601 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57602 /* ~Il sourit d'un air rusé. "Essaie voir, bige. J'suis ici parce que j'tue sans remords les béjaunes comme toi…"~ */
  IF ~~ THEN REPLY #57604 /* ~"Je suis ici parce que je le veux, et je partirai quand je l'aurai décidé."~ */ GOTO 4
  IF ~~ THEN REPLY #57606 /* ~Attaque-le : "Je ne suis pas contre un défi…" ~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57611 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57614 /* ~Il te regarde fixement pour mieux évaluer tes propos. Tu vois ses yeux suivre tes cicatrices puis se planter dans les tiens. Après un instant, il déglutit nerveusement. "Tu es sérieux… pas vrai ?" Il attend ta réponse, puis hausse les épaules. "Alors, qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #57615 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #57617 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #57618 /* ~"Pose-les…"~ */
  IF ~~ THEN REPLY #57620 /* ~"Qui es-tu ?"~ */ GOTO 6
  IF ~~ THEN REPLY #57621 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 8
  IF ~~ THEN REPLY #57622 /* ~"Je cherche un deva. Il est censé être là en bas."~ */ GOTO 9
  IF ~~ THEN REPLY #57623 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57625 /* ~Il hésite avant de répondre. "Kemak, mais tout le monde m'appelle Kem. J'aime pas ça, remarque…"~ */
  IF ~~ THEN REPLY #57626 /* ~"Pourquoi es-tu ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #57627 /* ~"J'ai quelques questions…~ */ GOTO 5
  IF ~~ THEN REPLY #57629 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57631 /* ~"J'me suis saoulé un soir et j'me suis battu. On dit qu'j'ai tué un bougre… j'sais pas, j'me souviens plus." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #57632 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #57634 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #57635 /* ~"J'sais pas grand-chose, J'suis ici depuis le début…" Il s'interrompt pour réfléchir. "L'est faite d'une série d'anneaux: l'extérieur, le central, et l'intérieur. Plus ton crime est grand, plus tu te rapproches de l'intérieur. Ici, dans le cercle intérieur, on trouve tous les types dangereux."~ */
  IF ~~ THEN REPLY #57638 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #57640 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #57642 /* ~"Vraiment ? fait-il, surpris. "Qu'est-ce qu'un deva ficherait par ici… à moins d'avoir fait quelque chose de terrible." Il te regarde, attendant quelque chose.~ */
  IF ~~ THEN REPLY #57644 /* ~"Je ne sais pas. As-tu entendu parler de lui ?"~ */ GOTO 10
  IF ~~ THEN REPLY #57646 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #57647 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57649 /* ~Il secoue la tête. "Non, rien." Il te fait un sourire comique. "J'pige pas grand-chose à ce que tu racontes."~ */
  IF ~~ THEN REPLY #57651 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #57652 /* ~"Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57653 /* ~Tu aperçois Kemak. Il fronce les sourcils à ton approche. "Encore toi, comme c'est gentil. Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #57655 /* ~"J'ai des questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #57657 /* ~"Rien, au revoir."~ */ EXIT
END
