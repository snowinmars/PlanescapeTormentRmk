// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPODGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPODGE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2891 /* ~Ich bin ein fetter, aufgeblasener Taschendieb aus dem Bezirk der Oberklasse. Es ist möglich, daß du im Bezirk der Unterklasse bereits andere von meiner Sorte getroffen hast.~ */
  IF ~~ THEN REPLY #2892 /* ~Ja, stimmt schon. Vielleicht werde ich mich gleich mal nach ihnen umsehen. Leb wohl.~ */ EXIT
END
