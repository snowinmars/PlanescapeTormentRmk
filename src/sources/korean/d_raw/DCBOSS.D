// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBOSS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBOSS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2899 /* ~나는 모드론 입방체를 지배하는 진부한 악의 보스 로봇이오. 내 앞에 무릎을 꿇고 애걸하시오, 생명체.~ */
  IF ~~ THEN REPLY #2900 /* ~그래 날 날려봐라, 사악한 로봇. 안녕... 속이 시원하군. ~ */ EXIT
END
