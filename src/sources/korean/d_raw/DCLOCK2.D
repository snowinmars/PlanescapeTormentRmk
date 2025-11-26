// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK2~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64234 /* ~이 거대한 시계는 주변의 검은 돌과 부분적으로 융합한 것처럼 보인다... 문자반을 보자 당신은 갑자기 후두부에서 뭔가가 기어가는 듯한 기묘한 감각을 느낀다 -- 바로 이 시계는 아니지만 이와 비슷한 시계를 본 적이 있는 것 같다. 뭔가 중요한 점이 있는 듯하나 당신으로선 정확히 알 수가 없다.~ */
  IF ~~ THEN REPLY #64236 /* ~시계를 그냥 내버려 둔다.~ */ JOURNAL #64240 /* ~나는 요새에서 커다란 부서진 시계를 발견했다. 그것을 조사하자 거기서 뭔가를 *봐야만* 한다는 느낌이 들었다, 그러나 그것이 무언인지는 모르겠다. 아마도 과거에 이것과 흡사한 시계를 본 적이 있는 모양이다.  ~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #64235 /* ~이 거대한 시계는 주변의 검은 돌과 부분적으로 융합한 것처럼 보인다... 하지만 다른 시계들과는 달리 아무런 메시지나 표시가 없다. 당신의 전신은 이 시계를 거쳐 가지 않았던 듯하다. ~ */
  IF ~~ THEN REPLY #64237 /* ~시계를 그냥 내버려 둔다.~ */ EXIT
END
