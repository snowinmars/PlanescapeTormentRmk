// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIX~

IF ~~ THEN BEGIN 0 // from:
  SAY #3069 /* ~당신 앞에는 어깨가 넓고 기골이 장대하며, 팔이 네 개 달린 개 대가리 괴물이 서 있다. 그의 근육질의 팔들 중 한 쌍에는 끔찍하게 생긴 집게들이 달려 있는데, 그것은 희생자로부터 강제로 영혼을 찢어 낼 수 있을 정도로 무시무시해 보인다. 그는 의외로 부드러운 목소리로 말을 한다. "아, 여행자여! 당신은 훌륭한 동료들을 거느리고 있소." 그는 잠시 멈추고 냄새를 맡는다. "맛있는 향기로군. 안나, 난 당신 아버지를 알지, 그는 아직도 어비스 깊은 곳에서 부지런히 일하고 있지. 그리고 그레이스 여사, 당신 어머니인 레드 슈라우드(붉은 수의)는 당신이 잘 지낸다는 소식을 들으면 매우 기뻐할 거요."~ */
  IF ~~ THEN REPLY #3367 /* ~"천만의 말씀이오. 당신에게 질문을 좀 하고 싶소."~ */ EXIT
END
