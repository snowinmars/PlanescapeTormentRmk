// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLAN~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #49373 /* ~Tu vois un homme grand, aux cheveux bruns qui lui retombent sur les épaules et aux yeux d'un bleu perçant. Tout ce qu'il observe semble brûler sous son regard. Il est accompagné d'une jeune femme tranquille, qui sourit vaguement à tout ce qu'il dit. Il pose ses superbes yeux bleus sur toi et t'adresse un grand sourire. Il te tend la main : "Moi, c'est Dallan. Ravi de faire ta connaissance."~ */
  IF ~~ THEN REPLY #49374 /* ~"J'avais quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49375 /* ~"Moi de même. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #49376 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #49377 /* ~Dallan te fait de nouveau un grand sourire. "Qu'est-ce qui se passe ?"~ */
  IF ~~ THEN REPLY #49378 /* ~"J'avais quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49379 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 7.0 7.1
  SAY #49380 /* ~"Qu'est-ce que tu veux savoir ?"~ */
  IF ~~ THEN REPLY #49381 /* ~"J'ai entendu dire qu'il y avait un deva dans cette cité."~ */ GOTO 3
  IF ~~ THEN REPLY #49382 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49383 /* ~"Qui est la fille ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49384 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49385 /* ~Il rit et secoue la tête. "Tu as une autre question ?"~ */
  IF ~~ THEN REPLY #49386 /* ~"Oui. Qu'est-ce que tu sais sur ce deva ?"~ */ GOTO 6
  IF ~~ THEN REPLY #49387 /* ~"Qui es-tu ?"~ */ GOTO 4
  IF ~~ THEN REPLY #49388 /* ~"Qui est ton amie, là-bas ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49389 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 5.1 6.2
  SAY #49390 /* ~"Je suis poète, historien, acteur et comique universel. Les doigts les plus rapides de l'Outreterre." Il sourit de nouveau et c'est communicatif. "Du moins, c'est ce que je dis à tout le monde."~ */
  IF ~~ THEN REPLY #49391 /* ~"Alors, parle-moi de ce deva…"~ */ GOTO 6
  IF ~~ THEN REPLY #49392 /* ~"Qui est ton amie ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49393 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.1 6.1
  SAY #49394 /* ~Il sourit d'un air hautain. "C'est une amie. Le reste ne te regarde pas." Elle se dandine légèrement à ses côtés et rougit.~ */
  IF ~~ THEN REPLY #49395 /* ~"Bon, alors parle-moi de ce deva…"~ */ GOTO 6
  IF ~~ THEN REPLY #49396 /* ~"Alors, parle-moi de toi…"~ */ GOTO 4
  IF ~~ THEN REPLY #49397 /* ~"Compris. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0 5.0
  SAY #49398 /* ~Il rit à gorge déployée. "Tout a un prix et je ne suis pas encore prêt à en donner un à cette information. Peut-être plus tard."~ */
  IF ~~ THEN REPLY #49399 /* ~"Et si je te menaçais ?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 7
  IF ~~ THEN REPLY #49400 /* ~"Alors, parle-moi de ton amie, là-bas…"~ */ GOTO 5
  IF ~~ THEN REPLY #49401 /* ~"Alors, parle-moi de toi…"~ */ GOTO 4
  IF ~~ THEN REPLY #49402 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #49403 /* ~Il empoigne vivement son arme. "Eh bien, je suppose qu'on verrait ainsi qui de nous est le meilleur combattant."~ */
  IF ~~ THEN REPLY #49404 /* ~"Cool. Je pose des questions, c'est tout. D'ailleurs, réponds encore à quelques-unes."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANCETOSTAND)
~ GOTO 2
  IF ~~ THEN REPLY #49405 /* ~"Peut-être plus tard. J'avais d'autres questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #49406 /* ~"Hmm. Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 8 // from:
  SAY #49407 /* ~Tu vois un homme grand, aux cheveux bruns qui lui retombent sur les épaules et aux yeux d'un bleu perçant. Tout ce qu'il observe semble brûler sous son regard. Il est accompagné d'une jeune femme tranquille, qui sourit vaguement à tout ce qu'il dit. Il pose ses superbes yeux bleus sur toi et t'adresse un grand sourire. "Moi, c'est Dallan. Tu cherches une Clé."~ */
  IF ~~ THEN REPLY #49408 /* ~"Oui. Qu'est-ce que je dois faire pour l'obtenir ?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Pour obtenir la partie de la clé que détient Dallan, je dois aller voir un officier githyanki dénommé An'izius. Il se trouve près du portail des Carcères, au centre de la ville.~ */ GOTO 10
  IF ~~ THEN REPLY #49409 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",4)
Global("C_Off","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49412 /* ~"Tu veux la Clé, c'est ça ?"~ */
  IF ~~ THEN REPLY #49413 /* ~"Oui. Qu'est-ce que je dois faire pour l'obtenir ?"~ */ DO ~SetGlobal("C_Off","GLOBAL",2)
~ JOURNAL #49411 /* ~Pour obtenir la partie de la clé que détient Dallan, je dois aller voir un officier githyanki dénommé An'izius. Il se trouve près du portail des Carcères, au centre de la ville.~ */ GOTO 10
  IF ~~ THEN REPLY #49414 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #49415 /* ~"Il n'y a pas plus simple. Un des responsables de la cité a quelques… difficultés politiques, disons. Un de ses ennemis, appartenant au conseil municipal, lui crée des ennuis. Va lui parler pour voir ce que tu peux faire pour l'aider. Il s'appelle An'izius - c'est un githyanki, et tu le trouveras près de la porte qui mène aux Carcères, en plein cœur de la cité."~ */
  IF ~~ THEN REPLY #49416 /* ~"Je voudrais te poser quelques questions à ce sujet. Est-ce que c'est un ami à toi ? Quel est ton intérêt dans tout ça ?"~ */ GOTO 11
  IF ~~ THEN REPLY #49418 /* ~"Très bien. Je reviendrai. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #49419 /* ~Son sourire condescendant s'intensifie. "Disons que je compte sur ta discrétion. Tu verras ce que je veux dire."~ */
  IF ~~ THEN REPLY #49421 /* ~"Très bien. Je reviendrai. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",1)
GlobalLT("C_Off","GLOBAL",6)
~ THEN BEGIN 12 // from:
  SAY #49422 /* ~Dallan te fait un autre sourire en glissant le bras autour des épaules de son amie. "Alors, ça se présente comment ? Tu progresses ?"~ */
  IF ~~ THEN REPLY #49423 /* ~"J'y travaille. J'avais des questions à te poser…"~ */ GOTO 13
  IF ~~ THEN REPLY #49424 /* ~"J'y travaille. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49425 /* ~"Peut-être plus tard. J'ai quelque chose d'important à faire pour le moment…" Ses yeux font vaguement le tour de la pièce. "On parlera quand tu auras terminé."~ */
  IF ~~ THEN REPLY #49426 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
Global("Curst_Key","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #49427 /* ~"Je sais que tu as fait du bon travail, l'ami. Intéressant. Alors, la politique de Maudith t'a plu, hein ?" Il vide sa bière d'une traite. "Voilà ce que je t'avais promis." Sa voix devient plus grave et prend une intonation quasi-ritualiste : "Loin des dieux et de la lumière des cieux…" Sa voix redevient normale et il dit : "Pour la dernière partie de la Clé, adresse-toi à Dona Quisho là-bas."~ */
  IF ~~ THEN REPLY #49428 /* ~"J'avais encore quelques questions à te poser, d'abord…"~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan m'a payé en me donnant sa partie de la clé, après quoi il m'a envoyé voir Dona Quisho. Sa partie indique : 'Loin des dieux et de la lumière des cieux…'~ */ GOTO 16
  IF ~~ THEN REPLY #49429 /* ~"Merci. Au revoir."~ */ DO ~AddexperienceParty(87500)
SetGlobal("Curst_Key","GLOBAL",5)
~ JOURNAL #49430 /* ~Dallan m'a payé en me donnant sa partie de la clé, après quoi il m'a envoyé voir Dona Quisho. Sa partie indique : 'Loin des dieux et de la lumière des cieux…'~ */ EXIT
END

IF ~  GlobalGT("C_Off","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",4)
~ THEN BEGIN 15 // from:
  SAY #49431 /* ~"Te revoilà, hein ? Tu ne peux plus te passer de moi ?" La fille qui l'accompagne est perceptiblement différente… On dirait une autre personne, mais comme elle se comporte de la même manière, tu as du mal à savoir si c'est le cas.~ */
  IF ~~ THEN REPLY #49432 /* ~"J'avais des questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #49433 /* ~"Je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.0
  SAY #49434 /* ~"Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #49435 /* ~"Qui est ton amie, là-bas ?"~ */ GOTO 17
  IF ~~ THEN REPLY #49436 /* ~"Pourquoi est-ce que tu voulais que quelqu'un s'occupe de cette affaire ? Quel était ton rôle dans tout ça ?"~ */ GOTO 18
  IF ~~ THEN REPLY #49437 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49438 /* ~"C'est une amie, mon ami, et nous nous entendons très bien. Tu voulais autre chose ?"~ */
  IF ~~ THEN REPLY #49439 /* ~"Oui. Pourquoi est-ce que tu voulais que quelqu'un s'occupe de cette affaire ? Quel était ton rôle dans tout ça ?"~ */ GOTO 18
  IF ~~ THEN REPLY #49440 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1 17.0
  SAY #49441 /* ~"Eh bien, An'Izius m'a interdit de jouer dans cette cité." Il crache par terre. "Et Siabha a refusé de m'aider malgré notre amitié de longue date. Elle a dit qu'elle ne voulait pas s'en mêler. Parce que c'était un salaud avide de pouvoir et elle, une putain en puissance. Je savais que d'une manière ou d'une autre, l'un d'eux tomberait."~ */
  IF ~~ THEN REPLY #49442 /* ~"Je vois. Au revoir."~ */ EXIT
END
