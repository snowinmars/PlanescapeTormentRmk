// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIMPULSE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIMPULSE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52690 /* ~이 거대한 수정은 방 한가운데에 있는 분화구 모양으로 패인 곳 위에서 부유하며 고동치는 도깨비불을 발산하고 있다. 그것의 고동의 리듬은 심장 박동을 연상시키나, 더 느리고 왠지 병적이다. 수정으로부터 나오는 빛은 방의 구석들에 손가락처럼 닿고 있으며, 각 광선은 수정 주변의 석상들의 부서진 얼굴에 희미한 광채를 드리우고 있다.~ */
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
!Dead("IgnusF")
~ THEN REPLY #52691 /* ~수정을 만진다...~ */ GOTO 2
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
!Dead("VhailF")
~ THEN REPLY #64586 /* ~수정을 만진다...~ */ GOTO 3
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Dead("IgnusF")
~ THEN REPLY #64587 /* ~수정을 만진다...~ */ GOTO 1
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Dead("VhailF")
~ THEN REPLY #64588 /* ~수정을 만진다...~ */ GOTO 1
  IF ~~ THEN REPLY #64589 /* ~수정을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.3
  SAY #59895 /* ~수정을 만지자 당신은 잠시 현기증을 느낀다, 그리고 그 다음에는 냉기가 천천히 당신의 몸을 엄습한다. 당신은 전신의 근육이 마비되었으며, 손을 수정의 표면으로부터 뗄 수가 없다는 사실을 깨닫는다. 얼마 동안의 침묵이 흐른 후 날카로운 고통이 돌에 금이 가듯 온몸으로 퍼진다 - 당신은 당신의 존재 그 자체가 얼음이 된 후 산산조각이 나는 것 같은 느낌을 받는다.~ */
  IF ~~ THEN REPLY #59896 /* ~어둠 속으로 빠져든다...~ */ DO ~TeleportParty("AR1203",[932.703],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64590 /* ~당신이 수정을 만지자 오렌지색을 띤 백색 섬광과 함께 강렬한 열기가 발산된다, 그리고 당신은 화급히 손을 뗀다 - 수정은 이그너스의 화염처럼 뜨겁다. 수정 안에서 역겨운 청백색 빛이 춤을 추면서 불처럼 흔들린다. ~ */
  IF ~~ THEN REPLY #64591 /* ~"우선 당신부터 저세상으로 보내야 할 것 같군, 이그너스..."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64592 /* ~당신이 수정을 만지자 백색 섬광과 함께 냉기가 갑자기 엄습한다, 그리고 당신은 화급히 손을 뗀다 - 수정은 베일로의 갑옷에서 나오는 냉기처럼 차갑다. 수정 안에서 역겨운 청백색 빛이 마치 거대한 야수의 눈처럼 번득인다.~ */
  IF ~~ THEN REPLY #64593 /* ~"우선 당신부터 저세상으로 보내야 할 것 같군, 베일로..."~ */ EXIT
END
