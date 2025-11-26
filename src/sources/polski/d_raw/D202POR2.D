// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D202POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D202POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51460 /* ~Kiedy podchodzisz do tego łuku, czarne kolumny po obu stronach zaczynają się lekko jarzyć, a wychodzące z nich białe, mgliste światło tworzy pomiędzy nimi migoczącą zasłonę. Poza nią ledwie co widać zniszczony, kamienny korytarz ginący w ciemności.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #51461 /* ~Weź w ręce skrawek skóry ze słowami twojej skruchy, po czym przejdź przez zasłonę.~ */ EXIT
  IF ~~ THEN REPLY #51462 /* ~Odejdź od portalu.~ */ EXIT
END
