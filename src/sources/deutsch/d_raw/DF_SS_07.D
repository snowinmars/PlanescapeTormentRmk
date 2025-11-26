// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_07~

IF ~  !Global("S_Stone","AR0603",7)
!Global("S_Stone","AR0603",14)
~ THEN BEGIN 0 // from:
  SAY #34218 /* ~Dies ist ein ungewöhnlicher hellblauer Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47475 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",7)
~ THEN BEGIN 1 // from:
  SAY #47476 /* ~Dies ist der hellblaue Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Übernatürliche Lust' eingeschlossen.~ */
  IF ~~ THEN REPLY #47477 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47478 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47479 /* ~Du hast Sex mit einem Sukkubus, einem Wesen von so intensiver und außergewöhnlicher Schönheit, daß dich selbst ihre Scheusalhörner und ihr hin und her schlagender Schwanz nicht abhalten. Sie keucht unter dir... Du begehrst sie so sehr, daß dein gesamtes Wesen sich auf dieses eine Ziel zu konzentrieren scheint. Als dein Leben strahlend hell aus dir herausschießt, hörst du das freudige Lachen des dich austrocknenden Sukkubus, der von deinem Körper nur eine seelenlose Hülle übrigläßt...~ */
  IF ~  Global("Sensation07","AR0603",0)
~ THEN REPLY #47480 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation07","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation07","AR0603",1)
~ THEN REPLY #47481 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",14)
~ THEN BEGIN 3 // from:
  SAY #47482 /* ~Dies ist der hellblaue Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Völlige Verwirrung' eingeschlossen.~ */
  IF ~~ THEN REPLY #47483 /* ~Beginn die Erfahrung.~ */ GOTO 4
  IF ~~ THEN REPLY #47484 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47485 /* ~Du wachst aus quälenden Träumen auf und stellst fest, daß du dich in deiner feuchten Höhle in ein ziemlich kleines, fleischiges Etwas mit vier Gliedmaßen verwandelt hast. Du liegst auf deinem panzerlosen, nunmehr völlig ungeschützten Rücken, und als du deinen Kopf - der keine Fühler mehr zu haben scheint - hebst, kannst du ein bißchen von deinem rosigen Bauch sehen, der teilweise von weichen, sich kräuselnden Haaren bedeckt ist. Keine Spur mehr von den schwarzen Borsten, die du gewohnt bist, dort zu sehen. Deine zwei - nur zwei! - Beine ragen jetzt aus dem unteren Ende deines Torsos heraus und sind nicht um deinen Bauch herum angeordnet. Im Verhältnis zu deinem Körper sehen sie dick und ungelenk aus. Sie liegen schlaff da, und machen keine Anstalten, dich wieder aufzurichten. Nur wenn du dich aktiv konzentrierst, kannst du die Dinger bewegen. Was ist mit dir *geschehen*?~ */
  IF ~  Global("Sensation14","AR0603",0)
~ THEN REPLY #47486 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation14","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation14","AR0603",1)
~ THEN REPLY #47487 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47488 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47489 /* ~Geh weg.~ */ EXIT
END
