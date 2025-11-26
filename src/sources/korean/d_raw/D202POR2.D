// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D202POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D202POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51460 /* ~당신이 아치에 다가가자 아치 양쪽의 검은 기둥들이 부드럽게 빛나기 시작한다, 그리고 그 옆에서 나오는 티끌처럼 작은 희미한 하얀 빛들이 기둥들 사이에서 빛나는 커튼을 형성한다. 커튼 너머로 어둠 속으로 향하는 석제 둑길이 보인다.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #51461 /* ~당신의 후회가 새겨진 피부조각을 쥐고 커튼 속으로 들어간다. ~ */ EXIT
  IF ~~ THEN REPLY #51462 /* ~전이문을 그냥 내버려 둔다. ~ */ EXIT
END
