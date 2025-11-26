// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTENCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTENCH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~이 사내는 당신을 기묘하게 튀어나온 눈으로 바라보고 있다. 그의 눈은 어찌나 큰지 지금 당장이라도 눈구멍에서 빠져나와 땅바닥에서 굴러다닐 것만 같다. 그는 당신이 접근하자 새처럼 머리를 흔들어 대며 열정적으로 인사한다... 그리고 당신이 그의 근처에 다가가자 당신은 갑자기 그를 둘러싸고 있는 똥과 오줌 냄새를 느끼게 된다. ~ */
  IF ~~ THEN REPLY #9339 /* ~"안녕하시오."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~남자는 코를 훌쩍거리며 소매로 코를 닦는다. 그가 입을 열자 검게 썩은 잇몸이 드러난다. "돈을 주시면 얘기를 들려 드리겠소, 나으리." 그의 입에서는 마치 그 곳에 썩은 고기라도 넣어 둔 듯 심한 악취가 난다. "돈을 주시면 얘기를 들려 드리겠소."~ */
  IF ~~ THEN REPLY #9341 /* ~"당신은 누구요?"~ */ EXIT
END
