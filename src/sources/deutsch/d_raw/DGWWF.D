// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWF~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61250 /* ~Du siehst eine emsige Lagerarbeiterin. Sie reagiert nicht, als du näherkommst.~ */
  IF ~~ THEN REPLY #61251 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #61252 /* ~Beachte sie nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61253 /* ~"Tut mir leid, Schleifer. Ich hab wirklich viel zu tun. Stör mich nicht." Sie wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #61254 /* ~Geh weg.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61255 /* ~Du siehst eine emsige Lagerarbeiterin. "Ich hab keine Zeit, mit dir zu reden, Schleifer. Geh zum Aufseher, wenn du etwas brauchst." Sie wendet sich ab.~ */
  IF ~~ THEN REPLY #61256 /* ~Geh weg.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61257 /* ~Du siehst eine emsige Lagerarbeiterin. Sie blickt dich finster an, als du näherkommst. "Pack ein, Dussel. Ich hab keine Zeit für sinnloses Geschwätz." Sie ignoriert dich.~ */
  IF ~~ THEN REPLY #61258 /* ~Geh weg.~ */ EXIT
END
