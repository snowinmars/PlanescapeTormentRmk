// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33542 /* ~L'air sombre et renfrogné de ce sicaire donne à son visage l'aspect d'un masque grotesque. Il plisse les yeux alors que tu t'approches de lui.~ */
  IF ~~ THEN REPLY #33545 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #33546 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33543 /* ~"Va donc voir ailleurs si j'y suis, espèce d'affreux bâtard ! Personne a dit que tu pouvais m'parler ! Va caguer avant qu'j'en aie marre de ta face et que j'te saigne !"~ */
  IF ~~ THEN REPLY #33544 /* ~"Essaie un peu de m'saigner et c'est toi qui va le regretter."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33547 /* ~Pars.~ */ EXIT
END
