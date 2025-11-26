// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3400 /* ~Ich bin eine Kundin im Unteren Bezirk. Genau wie meine männlichen Artgenossen gehe ich von Laden zu Laden, schau mir die Ware an und entscheide, was ich kaufen möchte. Man könnte mich als Füllmaterial bezeichnen.
~ */
  IF ~~ THEN REPLY #3401 /* ~Echt interessant... das mit dem Füllmaterial, meine ich. Danke für deine Zeit, Süße.~ */ EXIT
END
