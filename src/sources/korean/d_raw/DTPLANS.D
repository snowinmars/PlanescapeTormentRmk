// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPLANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPLANS~

IF ~  Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 0 // from:
  SAY #61864 /* ~이 설계도에 의하면 무덤에는 여러 개의 함정이 설치되어 있으나, 그 정확한 위치는 기입되어 있지 않다. 하지만 각 방에 특별히 치명적인 함정이 설치되었다는 주석은 있다. 아래쪽에 다른 사람의 필적으로 갈겨써진 글씨가 있는데, 당신이 쓴 것 같다.~ */
  IF ~~ THEN REPLY #61869 /* ~쪽지를 읽는다.~ */ DO ~Explore()
~ GOTO 2
  IF ~~ THEN REPLY #61870 /* ~완료.~ */ DO ~Explore()
~ EXIT
END

IF ~  !Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 1 // from:
  SAY #61866 /* ~이 설계도는 당신이 무덤 안에 직접 들어갈 경우 더 이해하기 쉬울 것 같다. 그러면 설계도와 그 내용이 실제로 어떻게 무덤에 반영되었는지를 대조할 수 있을 것이다.~ */
  IF ~~ THEN REPLY #61867 /* ~완료.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61868 /* ~"함정은 완성되었다, 그리고 이제 나는 그 안에서 내 고문자가 도착하기만 기다리면 된다. 하지만 함정을 해제하지 않고도 시체를 밖으로 운반할 방법이 필요할 것 같다...흠. 아마 시체를 시작 지점으로 운반할 마법이라면..."~ */
  IF ~~ THEN EXIT
END
