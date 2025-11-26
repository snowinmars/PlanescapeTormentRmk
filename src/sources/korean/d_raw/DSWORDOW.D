// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSWORDOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSWORDOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50430 /* ~사기꾼의 검이라고도 알려진 윈의 검은 전투용이라기보다는 장식용 대거처럼 보인다. 균형이 잘 잡힌 편은 아니나 강력한 마력을 지닌 덕분에 '일반' 나이프보다 전투에서 더 효과적이다. 하지만 윈의 검의 최대의 능력은 사용자로 하여금 속임수를 쓸 수 있도록 해주는 것이다. '검'을 신파조의 포즈로 치켜 올리기만 하면 검의 소유자는 이 마도구가 발견된 어떤 게임이라도 이길 수가 있다. ~ */
  IF ~~ THEN REPLY #50436 /* ~치트: 양다리를 약간 벌리고 온몸의 근육을 동원해 칼을 하늘을 향해 의기양양하게 추켜세운다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SwordoW_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #50437 /* ~대거를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50438 /* ~윈의 검의 칼날에서 강대한 힘이 고동친다. 멀리서 천둥 소리가 들려 온다. 게임이 끝날 때가 곧 도래할 것이다...~ */
  IF ~~ THEN REPLY #50439 /* ~그것이 펼쳐지는 것을 지켜본다...~ */ EXIT
END
