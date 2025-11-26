// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURGHER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURGHER~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57017 /* ~혼란 중에 마차의 바퀴 아래에 깔린 듯한 늙은 기스저라이가 보인다. 그는 피를 토해낸 후, 이를 악물고 당신을 바라본다. "당신에겐 날 구할 생각이 없소, 그렇지 않소? 애당초 우리가 이런 지경에 이르게 된 것도 그런 이기적인 행위 때문이니까..." 그는 힘없이 웃는다.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57018 /* ~"당신은 누구요?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57019 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57020 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57021 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57022 /* ~"그렇소, 난 도울 생각이 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57023 /* ~"그렇소, 난 도울 생각이 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #57024 /* ~기스저라이는 다시 기침을 한다. "날 다시 조롱하려고 왔소? 당신에게 그런 만족감을 줄 수는 없지."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57025 /* ~"당신은 누구요?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57026 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57027 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57028 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57029 /* ~"아니, 그렇지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57030 /* ~"아니, 그렇지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57031 /* ~"그래, 칼을 치워라, 저스 개새끼야. 나는 네 가르침에 침을 뱉는다. 네 사슬들을 좀더 걸치고 있거라." 기스저라이는 당신 쪽으로 고개를 돌린다. "나는 토버스 길재프요. 나는 이 도시의 시장이었소... 저주받을 디바가 탈출할 때까지는."~ */
  IF ~~ THEN REPLY #57032 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #57033 /* ~"당신이 시장이었소?"~ */ GOTO 9
  IF ~~ THEN REPLY #57034 /* ~"당신 도시가 마음에 든다고는 할 수가 없을 것 같소."~ */ GOTO 10
  IF ~~ THEN REPLY #57035 /* ~"당신을 거기서 빼내주겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #57036 /* ~"그렇다면 난 당신을 죽도록 내버려두겠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #57038 /* ~"그래,날 죽여라, 저스 개새끼. 네 주인님이 시키는 대로 해라." 늙은 기스저라이는 다콘이 그의 목을 벨 때까지 피를 뱉으며 킬킬댄다.~ */
  IF ~~ THEN REPLY #57039 /* ~"잘했소, 다콘."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #57040 /* ~"나는 토버스 길재프요. 나는 이 도시의 시장이었소... 저주받을 디바가 탈출할 때까지는."~ */
  IF ~~ THEN REPLY #57041 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #57042 /* ~"당신이 시장이었소?"~ */ GOTO 9
  IF ~~ THEN REPLY #57043 /* ~"당신 도시가 마음에 든다고는 할 수가 없을 것 같소."~ */ GOTO 10
  IF ~~ THEN REPLY #57044 /* ~"당신을 거기서 빼내주겠소."~ */ GOTO 5
  IF ~~ THEN REPLY #57045 /* ~"그렇다면 난 당신을 죽도록 내버려두겠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 4.3 8.0 9.0 10.0
  SAY #57046 /* ~그의 가뜩이나 가는 입이 한층 더 가늘어진다. "젠장, 그렇다면 빨리 들어 올리시오."~ */
  IF ~~ THEN REPLY #57047 /* ~"합시다."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #57048 /* ~"관두시오. 하지만 혹시 나중에 다시 돌아올지도 모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 1.5 8.2 9.2 10.2
  SAY #57049 /* ~"그렇다면 난 당신을 저주하겠소, 그리고 당신이 세상의 모든 역병에 걸리기를 기원하겠소." 그는 당신을 향해 핏덩어리를 뱉으나 빗나간다.~ */
  IF ~~ THEN REPLY #57050 /* ~"그럼 이만."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #57051 /* ~당신은 온몸의 체중을 실어 마차를 민다, 그리고 그가 간신히 기어 나올 수 있을 정도로 마차를 들어 올린다.
"고맙소... 인간. 나는 이제 성벽으로 가서 내 경비병들을 돕겠소. 내 도시가 멸망하게 놔둘 수는 없소." 그는 당신을 보며 심술궂은 미소를 짓는다. "나는 디바와 싸우게 된 당신을 동정하오, 그는 정말 강대한 적이오. 자, 이걸 받으시오, 도움이 될지도 모르오."~ */
  IF ~~ THEN REPLY #57052 /* ~"안녕히 계시오."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 4.0 9.1 10.1
  SAY #57053 /* ~"우리는 그를 감금했소. 참 오래 전 일이오. 난 내가 그 놈을 배신자들과 냄새맡는 개들로부터 완벽하게 숨겼다고 생각했었소. 그런데 놈은 불길에 휩싸여 갑자기 대지로부터 튀어나왔고, 내 아름다운, 아름다운 도시는... 미끄러지게 되었소." 그는 당신을 뚫어지게 쳐다본다. "나는 복수를 하고 싶소. 날 구해주시오, 좋소?"~ */
  IF ~~ THEN REPLY #57054 /* ~"좋소. 준비를 하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #57055 /* ~"당신이 이 도시의 시장이었소?"~ */ GOTO 9
  IF ~~ THEN REPLY #57056 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 4.1 8.1
  SAY #57057 /* ~"내 동지들과...나는... 이 도시를 우리들의 권력을 되찾기 위한 터전으로 이용하고 있었소... 하지만 그건 지금 여기서 할 성질의 이야기는 아니오. 날 구해주시오!"~ */
  IF ~~ THEN REPLY #57058 /* ~"좋소. 준비를 하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #57059 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #57060 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.2 4.2
  SAY #57061 /* ~"그건 나도 마찬가지요... 하지만 이 도시는 내 것이고, 그것을 저 우쭐대는 독선적인 디바에게 빼앗기는 것은 도저히 견딜 수가 없소." 그는 피를 토하며 기침한다. "날 구해주시오, 그럼 나도 당신이 그에게 복수하는 것을 돕겠소. 내 경비병들이 한동안 괴물들을 제지할 수 있을 거요."~ */
  IF ~~ THEN REPLY #57062 /* ~"좋소. 준비를 하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #57063 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #57064 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 11 // from:
  SAY #57065 /* ~혼란 중에 마차의 바퀴 아래에 깔린 듯한 늙은 기스저라이가 보인다. 그는 피를 토해낸 후, 이를 악물고 당신을 바라본다. "당신에겐 날 구할 생각이 없소, 그렇지 않소? 애당초 우리가 이런 지경에 이르게 된 것도 그런 이기적인 행위 때문이니까..." 그는 힘없이 웃는다.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57066 /* ~"당신은 누구요?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57067 /* ~"당신은 누구요?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57068 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57069 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57070 /* ~"그렇소, 당신을 돕지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57071 /* ~"그렇소, 당신을 돕지 않겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57072 /* ~기스저라이는 다시 기침을 한다. "날 다시 조롱하려고 왔소? 당신에게 그런 만족감을 줄 수는 없지."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57073 /* ~"당신은 누구요?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57074 /* ~"당신은 누구요?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57075 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57076 /* ~"안심하시오. 내가 당신을 빼내 주겠소."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57077 /* ~"아니, 그렇지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57078 /* ~"아니, 그렇지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from:
  SAY #57079 /* ~"그래, 칼을 치워라, 저스 개새끼야. 나는 네 가르침에 침을 뱉는다. 네 사슬들을 좀더 걸치고 있거라." 기스저라이는 당신 쪽으로 고개를 돌린다. "나는 토버스 길재프요. 나는 이 도시의 시장이었소... 저주받을 디바가 탈출할 때까지는."~ */
  IF ~~ THEN REPLY #57080 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #57081 /* ~"당신이 시장이었소?"~ */ GOTO 20
  IF ~~ THEN REPLY #57082 /* ~"당신 도시가 마음에 든다고는 할 수가 없을 것 같소."~ */ GOTO 21
  IF ~~ THEN REPLY #57083 /* ~"당신을 거기서 빼내주겠소."~ */ GOTO 16
  IF ~~ THEN REPLY #57084 /* ~"그렇다면 난 당신을 죽도록 내버려두겠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #57085 /* ~"그래,날 죽여라, 저스 개새끼. 네 주인님이 시키는 대로 해라." 늙은 기스저라이는 다콘이 그의 목을 벨 때까지 피를 뱉으며 킬킬댄다.~ */
  IF ~~ THEN REPLY #57086 /* ~"잘했소, 다콘."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 12.1
  SAY #57087 /* ~"나는 토버스 길재프요. 나는 이 도시의 시장이었소... 저주받을 디바가 탈출할 때까지는."~ */
  IF ~~ THEN REPLY #57088 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #57089 /* ~"당신이 시장이었소?"~ */ GOTO 20
  IF ~~ THEN REPLY #57090 /* ~"당신 도시가 마음에 든다고는 할 수가 없을 것 같소."~ */ GOTO 21
  IF ~~ THEN REPLY #57091 /* ~"당신을 거기서 빼내주겠소."~ */ GOTO 16
  IF ~~ THEN REPLY #57092 /* ~"그렇다면 난 당신을 죽도록 내버려두겠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.3 13.3 15.3 19.0 20.0 21.0
  SAY #57093 /* ~그의 가뜩이나 가는 입이 한층 더 가늘어진다. "젠장, 그렇다면 빨리 들어 올리시오."~ */
  IF ~~ THEN REPLY #57094 /* ~"합시다."~ */ GOTO 22
  IF ~~ THEN REPLY #57095 /* ~"관두시오. 하지만 혹시 나중에 다시 돌아올지도 모르겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5 12.5 19.2 20.2 21.2
  SAY #57096 /* ~"그렇다면 난 당신을 저주하겠소, 그리고 당신이 세상의 모든 역병에 걸리기를 기원하겠소." 그는 당신을 향해 핏덩어리를 뱉으나 빗나간다.~ */
  IF ~~ THEN REPLY #57097 /* ~"그럼 이만."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 25.0
  SAY #57098 /* ~당신은 온몸의 체중을 실어 마차를 민다, 그리고 그가 간신히 기어 나올 수 있을 정도로 마차를 들어 올린다. 뭔가가 퍽하며 짓눌려 찌부러지는 소리와 함께, 마차의 반대쪽에서 나던 고통의 신음 소리가 갑자기 끊긴다. "고맙소... 인간. 나는 이제 성벽으로 가서 내 경비병들을 돕겠소. 내 도시가 멸망하게 놔둘 수는 없소." 그는 당신을 보며 심술궂은 미소를 짓는다. "나는 디바와 싸우게 된 당신을 동정하오, 그는 정말 강대한 적이오. 자, 이걸 받으시오, 도움이 될지도 모르오."~ */
  IF ~~ THEN REPLY #57099 /* ~"안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_3","GLOBALGood",-3)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 15.0 20.1 21.1
  SAY #57100 /* ~"우리는 그를 감금했소. 참 오래 전 일이오. 난 내가 그 놈을 배신자들과 냄새맡는 개들로부터 완벽하게 숨겼다고 생각했었소. 그런데 놈은 불길에 휩싸여 갑자기 대지로부터 튀어나왔고, 내 아름다운, 아름다운 도시는... 미끄러지게 되었소." 그는 당신을 뚫어지게 쳐다본다. "나는 복수를 하고 싶소. 날 구해주시오, 좋소?"~ */
  IF ~~ THEN REPLY #57101 /* ~"좋소. 준비를 하시오."~ */ GOTO 16
  IF ~~ THEN REPLY #57102 /* ~"당신이 이 도시의 시장이었소?"~ */ GOTO 20
  IF ~~ THEN REPLY #57103 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 13.1 15.1 19.1
  SAY #57104 /* ~"내 동지들과...나는... 이 도시를 우리들의 권력을 되찾기 위한 터전으로 이용하고 있었소... 하지만 그건 지금 여기서 할 성질의 이야기는 아니오. 날 구해주시오!"~ */
  IF ~~ THEN REPLY #57105 /* ~"좋소. 준비를 하시오."~ */ GOTO 16
  IF ~~ THEN REPLY #57106 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #57107 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 13.2 15.2
  SAY #57108 /* ~"그건 나도 마찬가지요... 하지만 이 도시는 내 것이고, 그것을 저 우쭐대는 독선적인 디바에게 빼앗기는 것은 도저히 견딜 수가 없소." 그는 피를 토하며 기침한다. "날 구해주시오, 그럼 나도 당신이 그에게 복수하는 것을 돕겠소. 내 경비병들이 한동안 괴물들을 제지할 수 있을 거요."~ */
  IF ~~ THEN REPLY #57109 /* ~"좋소. 준비를 하시오."~ */ GOTO 16
  IF ~~ THEN REPLY #57110 /* ~"디바에 대해서 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #57111 /* ~"아니, 그렇게 생각하지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 22 // from: 16.0
  SAY #57112 /* ~마차를 들려고 하자, 마차의 반대편에서 고통스러운 비명 소리가 들려 온다...~ */
  IF ~~ THEN EXTERN ~DBERROG~ 15
END

IF ~~ THEN BEGIN 23 // from:
  SAY #57113 /* ~"당신은 날 짓눌러 죽이고 있소, 이 백치 같으니! 우리 둘 중 하나를 뭉개지 않고서는 이 마차를 들 수가 없소, 그리고 나 대신 그를 뭉개면 그만한 대가는 치르겠소!"~ */
  IF ~~ THEN REPLY #57114 /* ~"어떻게 말이오?"~ */ GOTO 24
  IF ~~ THEN REPLY #57115 /* ~"그렇다면 나는 그를 도와야겠소. 당신은 이 도시를 카케리에 붙잡아두고 있는 악의 일부인 것 같소."~ */ GOTO 25
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57116 /* ~"마차를 번쩍 들어올려 당신들 두 사람을 모두 구하는 건 어떻겠소? 나와 내 동료들이 모두 달려들면 해낼 수가 있소."~ */ GOTO 26
  IF ~~ THEN REPLY #57117 /* ~"이 문제를 해결할 방법을 찾으면 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 28.0
  SAY #57118 /* ~"나는 아직도 커스트의 경비병들을 지휘하고 있소... 나는 그들로 하여금 당신이 디바에게 가는 것을 막고 있는 괴물들의 공세를 늦추게 할 수 있소... 날 구해주시오, 그러면 당신 일이 한층 수월해질 것이오. 그를 구할 경우 당신이 얻을 건 아무 것도 없소."  ~ */
  IF ~~ THEN EXTERN ~DBERROG~ 18
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #57119 /* ~"그건... 디바요. 여기 있는 좀도둑은 디바에 비하면 아무 것도 아니오. 날 구해주시오!"~ */
  IF ~~ THEN REPLY #57120 /* ~마차를 베로그 쪽으로 움직인다: "좋소."~ */ DO ~Kill("Berrog")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~~ THEN REPLY #57121 /* ~베로그를 누르고 있는 마차를 들어올릴 준비를 한다: "당신 대신 그를 돕는 게 나을 것 같소."~ */ EXTERN ~DBERROG~ 18
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57122 /* ~"마차를 번쩍 들어올려 당신들 두 사람을 모두 구하는 건 어떻겠소? 나와 내 동료들이 모두 달려들면 해낼 수가 있소."~ */ GOTO 26
  IF ~~ THEN REPLY #57123 /* ~"이 문제를 해결할 수 있게 되면 다시 오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.2
  SAY #57124 /* ~당신과 당신 동료들은 마차를 에워싼다, 그리고는 힘을 모아서 그 밑에 깔린 두 사람 모두 무사히 기어 나올 수 있도록 조심스럽게 마차를 들어 올리는 데 성공한다. ~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #57125 /* ~"고맙소... 인간. 나는 이제 성벽으로 가서 내 경비병들을 돕겠소. 내 도시가 멸망하게 놔둘 수는 없소." 그는 당신을 보며 심술궂은 미소를 짓는다. "나는 디바와 싸우게 된 당신을 동정하오, 그는 정말 강대한 적이오. 자, 이걸 받으시오, 도움이 될지도 모르오."~ */
  IF ~~ THEN REPLY #57126 /* ~"안녕히 계시오."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
EscapeArea()
~ EXTERN ~DBERROG~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #57127 /* ~"그건... 시장이야, 이 작은 얼간아." 그는 시선을 당신에게로 돌린다.~ */
  IF ~~ THEN GOTO 24
END
