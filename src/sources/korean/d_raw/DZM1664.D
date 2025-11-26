// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM1664.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM1664~

IF ~  True()
~ THEN BEGIN 0 // from: 5.0
  SAY #47002 /* ~이 거대한 체구의 시체는 방 한 구석에서 조용히 서 있다. 그는 생전에 거구의 청년이었던 듯 하며, 시체의 상태로 미루어 볼 때 최근에 죽은 것 같다. 이마의 "1664"란 번호도 실로 꿰맨 지 얼마되지 않은 듯하다. 팔에 책을 잔뜩 들고 있는 것을 볼 때 이 시체는 사서 노릇을 하고 있는 듯하다. ~ */
  IF ~  Global("Page_Taken","GLOBAL",0)
~ THEN REPLY #47003 /* ~책들을 살펴본다.~ */ GOTO 3
  IF ~  Global("Page_Taken","GLOBAL",1)
~ THEN REPLY #47004 /* ~책들을 다시 살펴본다.~ */ GOTO 6
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #47005 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #47006 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #47007 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #47008 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 6.0
  SAY #47009 /* ~좀비는 벽을 멍하니 쳐다보고 있다.~ */
  IF ~~ THEN REPLY #47010 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #47011 /* ~시체는 미동도 하지 않는다. 최근에 죽은 것처럼 보이는 데도 불구하고 당신 질문에 대답할 수가 엇는 듯하다. ~ */
  IF ~~ THEN REPLY #47012 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #47013 /* ~책들은 오래된 시체안치소 장부들인 것 같으나, 당신의 관심을 끌 만한 내용은 없는 듯하다. 하지만 책들을 뒤지다가 당신은 두 권의 책 사이에 낀 푸석푸석한 페이지 한 장을 발견한다. 갑자기 당신은 누군가 그것을 감추려고 그 곳에 끼워 넣었다는 생각을 하게 된다.~ */
  IF ~~ THEN REPLY #47014 /* ~그 페이지를 챙겨 넣는다.~ */ DO ~GiveItemCreate("Logpage",Protagonist,1,0,0)
SetGlobal("Page_Taken","GLOBAL",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #47015 /* ~그 페이지는 장부에서 나온 것 같지는 않다... 일지에서 떨어져 나온 듯하다. 찢어진 부분이 마치 칼로 자른 것처럼 깨끗한 것을 볼 때 누군가 일부러 잘라낸 것 같다.~ */
  IF ~~ THEN REPLY #47016 /* ~그것을 통독한다.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47017 /* ~당신은 잠시 그 페이지를 읽는다... 그것은 시체안치소로 운반되어 접수실로 옮겨진 시체들의 목록이다. 목록의 항목들은 모두 최근에 도착한 시체에 대한 것 같다.

^NNOTE: <READSTUFF>^-~ */
  IF ~~ THEN REPLY #47018 /* ~좀비를 다시 살펴본다.~ */ GOTO 0
  IF ~~ THEN REPLY #47019 /* ~그 페이지를 챙겨 넣고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY #47021 /* ~책들은 오래된 시체안치소 장부들인 것 같으나, 당신의 관심을 끌 만한 내용은 없는 듯하다. 책들을 한 번 더 뒤져보지만 아무 것도 나오지 않는다. ~ */
  IF ~~ THEN REPLY #47022 /* ~"그래, 당신은 어떻게 해서 사서가 되었소? 다른 일자리는 남은 게 없었소?"~ */ GOTO 1
  IF ~~ THEN REPLY #47023 /* ~좀비를 그냥 내버려 둔다.~ */ EXIT
END
