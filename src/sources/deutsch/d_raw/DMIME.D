// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49773 /* ~Das Gesicht des Mannes ist weiß geschminkt. Seine Augenbrauen sind mit einem Stift bogenförmig nachgezogen und seine Wangen und Lippen mit rotem Puder betont worden. Er sagt etwas, doch du kannst ihn nicht hören. Seine Hände stemmen sich gegen eine anscheinend unsichtbare Wand.~ */
  IF ~~ THEN REPLY #49774 /* ~"Was? Ich kann dich nicht hören..."~ */ GOTO 1
  IF ~~ THEN REPLY #49775 /* ~Versuch, ihn zu berühren.~ */ GOTO 2
  IF ~~ THEN REPLY #49776 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49777 /* ~Er läßt den Kopf hängen, seufzt lautlos und zuckt mit den Achseln. Dann geht er ein Stück zurück, winkt dir zum Abschied und fängt an, verschiedene Bewegungen zu imitieren - das Ziehen an einem Seil, das Hinabsteigen einer Treppe und so weiter.~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN EXTERN ~DGRACE~ 144
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49778 /* ~Versuch, ihn zu berühren.~ */ GOTO 2
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #49779 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #49780 /* ~Du willst den Mann berühren, aber deine Hand wird von einer unsichtbaren Kraft zurückgehalten. Der Pantomime ist anscheinend in einer Art unsichtbarem Kasten oder Käfig gefangen.~ */
  IF ~~ THEN REPLY #49781 /* ~Geh weg.~ */ EXIT
END
