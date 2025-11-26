// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSDTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSDTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2933 /* ~Cet homme aux yeux fous est courbé. Il aboie et hurle à pleins poumons. Sous sa chevelure épaisse et emmêlée, on distingue des tatouages étranges… des visages hurlants, des formes géométriques bizarres et des versets. Il est presque nu, mais la boue et la saleté qui le couvrent lui donnent un semblant de pudeur.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13755 /* ~"Bonjour."~ */ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13756 /* ~"Bonjour."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13757 /* ~Pousse un long cri désespéré.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13758 /* ~Pousse un long cri désespéré.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13759 /* ~Laisse l'homme tranquille.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13760 /* ~Laisse l'homme tranquille.~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0
  SAY #2934 /* ~L'homme tourne autour de toi en grondant. Il continue quelques secondes, puis commence à aboyer violemment. Au loin, tu entends des aboiements lui répondre.~ */
  IF ~~ THEN REPLY #13761 /* ~"J'ai *dit* 'bonjour'."~ */ GOTO 3
  IF ~~ THEN REPLY #13762 /* ~Grogne-lui dessus à ton tour en montrant les dents.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13763 /* ~"Euh… alors, au revoir."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13764 /* ~"Euh… alors, au revoir."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 2 // from: 0.3 4.1
  SAY #13745 /* ~L'homme tourne autour de toi en grondant. Il continue quelques secondes puis esquisse une grimace et rejette la tête en arrière en grondant. Il s'interrompt au bout d'un moment, puis reprend son bondissement, en grondant et en aboyant comme un chien sauvage.~ */
  IF ~~ THEN REPLY #13765 /* ~"J'ai dit, 'bonjour'."~ */ GOTO 3
  IF ~~ THEN REPLY #13766 /* ~Grogne-lui dessus à ton tour en montrant les dents.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13767 /* ~"Euh… c'est sympa de parler avec toi."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13768 /* ~"Euh… c'est sympa de parler avec toi."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0 2.1
  SAY #13746 /* ~Les aboiements de l'homme cessent dans un grondement et il te saute dessus !~ */
  IF ~~ THEN REPLY #13769 /* ~"Si c'est comme ça que tu veux mourir, homme-loup…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #13747 /* ~Cet homme aux yeux fous bondit encore, en aboyant et en hurlant à tue-tête.~ */
  IF ~~ THEN REPLY #13770 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #13771 /* ~Pousse un long cri désespéré.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13772 /* ~Laisse l'homme tranquille.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13773 /* ~Laisse l'homme tranquille.~ */ EXTERN ~DMORTE~ 162
END
