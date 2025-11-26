// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHBDYGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHBDYGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Dieser riesenhafte Mensch trägt einen ebenso riesenhaften roten Harnisch mit reichen Verzierungen. Er betrachtet dich vorsichtig aber furchtlos, als du näherkommst.~ */
  IF ~~ THEN REPLY #31238 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #31239 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2894 /* ~Eine dröhnende Stimme hallt aus seinem großen Helm: "Sei gegrüßt, Bürger. Ich bin Selbstverständliche-Sache... Leibwächter von Eifer, der Vierten Friedensrichterin des Bezirks. Du mußt mich entschuldigen, denn meine Pflichten sind an ihrer Seite. Leb wohl."~ */
  IF ~~ THEN REPLY #31240 /* ~"Warte... ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #31241 /* ~"Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #31235 /* ~Er dreht sich einfach um und geht weg.~ */
  IF ~~ THEN REPLY #31242 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31236 /* ~Dieser Riese von einem Mann trägt eine gleichfalls riesige, reich verzierte rote Rüstung. Sogar durch die Schlitze seines Visiers kannst du erkennen, daß er dich mißtrauisch mustert, als du näherkommst.~ */
  IF ~~ THEN REPLY #31243 /* ~"Sei gegrüßt..."~ */ GOTO 4
  IF ~~ THEN REPLY #31244 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31237 /* ~Er hebt plötzlich seine Waffe. "Es ist, wie ich dachte: Du bist er!" Er greift dich an, während er nach Verstärkung ruft.~ */
  IF ~~ THEN REPLY #31245 /* ~Verteidige dich.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #31246 /* ~Lauf weg.~ */ DO ~Enemy()
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
