// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPEC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9362 /* ~Mieszkaniec Ula przypatruje się pracy dabusa. Drapie się po głowie i obraca ku tobie. "Na miłość Pani Bólu, nie jestem w stanie pojąć, co oni wyrabiają z tym budynkiem. Te dabusy zawsze rozbierają różne rzeczy, a potem zaraz składają je na nowo... Ni do rymu, ni do sensu."~ */
  IF ~~ THEN REPLY #9363 /* ~"Mniejsza o to."~ */ EXIT
END
