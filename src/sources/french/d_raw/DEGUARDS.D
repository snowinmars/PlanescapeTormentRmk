// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEGUARDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEGUARDS~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57421 /* ~Le garde se tourne lorsque tu approches, mais ne fait pas de bruit. Derrière les fentes de son heaume, tu devines des yeux abrutis, apathiques.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57422 /* ~"Cet homme n'est qu'un bouc émissaire. Mais s'il est exécuté, ça ne fera qu'augmenter le chaos qui a envoyé cette ville dans les Carcères. Nous devons arrêter cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57423 /* ~"Cet homme n'est qu'un bouc émissaire. Mais s'il est exécuté, ça ne fera qu'augmenter le chaos qui a envoyé cette ville dans les Carcères. Nous devons arrêter cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57424 /* ~"Cet homme n'est qu'un bouc émissaire. Mais s'il est exécuté, ça ne fera qu'augmenter le chaos qui a envoyé cette ville dans les Carcères. Nous devons arrêter cette folie pour remettre Maudith à sa place… avant d'être *tous* morts."~ */ GOTO 1
  IF ~~ THEN REPLY #57425 /* ~"Vous ne pouvez pas laisser cet homme être exécuté. C'est *mal*. C'est à cause de ce genre de choses que Maudith a glissé dans les Carcères… et c'est ce à quoi nous devons mettre fin pour remettre cette ville-portail sur l'Outreterre."~ */ GOTO 1
  IF ~~ THEN REPLY #57426 /* ~"Vous ne pouvez pas laisser cet homme être exécuté."~ */ GOTO 1
  IF ~~ THEN REPLY #57427 /* ~"Bon, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.4
  SAY #57428 /* ~Le garde hausse à peine les épaules.~ */
  IF ~~ THEN REPLY #57429 /* ~"Ça vous est égal ? Vous ne voyez pas ce qui se passe ici ?"~ */ GOTO 2
  IF ~~ THEN REPLY #57430 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57431 /* ~Le garde renifle en guise de réponse.~ */
  IF ~~ THEN REPLY #57432 /* ~"Très bien… je trouverai quelqu'un d'autre."~ */ EXIT
  IF ~~ THEN REPLY #57433 /* ~Pars.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57434 /* ~Ce garde apathique semble déterminé à t'ignorer complètement.~ */
  IF ~~ THEN REPLY #57435 /* ~Pars.~ */ EXIT
END
