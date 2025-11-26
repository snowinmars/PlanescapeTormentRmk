// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIMPULSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIMPULSE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52690 /* ~Cet énorme cristal émet une lumière vibrante, spectrale, tandis qu'il flotte au-dessus du cratère, au milieu de la pièce. Le rythme de la vibration te fait penser à un pouls lent et malade. La lumière du cristal touche les bords de la pièce comme des doigts, chaque rayon jetant une ombre sur les visages en ruines des statues qui l'entourent.~ */
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
!Dead("IgnusF")
~ THEN REPLY #52691 /* ~Touche le cristal…~ */ GOTO 2
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
!Dead("VhailF")
~ THEN REPLY #64586 /* ~Touche le cristal…~ */ GOTO 3
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Dead("IgnusF")
~ THEN REPLY #64587 /* ~Touche le cristal…~ */ GOTO 1
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Dead("VhailF")
~ THEN REPLY #64588 /* ~Touche le cristal…~ */ GOTO 1
  IF ~~ THEN REPLY #64589 /* ~Laisse le cristal.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.3
  SAY #59895 /* ~S'ensuit un moment d'étourdissement alors que tu touches le cristal, puis un frisson lent te traverse le corps et tu te rends compte que tes muscles sont bloqués et que ta main est gelée à la surface du cristal. Il y a un moment de silence, puis une douleur aiguë te traverse le corps, comme une fracture - tu as l'impression que tout ton ÊTRE a été transformé en glace avant de se *briser*…~ */
  IF ~~ THEN REPLY #59896 /* ~Tu sombres dans l'obscurité…~ */ DO ~TeleportParty("AR1203",[932.703],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64590 /* ~Alors que tu touches le cristal, tu sens une onde de chaleur accompagnée d'une lumière blanche et orange. Tu retires aussitôt ta main. Le cristal irradie comme les flammes d'Ignus. À l'intérieur, une pâle lumière blanc bleuté danse et vacille comme du feu.~ */
  IF ~~ THEN REPLY #64591 /* ~"Il semble que je doive d'abord t'inscrire dans le livre des morts, Ignus…"~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64592 /* ~Alors que tu touches le cristal, tu sens une onde glacée accompagnée d'une intense lumière blanche. Tu retires aussitôt ta main. Le cristal est comme de la glace, froid comme l'armure de Vhailor. À l'intérieur, une pâle lumière blanc bleuté clignote comme l'œil d'une bête.~ */
  IF ~~ THEN REPLY #64593 /* ~"Il semble que je doive d'abord t'inscrire dans le livre des morts, Vhailor…"~ */ EXIT
END
