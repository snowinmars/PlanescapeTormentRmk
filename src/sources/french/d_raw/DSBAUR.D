// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSBAUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSBAUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45379 /* ~Une créature de grande taille se dresse devant toi. Le bas de son corps ressemble à celui d'un bouc, mais il est humain au-dessus de la taille. Son torse, ses bras et sa tête sont protégés par une armure rutilante. Les yeux de la créature sont fermés ; tout laisse penser qu'elle dort.~ */
  IF ~~ THEN REPLY #45382 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #45383 /* ~Laisse la créature dormir.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #45380 /* ~La créature renifle bruyamment mais ne se réveille pas pour autant. Elle a manifestement le sommeil lourd.~ */
  IF ~~ THEN REPLY #45384 /* ~Laisse la créature dormir.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #45381 /* ~La créature mi-homme, mi-bouc est toujours endormie.~ */
  IF ~~ THEN REPLY #45385 /* ~Laisse la créature dormir.~ */ EXIT
END
