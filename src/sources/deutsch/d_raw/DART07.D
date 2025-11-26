// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DART07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34198 /* ~Ein Gruppe von vier Bildern, die einen leeren Strand mitten in der Nacht abbilden. Die Luft um das Bild riecht leicht nach Salzwasser, und die gemalte See scheint an der dunklen Küste in Ebbe und Flut vor- und zurückzufließen. Auf einer Plakette steht: 'Küste von Karasuthra'.~ */
  IF ~~ THEN REPLY #42662 /* ~Riech an dem Bild.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #42663 /* ~Berühre das Bild.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42664 /* ~Geh weg.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #42660 /* ~Du legst deine Hand auf das Bild, weißt aber nicht so recht, was du dir davon versprichst... Unter deinen Fingerspitzen spürst du jedoch nur das Gewebe der bemalten Leinwand.~ */
  IF ~~ THEN REPLY #42665 /* ~Riech an dem Bild.~ */ GOTO 2
  IF ~~ THEN REPLY #42666 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42661 /* ~Die Oberfläche des Bildes riecht stark nach Seeluft.~ */
  IF ~~ THEN REPLY #42667 /* ~Berühre das Bild.~ */ GOTO 1
  IF ~~ THEN REPLY #42668 /* ~Geh weg.~ */ EXIT
END
