// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43002 /* ~이 사람은 한 다발의 종이와 펼친 두루마리를 들고 다니고 있다. 때때로 그는 멈추어 서서 그 내용을 살펴본다, 그리고 적힌 내용의 일부를 큰 소리로 읽으면서 손으로는 복잡한 손짓을 연습한다. 당신이 다가가 그의 앞에 서자 그는 당신을 쳐다본다. "안녕하시오..."~ */
  IF ~~ THEN REPLY #43003 /* ~"안녕하시오... 이 곳은 뭐 하는 곳이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #43004 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43005 /* ~"이 곳은 메이지 지망생들이 와서 연구와 연습을 할 수 있는 곳이오. 많은 마법사들이 이 곳에서 마법사로서의 첫걸음을 내딛었소."~ */
  IF ~  Global("Thorncombe","GLOBAL",0)
~ THEN REPLY #43006 /* ~"강사는 어디 있소?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",1)
~ JOURNAL #66871 /* ~나는 시 공회당의 메이지 훈련실에 들어갔으나 강사는 없었다. 메이지 지망생들 중 하나가 강사인 쏜쿰 여사는 공회당의 감각 체험실에 있을 거라고 말했다. ~ */ GOTO 2
  IF ~  GlobalGT("Thorncombe","GLOBAL",0)
GlobalLT("Thorncombe","GLOBAL",3)
~ THEN REPLY #66870 /* ~"강사는 어디 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #43007 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43008 /* ~"나는 쏜쿰 여사가 어디 있는지 모르오. 감각 체험실에 한 번 가보시오... 그녀는 거기서 많은 시간을 보내니까..." 그는 목소리를 낮추고 눈살을 찌푸린다. "그것도 너무 많이."~ */
  IF ~~ THEN REPLY #43009 /* ~"감각 체험실?"~ */ GOTO 3
  IF ~~ THEN REPLY #43010 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #43011 /* ~"공회당 입구 바로 옆에 있는 스플린터에게 물어보시오. 당신은 그 곳으로 직접 갈 수가 없소, 하지만 그가 당신을 데려다 줄 거요."~ */
  IF ~~ THEN REPLY #43012 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
