// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65029 /* ~Tu vois un jeune homme au teint pâle et jaunâtre. En t'approchant de lui, tu remarques que sa peau est couverte d'une éruption cutanée. ~ */
  IF ~~ THEN REPLY #65030 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #65031 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65032 /* ~Il t'adresse un regard fatigué et fronce les sourcils. "Qu'est-ce que tu veux, bige ?"~ */
  IF ~~ THEN REPLY #65033 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #65034 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65035 /* ~Son visage exprime maintenant une lassitude extrême. "Je m'excuse, mais je suis plutôt épuisé. Je n'ai pas le temps de te parler…" Il se détourne déjà pour s'en aller. ~ */
  IF ~~ THEN REPLY #65036 /* ~"Cela ne prendra que quelques instants de ton temps…"~ */ GOTO 3
  IF ~~ THEN REPLY #65037 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65038 /* ~"Je n'ai pas une minute à t'accorder. S'il te plaît, demande à quelqu'un d'autre…" Il tourne les talons.~ */
  IF ~~ THEN REPLY #65039 /* ~Pars.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65040 /* ~Tu vois un homme au teint pâle et jaunâtre ; il n'arrête pas de tousser. Il te regarde approcher.~ */
  IF ~~ THEN REPLY #65041 /* ~"Bonjour."~ */ GOTO 5
  IF ~~ THEN REPLY #65042 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65043 /* ~Il te sourit. "Oui…" Il toussote un instant. "Je parie que tu veux me demander quelque chose." ~ */
  IF ~~ THEN REPLY #65044 /* ~"J'ai quelques questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65045 /* ~"Non, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65046 /* ~"Oh… Très bien, demande donc." ~ */
  IF ~~ THEN REPLY #65047 /* ~"Tu ne te sens pas bien ?"~ */ GOTO 7
  IF ~~ THEN REPLY #65048 /* ~"Pourquoi as-tu le teint jaunâtre et cette toux ?"~ */ GOTO 8
  IF ~~ THEN REPLY #65049 /* ~"Peux-tu me parler de ce quartier ?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65050 /* ~"J'ai perdu un crâne. J'essaie de trouver qui me l'a pris." ~ */ GOTO 11
  IF ~~ THEN REPLY #65051 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65052 /* ~Il sourit. "Pas vraiment, mais je suis en meilleure santé que la plupart des pauvres bougres de ce quartier… J'apprécie la courtoisie de ta question mais je suis sûr que tu veux autre chose."~ */
  IF ~~ THEN REPLY #65053 /* ~"Oui. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65054 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65055 /* ~"Ce quartier est plein de fumée ; elle vient des usines et tout. C'est ce qui rend l'air nocif et fait tousser. La plupart des bougres d'ici ont la peau qui jaunit et se couvre d'éruptions." Il s'arrête de parler un moment, puis hausse les épaules. "Personne n'y peut rien, ça fait partie de la vie ici."~ */
  IF ~~ THEN REPLY #65056 /* ~"Je vois. J'ai des questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65057 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65058 /* ~Il hausse les épaules et montre les alentours. "Il suffit de regarder, matois. C'est ni le paradis ni l'enfer. Y'a des endroits plus accueillants, et d'autres qui sont encore plus à éviter."~ */
  IF ~~ THEN REPLY #65059 /* ~"Je connais la Ruche. C'est l'endroit à éviter." ~ */ GOTO 10
  IF ~~ THEN REPLY #65060 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65061 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65062 /* ~Il rit mais doit s'arrêter, de crainte qu'une autre quinte de toux ne le prenne. "Ouais… La Ruche, c'est pas génial mais c'est à deux pas. Tu voulais autre chose, matois ?"~ */
  IF ~~ THEN REPLY #65063 /* ~"J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65064 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65065 /* ~"Pas la moindre idée. Si tu étais dans la ruche, j'aurais tendance à accuser les Hommes-Poussière… Ici, je ne vois pas qui voudrait ça."~ */
  IF ~~ THEN REPLY #65066 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 6
  IF ~~ THEN REPLY #65067 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65068 /* ~Tu vois un homme d'âge moyen à la peau jaunâtre. Il te regarde approcher et soupire. Son regard exprime la lassitude.~ */
  IF ~~ THEN REPLY #65069 /* ~"Bonjour."~ */ GOTO 13
  IF ~~ THEN REPLY #65070 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65071 /* ~"Je sais pas ce que tu veux mais je veux pas te le donner. Va-t'en."~ */
  IF ~~ THEN REPLY #65072 /* ~"J'ai quelques questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #65073 /* ~"Très bien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65074 /* ~"Vraiment ? Si c'est tout ce que tu veux…"~ */
  IF ~~ THEN REPLY #65075 /* ~"Peux-tu me parler de ce quartier ?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65076 /* ~"Quelqu'un m'a volé un crâne et j'essaie de savoir qui."~ */ GOTO 16
  IF ~~ THEN REPLY #65077 /* ~"Peu importe, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65078 /* ~"Ouais, c'est le Bas Quartier. C'est là que vivent les gens ordinaires. Y'a pas grand-chose d'autre à en dire."~ */
  IF ~~ THEN REPLY #65079 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 14
  IF ~~ THEN REPLY #65080 /* ~"Je dois m'en aller, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65081 /* ~Il grogne et fronce les sourcils. "Un crâne ? Par Baator, qu'est-ce qu'un matois - toi y compris - peut bien vouloir faire d'un crâne ?" Il te regarde fixement pendant quelques instants, puis hausse les épaules. "Peu importe, ça ne me regarde pas."~ */
  IF ~~ THEN REPLY #65082 /* ~"Sais-tu qui aurait pu l'emmener ?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65083 /* ~Il secoue la tête lentement. "Non, et plus j'y réfléchis, plus je suis sûr que je ne veux pas savoir…"~ */
  IF ~~ THEN REPLY #65084 /* ~"Merci, au revoir."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65085 /* ~En t'approchant de cet homme, tu te rappelles lui avoir déjà parlé une fois. "Re-bonjour, matois. Tu veux quelque chose ?"~ */
  IF ~~ THEN REPLY #65086 /* ~"Non, au revoir."~ */ EXIT
END
