// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PLACE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~PLACE2~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #38700 /* ~Du siehst einen dünnen Mann mit befleckten Kleidern, einer Hakennase und zwei gedrungenen Hörnern, die aus seiner Stirn hervorstehen. Er stolpert umher und murmelt vor sich hin... Er stinkt nach Salzwasser, Erbrochenem und billigem Wein. [Auf jeden Fall Platzhalter 2 einsetzen]~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #38701 /* ~"Sei gegrüßt."~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #38702 /* ~"Bist du Jhelai? Wenn ja, dann braucht dich Craddock zurück auf dem Marktplatz."~ */ JOURNAL #30880 /* ~Fähiger Nachdenker hat mir erzählt, daß Ravel in einen der Irrgänge der Dame der Schmerzen geworfen wurde, und daß der Schlüssel zum Portal ihres Irrgangs ein Teil ihrer selbst sein soll. Nicht gerade hilfreich.~ */ EXIT
  IF ~~ THEN REPLY #38703 /* ~Geh vorbei.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #38704 /* ~"Hä?" Der Mann blinzelt dich aus trüben Augen an. "Was ist? Was?"~ */
  IF ~~ THEN REPLY #38705 /* ~"Bist du Jhelai? Wenn ja, dann braucht dich Craddock zurück auf dem Marktplatz."~ */ EXIT
  IF ~~ THEN REPLY #38706 /* ~"Egal. Verzeih, daß ich dich belästigt habe."~ */ EXIT
END
