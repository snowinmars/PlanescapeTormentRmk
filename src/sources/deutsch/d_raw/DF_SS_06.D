// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_06~

IF ~  !Global("S_Stone","AR0603",6)
!Global("S_Stone","AR0603",13)
~ THEN BEGIN 0 // from:
  SAY #34217 /* ~Dies ist ein ungewöhnlicher violetter Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47460 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",6)
~ THEN BEGIN 1 // from:
  SAY #47461 /* ~Dies ist der violette Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Erschöpftes Aufgeben' eingeschlossen.~ */
  IF ~~ THEN REPLY #47462 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47463 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47464 /* ~Zitternd, zähneklappernd und mit der aussichtslosen Hoffnung, gefunden zu werden, rollst du dich unter einer dicken Schneedecke zusammen, um deine noch verbleibende Körperwärme aufzusparen. Während du verzweifelt versuchst, deine Augen nicht zufallen zu lassen und wachzubleiben, wird dir bewußt, daß du deine Arme nicht mehr fühlst... ebensowenig deine Beine... und das Eis an deinem Gesicht... Und du bist so unendlich müde, daß du dich schließlich dem Unvermeidbaren fügst. Du schließt die Augen und bereitest dem Schlaf einen bitteren Empfang, als daß Gefühl der Niederlage deinen schmerzenden Augen eine Träne abringt, die dazu verdammt ist, zu Eis zu erstarren, bevor sie überhaupt deine Wange erreicht.~ */
  IF ~  Global("Sensation06","AR0603",0)
~ THEN REPLY #47465 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation06","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation06","AR0603",1)
~ THEN REPLY #47466 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",13)
~ THEN BEGIN 3 // from:
  SAY #47467 /* ~Dies ist der violette Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'mulmiges Hochgefühl' eingeschlossen.~ */
  IF ~~ THEN REPLY #47468 /* ~Beginn die Erfahrung.~ */ GOTO 4
  IF ~~ THEN REPLY #47469 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47470 /* ~Die gesamte Halle ist schon in sich zusammengefallen und wird weiter zerstört, als Dutzende von Kämpfern Waffen, todbringende Zauberkräfte und sich selbst in einen verzweifelten Kampf auf Leben und Tod werfen. Wolken von beißendem grünem Rauch steigen aus dem Haufen schlaffer Körper auf, aus dem du dich selbst hinauswindest, nachdem du dem Zorn eines Scheusalzaubers gerade noch einmal entkommen bist. Da ist es - dir gegenüber, jenseits der kämpfenden Menge, jenseits des blutigen Treibens vor dir steht es unberührt auf einem wie durch ein Wunder noch unversehrten Tisch - dein Krug Met! Und du würdest ihn dir zurückholen, selbst wenn du jeden der kämpfenden Tavernengäste einzeln dafür umbringen müßtest!~ */
  IF ~  Global("Sensation13","AR0603",0)
~ THEN REPLY #47471 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation13","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation13","AR0603",1)
~ THEN REPLY #47472 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47473 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47474 /* ~Geh weg.~ */ EXIT
END
