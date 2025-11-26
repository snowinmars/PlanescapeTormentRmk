// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCWASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCWASTE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3075 /* ~그레이 웨이스트에 머무르는 것 자체가 절망의 한 원인이오. 물론 일정 시간이 흐르면 절망이라는 감정조차 잃게 되오. 내가 진정한 블리커 철학의 게임에 참가할 때까지 기다려 보시오.~ */
  IF ~~ THEN REPLY #3373 /* ~Tu sais, rien qu'?t'이봐r, tu me fais bander.~ */ EXIT
END
