// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34201 /* ~Dieses Bild zeigt etwas, das wie ein endlos langer Strom eines gallengrünen Gases aussieht, der sich in die Dunkelheit erstreckt. Der Horizont stellt eine gesprengte Felsebene dar und ist an der rechten unteren Ecke des Bildes zu sehen... Man bekommt den Eindruck, daß der 'Kopf' der grünen Wolke sich aufgerichtet hat, um darauf niederzuschmettern. Auf einer Plakette steht: 'Hazazoth bei der Vernichtung N'gars'.~ */
  IF ~~ THEN REPLY #42673 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_09","AR0608",1)
~ EXIT
END
