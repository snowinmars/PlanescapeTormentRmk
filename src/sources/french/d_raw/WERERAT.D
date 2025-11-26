// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : WERERAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~WERERAT~

IF ~  Dead("Mantuok")
~ THEN BEGIN 0 // from:
  SAY #29298 /* ~"Veeermiine huuummaiine ! MEUUUURS !" Le rat-garou se jette sur toi.~ */
  IF ~~ THEN REPLY #29304 /* ~"Bon sang, je voulais juste parler !"~ */ DO ~Enemy()
~ EXIT
END

IF ~  True()
~ THEN BEGIN 1 // from:
  SAY #29299 /* ~L'homme-rat siffle : "Que veux-tu, humain ?"~ */
  IF ~~ THEN REPLY #29305 /* ~"Qui es-tu ?"~ */ GOTO 2
  IF ~~ THEN REPLY #29306 /* ~"Où est Lothar ?"~ */ GOTO 3
  IF ~~ THEN REPLY #29307 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #29308 /* ~"Tu connais Mantuok ?"~ */ GOTO 5
  IF ~~ THEN REPLY #29309 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29300 /* ~Le rat-garou te toise avec mépris. "Pas tes zzzzaffaires, l'humain." Il a un petit rire aigu.~ */
  IF ~~ THEN REPLY #29310 /* ~"Bien, alors. Où est Lothar ?"~ */ GOTO 3
  IF ~~ THEN REPLY #29311 /* ~"C'est quoi cet endroit ?"~ */ GOTO 4
  IF ~~ THEN REPLY #29312 /* ~"Où est Mantuok ?"~ */ GOTO 5
  IF ~~ THEN REPLY #29313 /* ~"Laisse tomber."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #29301 /* ~"Le Maître… devrait être ici. Pas de doute… il t'observe." Ses moustaches frémissent. "Pars, maintenant ! Je ne te parle plus !"~ */
  IF ~~ THEN REPLY #29314 /* ~"Bon, très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 5.1
  SAY #29302 /* ~"C'est notre nid. Tu ne reviendras pas souvent ici, hein, l'humain ? On n'a pas besoin de tes semblables."~ */
  IF ~~ THEN REPLY #29315 /* ~"Ne t'inquiète pas pour ça. Je crois que je ne supporterais pas l'odeur, de toute façon. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #29316 /* ~"Je ne crois pas. Ce n'est pas ce qu'on pourrait appeler un lieu de villégiature. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2
  SAY #29303 /* ~"Mantuok ? Qu'est-ce que tu veux savoir sur lui ? Si tu as besoin de Mantuok, Mantuok te trouvera." Il ricane et recule.~ */
  IF ~~ THEN REPLY #29317 /* ~"Tu peux me dire où trouver Lothar."~ */ GOTO 3
  IF ~~ THEN REPLY #29318 /* ~"Parle-moi de cet endroit."~ */ GOTO 4
  IF ~~ THEN REPLY #29319 /* ~"Bien. Au revoir."~ */ EXIT
END
