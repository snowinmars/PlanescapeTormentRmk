// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9708 /* ~Cette créature a le corps d'un bélier et le torse d'un homme. Des cornes enroulées jaillissent de sa tête hirsute et sa fourrure est teinte et rasée de façon à donner naissance à des formes complexes. Des perles de couleur et des bijoux simples sont entrelacés dans ses cheveux et pendent à ses cornes. Elle ne semble pas t'avoir remarqué.~ */
  IF ~~ THEN REPLY #7544 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #7565 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2725 /* ~Soit il ne t'a pas entendu, soit il a fait semblant ; on a l'impression que cette créature va bouger.~ */
  IF ~~ THEN REPLY #7623 /* ~"J'ai dit, 'bonjour'."~ */ GOTO 2
  IF ~~ THEN REPLY #7646 /* ~Laisse-le passer.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2734 /* ~Il te regarde avec méfiance… cette créature a l'air soupçonneux, mais tu ne sembles pas l'effrayer.~ */
  IF ~~ THEN REPLY #12334 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #12335 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2743 /* ~La voix de la créature, profonde, résonne. "Dans les rues de la Ruche ? Ce n'est pas un endroit pour ces choses. Laisse-moi à mes affaires ; peut-être nous rencontrerons-nous dans un meilleur endroit et nous en parlerons."~ */
  IF ~~ THEN REPLY #12336 /* ~"Je voulais juste te poser quelques questions…"~ */ GOTO 4
  IF ~~ THEN REPLY #12337 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2753 /* ~"Une autre fois, deux-jambes… une autre fois." La créature commence à s'éloigner.~ */
  IF ~~ THEN REPLY #12339 /* ~Attaque-le au moment où il part.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12340 /* ~Laisse-le partir.~ */ EXIT
END
