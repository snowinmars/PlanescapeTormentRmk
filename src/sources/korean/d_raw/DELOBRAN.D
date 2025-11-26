// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELOBRAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELOBRAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #46012 /* ~이 노파는 당신을 자신의 날카로운 회색 눈으로... 처음에는 당신 얼굴을, 그리고 그 다음에는 당신 팔과 다양한 문신들을 자세히 살펴본다. "안녕하시오, 상처 입은 자여. 엘로브란드와 이야기를 하러 왔소? 단돈 다섯 닢에 스스로의 운명에 대해 들으러 왔소?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #46013 /* ~"그렇소... 내 운세를 말해주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #46014 /* ~"아니오, 하지만 질문할 것들이 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #46015 /* ~"사양하겠소. 안녕히 계시오, 엘로브란드."~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #46016 /* ~엘로브란드는 당신이 준 동전을 자신의 허리에 찬 주머니 속에 넣고 당신 손을 잡는다. 그녀는 조용히 당신 손바닥을 살피더니 눈살을 찌푸린다. 한참이 지나고 나서야 그녀는 마침내 입을 연다. "드물기는 하지만 운명이 없는 자라고 불리는 사람들도 있소. 그들은 스스로의 운명을 만들어 내며 삶을 마음대로 사오. 당신에게는 말해줄 운명이 존재하지 않소, 상처 입은 자여. 아무 것도 없소... 내겐 당신에게 말해줄 것은 아무 것도 없소. 그러니 돈은 돌려주겠소." 그녀는 당신에게 동전 다섯 닢을 돌려준다.~ */
  IF ~~ THEN REPLY #46017 /* ~"알겠소... 몇 가지 물어볼 것들이 있소..."~ */ GOTO 2
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46018 /* ~"그럼 안녕히 계시오."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #51349 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0 5.1
  SAY #46019 /* ~"나는 세속적인 일에 대해서 말하지 않소, 상처 입은 자여."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46020 /* ~"그럼 이 두루마리에 대해 얘기를 하시오. 나는 그 두루마리를 읽었고 그것에는 덫이 놓여 있었소."~ */ GOTO 6
  IF ~  PartyGoldGT(4)
Global("CW_Fortune","AR0600",0)
~ THEN REPLY #46021 /* ~"그럼 내 운세를 말해주시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Fortune","AR0600",1)
~ GOTO 1
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #46022 /* ~"그렇다면 안녕히 계시오."~ */ GOTO 3
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #46023 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.2
  SAY #46024 /* ~"잠깐 기다리시오, 상처 입은 자여..." 엘로브란드는 손을 내밀어 당신 팔을 잡는다. "내 어머니는 오래 전에 내게... 밀랍으로 봉인된 두루마리를 하나 남겼소. 두건을 뒤집어쓴 남자가 그것을 그녀에게 맡기면서 당신처럼 생긴 사람이 어느 날 갑자기 찾아와 그것을 달라고 할 것이라고 말했다고 하오. 자... 가져가시오."~ */
  IF ~~ THEN REPLY #46025 /* ~"뭐요?"~ */ DO ~GiveItemCreate("ScTrap",Protagonist,1,0,0)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46026 /* ~엘로브란드는 눈살을 찌푸리며 고개를 젓는다. "모르오. 그녀는 그것을 절대 읽지 않겠다고 맹세를 했으며, 나 역시 봉인을 개봉하지 말라는 그녀의 부탁을 지켰소. 남자는 그녀에게 두루마리를 맡기면서 상당한 액수의 돈을 지불했고, 만약 열 경우에는 엄청난 대가를 치르게 될 것이라고 경고했소."~ */
  IF ~~ THEN REPLY #46027 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #46028 /* ~점쟁이 엘로브란드가 보인다. "다시 만나 반갑소, 상처 입은 자여."~ */
  IF ~  Global("CW_Scroll_Trap","GLOBAL",1)
~ THEN REPLY #46029 /* ~"나는 그 두루마리를 읽었고 그것에는 덫이 놓여 있었소."~ */ GOTO 6
  IF ~~ THEN REPLY #46030 /* ~"물어볼 것들이 좀 있소, 엘로브란드..."~ */ GOTO 2
  IF ~~ THEN REPLY #46031 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 5.0
  SAY #46032 /* ~엘로브란드는 당혹해 하는 듯하다. "나... 나는 당신에게 뭐라고 해야 할지 모르겠소, 상처 입은 자여..."~ */
  IF ~~ THEN REPLY #46033 /* ~"우선 정확히 어떻게 해서 그것을 손에 넣었는지부터 말하시오."~ */ GOTO 7
  IF ~~ THEN REPLY #46034 /* ~"정말 *할* 말이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46035 /* ~"상처 입은 자여, 이미 말했듯이 나는 그것을 내 어머니로부터 받았소. 두건을 뒤집어쓴 남자가 오십 년 전 그것을 그녀에게 맡기면서 후사하는 대신 결코 앍지 않겠다는 다짐을 그녀에게 받았소." 엘로브란드는 한숨을 쉬면서 잠시 시선을 다른 곳으로 돌린다. "그녀는 강력한 힘을 지닌 마법사였음에도 불구하고 이 남자를 몹시 두려워했소. 그녀는 그의 눈밖에 보지를 못했으나, 그의 눈은 광기로 빛나고 있었으며, 그 주변의 피부는... 당신처럼 주름이 많고 회색이었다고 하오. 나는 그에 대해 그 이상은 아는 것이 없소."~ */
  IF ~~ THEN REPLY #46036 /* ~"그렇다면 됐소. 안녕히 계시오."~ */ EXIT
END
