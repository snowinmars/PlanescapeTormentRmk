// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D202POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~D202POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51460 /* ~Когда ты подходишь к этой арке, черные колонны по обеим ее сторонам начинают светиться неярким светом; между ними проплывают туманно-синие огоньки, образуя мерцающий занавес, за которым виднеется выветренная каменная дорога, ведущая во тьму.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #51461 /* ~Стиснуть клочок кожи с раскаянием и шагнуть сквозь занавес.~ */ EXIT
  IF ~~ THEN REPLY #51462 /* ~Оставить портал в покое.~ */ EXIT
END
