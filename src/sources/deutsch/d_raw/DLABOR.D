// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLABOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLABOR~

IF ~  !Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #9348 /* ~Du siehst einen schlanken Mann, der ziemlich müde wirkt. Seine Kleider riechen nach Schweiß und Schmutz. Er scheint außer Atem zu sein und ignoriert dich, als du näherkommst... er sieht aus wie einer der Arbeiter auf dem Marktplatz.~ */
  IF ~~ THEN REPLY #9349 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~  Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #22651 /* ~Der Mann schaut auf, als du dich ihm näherst.... es ist einer der Männer, mit denen du zusammengearbeitet hast, als du für Jhelai eingesprungen bist. "Hey, hallo... schön, daß du mal wieder da bist." Er spricht leiser. "Halt' dich aus Ärger raus, und behalt Craddock gut im Auge... Der geht ziemlich schnell hoch, so ist er halt."~ */
  IF ~~ THEN REPLY #22652 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END
