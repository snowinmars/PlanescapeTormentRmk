// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_02~

IF ~  !Global("S_Stone","AR0603",2)
!Global("S_Stone","AR0603",9)
~ THEN BEGIN 0 // from:
  SAY #47110 /* ~Dies ist ein ungewöhnlicher hellblauer Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47111 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",2)
~ THEN BEGIN 1 // from:
  SAY #47112 /* ~Dies ist der hellblaue Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Zarte Liebe' eingeschlossen.~ */
  IF ~~ THEN REPLY #47113 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47114 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47115 /* ~Deine Augen sind geschlossen. Du fühlst, wie du auf Zehenspitzen stehend dich fest an jemanden schmiegst. Sehr weiche Lippen streichen über deine und geben dir den zärtlichsten Kuß... Dein Herz scheint schneller in deiner Brust zu schlagen, und du hast das Gefühl, gleich nach hinten zu fallen und davonzuschweben...~ */
  IF ~  Global("Sensation02","AR0603",0)
~ THEN REPLY #47116 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation02","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation02","AR0603",1)
~ THEN REPLY #47117 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",9)
~ THEN BEGIN 3 // from:
  SAY #47118 /* ~Dies ist der hellblaue Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Schwärende Eifersucht' eingeschlossen.~ */
  IF ~~ THEN REPLY #47119 /* ~Beginn die Erfahrung.~ */ GOTO 4
  IF ~~ THEN REPLY #47120 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47121 /* ~Du fühlst, wie sich deine Lippen kräuseln, als der blonde junge Held mit seiner wie ein polierter Silberspiegel strahlenden Rüstung erneut deine Taverne betritt. Als er seinen samtenen Umhang an einen Haken gehängt hat, mustert er deine Gäste mit zwei wie Meeresperlen anmutenden Augen und einem Lächeln, das dem Dienstmägden die Sinne raubt. Du stellst den Becher hin, den du gerade spülst, räusperst dich abfällig und stellst dir vor, wie du ihn kopfüber in eine Regentonne steckst...~ */
  IF ~  Global("Sensation09","AR0603",0)
~ THEN REPLY #47122 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation09","AR0603",1)
GiveExperience(Protagonist,750)
~ GOTO 5
  IF ~  Global("Sensation09","AR0603",1)
~ THEN REPLY #47123 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 4.0
  SAY #47124 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47125 /* ~Geh weg.~ */ EXIT
END
