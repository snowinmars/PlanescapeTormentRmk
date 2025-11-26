// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_05~

IF ~  !Global("S_Stone","AR0603",5)
!Global("S_Stone","AR0603",12)
~ THEN BEGIN 0 // from:
  SAY #34216 /* ~Dies ist ein ungewöhnlicher rötlich-orangefarbener Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47445 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",5)
~ THEN BEGIN 1 // from:
  SAY #47446 /* ~Dies ist der rötliche Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Verzehrende Ungeduld' eingeschlossen.~ */
  IF ~~ THEN REPLY #47447 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47448 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47449 /* ~Du diskutierst mit Amnas, dem Schrecklich Langsamen und Hüter des Löwenschlüssels darüber, ob ihm dein Auftrag wichtig genug erscheint, um das Artefakt in deine Obhut zu geben. Die gesamte Erfahrung ist eine Übung in reiner Folter... auf jedes einzelne seiner Wörter folgt eine bedeutsame Pause. Jede einzelne seiner Bemerkungen wird zigmal wiederholt, bevor er dich zu Wort kommen läßt. Du bringst ein Argument vor... und wartest und wartest und *wartest*, während er sein Gegenargument zurechtlegt, dem du schnell ein griffiges eigenes Gegenargument entgegenschleuderst... Dann mußt du wieder warten, bis Amnas wieder eins von seinen gedehnten, weitschweifigen, endlos erscheinenden Gegenargumenten ins Feld führt. Wenn du dem Scheusal doch nur seinen mit Hauern bestückten Kopf abschlagen, und der zuckenden Leiche den Schlüssel entreißen könntest....~ */
  IF ~  Global("Sensation05","AR0603",0)
~ THEN REPLY #47450 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation05","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation05","AR0603",1)
~ THEN REPLY #47452 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",12)
~ THEN BEGIN 3 // from:
  SAY #47451 /* ~Dies ist der orangerötliche Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm liegt die Erfahrung 'Rausch der Angst'.~ */
  IF ~~ THEN REPLY #47453 /* ~Beginn die Erfahrung.~ */ GOTO 4
  IF ~~ THEN REPLY #47454 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47455 /* ~Du verrenkst den Kopf, um die riesige Apparatur sehen zu können, die auf deinem Rücken festgeschnallt ist... Ein Satz von vier fledermausartigen Flügeln kommt aus ihm heraus, von denen jeder einzelne aus Leder gefertigt ist und stramm über ein Korbgeflecht gezogen ist. Von dem Abgrund aus, an dessen Rand du dich befindest, wirkt Dilgyars Schwebende Festung nur wie ein kleiner Fleck am blaugrauen Himmel - meilenweit entfernt mit nichts als leerer Luft dazwischen. "So reist *jeder* in der Luftebene", haben sie gesagt, "es ist ganz leicht." Du grinst, trittst ein Stück zurück, läufst an und springst von der Felswand in den kühlen Wind unter dir. In deinem Bauch kribbelt es wie wild, doch als die Flügel sich plötzlich in der Luft ausbreiten, wird dein gesamter Körper von einem wundersamen Rausch erfaßt und du schwebst durch das Nichts zu Festung des Elementarprinzen...~ */
  IF ~  Global("Sensation12","AR0603",0)
~ THEN REPLY #47456 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation12","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation12","AR0603",1)
~ THEN REPLY #47457 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47458 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47459 /* ~Geh weg.~ */ EXIT
END
