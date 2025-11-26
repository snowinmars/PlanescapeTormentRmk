// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ROBTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~ROBTEST~

IF ~  False()
~ THEN BEGIN 0 // from:
  SAY #166 /* ~Silberköpfiger Hammer~ */
  IF ~~ THEN REPLY #167 /* ~Silberköpfiger Hammer~ */ GOTO 1
  IF ~~ THEN REPLY #168 /* ~SILBERKÖPFIGER HAMMER
Schaden: 1-4 durch Wucht
Initiative: 6
Gewicht: 6
Waffenfertigkeit: Hämmer
Kann nur von Kämpfern und Priestern verwendet werden

Dies ist ein kleiner Kriegshammer. Der Hammerkopf ist mit einer dünnen Silberauflage geschmückt, die an vielen Stellen Dellen und Kratzer aufweist. Vielleicht wurde der Hammer einmal zu zeremoniellen Zwecken verwendet.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #170 /* ~Streitaxt~ */
  IF ~~ THEN REPLY #172 /* ~BALSAMIERUNGSÖL
Besonderheit:
   +8 Trefferpunkte auf Basis-Trefferpunkte
   +1 auf Rüstungsklasse
Gewicht: 1
Kann nur vom Namenlosen und von Morte verwendet werden

Dieser versiegelte Topf enthält Balsamierungöl. Es wird verwendet, um Leichen zu konservieren. Als Zugabe verfügt das Öl über einen Geruch, der mehr als in der Lage ist, den Gestank der verrottenden Leichen, die damit behandelt werden, zu übertünchen. Seine Wirkung ist zeitlich begrenzt.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #171 /* ~DIETRICHE
+5 % zum Öffnen von Schlössern
Gewicht: 0
Kann nur von Dieben verwendet werden.

Diese Metallwerkzeuge werden zum Öffnen widerspenstiger Schlösser verwendet.~ */
  IF ~~ THEN REPLY #173 /* ~STREITAXT
Schaden: 1-8 durch Klinge
Initiative: 7
Gewicht: 7
Waffenfertigkeit: Äxte
Kann nur von Kämpfern verwendet werden

Das eine Ende dieser riesigen, zweischneidigen Axt ist mit einem spitzen Dorn versehen. Ihre Klingen sind rasiermesserscharf, und der lange Griff ermöglicht es ihrem Benutzer, beachtliche Kraft in seinen Schwung zu legen.~ */ EXIT
END
