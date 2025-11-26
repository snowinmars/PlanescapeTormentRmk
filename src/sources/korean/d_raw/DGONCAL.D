// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGONCAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGONCAL~

IF ~  Global("Goncalves","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2923 /* ~이 작고 땅딸막한 중년 남자는 빛나는 황금으로 짠 듯한 옷을 입고 있다. 그는 목판 위에 펼쳐진 한 필의 천을 들고 있으며, 현재 그것에 뭔가 수를 놓고 있다, ~ */
  IF ~~ THEN REPLY #2924 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Goncalves","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44148 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.1 25.0
  SAY #44149 /* ~남자는 당신의 존재를 인지하지 못하고 있는 듯하다. 그는 수를 놓으며 뭐라고 중얼거리고 있다... 그가 바느질을 할 때마다 바늘 끝으로부터 빛나는 티끌이 불꽃을 튀기며 떨어지는 듯하다. ~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44150 /* ~"내 얘기를 들었소?"~ */ GOTO 2
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #44151 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44152 /* ~"내 얘기를 들었소?"~ */ EXTERN ~DGRACE~ 142
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #44153 /* ~"난 '안녕하시오'라고 말했소."~ */ EXTERN ~DGRACE~ 142
  IF ~~ THEN REPLY #44154 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #44155 /* ~남자는 자신의 하고 있는 일로부터 눈을 돌리지 않고, 불쾌한 듯 얼굴을 찌푸리며 대답을 한다. "그래, 그래... 당신 사정이 급한 건 알겠소. 하지만 잠시 동안만 조용히 해주시오..."~ */
  IF ~~ THEN REPLY #44156 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #44157 /* ~조용히 기다린다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44158 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44160 /* ~그는 능글맞게 웃으나 대답은 하지 않는다. ~ */
  IF ~~ THEN REPLY #44161 /* ~"난 질문할 것들이 좀 있다고 했소.."~ */ GOTO 4
  IF ~~ THEN REPLY #44162 /* ~조용히 기다린다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #66869 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44163 /* ~그의 얼굴이 빨개지기 시작한다. 그는 이를 갈고 있으나, 그럼에도 당신을 쳐다보려고 하지 않는다. "당신에게 질문을 할 게 있든 없든 내가 알 바가 아니오! 입을 다물든지 아니면 내 가게에서 나가 주시오!"~ */
  IF ~~ THEN REPLY #44164 /* ~"내 질문에 대답하시오 *재단사*... 아니면 말썽이 생길 테니."~ */ GOTO 5
  IF ~~ THEN REPLY #44165 /* ~조용히 기다린다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #44166 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1
  SAY #44167 /* ~그는 격분해 작업하고 있던 옷감을 던진다. 그가 고함을 지르자 그의 입에서 침이 마구 튀긴다. "*말썽*은 경비병들이 와서 당신을 요절을 내면 생기게 될 거요! 자, 나가시오, 나가! 내 가게에서 나가시오! 내가 하모니움을 부르기 전에!"~ */
  IF ~~ THEN REPLY #44168 /* ~"어디 해보시오."~ */ DO ~SetGlobal("Goncalves","GLOBAL",3)
SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44169 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 3.1 4.1
  SAY #44170 /* ~마침내 그는 자수품을 내려놓고 당신을 쳐다본다. 하지만 당신이 미처 말을 꺼내기도 전에 그는 또 다른 아이템을 집어 들고는 다시 일하기 시작한다. 이번에도 천으로부터 작은 불꽃처럼 보이는 것이 튀어나온다. ~ */
  IF ~~ THEN REPLY #44171 /* ~"이보시오, 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #44172 /* ~"내 질문에 대답하시오 *재단사*... 아니면 말썽이 생길 테니."~ */ GOTO 5
  IF ~~ THEN REPLY #44173 /* ~조금 더 기다린다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44174 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44175 /* ~남자는 크게 한숨을 쉰다. "나도 아오. 하지만 지금까지 질 기다려 주었듯이 조금만 더 기다려 주었으면 고맙겠소..."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 211
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44176 /* ~"내 질문에 대답하시오 *재단사*... 아니면 말썽이 생길 테니."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44177 /* ~조금 더 기다린다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Goncalves","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #44178 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.2
  SAY #44179 /* ~그는 마침내 작업을 마치고 천을 내려 놓은 후 당신을 살핀다. "안녕하시오, 나는 곤캘브즈요. 자, 무슨 용건으로 내게 오셨소?"~ */
  IF ~~ THEN REPLY #44180 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #44181 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 12.1 13.1 14.1 14.2 16.1 16.2 22.0 24.0 26.0
  SAY #44182 /* ~"흠? 옷에 대한 것이길 바라겠소. 나는 내 자신이나 가게에 대해서는 대답할 생각이 없으니까."~ */
  IF ~  GlobalGT("Malmaner","GLOBAL",1)
GlobalLT("Malmaner","GLOBAL",4)
Global("Goncalves_Costume1","AR0611",0)
~ THEN REPLY #44183 /* ~"나는 더스트맨 의상을 찾으러 왔소."~ */ DO ~SetGlobal("Malmaner","GLOBAL",3)
~ GOTO 14
  IF ~  GlobalGT("Malmaner","GLOBAL",3)
GlobalLT("Malmaner","GLOBAL",6)
Global("Goncalves_Costume2","AR0611",0)
~ THEN REPLY #44184 /* ~"나는 다른 종류의 의상을 사러 왔소."~ */ DO ~SetGlobal("Malmaner","GLOBAL",5)
~ GOTO 16
  IF ~  Global("Know_Goncalves_Mage","AR0611",0)
~ THEN REPLY #44185 /* ~"당신이 수를 놓을 때 내가 본 그러한 빛들은 대체 뭐요?"~ */ DO ~SetGlobal("Know_Goncalves_Mage","AR0611",1)
~ GOTO 12
  IF ~  Global("Know_Goncalves_Mage","AR0611",1)
~ THEN REPLY #44186 /* ~"당신은 어떤 종류의 마법의 옷들을 팔고 있소?" ~ */ GOTO 13
  IF ~~ THEN REPLY #66876 /* ~"여기서 실과 바늘을 좀 살 수 있겠소?"~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44188 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #44189 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #44194 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #44198 /* ~"그것 말이오? 약간의 마법이오. 나는 기분이 내키면 때때로 옷감에 마력을 불어 넣곤 하오. 그러한 옷들은 내가 가장 아끼는 작품들로, 어지간해서는 팔지 않소."~ */
  IF ~~ THEN REPLY #44199 /* ~"당신은 어떤 종류의 마법의 옷들을 팔고 있소?" ~ */ GOTO 13
  IF ~~ THEN REPLY #44200 /* ~"다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #44201 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 12.0
  SAY #44202 /* ~곤캘브즈는 당신을 훑어보더니 눈살을 찌푸린다. "*당신*이 입을 만한 건 없소. 그것 하나는 확실하오."~ */
  IF ~~ THEN REPLY #44203 /* ~"그래도 당신이 어떤 물건들을 파는지 보고 싶소."~ */ DO ~StartStore("Tailor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #67828 /* ~"그렇다면 다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #67829 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #44204 /* ~"당신이 운이 좋소... 마침 한 벌이 있소. 가격은 동전 서른 닢이오."~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44205 /* ~"그걸 사겠소."~ */ DO ~DestroyPartyGold(30)
GiveItemCreate("Costume1",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume1","AR0611",1)
~ GOTO 15
  IF ~  PartyGoldLT(30)
~ THEN REPLY #44206 /* ~"흠... 돈이 부족하오. 다른 질문이 있소..."~ */ GOTO 9
  IF ~  PartyGoldGT(29)
~ THEN REPLY #44207 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #44208 /* ~"그럼 나중에 다시 오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44209 /* ~곤캘브즈는 계산대 아래서 깨끗하게 갠 법복 한 벌을 꺼낸다. "여기 있소. 하지만 당신에게 충고를 하나 해야겠소. 만약 이걸 입고 곧 열릴 어드 경의 가장무도회에 갈 생각이라면, 이미 많은 사람들이 더스트맨 복장으로 참석할 예정이라는 걸 알아 두시오."~ */
  IF ~~ THEN REPLY #44210 /* ~"기억해 두리다. 안녕히 계시오, 곤캘브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.1
  SAY #44211 /* ~곤캘브즈는 고개를 끄덕이고 알았다는 듯 미소짓는다. "결국 더스트맨은 너무 흔하다고 생각하셨소? 원한다면 마침 내게는 갓즈맨 의상이 한 벌 있소. 가격은 고작 동전 쉰 닢이오."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44212 /* ~"그걸 사겠소."~ */ DO ~DestroyPartyGold(50)
GiveItemCreate("Costume2",Protagonist,1,0,0)
SetGlobal("Goncalves_Costume2","AR0611",1)
~ GOTO 17
  IF ~  PartyGoldLT(50)
~ THEN REPLY #44213 /* ~"흠... 돈이 부족하오. 다른 질문이 있소..."~ */ GOTO 9
  IF ~  PartyGoldGT(49)
~ THEN REPLY #44214 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #44215 /* ~"그럼 나중에 다시 오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44216 /* ~곤캘브즈는 계산대 아래서 옷, 무거운 가죽 앞치마, 그리고 작업용 부츠로 구성된 의상 한 세트를 계산대 아래서 꺼낸다. "여기 있소. 가장무도회를 즐기시오."~ */
  IF ~~ THEN REPLY #44217 /* ~"고맙소, 곤캘브즈. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44218 /* ~남자는 작업하던 옷감에서 고개를 들어 안나를 처음으로 본다. 그는 혀를 차면서 고개를 젓는다. "그런 옷을 걸치다니 아가씨는 팬더모니움의 광풍 때문에 정신이 어떻게 된 게 아니오?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 212
END

IF ~~ THEN BEGIN 19 // from:
  SAY #44219 /* ~그는 안나의 옷을 가리킨다. "가죽 말이오, 아가씨. 극도로 비실용적이오. 가슴 부위의 지나친 강조, 특히 동체 부위 전반에 걸쳐 *날-좀-보세요*라고 외치듯 곳곳에 옷을 터놓은 건 꼴불견이오. 댁의 옷은 착용자의 편안함을 위해서가 아니라 누군가의 성욕을 자극하기 위해 디자인된 것 같소. 설령 당신이 다른 티플링들처럼 권위나 예법에 대한 반항의 표시로 그런 옷을 입었다고 해도, 궁극적으로는 당신에게 해가 될 거요..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 472
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44220 /* ~중단시키려고 시도한다.~ */ GOTO 20
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44221 /* ~그들이 계속 얘기하도록 내버려 둔다.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.1 19.2
  SAY #44222 /* ~곤캘브즈는 계속 안나를 꾸짖는다. "당신은 시 공회당에서 공연을 하는 게 더 어울릴 것 같소..." 그는 눈살을 찌푸린다. "그런데 혹시 당신은 센세이트가 아니오?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 213
END

IF ~~ THEN BEGIN 21 // from:
  SAY #44223 /* ~재단사는 고개를 끄덕인다. "난 그렇게 생각하지 않소. 내가 당신에게 보다 점잖은 옷을 입혀 주도록 할 수는 없겠소..."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 473
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44224 /* ~중단시키려고 시도한다.~ */ EXTERN ~DANNAH~ 214
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44225 /* ~그들이 계속 얘기하도록 내버려 둔다.~ */ EXTERN ~DANNAH~ 214
END

IF ~~ THEN BEGIN 22 // from:
  SAY #44226 /* ~"아가씨 생각이 그렇다면 할 수 없지." 곤캘브즈는 당신을 쳐다본다. "자, 어차피 내가 하던 일은 중단되고 말았으니... 나는 곤캘브즈요. 무슨 용건으로 내게 오셨소?"~ */
  IF ~~ THEN REPLY #44227 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #44228 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #44229 /* ~곤캘브즈는 즉시 하던 일을 멈추고 훨-후럼-그레이스에게 공손히 고개를 숙인다, 그리고 그녀도 답례를 한다. "안녕하시오, 그레이스 여사. 오늘은 어떻게 도와드리면 되겠소? 그 주문은 거의 완성된 상태..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 143
END

IF ~~ THEN BEGIN 24 // from:
  SAY #44230 /* ~"물론이오!" 곤캘브즈는 당신 쪽으로 고개를 돌린다. "그래... 무슨 용건으로 내게 오셨소?"~ */
  IF ~~ THEN REPLY #44231 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #44232 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",1)
~ THEN BEGIN 25 // from:
  SAY #44233 /* ~재단사는 아직도 전에 작업했던 옷감에 수를 놓고 있다. 그는 당신이 있다는 걸 전혀 눈치채지 못하고 있는 것 같다.~ */
  IF ~~ THEN REPLY #44234 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #44235 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #44236 /* ~곤캘브즈는 작업하고 있던 것을 내려놓고 고개를 끄덕인다. "또 오셨소... 좋소. 내게 어떤 도움을 원하시오?"~ */
  IF ~~ THEN REPLY #44237 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #44238 /* ~"그냥 지나던 길이었소, 곤캘브즈. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Goncalves","GLOBAL",3)
~ THEN BEGIN 27 // from:
  SAY #44240 /* ~재단사는 당신을 조소한다 "경비병을 다시 부르기 전에 떠나는 게 좋을 거요. 어떠한 행동이나 말도 당신이 내게 준 모욕을 용서하게 만들 순 없소!"~ */
  IF ~~ THEN REPLY #44242 /* ~"그래, 경비병들을 불러 보시오."~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #44243 /* ~떠난다.~ */ EXIT
END
