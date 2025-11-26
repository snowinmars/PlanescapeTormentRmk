// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELDOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELDOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #47128 /* ~그는 냉정한 표정을 하고 있으나, 당신은 그의 목소리로부터 격렬한 분노를 느낄 수가 있다. "당신은 우리의 이상을 배신했소. 당신은 이 곳에 있을 자격이 없소. 우리 경비병들이 당신을 밖으로 안내할 것이오. 평화적으로 떠나겠소?""~ */
  IF ~~ THEN REPLY #47129 /* ~"나는 내 잘못을 뉘우치고 다시 갓즈맨의 일원이 되고 싶소."~ */ GOTO 1
  IF ~~ THEN REPLY #47130 /* ~"조용히 떠나도록 하겠소."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47131 /* ~"날 강제로 끌어내야 할 거요."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47132 /* ~"일단 우리에게 등을 들리고 나면 다시는 우리에게 돌아올 수가 없소. 만약 당신이 그것을 또 다른 시험이라고 생각하고 싶다면, 그래도 좋소. 하지만 당신은 우리들로부터 아무런 도움도 줄 수 없고 당신을 상대하지도 않겠소. 자... 평화적으로 떠나겠소, 아니면 피를 보고 싶소?"~ */
  IF ~~ THEN REPLY #47133 /* ~"조용히 떠나도록 하겠소."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47134 /* ~"날 강제로 끌어내야 할 거요."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #47135 /* ~"안녕하시오, 동지! 오늘은 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #47136 /* ~"가능하다면 치료를 좀 받고 싶소."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47137 /* ~"아이템을 좀 구입하고 싶소."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47138 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47139 /* ~"가능하다면 비밀 프로젝트를 구경하고 싶소."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47140 /* ~"나는 비밀 프로젝트 작업실로 들어갈 수 있는 징표를 잃어버렸소."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47143 /* ~"베다이-린이 내게 기계를 파괴해 달라고 부탁했소."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47144 /* ~"기계를 파괴한 자는 바로 베다이-린이오."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47145 /* ~"기계를 파괴한 자는 바로 베다이-린이오."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47146 /* ~"베다이-린이 내게 기계를 파괴해 달라고 부탁했소. 나는 그녀의 제의를 거절했지만, 이 일에 대해 당신도 알아야 한다고 생각했소"~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47147 /* ~"베다인-린은 내게 산도즈를 암살해 달라고 부탁했소. 나는 당신도 이 일에 대해 알아야 한다고 생각했소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47148 /* ~"베다인-린은 내게 산도즈를 암살해 달라고 부탁했소. 나는 당신도 이 일에 대해 알아야 한다고 생각했소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47149 /* ~"산도즈를 암살한 건 바로 베다이-린이오."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47150 /* ~"산도즈를 암살한 건 바로 베다이-린이오."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47151 /* ~"경매인 길츠퍼로부터 당신에게 전할 메시지를 가지고 왔소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51167 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 9.3
  SAY #47152 /* ~"당신은 자신이 신뢰받을 수 있는 사람이란 것을 입증했소. 자, 이걸 받으시오." 그는 갓즈맨의 심벌이 새겨진 징표를 당신 손에 쥐어 준다. "잃어버리지 마시오. 잃어버렸을 경우에도 여벌의 열쇠를 줄 수가 없기 때문에 조심을 하도록 하시오. 내가 달리 도와드릴 일이라도 있소?"~ */
  IF ~~ THEN REPLY #47153 /* ~"그렇소. 질문할 것들이 몇 가지 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #47154 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 9.4
  SAY #47155 /* ~"미안하지만 열쇠를 또 줄 수는 없소. 그래서 내가 사전에 주의를 주었던 거요." 그는 한숨을 쉰다. "내가 달리 도울 건 없겠소?"~ */
  IF ~~ THEN REPLY #47156 /* ~"몇 가지 질문에 더 대답해 주시오..."~ */ GOTO 9
  IF ~~ THEN REPLY #47157 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 2.9 2.10 2.12 9.5 9.7 9.8 9.9 9.10 9.12
  SAY #47158 /* ~그의 표정이 평상시의 즐거운 표정에서 냉혹한 표정으로 바뀐다. "그렇소? 그렇다면 우리는 그녀를 구금하도록 하겠소. 그리고 만약 그것이 사실이라면... 우리는 그녀를 처형할 것이오. 일이 있어 실례해야겠소."~ */
  IF ~~ THEN REPLY #47159 /* ~"천천히 하시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47160 /* ~돌아왔을 때의 그의 표정은 단호하다. "당신 정보 덕택에 위험한 범죄자를 체포할 수 있었소. 우리는 이미 하모니움과 머시킬러에게 이 사실을 통보했소. 모두 당신 덕분이오. 정말 고맙소. 그리고 나는 당신이 훌륭한 갓즈맨이 될 것이라는 내 기대에 부응해준 데 대해 개인적으로 감사하오."~ */
  IF ~~ THEN REPLY #47161 /* ~"천만의 말씀이오. 몇 가지 물어볼 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #47162 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.6 2.11 9.6 9.11
  SAY #47163 /* ~그의 표정이 평상시의 즐거운 표정에서 냉혹한 표정으로 바뀐다. "그렇소? 그렇다면 우리는 그녀를 구금하도록 하겠소. 그리고 만약 그것이 사실이라면... 우리는 그녀를 처형할 것이오. 일이 있어 실례해야겠소."~ */
  IF ~~ THEN REPLY #47164 /* ~"천천히 하시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47165 /* ~돌아왔을 때의 그의 표정은 한층 더 심각하다. "그녀는 사라졌소. 아무도 그녀가 빠져나가는 건 보지 못했고 그녀가 어디로 갔는지 아는 사람도 없소. 하지만 그녀의 음모에 대해 우리에게 알려 준 데 대해서는 감사의 뜻을 표하겠소. 만약 그녀가 다시 여기 나타난다면 그녀는 죽은 목숨이오. 그건 내가 확언하리다."~ */
  IF ~~ THEN REPLY #47166 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #47167 /* ~"만약 내가 그녀를 만나게 되면 반드시 응분의 대가를 치르도록 만들겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.0 6.0 8.0 11.0 55.0
  SAY #47168 /* ~"질문이 더 있소? 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #47169 /* ~"가능하다면 치료를 좀 받고 싶소."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47170 /* ~"아이템을 좀 구입하고 싶소."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47171 /* ~"나는 휴식을 취할 장소가 필요하오."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47172 /* ~"가능하다면 비밀 프로젝트를 구경하고 싶소."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47173 /* ~"나는 비밀 프로젝트 작업실로 들어갈 수 있는 징표를 잃어버렸소."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47174 /* ~"베다이-린이 내게 기계를 파괴해 달라고 부탁했소."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47175 /* ~"기계를 파괴한 자는 바로 베다이-린이오."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47176 /* ~"기계를 파괴한 자는 바로 베다이-린이오."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47177 /* ~"베다이-린이 내게 기계를 파괴해 달라고 부탁했소. 나는 그녀의 제의를 거절했지만, 이 일에 대해 당신도 알아야 한다고 생각했소"~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47178 /* ~"베다인-린은 내게 산도즈를 암살해 달라고 부탁했소. 나는 당신도 이 일에 대해 알아야 한다고 생각했소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47179 /* ~"베다인-린은 내게 산도즈를 암살해 달라고 부탁했소. 나는 당신도 이 일에 대해 알아야 한다고 생각했소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47180 /* ~"산도즈를 암살한 건 바로 베다이-린이오."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47181 /* ~"산도즈를 암살한 건 바로 베다이-린이오."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47182 /* ~"경매인 길츠퍼로부터 당신에게 전할 메시지를 가지고 왔소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51168 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",5)
~ THEN BEGIN 10 // from: 12.12
  SAY #47183 /* ~"그럼 당신은 갓즈맨의 서약을 받아들이고 우리의 일원이 되겠소?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47184 /* ~"그렇소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47185 /* ~"그렇소."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47186 /* ~"그렇소."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66311 /* ~"그렇게 하겠소."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66312 /* ~"그렇게 하겠소."~ */ GOTO 56
  IF ~~ THEN REPLY #66313 /* ~"아직 아니오. 우선 몇 가지 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #66314 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 51.0 52.0 56.0 56.1 56.2 56.3 56.4
  SAY #47187 /* ~서약: "인생의 고난은 시험이다. 내가 부딪히는 일들 중 교훈이 되지 않는 것은 없다. 고통은 다원 우주가 교훈을 주기 위해 사용하는 수단이다. 타인의 혐오스러운 부분은 내 자신의 가장 혐오스러운 부분을 비추는 거울이다. 난 내 가능성을 실현하고 다른 이들이 그들의 목표를 이루도록 도울 것이다. 나는 신성함은 모든 것 안에 존재한다는 것을 기억할 것이다. 나는 근원의 신봉자와 그 목표에 충성을 맹세하며, 결코 그들을 저버리지 않을 것이다." 당신이 서약을 하자 켈도는 미소를 짓는다. "갓즈맨이 된 것을 환영하오. 지금 내게서 뭐 필요한 것이라도 있소?"~ */
  IF ~~ THEN REPLY #47188 /* ~"질문할 것들이 좀 있소..."~ */ JOURNAL #46638 /* ~나는 근원의 신봉자에 가입하여 이제는 공식적으로 갓즈맨이다. 내가 한 서약은 이러하였다: "인생의 고난은 시험이나. 내가 부딪히는 일들 중 교훈이 되지 않는 것은 없다. 고통을 다원 우주가 교훈을 주기 위해 사용하는 수단이다. 타인의 혐오스러운 부분은 내 자신의 가장 혐오스러운 부분을 비추는 거울이다. 난 내 가능성을 실현하고 다른 이들이 그들의 목표를 이루도록 도울 것이다. 나는 신성함은 모든 것 안에 존재한다는 것을 기억할 것이다. 나는 근원의 신봉자와 그 목표에 충성을 맹세하며, 결코 그들을 저버리지 않을 것이다.~ */ GOTO 9
  IF ~~ THEN REPLY #47189 /* ~"지금은 아니오. 안녕히 계시오."~ */ JOURNAL #46638 /* ~나는 근원의 신봉자에 가입하여 이제는 공식적으로 갓즈맨이다. 내가 한 서약은 이러하였다: "인생의 고난은 시험이나. 내가 부딪히는 일들 중 교훈이 되지 않는 것은 없다. 고통을 다원 우주가 교훈을 주기 위해 사용하는 수단이다. 타인의 혐오스러운 부분은 내 자신의 가장 혐오스러운 부분을 비추는 거울이다. 난 내 가능성을 실현하고 다른 이들이 그들의 목표를 이루도록 도울 것이다. 나는 신성함은 모든 것 안에 존재한다는 것을 기억할 것이다. 나는 근원의 신봉자와 그 목표에 충성을 맹세하며, 결코 그들을 저버리지 않을 것이다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.5 13.0 14.0 16.0 18.0 19.0 20.2 21.0 22.0 23.1 24.10 25.10 26.0 27.2 28.2 29.2 30.0 31.3 32.1 33.1 34.1 35.1 36.1 37.2 38.1 39.4 43.0 44.0 47.0 50.0 51.5 52.5 53.0 54.0 55.1
  SAY #47190 /* ~"무엇을 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #47191 /* ~"당신은 누구요?"~ */ GOTO 23
  IF ~~ THEN REPLY #47192 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47193 /* ~"갓즈맨의 일원이 되면 어떤 혜택이 있소?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #47194 /* ~"당신 당파에 대해 더 얘기해주시오."~ */ GOTO 25
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47195 /* ~"당신 당파에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47196 /* ~"나는 갓즈맨의 일원이 되고 싶소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47197 /* ~"나는 갓즈맨의 일원이 되고 싶소."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47198 /* ~"나는 갓즈맨의 일원이 되고 싶소."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47199 /* ~"나는 갓즈맨의 일원이 되고 싶소."~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #47200 /* ~"용광로에 대해 당신에게 물어볼 것들이 있소."~ */ GOTO 39
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #47201 /* ~"살인 사건 수사에 대해 얘기하고 싶소."~ */ GOTO 44
  IF ~  Global("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #47202 /* ~"산도즈에 대해 얘기하고 싶소."~ */ GOTO 50
  IF ~  Global("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #47203 /* ~"갓즈맨의 서약을 하고 싶소."~ */ GOTO 10
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47204 /* ~"가능하다면 비밀 프로젝트를 구경하고 싶소."~ */ GOTO 13
  IF ~  Global("Token_A","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47205 /* ~"나는 비밀 프로젝트 작업실로 들어갈 수 있는 징표를 잃어버렸소."~ */ GOTO 14
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47206 /* ~"베다이-린이 내게 기계를 파괴해 달라고 부탁했소."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 15
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47207 /* ~"기계를 파괴한 자는 바로 베다이-린이오."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 17
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47208 /* ~"기계를 파괴한 자는 바로 베다이-린이오."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 15
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47209 /* ~"베다이-린이 내게 기계를 파괴해 달라고 부탁했소. 나는 그녀의 제의를 거절했지만, 이 일에 대해 당신도 알아야 한다고 생각했소"~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47210 /* ~"베다인-린은 내게 산도즈를 암살해 달라고 부탁했소. 나는 당신도 이 일에 대해 알아야 한다고 생각했소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 15
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47211 /* ~"베다인-린은 내게 산도즈를 암살해 달라고 부탁했소. 나는 당신도 이 일에 대해 알아야 한다고 생각했소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47212 /* ~"산도즈를 암살한 건 바로 베다이-린이오."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 17
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47213 /* ~"산도즈를 암살한 건 바로 베다이-린이오."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~나는 베다이-린을 그녀의 아나키스트 성향과 주조소의 업무를 방해하려 한 혐의로 켈도에게 고발했다. 켈도는 기뻐했다. ~ */ GOTO 15
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #51169 /* ~"경매인 길츠퍼로부터 당신에게 전할 메시지를 가지고 왔소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #51170 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.13
  SAY #47215 /* ~그는 미소를 짓는다. "당신이 갓즈맨의 동지라는 것을 증명할 때까지는 그걸 줄 수가 없소 ."~ */
  IF ~~ THEN REPLY #47216 /* ~"그럼 내 질문에 조금만 더 대답해주시오..."~ */ GOTO 12
  IF ~~ THEN REPLY #47217 /* ~"지금은 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.14
  SAY #47218 /* ~"미안하지만 열쇠를 또 줄 수는 없소." 그는 한숨을 쉰다. "내가 달리 당신을 도울 수 있는 것이 있겠소?"~ */
  IF ~~ THEN REPLY #47219 /* ~"몇 가지 질문에 더 대답해 주시오..."~ */ GOTO 12
  IF ~~ THEN REPLY #47220 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.15 12.17 12.18 12.19 12.20 12.22
  SAY #47221 /* ~그의 표정이 평상시의 즐거운 표정에서 냉혹한 표정으로 바뀐다. "그렇소? 그렇다면 우리는 그녀를 구금하도록 하겠소. 그리고 만약 그것이 사실이라면... 우리는 그녀를 처형할 것이오. 일이 있어 실례해야겠소."~ */
  IF ~~ THEN REPLY #47222 /* ~"천천히 하시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47223 /* ~돌아왔을 때의 그의 표정은 단호하다. "당신 정보 덕택에 위험한 범죄자를 체포할 수 있었소. 우리는 이미 하모니움과 머시킬러에게 이 사실을 통보했소. 모두 당신 덕분이오. 정말 고맙소. 그리고 나는 당신이 훌륭한 갓즈맨이 될 것이라는 내 기대에 부응해준 데 대해 개인적으로 감사하오."~ */
  IF ~~ THEN REPLY #47224 /* ~"천만의 말씀이오. 몇 가지 물어볼 것들이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47225 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.16 12.21
  SAY #47226 /* ~그의 표정이 평상시의 즐거운 표정에서 냉혹한 표정으로 바뀐다. "그렇소? 그렇다면 우리는 그녀를 구금하도록 하겠소. 그리고 만약 그것이 사실이라면... 우리는 그녀를 처형할 것이오. 일이 있어 실례해야겠소."~ */
  IF ~~ THEN REPLY #47227 /* ~"천천히 하시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #47228 /* ~돌아왔을 때의 그의 표정은 한층 더 심각하다. "그녀는 사라졌소. 아무도 그녀가 빠져나가는 건 보지 못했고 그녀가 어디로 갔는지 아는 사람도 없소. 하지만 그녀의 음모에 대해 우리에게 알려 준 데 대해서는 감사의 뜻을 표하겠소. 만약 그녀가 다시 여기 나타난다면 그녀는 죽은 목숨이오. 그건 내가 확언하리다."~ */
  IF ~~ THEN REPLY #47229 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47230 /* ~"만약 내가 그녀를 만나게 되면 반드시 응분의 대가를 치르도록 만들겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2
  SAY #47231 /* ~"여기 있는 멋진 사람들의 동지가 되는 것 이외에도..." 그는 미소를 짓는다. "우리 시설들을 거의 아무런 제한 없이 사용할 수 있소. 우리는 주문, 아이템, 그리고 휴식 장소 등을 제공할 수 있소. 그리고 그것들 일부는 당원 전용이오. 그러한 것들은 시길의 다른 지역에서도 구입할 수가 있으며, 우리 멤버들에게는 특별히 할인된 가격에 제공되오."~ */
  IF ~~ THEN REPLY #47232 /* ~"좋소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47233 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY #47234 /* ~"이 곳은 대 주조소로 , 갓즈맨으로도 알려진 근원의 신봉자들의 본거지요. 우리는 다원 우주 전역으로 수출되는 물건들을 생산하며, 여러 세계에서 상당한 명성을 얻고 있소. 이 곳에서는 최고의 솜씨를 지닌 사람들만 일하며, 어떤 사람들은 우리 대장장이들의 수준은 클랜게딘 산의 대장장이들의 수준에 필적한다고 하오. 개인적으로 나는 우리가 그토록 뛰어나다고는 생각하지 않소, 하지만 매우 근접한 수준은 된다고 믿소."~ */
  IF ~~ THEN REPLY #47235 /* ~"추가로 주문을 받아줄 수 있겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #47236 /* ~"여기 있는 다른 사람들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #47237 /* ~"알겠소. 질문할 것들이 몇 가지 더 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47238 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #47239 /* ~"미안하지만 그럴 수가 없소. 우리는 현재 장기 계약한 프로젝트에 우리가 가지고 있는 인적 및 물적 자원을 대부분 투입하고 있는 상황이오. 아마 그 프로젝트가... 몇 년 후에 끝난 다음이라면..." 그는 어깨를 으쓱한다. "미안하오."~ */
  IF ~~ THEN REPLY #47240 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47241 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #47242 /* ~"이 곳에는 다양한 부류의 사람들이 있소, 그리고 그들 중 대부분은 이 곳을 가동하는 데 필요한 대장장이들과 노동자들이오. 또한 현실의 구조를 조작하는 놀라운 연구를 하고 있는 두 명의 공학자도 있소. 기회가 있으면 닐 잰더에게 그의 꿈 제조기에 대해 물어보시오."~ */
  IF ~~ THEN REPLY #47243 /* ~"그렇게 하리다. 질문하고 싶은 것들이 좀 더 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47244 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #47245 /* ~그는 환하게 웃는다. "친구, 나는 두리안 가의 켈도로 갓즈맨의 당원이오, 그리고 우리 당파의 진정한 간부들이 집회 때문에 자리를 비울 경우에 한해 이 곳의 명목상의 책임자 노릇을 하고 있소."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47246 /* ~"당신 당파에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #47247 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47248 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.4 23.0
  SAY #47249 /* ~그가 미소를 짓자 그의 얼굴이 주름투성이가 된다. "우리에 대해 무엇을 알고 싶으시오?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47250 /* ~"어떻게 하면 가입할 수 있소?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47251 /* ~"어떻게 하면 가입할 수 있소?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47252 /* ~"어떻게 하면 가입할 수 있소?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47253 /* ~"어떻게 하면 가입할 수 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #47254 /* ~"이 당파의 신념은 어떤 것이오?"~ */ GOTO 31
  IF ~~ THEN REPLY #47255 /* ~"이 당파의 역사에 대해서 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #47256 /* ~"당파의 일원이 되면 어떤 특전이 있소?"~ */ GOTO 33
  IF ~~ THEN REPLY #47257 /* ~"이 당파의 적들은 누구요?"~ */ GOTO 34
  IF ~~ THEN REPLY #47258 /* ~"당신은 어떤 직무를 담당하고 있소?"~ */ GOTO 35
  IF ~~ THEN REPLY #47259 /* ~"당신은 왜 그러한 이름을 지니게 되었소?"~ */ GOTO 36
  IF ~~ THEN REPLY #47260 /* ~"지금은 특별한 용건이 없소. 다만 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47261 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.3 27.1 28.1 29.1 31.2 32.0 33.0 34.0 35.0 36.0 37.1 38.0
  SAY #47262 /* ~"기꺼이. 뭘 알고 싶으시오?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47263 /* ~"어떻게 하면 가입할 수 있소?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47264 /* ~"어떻게 하면 가입할 수 있소?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47265 /* ~"어떻게 하면 가입할 수 있소?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47266 /* ~"어떻게 하면 가입할 수 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #47267 /* ~"이 당파의 신념은 어떤 것이오?"~ */ GOTO 31
  IF ~~ THEN REPLY #47268 /* ~"이 당파의 역사에 대해서 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #47269 /* ~"당파의 일원이 되면 어떤 특전이 있소?"~ */ GOTO 33
  IF ~~ THEN REPLY #47270 /* ~"이 당파의 적들은 누구요?"~ */ GOTO 34
  IF ~~ THEN REPLY #47271 /* ~"당신은 어떤 직무를 담당하고 있소?"~ */ GOTO 35
  IF ~~ THEN REPLY #47272 /* ~"당신은 왜 그러한 이름을 지니게 되었소?"~ */ GOTO 36
  IF ~~ THEN REPLY #47273 /* ~"지금은 특별한 용건이 없소. 다만 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47274 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.5 24.0 25.0 27.0 28.0 29.0
  SAY #47275 /* ~"만약 당신이 근원의 신봉자가 되고자 한다면, 세 가지 임무를 수행해야만 하오. 첫 번째 임무는 이것이오: 당신은 용광로에 가서 아이템을 하나 만들어야 하오. 이 시험은 당신이 하찮은 쇳덩이 속에도 내재하고 있는 가능성을 볼 수 있으며, 그것으로부터 오랫동안 사용될 수 있는 물건을 만들어 낼 수 있다는 것을 보여주게 될 것이오. 이 시험은 당신의 비전과 가능성을 실체로 구현하는 능력을 측정하는 시험이오. 주조소 중심부에 있는 현장 감독 앨릿사 틸드와 얘기를 해서 자세한 방법에 대해 듣도록 하시오."~ */
  IF ~~ THEN REPLY #47276 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~나는 갓즈맨이 되기 위한 과정에 있다. 나는 대 주조소에 있는 대장장이들 중 한 사람에게 용광로를 쓰는 법을 배워 아이템을 하나 만들지 않으면 안 된다. 내 가 이 일을 해야하는 것은 내가 차가운 돌덩어리 속에 있는 가능성도 볼 수 있다는 것을 입증하기 위해서다. 어려운 일은 아니다. 완성한 후에는 켈도에게 돌아가 작품을 보여주어야 한다. ~ */ GOTO 12
  IF ~~ THEN REPLY #47277 /* ~"당장 착수하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~나는 갓즈맨이 되기 위한 과정에 있다. 나는 대 주조소에 있는 대장장이들 중 한 사람에게 용광로를 쓰는 법을 배워 아이템을 하나 만들지 않으면 안 된다. 내 가 이 일을 해야하는 것은 내가 차가운 돌덩어리 속에 있는 가능성도 볼 수 있다는 것을 입증하기 위해서다. 어려운 일은 아니다. 완성한 후에는 켈도에게 돌아가 작품을 보여주어야 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.6 24.1 25.1
  SAY #47278 /* ~그는 교활한 미소를 짓는다. "먼저 당신은 더스트맨과의 관계를 단절해야 하오."~ */
  IF ~~ THEN REPLY #47279 /* ~"좋소, 그들과의 관계를 단절하겠소. 내가 어떤 일을 하면 되겠소?"~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47280 /* ~"난 아직 그럴 준비가 되지 않은 것 같소. 날 위해 당신 당파에 관련된 질문에 대답을 해주시겠소?"~ */ GOTO 25
  IF ~~ THEN REPLY #47281 /* ~"아직 아니오. 당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47282 /* ~"아직 아니오, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.7 24.2 25.2
  SAY #47283 /* ~그는 교활한 미소를 짓는다. " 먼저 당신은 센세이트와의 관계를 단절해야 하오."~ */
  IF ~~ THEN REPLY #47284 /* ~"좋소, 그들과의 관계를 단절하겠소. 내가 어떤 일을 하면 되겠소?"~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47285 /* ~"난 아직 그럴 준비가 되지 않은 것 같소. 날 위해 당신 당파에 관련된 질문에 대답을 해주시겠소?"~ */ GOTO 25
  IF ~~ THEN REPLY #47286 /* ~"아직 아니오. 당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47287 /* ~"아직 아니오, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 12.8 24.3 25.3
  SAY #47288 /* ~그는 교활한 미소를 짓는다. "먼저 당신은 카오시텍츠와의 관계를 단절해야 하오."~ */
  IF ~~ THEN REPLY #47289 /* ~"좋소, 그들과의 관계를 단절하겠소. 내가 어떤 일을 하면 되겠소?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47290 /* ~"난 아직 그럴 준비가 되지 않은 것 같소. 날 위해 당신 당파에 관련된 질문에 대답을 해주시겠소?"~ */ GOTO 25
  IF ~~ THEN REPLY #47291 /* ~"아직 아니오. 당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47292 /* ~"아직 아니오, 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 39.0
  SAY #47293 /* ~"이 곳의 대장장이라면 누구든지 당신을 도울 수 있을 것이오."~ */
  IF ~~ THEN REPLY #47294 /* ~"좋소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #47295 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4 25.4
  SAY #47296 /* ~"우리는 우주가 우리들이 일련의 시험들을 통해 스스로를 증명하는 하나의 거대한 시험장이라고 생각하오. 이러한 시험들은 인생 동안 끊임없이 계속될 뿐만 아니라, 다음, 그리고 또 그 다음 생에서도 계속되오. 매일 일어나는 사소한 일도 시험일 수가 있으며, 당신이 내세에서 받을 상은 당신이 현세의 교훈으로부터 얼마나 배웠느냐에 따라 좌우되오. 우리는 사람이 경험으로부터 배울 수 있다고 믿소... 그리고 그 경험은 내세에도 반영되어 당신을 한 삶에 국한된 존재 이상의 존재로 만들 것이오."~ */
  IF ~~ THEN REPLY #47297 /* ~"그 모든 것들의 의미는 무엇이오?"~ */ GOTO 37
  IF ~~ THEN REPLY #47298 /* ~"지금까지 들은 얘기는 이치에 닿는 것 같소. 계속 얘기해주시오."~ */ GOTO 38
  IF ~~ THEN REPLY #47299 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47300 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47301 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.5 25.5
  SAY #47302 /* ~"우리 당파는 시길의 당파의 수가 15 개로 준 대변동 이전에 페린이라는 사람에 의해 창시된 것으로 알려져 있으며, 대변동 중에 화우넬의 오지가 당파의 철학을 재정비하여 오늘과 같은 형태로 만들었다고 하오. 그녀는 천 번이나 환생했으며, 환상할 때마다 전생(들)의 기억을 완벽하게 지니고 있었다고 전해지오. 그녀는 우리에게 우리의 직감을 활용하는 방법을 가르쳤으며, 우리를 새로운 시대로 인도했소. 이 두 사람이 우리 당파의 역사에서 가장 위인들이며, 이 밖에도 여러 가지 설화들이 많으나 기본적으로 방금 내가 들려준 것만 알고 있으면 되오."~ */
  IF ~~ THEN REPLY #47303 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47304 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47305 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.6 25.6
  SAY #47306 /* ~"우리의 훌륭한 주조소를 이용할 수 있는 권한, 당신과 당신 친구들을 위한 숙박 시설, 특별한 아이템과 주문, 그리고 대부분의 사람들로부터의 호의적인 반응을 제외하면 별 특전은 없소. 물론 당신이 단지 특전 때문에 우리의 일원이 되려고 한다면, 나는 당신에게 우리 당파에 가입하지 말라고 권하고 싶소." ~ */
  IF ~~ THEN REPLY #47331 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47332 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47333 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 24.7 25.7
  SAY #47334 /* ~"우리에게 적은 없소. 하지만 우리의 믿음에 반대하는 자들은 있소. 블리크 카발은 우리가 보다 완벽한 존재가 되기 위해 진화한다는 우리의 신념을 비웃고 있소. 그들은 세상에 아무런 의미도 없다고 생각하는 모양이오. 그렇다면 더스트맨이 하려는 것처럼 아예 끝내버리는 것이 나을 거요. 더스트맨은 삶이 환상이라고 생각하여 거대한 죽음을 맞이할 준비를 하고 있소. 반면 우리는 삶의 옹호자요. 그들은 죽음을 장려하고 우리들은 삶을 찬미하오. 이 두 믿음보다 더 강렬하게 대립되는 믿음이 또 어디 있겠소?"~ */
  IF ~~ THEN REPLY #47335 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47336 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47337 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 24.8 25.8
  SAY #47338 /* ~"우리는 대 주조소를 운영하고 있으며 선구자의 집도 운영하고 있소. 후자는 우리 당파가 신이 될 가능성이 있는 사람들 - 보통 사람들과 분명히 구별되는 특수한 능력을 지닌 사람들을 훈련시키는 곳이오. 어떤 사람들은 우리가 우리 편이 될 신을 원하기 때문에 그런 일을 한다고 하지만, 우리가 그 곳을 운영하는 진정한 이유는 그것도 우리가 거쳐야 할 시험들 중 하나라고 생각하기 때문이오. 우리는 모든 생명체가 자신에게 주어진 의무를 다하기를 바라오 - 우리는 다원 우주가 발전하기를 바라오." ~ */
  IF ~~ THEN REPLY #47339 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47340 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47341 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 24.9 25.9
  SAY #47342 /* ~"좋은 질문이오. 우리의 정식 명칭은 '근원의 신봉자'인데, 이는 우리가 모든 생명체가 하나의 순수한 근원에서 나왔다고 믿기 때문이오. 하지만 또한 우리는 모든 생명체에게는 신이 될 가능성이 있다고 믿기 때문에 우리가 갓즈맨이라는 별명으로 불리는 건 당연한지도 모르겠소."~ */
  IF ~~ THEN REPLY #47343 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47344 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47345 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.0
  SAY #47346 /* ~"우리도 확신할 수는 없소. 결국 우리는 아직 종착역에 도착한 건 아니지 않소? 우리가 이해할 수 있는 건 삶을 헤쳐 나가면서 우리에게 가장 좋은 답을 찾으려고 노력하면, 결국에 가서는 신의 단계조차 초월하리라는 것이오. 그러나 그 곳에서 무엇이 기다라고 있는지는 아무도 모르오. ~ */
  IF ~~ THEN REPLY #47347 /* ~"좋소, 계속하시오."~ */ GOTO 38
  IF ~~ THEN REPLY #47348 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47349 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47350 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1 37.0
  SAY #47351 /* ~"인생은 시험이오. 우리는 시험을 치르고, 합격하면 새로운 형태로 이행하게 되오. 이 새로운 형태는 아컨이나 마족일 수도 있고, 아니면 신일 수도 있소. 늘 그렇듯이 우리가 현세에서 하는 선택이 우리의 갈 길을 결정하오. 우리에게 자유 의지가 있는지 여부는 아직도 열띤 논쟁의 대상이오." 그는 미소짓는다. "물론 자유 의지파요. 나는 내가 할 선택이 이미 결정되어 있다고 생각하기는 싫소..."~ */
  IF ~~ THEN REPLY #47352 /* ~"좋소. 당신 당파에 대해 질문할 것들이 더 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #47353 /* ~"당신 당파와 관련되지 않은 사안들에 대해 질문을 하고 싶소."~ */ GOTO 12
  IF ~~ THEN REPLY #47354 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 44 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",2)
~ THEN BEGIN 39 // from: 12.9
  SAY #47355 /* ~"용광로에 대해 질문할 것이 있소? 내 능력이 닿는 한 대답해주리다."~ */
  IF ~~ THEN REPLY #47356 /* ~"내가 누구와 얘기해야 하는지 다시 말해주겠소?"~ */ GOTO 30
  IF ~  Global("G_Test1","GLOBAL",3)
~ THEN REPLY #47357 /* ~그에게 당신이 만든 물건을 보여준다: "나는 내 작품을 완성했소."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 40
  IF ~  Global("G_Test1","GLOBAL",4)
~ THEN REPLY #47358 /* ~그에게 당신이 만든 물건을 보여준다: "나는 내 작품을 완성했소."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 41
  IF ~  Global("G_Test1","GLOBAL",5)
~ THEN REPLY #47359 /* ~그에게 당신이 만든 물건을 보여준다: "나는 내 작품을 완성했소."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 42
  IF ~~ THEN REPLY #47360 /* ~"그 밖의 질문에 좀 대답해주시오..."~ */ GOTO 12
  IF ~~ THEN REPLY #47361 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #47362 /* ~그는 그것을 당신으로부터 건네 받고는 유심히 살펴본다. 그는 심한 말을 하려는 걸 억지로 참고 있는 것 같다. "당신은 적어도 시도는 했소, 안 그렇소? 다음 시험을 받을 준비는 되었소? 나는 당신이 준비가 되었기를 바라오만..."~ */
  IF ~~ THEN REPLY #47363 /* ~"그런 것 같소..."~ */ DO ~GiveExperience(Protagonist,6000)
~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY #47364 /* ~그는 그것을 당신으로부터 건네 받고는 유심히 살펴본다. "이거라면 합격이오. 당신은 연습만 하면 괜찮은 대장장이가 될 수 있겠소. 다음 시험을 받을 준비는 되었소? 나는 당신이 준비가 되었으리라 생각하오만..."~ */
  IF ~~ THEN REPLY #47365 /* ~"그런 것 같소..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY #47366 /* ~그는 그것을 당신으로부터 건네 받고는 유심히 살펴본다. "이것은 의심할 여지없이 지원자가 만든 것들 중에서는 최상의 부류에 속하오. 당신은 가능성이 있소, 친구. 다음 시험을 받을 준비는 되었소? 나는 당신이 준비가 되었으리라 생각하오만..."~ */
  IF ~~ THEN REPLY #47367 /* ~"그런 것 같소..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.0 41.0 42.0
  SAY #47368 /* ~그는 심각한 표정으로 얘기를 계속한다. "주조소에서 살인 사건이 일어났소. 때문에 나는 평상시의 시험 방식을 포기하고 당신에게 이 살인자를 색출하라고 명령을 내리겠소. 가서 주조소 중심부에 있는 현장 감독 앨릿사 틸드와 얘기를 하고 거기서부터 수사를 시작하시오. 수사를 마치고 범인을 지목할 준비가 되면 내게 다시 오도록 하시오." ~ */
  IF ~~ THEN REPLY #47369 /* ~"좋소. 먼저 내 질문 몇 가지에 대답해주시오..."~ */ JOURNAL #39501 /* ~나는 첫 번째 갓즈맨 퀘스트를 완료했으며, 이제 나는 갓즈맨이 되기 위한 두 번째 시험인 살인 사건의 조사에 착수해야 한다. 나는 주조소 감독과 이야기를 나눈 후 증거를 수집하는 일이 끝나면 켈도에게 돌아가 보고해야만 한다. ~ */ GOTO 12
  IF ~~ THEN REPLY #47370 /* ~"곧 돌아오겠소. 안녕히 계시오."~ */ JOURNAL #39501 /* ~나는 첫 번째 갓즈맨 퀘스트를 완료했으며, 이제 나는 갓즈맨이 되기 위한 두 번째 시험인 살인 사건의 조사에 착수해야 한다. 나는 주조소 감독과 이야기를 나눈 후 증거를 수집하는 일이 끝나면 켈도에게 돌아가 보고해야만 한다. ~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 44 // from: 12.10
  SAY #47371 /* ~"그래, 이 끔찍한 범죄를 저지른 범인을 찾아냈소? 증거는 가지고 있소?~ */
  IF ~~ THEN REPLY #47372 /* ~"아직 증거가 충분하지 않소. ~ */ GOTO 12
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_T","GLOBAL",1)
~ THEN REPLY #47373 /* ~"그렇소. 틸돈이 범인이오. 그에게는 입증할 수 있는 알리바이가 없소."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_S","GLOBAL",1)
~ THEN REPLY #47374 /* ~"그렇소. 사로스가 범인이오. 그는 주조소에서 서성댄 것으로 알려져 있소."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",3)
~ THEN REPLY #47375 /* ~"그렇소. 틸돈과 사로스는 물론이고 베다이-린도 유죄요. 그들 중 어느 누구도 살인이 일어난 날의 자신들의 행동에 대해 해명할 수가 없소."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #47376 /* ~"그렇소. 틸돈이 유죄요. 사로스는 내게 사체 부근에서 발견한 송곳을 주었소. 그건 틸돈의 송곳이었소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_1","GLOBALLaw",-2)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #47377 /* ~"그렇소. 사로스가 유죄요. 그는 틸돈의 송곳을 훔쳐 틸돈에게 누명을 씌우려 했소. 그는 그것을 사체 부근에서 발견햇다고 주장하고 있으나, 틸돈은 이에 대해 전적으로 부인하고 있소. 사로스가 당신이 찾는 범인이오."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_2","GLOBALLaw",-2)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #47378 /* ~"사로스 짓이오. 그는 아나키스트와 결탁하고 있소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47379 /* ~"죄를 저지른 것은 틸돈이나, 사로스 역시 틸돈을 구속되도록 증거를 조작하려고 했소. 이 사건은 아나키스트의 음모로 사로스는 그 한가운데 있었소. 두 사람 모두 체포하시오."~ */ DO ~SetGlobal("G_Test2","GLOBAL",11)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 49
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47380 /* ~"틸돈 짓이오. 그는 애빌돈과 사이가 좋지 않았고, 또한 그는 사로스에게 죄를 뒤집어씌우려고 했소. 그를 처형하시오."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47381 /* ~"사로스는 주조소를 파괴하려고 획책하는 아나키스트요. 그는 자신의 죄를 틸돈에게 뒤집어씌우려고 했소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 44.1 44.2 44.3
  SAY #47382 /* ~그는 고개를 젓는다. "우리는 그것에 대해서는 이미 얘기를 했소. 유죄를 입증하기에는 증거가 불충분하오. 가서 조사를 더 하시오." 그는 돌아서서 하던 일을 재개한다.~ */
  IF ~~ THEN REPLY #47383 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.4 44.8
  SAY #47384 /* ~그는 고개를 젓는다. "틸돈이 그런 짓을 하리라고는 생각하지도 못했소. 나는 당신의 수사가 철저히 진행되었다고 믿소... 그리고 당신을 믿소. 경비병을 부르도록 하리다."~ */
  IF ~~ THEN REPLY #47385 /* ~"천천히 하시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #39500 /* ~나는 틸돈을 대장장이 애빌돈 살해의 죄를 물어 고발하였다. 그는 체포되었다.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 48.0 49.0
  SAY #47386 /* ~그는 사건의 결말 때문에 슬퍼하는 듯하다. "그 일은 이제 뒷처리가 끝났소. 사건을 해결해 주어 고맙소. 이제 당신은 한 가지 임무만 더 수행하면 되오. 사롯사와 사로스의 아버지이자 우리 당파의 핵심 멤버들 중 한 명인 산도즈가 험난한 여행으로부터 돌아왔소. 그런데 그는 탑에 있는 자신의 방에 틀어박혀 문을 걸어 잠그고는 자살하겠다고 하고 있소. 그와 대화를 해서 그를 저지해 주시오."~ */
  IF ~~ THEN REPLY #47387 /* ~"노력 중이오. 날 위해 몇 가지 질문에 대답해주시오."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~갓즈맨의 일원이 되기 위한 내 최후의 시험은 자살을 하려는 당원이 마음을 돌리도록 설득하는 일이다.  그의 이름은 산도즈로 사로스와 사롯사의 아버지이다. ~ */ GOTO 12
  IF ~~ THEN REPLY #47388 /* ~"노력 중이오. 안녕히 계시오."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~갓즈맨의 일원이 되기 위한 내 최후의 시험은 자살을 하려는 당원이 마음을 돌리도록 설득하는 일이다.  그의 이름은 산도즈로 사로스와 사롯사의 아버지이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.5 44.6 44.9
  SAY #47389 /* ~그는 숨을 헐떡인다. "사로스가 그런 짓을 하다니 도저히 믿을 수가 없소... 하지만 왜 틸돈이 거짓말을 하겠소? 고통스러운 일이기는 하나 당신의 수사 결과가 그렇다면 그를 체포할 수밖에. 경비병을 부르도록 하리다."~ */
  IF ~~ THEN REPLY #47390 /* ~"천천히 하시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",9)
FadeFromColor([20.0],0)
~ JOURNAL #39498 /* ~나는 사로스를 대장장이 애빌돈 살해의 죄를 물어 고발하였다. 그는 체포되었다.~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 44.7
  SAY #47391 /* ~"뭐라고 했소? 두 사람 모두? 오늘은 갓즈맨에게 있어 참으로 슬픈 날이오... 경비병을 부를 테니 잠시 기다려 주시오."~ */
  IF ~~ THEN REPLY #47392 /* ~"천천히 하시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",11)
FadeFromColor([20.0],0)
~ JOURNAL #39495 /* ~나는 틸돈과 사로스 양쪽 모두를 대장장이 애빌돈 살해의 죄를 물어 고발하였다. 그들은 체포되었다.~ */ GOTO 47
END

IF WEIGHT #5 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 50 // from: 12.11
  SAY #47393 /* ~"삶에는 의미가 있다고 그를 납득시키는 데 성공했소?"~ */
  IF ~  !Global("G_Test3","GLOBAL",6)
!Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47394 /* ~"아직 아니오. 하지만 적어도 그는 아직 살아 있소. 내 질문에 조금만 더 대답해주시겠소?"~ */ GOTO 12
  IF ~  Global("G_Test3","GLOBAL",6)
~ THEN REPLY #47395 /* ~"성공했소. 그는 삶에 대한 열정을 되찾았소."~ */ DO ~AddexperienceParty(12000)
SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64545 /* ~나는 켈도에게 산도즈의 목숨을 구하는 데 성공했다고 보고했다. 그는 매우 기뻐했다. ~ */ GOTO 51
  IF ~  Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47396 /* ~"나는 실패했소. 그는 스스로의 목숨을 끊었소."~ */ DO ~SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64546 /* ~나는 켈도에게 산도즈의 목숨을 구하는 데 실패했다고 보고했다. 그는 실망했으나, 그는 그 일이 어려운 임무라는 것을 이해하고 있었으며, 내게 시도한 것만으로도 시험에 합격했다고 말해주었다. ~ */ GOTO 52
  IF ~~ THEN REPLY #47397 /* ~"아직 아니오. 하지만 노력 중이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #47398 /* ~"성공했소? 정말 멋진 소식이오! 축하하오, 친구! 당신은 자신에게 갓즈맨이 될 자격이 있다는 것을 입증했소! 지금 당장 서약을 하겠소, 아니면 기다렸다가 나중에 하겠소?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47399 /* ~"지금 하겠소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47400 /* ~"지금 하겠소."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47401 /* ~"지금 하겠소."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67783 /* ~"지금."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67784 /* ~"지금."~ */ GOTO 56
  IF ~~ THEN REPLY #67785 /* ~"나중에 하겠소. 내 질문에 좀 대답해 주시겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #67786 /* ~"나중에 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.2
  SAY #47402 /* ~"실패했소? 정말 슬프디 슬픈 소식이오... 하지만 당신은 최선을 다했소, 그렇지 않소. 최선을 다했다는 사실이 중요한 것이오." 그는 활기 있게 보이려고 최선을 다하나, 그럼에도 그의 표정은 보기가 딱할 지경이다. "지금 당장 서약을 하겠소, 아니면 나중에 하겠소?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47403 /* ~"지금 하겠소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47404 /* ~"지금 하겠소."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47405 /* ~"지금 하겠소."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67787 /* ~"지금."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67788 /* ~"지금."~ */ GOTO 56
  IF ~~ THEN REPLY #67789 /* ~"나중에 하겠소. 내 질문에 좀 대답해 주시겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #67790 /* ~"나중에 하겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 53 // from:
  SAY #47406 /* ~활력으로 넘치는 건장한 남자가 보인다. 그의 얼굴은 햇빛에 그을었고 주름투성이이며, 그의 검은 수염에는 희끗희끗 흰 털이 섞여 있다. "안녕하시오, 이방인. 만나서 반갑소! 오늘처럼 좋은 날 내가 당신을 어떻게 도와드리면 되겠소?"~ */
  IF ~~ THEN REPLY #47407 /* ~"당신에게 몇 가지 질문을 하고 싶소..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47408 /* ~"경매인 길츠퍼로부터 당신에게 전할 메시지를 가지고 왔소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54086 /* ~"지금은 아무런 용무도 없소. 고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 54 // from:
  SAY #47409 /* ~"반갑소, 친구! 오늘은 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #47410 /* ~"내 질문에 좀 대답해 주시오..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47411 /* ~"경매인 길츠퍼로부터 당신에게 전할 메시지를 가지고 왔소."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54087 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 12.23 53.1 54.1
  SAY #51171 /* ~"메시지?" 그는 당신으로부터 쪽지를 받는다. "좋소. 그에게 내가 메시지를 받았다고 전해 주시오. 달리 필요한 거라도 있소?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51172 /* ~"질문할 것들이 몇 가지 더 있소."~ */ GOTO 9
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51173 /* ~"질문할 것들이 몇 가지 더 있소."~ */ GOTO 12
  IF ~~ THEN REPLY #51174 /* ~"아니, 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.1 10.2 10.3 10.4 51.1 51.2 51.3 51.4 52.1 52.2 52.3 52.4
  SAY #66315 /* ~그는 당신을 노려본다. 우선 당신은 갓즈맨 가입 신청을 한 후에 가입한 다른 당파의 당적을 포기해야 하오."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66318 /* ~진심으로 아나키스트와의 관계를 끊는다: "나는 그 당파와의 관계를 끊겠소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Anarchists","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66319 /* ~"나는 센세이와의 관계를 끊겠소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66320 /* ~"나는 더스트맨과의 관계를 끊겠소."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Dustmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66321 /* ~"나는 카오스맨과의 관계를 끊겠소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66322 /* ~아나키스트를 위해 당파에 침투하기 위해 거짓말을 한다: "나는 그 당파와의 관계를 끊겠소."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~~ THEN REPLY #66323 /* ~"그러지 않겠소."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.5
  SAY #66316 /* ~"그렇다면 당신이 우리 당파에 가입하는 것을 허락할 수 없소. 안녕히 가시오." 그는 당신으로부터 돌아선다.~ */
  IF ~~ THEN REPLY #66317 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #6342 /* ~"당신은 내가 결코 무력하지 않다는 것을 알게 될 거요. 더 이상 다가오지 마시오."~ */
  IF ~~ THEN REPLY #6343 /* ~완료.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 59 // from:
  SAY #6344 /* ~"당신은 명백히 이 곳에 속하지 않소. 당장 떠나시오, 침입자, 아니면 경비병들이 거친 수단으로 당신을 배제하게 될 것이오."~ */
  IF ~~ THEN REPLY #6347 /* ~떠난다.~ */ EXIT
END
