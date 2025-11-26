// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3202 /* ~Cet aristocrate fringant te regarde approcher d'un air hautain. "Je suis ici pour parler aux dames, monsieur, *pas* à quelqu'un de ton espèce. J'espère que tu n'as pas prévu de m'importuner avec tes questions."~ */
  IF ~~ THEN REPLY #3203 /* ~"En fait, j'avais quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #40142 /* ~"Je te conseille de faire preuve d'un peu plus de respect."~ */ GOTO 3
  IF ~~ THEN REPLY #40143 /* ~"Si, mais je ne vais pas perdre mon temps. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #40144 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40145 /* ~"Tu m'imposes encore ta présence. Si j'avais voulu parler à quelqu'un de *ton* espèce, eh bien, il y en a tout un quartier à l'est d'ici. Maintenant laisse-moi tranquille."~ */
  IF ~~ THEN REPLY #40146 /* ~"Je te conseille de faire preuve d'un peu plus de respect."~ */ GOTO 3
  IF ~~ THEN REPLY #40147 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #40148 /* ~L'aristocrate plisse les yeux en te voyant. "Ça m'est égal… complètement égal ! Et maintenant, ouste ! Va-t'en, laisse-moi tranquille."~ */
  IF ~~ THEN REPLY #40149 /* ~"Je te conseille de faire preuve d'un peu plus de respect."~ */ GOTO 3
  IF ~~ THEN REPLY #40150 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0
  SAY #40151 /* ~Il ferme les yeux et inspire profondément, comme pour se calmer. "S'il faut en arriver là pour me débarrasser de toi, alors très bien : serais-tu assez *aimable*, je te le demande humblement, pour me laisser tranquille et aller chercher un interlocuteur *ailleurs*."~ */
  IF ~~ THEN REPLY #40152 /* ~"Bon… Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #40153 /* ~Pars.~ */ EXIT
END
