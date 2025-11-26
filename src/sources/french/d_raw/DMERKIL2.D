// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL2~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10481 /* ~Sans un mot, cet homme revêtu d'une armure imposante tire son arme et t'attaque.~ */
  IF ~~ THEN REPLY #10482 /* ~Attaque-le.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10483 /* ~Fuis.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10484 /* ~Cet homme, un véritable géant en armure, a l'œil acéré… rien de ce qui se passe alentour ne lui échappe. Il n'a pas l'air de vouloir te parler.~ */
  IF ~~ THEN REPLY #10485 /* ~"Je voudrais te poser des questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10486 /* ~"Bonjour ?"~ */ GOTO 2
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10487 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10488 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1 5.0
  SAY #10489 /* ~Il t'observe comme il le ferait d'un insecte, cligne des yeux, puis se détourne sans un mot. Déjà, tu ne l'intéresses plus.~ */
  IF ~~ THEN REPLY #10490 /* ~"Parle ou je t'arrache le cœur, espèce de gros tas de ferraille."~ */ GOTO 3
  IF ~~ THEN REPLY #10491 /* ~"Bonjour ?"~ */ GOTO 3
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10492 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10493 /* ~"Alors, au revoir. Je trouverai mes réponses ailleurs."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #10494 /* ~Tu perçois un grondement issu des profondeurs de sa poitrine. Il caresse son arme et te scrute avec un intérêt renouvelé.~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10495 /* ~"Que peux-tu me dire sur Vhailor ?"~ */ GOTO 4
  IF ~~ THEN REPLY #10496 /* ~"Si c'est ce que tu veux, au revoir."~ */ EXIT
  IF ~~ THEN REPLY #10497 /* ~Attaque-le.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.2 3.0
  SAY #10498 /* ~À ta grande surprise, le géant silencieux réagit. Il se penche vers toi pour te fixer d'un regard vif, sans ciller. Sa voix de basse retentit, amplifiée par sa vaste poitrine : "Vhailor était le meilleur d'entre nous. Un vrai Rectifieur. La justice était sa maîtresse, son sang. À ce qu'on dit, il pouvait voir la pureté des âmes. Il était si dévoué qu'il refusait de se rendre, même s'il était aux portes de la mort. Il a disparu en traquant un criminel par un portail il y a des années. On ne l'a jamais revu. C'est une véritable légende." Il se radosse. De ce moment-là, il ne te prête plus aucune attention.~ */
  IF ~~ THEN REPLY #10499 /* ~"Peux-tu répondre à d'autres questions ?"~ */ GOTO 5
  IF ~~ THEN REPLY #10500 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10501 /* ~"Non." Le rectifieur ne t'a même pas regardé.~ */
  IF ~~ THEN REPLY #10502 /* ~"Je voudrais juste que tu répondes à quelques questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10503 /* ~"Alors, au revoir."~ */ EXIT
END
