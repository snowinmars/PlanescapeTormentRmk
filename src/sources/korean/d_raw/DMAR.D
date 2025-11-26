// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45076 /* ~마에 대한 당신의 첫인상은 그가 목욕을 해도 한참 해야 된다는 것이다, 그것도 후각이 조금이라도 있는 생명체로부터는 멀리 떨어진 곳에서. 악취가 그의 몸을 사악한 누런 촉수로 감고 있는 환영이 눈에 보일 지경이다. 그는 당신으로 하여금 자신에게로 와 말을 걸게 만들려고 미친 듯이 몸짓을 한다.~ */
  IF ~~ THEN REPLY #45077 /* ~그에게 접근해 그가 무슨 얘기를 하는지 듣는다.~ */ GOTO 4
  IF ~~ THEN REPLY #45399 /* ~숨을 죽이고 떠난다.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("FedEx","Global",0)
~ THEN BEGIN 1 // from:
  SAY #45400 /* ~당신은 악취를 각오하고 마에게 다가간다. "날 위해 부탁 좀 들어주겠소? 널 위해 배달해 줘야 할 상자가 있소."~ */
  IF ~~ THEN REPLY #45401 /* ~"당신을 위해 상자를 배달해 주겠소."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #45402 /* ~"이 상자는 누구에게 배달해야 하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #45403 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 16 10 even though they appear after this state */
~  GlobalGT("FedEx","Global",0)
~ THEN BEGIN 2 // from:
  SAY #45404 /* ~당신의 다가오는 것을 보자 그의 눈에는 당황한 기색이 역력하다. 그는 날카로운 소리로 외친다. "대체 왜 다시 여기로 온 거요! 상자를 배달할 때까지는 돌아오지 마시오."~ */
  IF ~  Global("FedEx","Global",2)
Global("Demonbox","Global",0)
~ THEN REPLY #45405 /* ~"이 상자의 수취인이 도망을 쳤소. 이제는 어떻게 하오?"~ */ GOTO 8
  IF ~  Global("FedEx","Global",10)
~ THEN REPLY #45406 /* ~"내가 상자를 처리했소."~ */ DO ~SetGlobal("FedEx","Global",11)
~ GOTO 11
  IF ~  Global("Demonbox","Global",4)
~ THEN REPLY #45407 /* ~"내가 상자 속의 악마를 죽였소."~ */ GOTO 18
  IF ~  Global("Demonbox","Global",3)
~ THEN REPLY #45408 /* ~"내가 상자 속의 악마를 죽였소."~ */ GOTO 19
  IF ~  Global("Demonbox","Global",1)
~ THEN REPLY #45409 /* ~"내가 상자를 열자 악마가 한 마리 나타났소. 난 도망쳤소."~ */ GOTO 3
  IF ~  !Global("FedEx","Global",2)
!Global("FedEx","Global",10)
GlobalGT("FedEx","Global",0)
Global("Demonbox","Global",0)
~ THEN REPLY #45410 /* ~"아무도 이 상자를 원하지 않소. 도로 받으시오."~ */ GOTO 9
  IF ~  !Global("FedEx","GLOBAL",10)
Global("Demonbox","Global",2)
~ THEN REPLY #45411 /* ~"나는 벌통을 떠났으나 아무런 일도 일어나지 않았소."~ */ GOTO 17
  IF ~~ THEN REPLY #45412 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.4
  SAY #45413 /* ~"이 미친 얼간이! 그 저주받은 상자를 연 건 네 사망 증명서에 서명을 한 거나 마찬가지야! 너에게도 분별할 능력이 있다면 어서 도망쳐!" 마는 화급히 자리를 뜬다.~ */
  IF ~~ THEN REPLY #45414 /* ~"안녕히 계시오."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39511 /* ~나는 두 가지 실수를 하였다. 첫째는 마의 경고를 무시하고 상자를 연 일이다. 둘째는 악마가 나타난 후 그것으로부터 도망친 일이다. 첫 번째 실수는 어쩔 수가 없다고 하더라도 두 번째 실수는 정정할 수 있다. 나는 그 악마를 죽여야만 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #46322 /* ~당신이 다가가자 그의 얼굴에는 흥분한 기색이 역력하다. "멈추어 주어 고맙소. 내 이름은 마요, 그리고 당신에게 부탁할 게 있소."~ */
  IF ~~ THEN REPLY #46323 /* ~"듣고 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #46324 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 4.0
  SAY #46325 /* ~"이건 생과 사가 걸린 문제요! 이 상자를 배달하지 않으면 난 죽은 목숨이오! 그런데 난 재수없게 다리를 심하게 삐었소. 그래, 내 대신 이 상자를 배달해 줄 수 있겠소?"~ */
  IF ~~ THEN REPLY #46326 /* ~"당신을 위해 상자를 배달해 주겠소."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #46327 /* ~"싫소."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 5.0
  SAY #46328 /* ~마는 그의 누더기 옷 속에서 작은 상자를 천천히 꺼낸다. 당신 눈에 그의 얼굴에 후회하는 표정이 아주 잠시 스치고 지나가는 것이 보인다... 그 표정은 이내 사라지고, 그는 당신을 쳐다보면서 상자를 내민다. 당신과 마가 동시에 상자를 만지자 상자 주위에 희미한 빛이 감돈다. 마는 당신에게 상자를 건네주고 나서 안도의 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #46329 /* ~"이젠 뭐요?"~ */ DO ~GiveItemCreate("DBox",Player1,1,0,0)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46330 /* ~"이 상자는 쿠'아트라에게 배달되어야 하오. 그는 벌통의 남동쪽 지역 어딘가에 살고 있을 거요. 오, 분명히 말해 둘 테니 나중에 가서 내가 경고를 하지 않았다는 말은 꺼내지 마시오 - 무슨 일이 있어도 상자를 열지 마시오! 그리고 상자를 가지고 벌통을 떠나지 마시오. 자, 어서 떠나시오!"~ */
  IF ~~ THEN REPLY #46331 /* ~"상자를 배달한 후에 돌아오리다. 안녕히 계시오."~ */ DO ~SetGlobal("Notalk","AR0100",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT1",FALSE)
~ JOURNAL #39481 /* ~나는 쿠'아트라라는 사람에게 기묘한 상자를 전달하는 일을 맡았다. 마에 의하면 그는 보통 벌통의 남동쪽 지역에 있다고 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0
  SAY #46461 /* ~"그건 더 이상 내 문제가 아니오. 당신이 그 상자를 배달할 때까지 그건 마법에 의해 당신에게 묶여 있게 되오. 빨리 누군가에게 배달하는 게 좋을 거요! 이제 그걸 처분할 때까지는 내 근처에도 얼씬하지 마시오."~ */
  IF ~  Global("FedEx","Global",2)
~ THEN REPLY #46462 /* ~이제 당신은 스스로의 힘으로 사태를 해결해야 할 것 같다. 쿠'아트라가 이 상자를 줄 수 있는 사람의 이름을 언급하지 않았었나?~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
  IF ~  GlobalGT("FedEx","Global",2)
~ THEN REPLY #46463 /* ~대체 이 상자 안에는 무엇이 있지?~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY #46464 /* ~마는 공포에 질려 뒤로 물러선다. "아니! 난 그 저주받은 상자를 다시는 만지지 않을 거야! 당신은 그걸 기꺼이 받았소. 가지고 있던지 아니면 다른 사람에게 주던지 마음대로 하시오, 하지만 나와는 상관이 없소. 그 상자를 다시 가지느니 차라리 죽고 말겠소. 이제 날 그냥 내버려 두시오!"~ */
  IF ~~ THEN REPLY #46465 /* ~"이 상자를 처리하고 난 후에는 돌아와서 당신을 처리하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("FedEx","Global",9)
~ THEN BEGIN 10 // from:
  SAY #46466 /* ~"난 당신에게 할 말은 이미 다 했소."~ */
  IF ~~ THEN REPLY #46467 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #46468 /* ~"당신이 그 말을 하는 걸 들으니 마음이 편하군. 속임수를 써서 당신에게 상자를 넘기는 악랄한 짓을 했다고 날 죽이기 전에 우선 내 얘기부터 좀 들으시오~ */
  IF ~~ THEN REPLY #46469 /* ~"당신은 이제 죽은 목숨이오."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~내 정의는 신속하며 일체의 자비가 없다. 나는 마가 목숨으로 자신의 죗값을 치루게 하였다. 내 유일한 소망은 여행을 계속하는 것 뿐이며, 마법의 상자 따위때문에 머뭇거릴 생각은 추호도 없다. ~ */ EXIT
  IF ~~ THEN REPLY #46470 /* ~"듣고 있으니 해명을 해보시오.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #46471 /* ~"요컨대 그 상자는 사람들이 기억할 수 있는 것보다 훨씬 전부터 존재했다고 하오. 어떤 사람들은 혈투 끝에 거대한 악마가 상자 안에 감금되었다고 하고, 다른 사람들은 사악한 마법사가 단지 사람들에게 고통을 줄 목적으로 만들었다고 하오. 아무도 그 상자의 진짜 내력은 모르오. 하지만 만약 상자를 열면 상자 주인은 죽게 되오."~ */
  IF ~~ THEN REPLY #46472 /* ~"왜 상자의 소유주는 그냥 상자를 아무도 찾을 수 없는 곳에 두지 않았소?"~ */ GOTO 13
  IF ~~ THEN REPLY #46473 /* ~"듣고 싶지 않소. 이 일에서 내가 얻을 건 무엇이오?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #46474 /* ~"그래, 그렇게 간단히 처리할 수도 있었겠지. 하지만 우리들 중 그 누가 죽음이 언제 들이닥칠지 모르는 상황에서 멀쩡할 수가 있었겠소. 그 망할 상자의 소재에 대해 노상 걱정하다가 보면 어떤 사람이라도 돌아버리게 될 거요."~ */
  IF ~~ THEN REPLY #46475 /* ~"왜 하필이면 나요?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46476 /* ~"첫째, 나는 당신을 전에 본 적이 없소. 나는 당신처럼 그 상자를 *받아들여* 그것의 새 주인이 될 무지한 사람이 필요했소. 이 주변 사람들은 상자에 대해 알고 있기 때문에 어떠한 경우에도 상자를 받지 않을 거요. 둘째, 만약 당신이 상자를 받았을 때 그것을 자세히 살펴보았더라면 그것에 걸린 마법이 약해지고 있다는 것을 눈치챌 수 있었을 거요. 그러니 현 소유주로서 난 그걸 다른 사람에게 재빨리 넘겨야만 했소. 게다가 당신은 곧 다음 세상으로 갈 사람처럼 보였으니까."~ */
  IF ~~ THEN REPLY #46477 /* ~"당신은 다음 세상으로 가는 일에 대해 얘기하고 싶소? 계속 지껄이면 아마 곧 구경을 하게 될 것이오."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #46478 /* ~"내가 정말 대단한 사람을 골랐던 모양이오. 당신 같은 사람에게는 이것도 대수롭지 않은 일이었을 거요. 노고에 대한 대가로 이 무기와 약간의 돈을 드리겠소. 내가 가진 건 그것뿐이오... 그리고 공교롭게도 그건 그 염병할 쿠'아트라 자식이 내가 그 상자를 받도록 할 때 써먹었던 것이기도 하오."~ */
  IF ~~ THEN REPLY #46479 /* ~"나는 당신을 죽이고 보수를 그냥 가져가도록 하겠소."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~내 정의는 신속하며 일체의 자비가 없다. 나는 마가 목숨으로 자신의 죗값을 치루게 하였다. 내 유일한 소망은 여행을 계속하는 것 뿐이며, 마법의 상자 따위때문에 머뭇거릴 생각은 추호도 없다. ~ */ EXIT
  IF ~~ THEN REPLY #46480 /* ~"내 보수를 내놓은 다음 이 곳을 떠나시오."~ */ DO ~GiveItem("Hax",Protagonist)
AddexperienceParty(1250)
GivePartyGold(500)
~ JOURNAL #39484 /* ~별로 올바른 판단은 아닌 듯하나, 나는 마가 한 짓를 용서하기로 결심했다. 내가 기억을 되찾기를 원하기는 하지만 이번 모험만은 잊고 싶다. ~ */ EXIT
END

IF WEIGHT #1 ~  Global("FedEx","Global",11)
~ THEN BEGIN 16 // from:
  SAY #46481 /* ~"당신이 그 저주받은 상자를 피괴한 덕분에 이 곳 사람들은 편안히 잘 수 있게 되었소. 다시 한 번 감사하오!"~ */
  IF ~~ THEN REPLY #46482 /* ~"내가 도움이 되었다니 기쁘오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #46483 /* ~"이 얼간이 같으니! 난 너보고 벌통을 뜨지 말라고 했잖아! 놈이 널 죽이러 오기 전에 빨리 내 앞에서 꺼져!"~ */
  IF ~~ THEN REPLY #46484 /* ~마는 도망친다.~ */ DO ~SetGlobal("Boxleft","Global",1)
SetGlobal("Gamma","Global",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39482 /* ~벌통 구역을 떠남으로서 나는 이 상자 안에 갇혔던 괴물을 해방한 것 같다. 어째서인지는 모르겠으나 난 그 괴물이 상자의 마지막 주인을 찾아올 것이라는 생각이 들었다. 안전을 기하기 위해 등뒤를 조심하도록 해야겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY #46485 /* ~"그 상자를 열고도 아직도 멀쩡히 살아서 그 일에 대해 얘기를 하다니! 에... 내 말은 당신은 그 염병할 것을 열지 말라는 내 경고를 어겼다는 거요. 당신은 상자를 제대로 배달하지 않았기 때문에 아무런 보수도 줄 수가 없소. 이제 당장 내 앞에서 꺼지시오." ~ */
  IF ~  Global("FedEx","Global",1)
~ THEN REPLY #46486 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39507 /* ~나는 마에게 내가 상자를 열었으며 그 안의 악마를 죽였다고 말해주었다. 처음에는 내게 상자 안에 무엇이 들었는지 말해주지 않은 데 대해서 마에게 몹시 화가 나 있었으나, 생각해 보니 그의 경고를 무시한 것은 내 실수다. 앞으로는 내 호기심을 자제하도록 노력해야겠다. ~ */ EXIT
  IF ~  GlobalGT("FedEx","Global",1)
~ THEN REPLY #46487 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39505 /* ~나는 마에게 누구에게 상자를 배달해야 할지 몰라 난감해하다 결국 상자를 열고 말았다고 털어놓았다. 이제 그는 내게 노고의 대가를 지불하기를 거부하고 있다. 나는 비록 적게나마 보상을 받아야 한다고 생각하기 때문에 심한 도덕적인 갈등에 빠져있다. 어쨌든 나는 상자를 배달하려는 시도를 했다... 문제는 아무도 상자를 나로부터 받으려하지 않았다는 것이다. 하지만 난 마의 경고를 어기고 상자를 열었다. 혼란에 빠진 나는 아무런 말도 못하고 돈도 받지 못한 채 그를 떠났다. 상자와 그 안의 악마와 관련된 일을 마무리짓게 되어 기쁘다. ~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #46488 /* ~"난 당신에게 그 상자를 가지고 벌통을 떠나지 말라고 분명히 경고했소. 그 악마가 당신을 갈가리 찢지 않은 게 신기하오. 만약 당신이 내게 보수를 받으러 돌아오더라도 난 줄 수가 없소! 난 당신네게 상자를 배달해 달라고 부탁했지, 그 안의 마족을 죽여 달라고 한 적은 없소."~ */
  IF ~~ THEN REPLY #46489 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseH","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39504 /* ~나는 마에게 내가 벌통을 떠날 때 해방했던 악마를 죽였다고 말해주었다. 악마를 죽인 내 능력에는 감탄한 듯 했으나, 그는 내 노고에 대한 대가를 지불하기를 거부했다. 하지만 난 그의 경고를 어겼고 시키는 대로 상자를 배달하지 않았기 때문에 그와 이 문제를 놓고 논쟁을 벌일 자격은 없다.~ */ EXIT
END

IF WEIGHT #2 ~  Global("notalk","AR0100",1)
~ THEN BEGIN 20 // from:
  SAY #46490 /* ~"난 당신에게 할 말은 다 했소."~ */
  IF ~~ THEN REPLY #46491 /* ~"안녕히 계시오."~ */ EXIT
END
