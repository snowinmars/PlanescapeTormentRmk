// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7082 /* ~"나는 더스트맨 키오스크(AR0200, 벌통B) 밖에서 영창하고 있는 더스트맨 애도자들 중 하나요. 우리는 '산 자'를 애도하고 있으며, 플레이어는 우리에게 사랑하는 사람을 잃은 사람을 위해 애도해 달라고 부탁할 수 있소.~ */
  IF ~~ THEN REPLY #7083 /* ~"정보를 주어 고맙소."~ */ EXIT
END
