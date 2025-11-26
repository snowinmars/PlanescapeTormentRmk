// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUATRAA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUATRAA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45430 /* ~이 남자는 한 상자에서 다른 상자로 움직이면서 상자의 수를 세고 그 결과를 양피지에 기록하느라 정신이 없다. 당신이 말을 걸자 그는 불쾌해 한다. "뭐요? 내가 창고 정리를 하느라 바쁜 것이 보이지 않소? 가서 다른 사람이나 귀찮게 하시오."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45085 /* ~"나는 이 상자를 당신에게 배달하라는 부탁을 받았소."~ */ GOTO 2
  IF ~~ THEN REPLY #45431 /* ~"방해할 생각은 아니었소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45432 /* ~"또 당신이군! 난 분명히 다시는 날 귀찮게 하지 말라고 했는데."~ */
  IF ~  Global("FedEx","Global",1)
PartyHasItem("DBox")
~ THEN REPLY #45433 /* ~"나는 이 상자를 당신에게 배달하라는 부탁을 받았소."~ */ GOTO 2
  IF ~~ THEN REPLY #45434 /* ~"방해할 생각은 아니었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #45435 /* ~"왜 진작에 그 얘기를 하지 않았소? 어디 어떤 물건인지 봅시다. 그것도 보나마나 목록에 기입되어야 할 거요."~ */
  IF ~~ THEN REPLY #45437 /* ~"마가 이 상자를 당신에게 주라고 부탁했소."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #45438 /* ~당신이 받으라고 상자를 내밀자 쿠'아트라의 표정이 관심에서 공포로 돌변한다. "안돼! 제발... 그걸 내게서 치우시오!"~ */
  IF ~~ THEN REPLY #45439 /* ~"이해를 못하겠소. 왜 당신은 이 상자를 두려워하는 거요?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45440 /* ~"나는... 물-물러서라고 했소! 죽음... 사악... 마를 속여야 했소... 더 이상 견딜 수가 없었소. 제발... 그걸 브래스켄에게 가져 가시오... 벌통... 남서쪽에 사는... 나... 안돼!" 그에게는 상자를 그냥 보고 있는 것조차 견딜 수 없었던 듯 비명을 지르면서 건물 밖으로 달아난다.~ */
  IF ~~ THEN REPLY #45441 /* ~"기다리시오. 그럼 난 어떻게...?~ */ DO ~SetGlobal("FedEx","Global",2)
SetGlobal("Alpha","Global",2)
SetGlobal("Beta","Global",1)
AddexperienceParty(250)
StartCutSceneMode()
StartCutSceneEx("3009cut1",FALSE)
~ JOURNAL #39488 /* ~나는 마가 맡긴 이 기묘한 상자의 수취인인 쿠'아트라를 만났으나 그의 태도가 이상하였다. 상자 속에 들어 있는 것을 두려워하는 듯 했다. 내가 그것을 그에게 보여주자 그는 공포에 질려 중얼거리다가 도망쳐버렸다. 그의 말로부터 내가 알아들은 바에 의하면 그는 상자를 벌통의 남서쪽 구역에 살고있는 브래스켄에게 전달하기를 원하는 것 같다. 나는 이 브래스켄이라는 사람이 문제를 말끔히 해결하고 나로부터 이 상자를 가져가 주기를 바랄 뿐이다. 나는 이 상자를 볼 때마다 거북한 느낌이 든다. ~ */ EXIT
END
