// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSBAUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSBAUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45379 /* ~Vor dir steht ein großes Wesen. Der untere Teil des Körpers und die kräftigen Vorderfüße erinnern an eine Ziege. Doch darüber besitzt es den Torso, die Arme und den Kopf eines Menschen. Bedeckt wird all dies von einer glänzenden Rüstung. Das Wesen hat seine Augen geschlossen und scheint zu schlafen.~ */
  IF ~~ THEN REPLY #45382 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #45383 /* ~Laß das Wesen schlafen.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #45380 /* ~Das Wesen schnaubt kurz, doch seine Augen bleiben geschlossen. Es hat offenbar keinen leichten Schlaf.~ */
  IF ~~ THEN REPLY #45384 /* ~Laß das Wesen schlafen.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #45381 /* ~Diese Mischung aus Mensch und Ziege ist noch immer im Tiefschlaf. ~ */
  IF ~~ THEN REPLY #45385 /* ~Laß das Wesen schlafen.~ */ EXIT
END
