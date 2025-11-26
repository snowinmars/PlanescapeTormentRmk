// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47965 /* ~Tu vois un homme plus âgé et vigoureux qui semble surveiller les ouvriers du marché. Il lance parfois un ordre aux ouvriers, qui s'exécutent immédiatement. Il fronce les sourcils en te voyant approcher.~ */
  IF ~~ THEN REPLY #47966 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #47967 /* ~Ignore-le.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47968 /* ~Il fronce les sourcils d'un air mécontent. "Je te connais, tu es le type qui pose des questions." Il te fixe pour te défier de nier.~ */
  IF ~~ THEN REPLY #47970 /* ~"Oui, et j'ai aussi quelques questions pour toi…"~ */ GOTO 2
  IF ~~ THEN REPLY #47971 /* ~Attitude : "Et si c'était le cas ?"~ */ GOTO 4
  IF ~~ THEN REPLY #47972 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #47973 /* ~Il acquiesce d'un air hautain. "Ouais, eh bien, je n'ai pas le temps de répondre à tes questions. Je te conseille de partir sinon j'appelle les gardes… Et arrête d'ennuyer mes hommes, compris ?"~ */
  IF ~~ THEN REPLY #47974 /* ~"Alors, appelle les gardes. Je peux me défendre."~ */ GOTO 3
  IF ~~ THEN REPLY #47975 /* ~"Bon, je m'en vais. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47976 /* ~Il hoche la tête. "Comme tu voudras, espèce de bige azimuté. Gardes ! J'ai besoin d'aide ici !"~ */
  IF ~~ THEN REPLY #47978 /* ~Pars avant qu'ils arrivent.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #47979 /* ~Il fronce les yeux vers toi. "Eh bien, si c'est le cas, tu dois savoir que tu es un vrai casse-pieds et je n'ai pas de temps à perdre avec les casse-pieds. Mes hommes non plus d'ailleurs, alors laisse-les tranquilles."~ */
  IF ~~ THEN REPLY #47980 /* ~"Je voudrais juste que tu répondes à quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #47981 /* ~"Je n'aime pas beaucoup ton attitude. Et si je t'apprenais les bonnes manières ?"~ */ GOTO 5
  IF ~~ THEN REPLY #47982 /* ~"Va caguer, bige ! Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #47983 /* ~Il commence à dire quelque chose, puis s'arrête pour t'observer et examiner les cicatrices qui couvrent ton corps. Il se retourne vers un garde situé à proximité et ouvre la bouche…~ */
  IF ~~ THEN REPLY #47984 /* ~Vérité : "Je peux te tordre le cou avant même que tu aies le temps de prononcer un seul mot…"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marketman_1","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47985 /* ~Bluff : "Je peux te tordre le cou avant même que tu aies le temps de prononcer un seul mot…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marketman_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47986 /* ~Pars avant de perdre le contrôle de la situation.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #47987 /* ~Il t'observe minutieusement et tu as l'impression d'être passé au crible. "J'ai… du travail et je n'ai pas de temps pour ça. Au revoir." Il tourne les talons et s'en va.~ */
  IF ~~ THEN REPLY #47988 /* ~Pars.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #47989 /* ~Tu vois un homme plus âgé et vigoureux qui semble surveiller tous les ouvriers du marché. Parfois, il lance un ordre aux ouvriers, qui s'exécutent immédiatement. Il fronce les sourcils en te voyant approcher. "Eh bien… encore le casse-pieds. J'ai rien à te dire, bige. Alors, débarrasse le plancher !"~ */
  IF ~~ THEN REPLY #47990 /* ~Pars.~ */ EXIT
END
