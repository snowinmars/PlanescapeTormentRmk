// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUUYIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUUYIN~

IF ~  GlobalGT("KYName","GLOBAL",2)
GlobalLT("KYName","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #20109 /* ~낙담한 사내는 희망 어린 눈빛으로 당신을 올려다본다, 하지만 여전히 그의 어조에서는 아무런 감정도 찾아볼 수가 없다. "그녀가 내 이름과 번호를 돌려주었소? 그녀는 돈을 제시했을 것이오, 그렇지 않소? 나는 생존할 수가 없소. 내 이름을 찾아 주시오. 그녀가 내 이름을 돌려주었소?" 그의 눈은 당신 얼굴을 가로지르며 유심히 살핀다. ~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20110 /* ~"그렇소."~ */ GOTO 5
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20111 /* ~거짓말: "아니, 아직 아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20112 /* ~"아니, 아직 아니오."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20113 /* ~"아니, 아직 아니오. 노력 중이오. 안녕히 계시오."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #45396 /* ~"그녀는 그것들에 대해 돈을 내겠다고 제의했소."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.1 17.0
  SAY #20114 /* ~그의 안면 근육이 격렬하게 경련을 일으킨다. "날 용서해주시오, 나는 내 마음 속에서 당신에게 잘못을 저질렀소. 당신의 얼굴을 보고 나는 당신이 내 이름과 번호를 가지고 있다고 생각했으나, 당신은 그렇지 않다고 말하고 있소. 다시 물으리다. 당신은 내 이름과 번호를 가지고 있소?" ~ */
  IF ~~ THEN REPLY #20115 /* ~거짓말: "아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #20116 /* ~"그렇소."~ */ GOTO 5
  IF ~~ THEN REPLY #20117 /* ~"우선 내 질문에 좀 대답해주겠소?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20118 /* ~"나는 더 이상 물을 수 없을 때까지 세 번을 물어볼 수 있소. 그것이 법이오. 당신은 내 이름과 번호를 가지고 있소?"~ */
  IF ~~ THEN REPLY #20119 /* ~거짓말: "아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #20120 /* ~"그렇소."~ */ GOTO 5
  IF ~~ THEN REPLY #20121 /* ~"우선 내 질문에 좀 대답해주겠소?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 2.2 5.2 6.1
  SAY #20122 /* ~"이 곳에는 정의란 없는 모양이오. 나는 억울한 일을 당했건만 그 일에 대해 얘기할 수 조차 없소. 나는 아무 것도 아니며, 계속 그런 상태로 남아 있게 될 것이오. 나는 더 이상 당신과 얘기하지 않겠소."~ */
  IF ~~ THEN REPLY #20123 /* ~"기다리시오, 실은 난 당신 이름과 번호를 가지고 있소..."~ */ JOURNAL #66390 /* ~내가 이름과 번호을 돌려주겠다고 제의했으나 쿠'우 인은 거절했다. 마음대로 하라지. ~ */ GOTO 4
  IF ~~ THEN REPLY #20124 /* ~"날 위해 몇 가지 질문에 더 대답해주겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #20125 /* ~"좋소. 그게 당신이 원하는 거라면."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #20126 /* ~그는 고개를 젓고, 돌아서서 걸어간다. ~ */
  IF ~~ THEN REPLY #20127 /* ~"그럼 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.1 2.1 17.1
  SAY #20128 /* ~"그것들을 돌려받을 수 있겠소?"~ */
  IF ~~ THEN REPLY #20129 /* ~"그 대가로 내게 무엇을 줄 거요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_2","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #20130 /* ~"물론이오. 당신 이름은 쿠'우 인이오. 당신 번호를 받으시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_KY_1","GLOBALGood",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 7
  IF ~~ THEN REPLY #20131 /* ~"싫소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20132 /* ~"내게는 아무 것도 없기 때문에 당신에게 아무 것도 줄 수가 없소. 내게 내 이름과 번호를 돌려주시겠소?"~ */
  IF ~~ THEN REPLY #20133 /* ~"물론이오. 당신 이름은 쿠'우 인이오. 당신 번호를 받으시오."~ */ DO ~TakePartyItemNum("KYName",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #20134 /* ~"싫소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_3","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #20135 /* ~"내 이름과 번호를 돌려주어 고맙소. 그렇소. 쿠'우 인. 그렇소. 하지만 아니오. 이제 나는 이 곳에서는 더 이상 번호가 필요 없다는 것을 깨달았소. 필요하다면 나는 새 번호를 찾을 것이오. 나는 당신에게 내 옛날 번호를 주겠소. 그것은 질서의 망토요. 그것은 당신을 보호할 것이오. 그것을 받아들이겠소?"~ */
  IF ~~ THEN REPLY #20136 /* ~"그러리다."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_2","GLOBALLaw",4)
~ GOTO 9
  IF ~~ THEN REPLY #20137 /* ~"아니오."~ */ DO ~TakePartyItemNum("KYName",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20138 /* ~그는 그것들을 심각한 표정으로 받는다. "내 이름과 번호를 돌려주어 고맙소. 그렇소. 쿠'우 인. 그렇소. 당신에게 감사하오. 나는 당신을 기억할 것이오. 그는 번호를 마치 스카프처럼 목에 걸친다, 그러자 그것은 그의 피부의 일부가 된다. 그는 돌아서서 걸어가기 시작한다. ~ */
  IF ~~ THEN REPLY #20139 /* ~"기다리시오. 몇 가지만 더 물어보고 싶소..."~ */ JOURNAL #66391 /* ~나는 쿠'우 인에게 그의 이름과 번호를 돌려주었다. 그는 내게 아무런 대가도 지불하지 않았다. 그것들을 가지고 그에게 공갈을 치지 말 걸 그랬다...~ */ GOTO 10
  IF ~~ THEN REPLY #20140 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ JOURNAL #66391 /* ~나는 쿠'우 인에게 그의 이름과 번호를 돌려주었다. 그는 내게 아무런 대가도 지불하지 않았다. 그것들을 가지고 그에게 공갈을 치지 말 걸 그랬다...~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #20141 /* ~"그것이 당신을 따뜻하게 해주도록 하시오. 그것을 믿으시오. 그것이 당신을 보호해 줄 것이오. 그럼 안녕히 계시오." 그는 돌아서서 걸어가기 시작한다. ~ */
  IF ~~ THEN REPLY #20142 /* ~"기다리시오.몇 가지만 더 물어보고 싶소..."~ */ JOURNAL #66392 /* ~나는 쿠'우 인에게 그의 이름과 번호를 돌려주었다. 그는 내게 자신의 번호를 주겠다고 제의했으며, 그는 그것이 나를 보호하고 따듯하게 해줄 것이라고 했다. ~ */ GOTO 10
  IF ~~ THEN REPLY #20143 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ JOURNAL #66392 /* ~나는 쿠'우 인에게 그의 이름과 번호를 돌려주었다. 그는 내게 자신의 번호를 주겠다고 제의했으며, 그는 그것이 나를 보호하고 따듯하게 해줄 것이라고 했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0 13.0 14.0
  SAY #20144 /* ~"그것들은 무엇이오?"~ */
  IF ~~ THEN REPLY #20145 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #20146 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 12
  IF ~~ THEN REPLY #20147 /* ~"뭘 하고 있는 거요?"~ */ GOTO 13
  IF ~~ THEN REPLY #20148 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 그럼 잘 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #20149 /* ~"나는 쿠'우 인이오. 나는 사고로 여기 오게 되었소. 여기 오게 된 이상 나는 더 배우고 싶소. 나는 더 배워야만 하오."~ */
  IF ~~ THEN REPLY #20150 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #20151 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20152 /* ~"나는 그것을 내 스스로 발견할 생각이오. 내 이름이 있으면 나는 다시 사람이오. 나는 배울 수가 있소, 그리고 그렇게 할 것이오."~ */
  IF ~~ THEN REPLY #20153 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #20154 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #20155 /* ~"나의 옛 정체성을 가지고 새로운 세계를 직면할 준비를 하고 있소. 이제 나는 숨겨진 함정들이 있다는 것을 아오, 그리고 나는 내 능력으로 발견할 수 있는 것을 발견하고자 하오. 나는 이제 준비가 되었소."~ */
  IF ~~ THEN REPLY #20156 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #20157 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #20158 /* ~그는 번호를 마치 스카프처럼 목에 걸친다, 그러자 그것은 그의 피부의 일부가 된다. "그럼 나는 내 옛 번호를 착용하도록 하겠소. 고맙소. 안녕히 계시오." 그는 돌아서서 출구 쪽으로 걸어가기 시작한다. ~ */
  IF ~~ THEN REPLY #20159 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #20160 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2 0.3
  SAY #20161 /* ~그는 당신이 다가가자 힘없이 말을 한다. "간청하건대 도둑과 계속 협상을 해주기 바라오. 내 이름과 번호 없이 나는 아무 것도 아니오."~ */
  IF ~~ THEN REPLY #20162 /* ~"노력하고 있소. 먼저 몇 가지 질문에 대답해주겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #20163 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.1 19.0 20.0 20.3 21.2 22.0 22.1 23.0 23.1 24.0
  SAY #20164 /* ~"무엇을 알고 싶으시오?"~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20165 /* ~"당신 자신에 대해 얘기해주시오."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20166 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 20
  IF ~~ THEN REPLY #20167 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 21
  IF ~~ THEN REPLY #20168 /* ~"내게 시길에 대해 얘기해주시오."~ */ GOTO 21
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20169 /* ~"아무 것도 아니오. 잘 있으시오."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20170 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",0)
GlobalLT("KYName","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #20171 /* ~"내 이름과 번호를 지닌 여인을 찾아냈소? 그녀는 아마 내게 이겨서 이름을 얻은 것이라고 할 것이오, 하지만 그건 사실이 아니오. 그녀는 그것을 훔쳤소. 내게는 내 이름과 번호 필요하오. 그녀는 이 마을 어딘가에 있소."~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20172 /* ~거짓말: "아니, 아직 아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 1
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20173 /* ~"당신 이름과 번호를 가져왔소."~ */ GOTO 5
  IF ~  Global("KYName","GLOBAL",2)
!PartyHasItem("KYName")
~ THEN REPLY #20174 /* ~"그녀를 찾았소. 하지만 그녀는 그것을 포기할 생각이 없소."~ */ DO ~SetGlobal("KYName","GLOBAL",3)
~ GOTO 18
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20175 /* ~"아직 그것을 되찾지 못했소."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #20176 /* ~그는 잠시 창백해진다. "그녀는 그것들을 돌려주어야만 하오. 그것들은 내 것이오. 그녀는 내게서 그것들을 훔쳤소. 나는 당신에게 도움을 청하오."~ */
  IF ~~ THEN REPLY #20177 /* ~"그것을 돌려받게 될 테니 걱정하지 마시오."~ */ GOTO 19
  IF ~~ THEN REPLY #20178 /* ~"만약 당신이 내 질문에 대답을 해준다면..."~ */ GOTO 16
  IF ~~ THEN REPLY #20179 /* ~"관두시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.3 18.0 18.2
  SAY #20180 /* ~"나는 도움이 필요하오. 당신이 날 도와준다면 난 그 은혜를 결코 잊지 않을 것이오. 제발 도와주시오."~ */
  IF ~~ THEN REPLY #20181 /* ~"그럼 우선 내 질문에 대답을 해주기 바라오..."~ */ GOTO 16
  IF ~~ THEN REPLY #20182 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 16.4 21.0 21.1 21.3
  SAY #20183 /* ~"나는 금속으로 만든 기계와 말 한마디로 열리는 문들이 있는 세계에서 살았소. 나는 소박한 금속 도시들과 내 동족들인 공허한 육신들의 꿈을 꾸오. 나는 그 곳에서 이름과 번호를 가지고 있었으나, 지금은 그 어느 쪽도 내게 없소. 내 동족들과 마찬가지로 그것들은 내가 가진 전부요. 내 일생 동안 내 것이 있던 건 그것들뿐이오. 하지만 난 그것들을 도둑맞았소. 그것들 없이 난 아무 것도 아니오. 나는 당신에게 도움을 청하오."~ */
  IF ~~ THEN REPLY #20184 /* ~"노력해 보리다. 다른 질문들에 좀 대답해주시오..."~ */ JOURNAL #66389 /* ~나는 자신의 이름과 번호를 도난당한 기묘한 사내를 만났다. 그는 모든 것에게 위치와 번호가 지정되어 있는 질서와 금속의 세계에서 왔으며. 자신의 번호 없이 그는 벌거벗고 추운 듯했다. ~ */ GOTO 16
  IF ~~ THEN REPLY #20185 /* ~"누가 당신의 이름과 번호를 가지고 있소?"~ */ JOURNAL #66389 /* ~나는 자신의 이름과 번호를 도난당한 기묘한 사내를 만났다. 그는 모든 것에게 위치와 번호가 지정되어 있는 질서와 금속의 세계에서 왔으며. 자신의 번호 없이 그는 벌거벗고 추운 듯했다. ~ */ GOTO 23
  IF ~~ THEN REPLY #20186 /* ~"당신은 내게 뭘 줄 수가 있소?"~ */ JOURNAL #66389 /* ~나는 자신의 이름과 번호를 도난당한 기묘한 사내를 만났다. 그는 모든 것에게 위치와 번호가 지정되어 있는 질서와 금속의 세계에서 왔으며. 자신의 번호 없이 그는 벌거벗고 추운 듯했다. ~ */ GOTO 22
  IF ~~ THEN REPLY #20187 /* ~"어디 두고 봅시다. 날 위해 다른 질문들에 대해 답해주시오."~ */ JOURNAL #66389 /* ~나는 자신의 이름과 번호를 도난당한 기묘한 사내를 만났다. 그는 모든 것에게 위치와 번호가 지정되어 있는 질서와 금속의 세계에서 왔으며. 자신의 번호 없이 그는 벌거벗고 추운 듯했다. ~ */ GOTO 16
  IF ~~ THEN REPLY #20188 /* ~"어디 두고 봅시다. 안녕히 계시오."~ */ JOURNAL #66389 /* ~나는 자신의 이름과 번호를 도난당한 기묘한 사내를 만났다. 그는 모든 것에게 위치와 번호가 지정되어 있는 질서와 금속의 세계에서 왔으며. 자신의 번호 없이 그는 벌거벗고 추운 듯했다. ~ */ EXIT
  IF ~~ THEN REPLY #20189 /* ~"노력해 보겠소. 안녕히 계시오."~ */ JOURNAL #66389 /* ~나는 자신의 이름과 번호를 도난당한 기묘한 사내를 만났다. 그는 모든 것에게 위치와 번호가 지정되어 있는 질서와 금속의 세계에서 왔으며. 자신의 번호 없이 그는 벌거벗고 추운 듯했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2 16.3
  SAY #20190 /* ~"난 아무 것도 모르오. 나는 장소를 알지 못하오. 내게는 이름도 번호도 없소. 내게는 이 장소에 대한 기억이 없소. 나는 춥소. 나는 두렵소. 이처럼 벌거벗게 된 건 이상한 느낌이오. 나는 내가 죽을까 두렵소."~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20191 /* ~"무슨 뜻이오?"~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20192 /* ~"무슨 뜻이오?"~ */ GOTO 20
  IF ~~ THEN REPLY #20193 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 16
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20194 /* ~"흠. 흥미롭군. 안녕히 계시오."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20195 /* ~"흠. 흥미롭군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY #20196 /* ~"나는 아무 것도 가진 것이 없소. 나는 당신에게 도움을 청하오."~ */
  IF ~~ THEN REPLY #20197 /* ~"노력해 보리다. 다른 질문들에 좀 대답해주시오..."~ */ GOTO 16
  IF ~~ THEN REPLY #20198 /* ~"어디 두고 봅시다. 날 위해 다른 질문들에 대답해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #20199 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #20200 /* ~"노력해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #20201 /* ~"래딘이라고 불리던 자요. 그녀는 그것들을 나로부터 훔쳤소. 나는 그녀에게 내 이름과 번호의 보호를 제공했으나, 그녀는 그것들을 내게서 훔쳐 갔소. 그것들은 법적으로 정당하게 내 소유요. 그녀를 찾으시오. 그녀는 이 마을 안에 있소."~ */
  IF ~~ THEN REPLY #20202 /* ~"노력해 보리다. 다른 질문들에 좀 대답해주시오..."~ */ GOTO 16
  IF ~~ THEN REPLY #20203 /* ~"안됐군. 다른 질문들에 대답해주시오..."~ */ GOTO 16
  IF ~~ THEN REPLY #20204 /* ~"노력해 보리다."~ */ EXIT
  IF ~~ THEN REPLY #20205 /* ~"당신 참 안됐군. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 24 // from:
  SAY #20206 /* ~달과 똑같은 모양의 얼굴을 지닌 단조로운 분위기의 남자가 보인다. 그는 무표정한 얼굴로 당신을 바라보고 있으며, 아무 말도 하지 않는다. 그의 모습으로 미루어 볼 때 그의 목소리는 매우 단조로울 것 같다. ~ */
  IF ~~ THEN REPLY #20207 /* ~"안녕하시오. 날 위해 몇 가지 질문에 대답해주었으면 하오..."~ */ GOTO 16
  IF ~~ THEN REPLY #20208 /* ~그를 그냥 내버려 두고 떠난다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.4
  SAY #45395 /* ~"돈으로 이름은 살 수가 없어요. 아무리 많은 액수로도 번호를 살 수는 없어요. 정체성에 비하면 동전 따위는 별 게 아니죠. 당신도 이해할 수 있을 거예요."~ */
  IF ~~ THEN REPLY #45397 /* ~"그래, 그럴 수 있소. 최선을 다하리다. 안녕히 계시오."~ */ EXIT
END
