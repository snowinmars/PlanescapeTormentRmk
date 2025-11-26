// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_09~

IF ~  !Global("S_Stone","AR0603",16)
!Global("S_Stone","AR0603",19)
~ THEN BEGIN 0 // from:
  SAY #34220 /* ~Dies ist ein ungewöhnlicher violetter Stein. Er ist fest an dem Sockel befestigt, auf dem er liegt.~ */
  IF ~~ THEN REPLY #47529 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",19)
~ THEN BEGIN 1 // from:
  SAY #47530 /* ~Dies ist der violette Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Ein streng gehütetes Geheimnis' eingeschlossen.~ */
  IF ~~ THEN REPLY #47531 /* ~Beginn die Erfahrung.~ */ GOTO 2
  IF ~~ THEN REPLY #47532 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #47533 /* ~Sechs kaiserliche Diener eilen dir voraus und stoßen die goldenen Türen des Drachenpalasts weit auf. "Lang lebe die Kaiserin!" rufen sie im Chor. "Tausend Jahre! Lang lebe die Kaiserin! Tausend Jahre!" ~ */
  IF ~~ THEN REPLY #47534 /* ~Setz die Erfahrung fort.~ */ GOTO 3
  IF ~~ THEN REPLY #47535 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47536 /* ~Hinter der Schwelle gehen Dutzende von treuen Kriegsherren, allesamt selbst Könige, auf die Knie und berühren ehrerbietig mit ihren Köpfen den Boden, als du auf dem Weg zum großen Kaiserlichen Thron an ihnen vorbeigehst.~ */
  IF ~~ THEN REPLY #47537 /* ~Setz die Erfahrung fort.~ */ GOTO 4
  IF ~~ THEN REPLY #47538 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47539 /* ~Als du dich umdrehst, auf dem Kaiserlichen Thron Platz nimmst und deine Vasallen ansiehst, gestattest du einem kurzen zufriedenen Lächeln, um deine sorgfältig geschminkten Lippen zu spielen. Du hast die ganze Zeit nur einen Gedanken:~ */
  IF ~~ THEN REPLY #47540 /* ~Setz die Erfahrung fort.~ */ GOTO 5
  IF ~~ THEN REPLY #47541 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47542 /* ~...daß der Körper der jungen Kaiserin Wu Tsun Sha zerschmettert auf dem Grund der Quelle der Einsamkeit liegt und daß du - Bai Hwa, Tochter eines Pferdehändlers - endlich bereit bist, das Kaiserreich und die korrupte Wu-Dynastie bis in ihre Grundfeste zu erschüttern.~ */
  IF ~  Global("Sensation19","AR0603",0)
~ THEN REPLY #47543 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation19","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation19","AR0603",1)
~ THEN REPLY #47544 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~  Global("S_Stone","AR0603",16)
~ THEN BEGIN 6 // from:
  SAY #47545 /* ~Dies ist der violette Stein, zu dem dir der Kurator den Weg gewiesen hat. In ihm ist die Erfahrung 'Schock und aufkeimende Rachsucht' eingeschlossen.~ */
  IF ~~ THEN REPLY #47546 /* ~Beginn die Erfahrung.~ */ GOTO 7
  IF ~~ THEN REPLY #47547 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #47548 /* ~Du befindest dich irgendwo in den flacheren Regionen der Ebenen. Es ist eine glühendheiße Gegend mit einem Boden aus gehämmertem Kupfer und einem Himmel aus Messing. Hier werden die Leichen von Sündern - Sucher an diesem scheußlichen Ort - zwischen eisernen Dornen und Skorpionen aus Bronze so lange hin und her gerollt, bis ihre Knochen zu feinem, grauen Staub zermahlen sind.~ */
  IF ~~ THEN REPLY #47549 /* ~Setz die Erfahrung fort.~ */ GOTO 8
  IF ~~ THEN REPLY #47550 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47551 /* ~Du schaust blinzelnd zum Horizont, wo der Knochenstaub in Fäulnisgeruch verbreitenden Windstößen aufsteigt, die den Klang von qualerfülltem Stöhnen mit sich tragen. Soweit das Auge reicht ist nichts als flache, metallisch glänzende Landschaft. Der Staub ist überall und setzt sich in allem fest... Er brennt in deinen Augen und hinterläßt einen breiigen Belag in deinem Mund. Du spuckst und wischt ihn mit dem Finger heraus, doch es nützt nichts: Der faulige Geschmack hat sich in deinem ganzen Mund ausgebreitet.~ */
  IF ~~ THEN REPLY #47552 /* ~Setz die Erfahrung fort.~ */ GOTO 9
  IF ~~ THEN REPLY #47553 /* ~Brich die Erfahrung ab, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #47554 /* ~Du betrachtest den 'Schlüssel' in deiner Hand... eine winzige Platinkugel... und rufst dir das Gesicht des Mannes ins Gedächtnis, der dir feierlich geschworen hat, daß das magische Tor, durch das du gerade getreten bist - und jetzt natürlich verschwunden ist - zu den grünen Feldern von Bytopia führen würde. Bei allen Mächten und ihren Hörigen! Irgendjemand würde dafür zahlen müssen.~ */
  IF ~  Global("Sensation16","AR0603",0)
~ THEN REPLY #47555 /* ~Lös dich von der Erfahrung.~ */ DO ~SetGlobal("Sensation16","AR0603",1)
GiveExperience(Protagonist,1500)
~ GOTO 10
  IF ~  Global("Sensation16","AR0603",1)
~ THEN REPLY #47556 /* ~Lös dich von der Erfahrung, und geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 9.0
  SAY #47557 /* ~Die Erfahrung scheint eine längst vergessene ähnliche Erinnerung in dir wachgerüttelt zu haben. Du hast das Gefühl, daß du irgendwie vom Gebrauch des Sinnessteins profitiert hast.~ */
  IF ~~ THEN REPLY #47558 /* ~Geh weg.~ */ EXIT
END
