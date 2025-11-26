// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DUPORTAL~

IF ~  !PartyHasItem("Bhanky")
~ THEN BEGIN 0 // from:
  SAY #48030 /* ~Ты раскрываешь мерцающий металл. Он кажется странно спокойным. У тебя складывается впечатление, будто он дремлет, пока поблизости нет портального ключа.~ */
  IF ~~ THEN REPLY #48031 /* ~Сложить его и спрятать.~ */ EXIT
END

IF ~  PartyHasItem("Bhanky")
~ THEN BEGIN 1 // from:
  SAY #48407 /* ~Ты раскрываешь мерцающий металл, и он тут же начинает оживленно потрескивать. Он превращается в металлическое кольцо, зависшее в воздухе. Что-то из твоего имущества активизировало его!

У тебя появляется чувство, что тебе следует проверить, есть ли у тебя все необходимое: возможно, ты еще *нескоро* вернешься в Сигил.~ */
  IF ~~ THEN REPLY #48408 /* ~Пройти сквозь портал.~ */ DO ~DestroyPartyItem("Uportal",TRUE)
DestroyPartyItem("Bhanky",TRUE)
TeleportParty("AR0610",[1207.3088],10)
~ EXIT
  IF ~~ THEN REPLY #48409 /* ~Сложить его и спрятать.~ */ EXIT
END
