// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ROBTEST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~ROBTEST~

IF ~  False()
~ THEN BEGIN 0 // from:
  SAY #166 /* ~Młot ze srebrną głowicą~ */
  IF ~~ THEN REPLY #167 /* ~Młot ze srebrną głowicą~ */ GOTO 1
  IF ~~ THEN REPLY #168 /* ~MŁOT ZE SREBRNĄ GŁOWICĄ
Obrażenia 1-4, obuchowe
Szybkość: 6
Waga: 6
Biegłość: Młoty
Może być używany jedynie przez Wojowników

Mały młot bojowy. Jego głowica ozdobiona jest cienką warstwą srebra, powgniatanego i zadrapanego w wielu miejscach. Możliwe, że młot ten używany był kiedyś w celach ceremonialnych.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #170 /* ~Topór bojowy~ */
  IF ~~ THEN REPLY #172 /* ~PŁYN DO BALSAMOWANIA
Specjalne właściwości:
 +2-8 do PŻ
 +1 do klasy pancerza
Waga: 1
Może być używany jedynie przez Bezimiennego i Mortego

To zakręcony słój z płynem do balsamowania. Jest on wykorzystywany do konserwacji zwłok. Dodatkową zaletą jest to, że jego zapach skutecznie maskuje smród gnijącego ciała, na którym zostanie użyty. Efekt ten jest czasowy.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #171 /* ~+5% do Otwierania Zamków
Waga: 0
Mogą ich używać jedynie Złodzieje

Metalowe narzędzia pomagające otwierać oporne zamki.~ */
  IF ~~ THEN REPLY #173 /* ~TOPÓR BOJOWY
Obrażenia: 1-8, sieczne
Szybkość: 7
Waga: 4
Biegłość: Topory
Może być używany jedynie przez Wojowników

Ten topór o dwóch ostrzach wydaje się wyjątkowo lekki, choć poza tym nie odznacza się niczym szczególnym. Możliwe, że ostrza wykonano z jakiegoś lekkiego metalu.~ */ EXIT
END
