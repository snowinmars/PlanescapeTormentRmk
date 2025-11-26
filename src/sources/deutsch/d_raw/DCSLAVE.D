// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSLAVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSLAVE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53237 /* ~Du siehst einen verängstigten Bürger von Verdammnis. "Danke für deine Hilfe. Ich weiß nicht, was ich getan hätte... Sie hätten mich umgebracht..." Er plappert noch eine Weile seine Dankesreden und sagt dann: "Ich sollte was tun. Wenn die Stadt in so einer Lage ist, ist keine Zeit für Selbstsucht. Nochmals tausend Dank. Leb wohl."~ */
  IF ~~ THEN REPLY #53238 /* ~"Vergiß es. Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END
