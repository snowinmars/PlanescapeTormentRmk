// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWM~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61241 /* ~Du siehst einen emsigen Lagerarbeiter. Er reagiert nicht, als du näherkommst.~ */
  IF ~~ THEN REPLY #61242 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #61243 /* ~Ignoriere ihn.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61244 /* ~"Tut mir leid, ich bin sehr beschäftigt. Stör mich bitte nicht." Er wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #61245 /* ~Geh weg.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61246 /* ~Du siehst einen emsigen Lagerarbeiter. "Ich habe keine Zeit für eine Unterhaltung. Wende dich bitte an den Aufseher, wenn du Hilfe brauchst." Er wendet sich ab.~ */
  IF ~~ THEN REPLY #61247 /* ~Geh weg.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61248 /* ~Du siehst einen emsigen Lagerarbeiter. Er sieht dich finster an, als du näherkommst. "Pack ein, Dussel. Ich hab keine Zeit zu schwatzen." Er ignoriert dich.~ */
  IF ~~ THEN REPLY #61249 /* ~Geh weg.~ */ EXIT
END
