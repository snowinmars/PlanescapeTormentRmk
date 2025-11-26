// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHENS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHENS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3074 /* ~나는 개년이다, 나는 거짓말쟁이다, 나는 도둑이다, 나는 무시할 수 없는 염증이다... 아니, 그건 메레디스 부룩스군. 난 거짓말을 하는 세일즈맨으로 내 거짓말 속에서 당신은 진실을 찾을 수가 있다. 아마도.~ */
  IF ~~ THEN REPLY #3366 /* ~디자이너가 그걸 해낼 수 있는지 보고 싶군. 재미있겠군!~ */ EXIT
END
