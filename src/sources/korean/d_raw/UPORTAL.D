// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : UPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~UPORTAL~

IF ~  !PartyHasItem("Bhanky")
~ THEN BEGIN 0 // from:
  SAY #48030 /* ~당신은 빛나는 금속 물체를 펼친다. 그것은 이상하리 만큼 조용하다. 전이문 열쇠를 가까이 들이댈 때까지 그것은 작동하지 않을 것이라는 생각이 든다. ~ */
  IF ~~ THEN REPLY #48031 /* ~그것을 접어서 다른 곳으로 치운다.~ */ EXIT
END

IF ~  PartyHasItem("Bhanky")
~ THEN BEGIN 1 // from:
  SAY #48407 /* ~당신이 빛나는 금속 물체를 펼치자, 그것은 즉각 에너지로 넘치기 시작한다. 그것은 공중에 떠서 금속의 원으로 변형한다. 당신이 지닌 물건들 중 하나가 이 전이문을 작동시켰다!

전이문을 이용하기 전에 필요한 모든 것들의 준비를 마쳐야 한다는 생각이 든다 - 시길에는 *오랫동안* 돌아오지 못할지도 모른다.~ */
  IF ~~ THEN REPLY #48408 /* ~전이문을 작동시킨다.~ */ DO ~DestroyPartyItem("Uportal",TRUE)
DestroyPartyItem("Bhanky",TRUE)
TeleportParty("AR0610",[1207.3088],10)
~ EXIT
  IF ~~ THEN REPLY #48409 /* ~그것을 접어서 다른 곳으로 치운다.~ */ EXIT
END
