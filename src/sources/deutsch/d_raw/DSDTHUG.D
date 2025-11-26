// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSDTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSDTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2933 /* ~Dieser Mann mit dem irren Blick ist vornüber gebeugt und bellt und heult aus vollem Hals. Unter seinem dicken, glanzlosen Haar kannst du ein paar merkwürdige Tätowierungen sehen... von schreienden Gesichtern bis zu bizarren geometrischen Formen ist anscheinend alles vorhanden, auch irgendwelche Verszeilen. Er ist fast nackt, doch die ihn bedeckende Schmutzschicht läßt ihn anständig wirken.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13755 /* ~"Sei gegrüßt."~ */ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13756 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13757 /* ~Brich in ein langes, verzweifeltes Geheule aus.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13758 /* ~Brich in ein langes, verzweifeltes Geheule aus.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13759 /* ~Laß den Mann in Ruhe.
~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13760 /* ~Laß den Mann in Ruhe.~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0
  SAY #2934 /* ~Der Mann wirbelt zu dir herum und knurrt tief. Er zieht das Knurren ein paar Sekunden lang hin und beginnt dann, dich böse anzubellen. In der Ferne kannst du hören, wie sein Bellen durch das Bellen anderer beantwortet wird.
~ */
  IF ~~ THEN REPLY #13761 /* ~"Ich *sagte,* 'Sei gegrüßt'."~ */ GOTO 3
  IF ~~ THEN REPLY #13762 /* ~Knurr ihn ebenfalls an und fletsch die Zähne.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13763 /* ~"Äh... Na dann, leb wohl."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13764 /* ~"Äh... Na dann, leb wohl."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 2 // from: 0.3 4.1
  SAY #13745 /* ~Der Mann wirbelt herum, als er dein Jaulen hört, grinst schief und wirft seinen Kopf zurück, um mit dir zu jaulen. Ein paar Momente später hört er auf und beginnt wieder, herumzuspringen, zu knurren und zu bellen wie ein wilder Hund.~ */
  IF ~~ THEN REPLY #13765 /* ~"Ich sagte: 'Sei gegrüßt'."~ */ GOTO 3
  IF ~~ THEN REPLY #13766 /* ~Knurr ihn ebenfalls an und fletsch die Zähne.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13767 /* ~"Äh... war schön, mit dir zu plaudern."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13768 /* ~"Äh... war schön, mit dir zu plaudern."
~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0 2.1
  SAY #13746 /* ~Das Bellen des Mannes endet in einem Knurren, und er springt dich an!~ */
  IF ~~ THEN REPLY #13769 /* ~"Wenn du auf diese Weise sterben möchtest, Wolfsmensch..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #13747 /* ~Dieser Mann mit den wilden Augen springt immer noch herum und bellt und jault mit aller Kraft.~ */
  IF ~~ THEN REPLY #13770 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #13771 /* ~Brich in ein langes, verzweifeltes Geheule aus.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13772 /* ~Laß den Mann in Ruhe.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13773 /* ~Laß den Mann in Ruhe.~ */ EXTERN ~DMORTE~ 162
END
