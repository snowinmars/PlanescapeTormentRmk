// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMMOURN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMMOURN~

IF ~  Global("Widow_Pissed","AR0200",0)
~ THEN BEGIN 0 // from:
  SAY #34081 /* ~Le poids d'une grosse perte semble peser sur cette vieille femme, comme un manteau noir. Alors que tu la regardes, un long et triste soupir s'échappe de ses lèvres.~ */
  IF ~~ THEN REPLY #34082 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #34083 /* ~Laisse la femme.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34084 /* ~Elle pose les yeux sur toi, des yeux brumeux, plissés sous l'effort, pour te voir clairement. "Pardonne-moi, jeune matois, mais je suis une vieille femme, et je ne vois pas bien… nous connaissons-nous ?"~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #34085 /* ~"Non."~ */ GOTO 2
  IF ~~ THEN REPLY #34086 /* ~"Peut-être, mais moi, je ne te connais pas."~ */ GOTO 2
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #34087 /* ~"On s'est déjà rencontrés par hasard, c'est tout."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #34088 /* ~Elle rumine ta réponse pendant un instant, secouant la tête. "Qu'est-ce que tu voulais savoir ?"~ */
  IF ~~ THEN REPLY #34089 /* ~"J'ai quelques questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #34090 /* ~"Rien, en fait. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #34091 /* ~"Des questions ?" Elle devient froide. "Oh, non… Tu es un 'aventurier', n'est-ce pas ? Le nom, l'boulot et tout ça, hein ? Pas pour moi ! Fiche le camp !"~ */
  IF ~~ THEN REPLY #34092 /* ~"Je ne suis pas un aventurier."~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34093 /* ~"Non, pas du tout… Enfin, pas vraiment…"~ */ DO ~SetGlobal("Widow_Pissed","AR0200",1)
~ GOTO 4
  IF ~~ THEN REPLY #34094 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #34095 /* ~"Bâcle ça !" La femme te met le doigt sous le nez. "J'ai vu les Hommes-Poussière mettre le nom de mon mari, damnée soit son âme, mon fils, et mes deux filles sur leur monument, tous des aventuriers ! Ouais, j'ai tiré plus d'une épée *moi-même* dans l'temps, alors j'en reconnais un quand j'le rencontre !" La vieille femme semble en proie à une crise. Son visage rougit et des postillons s'envolent de ses lèvres alors qu'elle te hurle dessus.~ */
  IF ~~ THEN REPLY #34096 /* ~Laisse-la poursuivre sa tirade.~ */ GOTO 5
  IF ~~ THEN REPLY #34097 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34098 /* ~"J'parie qu't'as tout un tas de questions azimutées !" Elle mime ton attitude héroïque : "Bonjour, j'ai quelques questions… peux-tu m'parler d'cet endroit ? Qui est la Dame des Douleurs ? J'cherche la Gaine de Fer de Frime, tu l'as vue ? Est-ce que tu sais où se trouve le portail qui mène à la 2817e strate des Abysses ? Est-ce que tu sais où est le Saint-Marteau-Blesseur-et-Tueur-de-Groins-et-Éclaireur-de-trou-du-fût ?" Elle crache. "Fumier, qu'du fumier tout ça ! Ça te rapporte que l'livre des morts ! J'devrais te frapper les tibias rien qu'pour avoir embêté une pauvre vieille femme avec ça ! Maintenant fiche le camp et laisse-moi tranquille !"~ */
  IF ~~ THEN REPLY #34099 /* ~Pars.~ */ EXIT
END

IF ~  Global("Widow_Pissed","AR0200",1)
~ THEN BEGIN 6 // from:
  SAY #34100 /* ~Alors que la vieille femme jette un coup d'œil à ton visage, son expression devient amère. "Nan, nan, nan ! Pas encore toi ! J'te dirai pas un mot d'plus, alors dégage ! *DÉGAGE* !"~ */
  IF ~~ THEN REPLY #34101 /* ~Pars.~ */ EXIT
END
