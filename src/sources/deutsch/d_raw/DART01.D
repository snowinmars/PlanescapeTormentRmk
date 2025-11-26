// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34187 /* ~Die Hunderte von kleinen Scherben transparenten grünen Glases, aus denen dieses bunte Glasfenster besteht, scheinen von nichts zusammengehalten zu werden, sondern frei und auf mysteriöse Weise innerhalb des Eisenrahmens zu schweben. Die Scherben bewegen sich in kleinen und langsamen Wellen, wodurch bizarre Muster über die Oberfläche des Fensters fließen, während verschiedene Teile das Licht in der Galerie in unterschiedliche Richtungen brechen. Eine kleine Plakette neben dem Fenster weist es als 'Arkadisches Buntglasfenster' aus.~ */
  IF ~~ THEN REPLY #42709 /* ~Berühre das Glas.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42710 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_01","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42706 /* ~Du streckst deine Hand nach den wogenden Glasstücken aus, kannst sie aber nicht berühren... Kurz vor der Oberfläche wird deine Hand abgebremst.~ */
  IF ~~ THEN REPLY #42714 /* ~Schlag das Glas ein.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sglass_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #42717 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42708 /* ~Das einzige Ergebnis ist, daß du dir blaue Flecken an den Fingerknöcheln beibringst. Es könnte genauso gut Eisenblech statt Glas sein.~ */
  IF ~~ THEN REPLY #42718 /* ~Geh weg.~ */ EXIT
END
