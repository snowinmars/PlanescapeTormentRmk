// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHORNCO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHORNCO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2943 /* ~이 미모의 중년 여성은 꿈이라도 꾸는 듯 정처없이 돌아다니고 있다. 그녀는 멍하나 자신의 손톱을 깨물고 있으며, 그녀의 눈빛은 초점을 잃은 듯 흐릿하다. 그녀는 우아하나 흐트러진 아름다운 옷을 입고 있으며, 그녀의 머리도 약간 헝클어졌다.~ */
  IF ~~ THEN REPLY #31262 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #31263 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31261 /* ~"네?" 그녀는 입에서 엄지손가락을 빼내 자신의 눈 위까지 내려온 머리카락 하나를 뒤로 제낀다.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31264 /* ~"당신이 혹시 쏜쿰 여사요?"~ */ GOTO 2
  IF ~~ THEN REPLY #31265 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31266 /* ~"나에 대해선 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 7.0 19.0
  SAY #31267 /* ~그녀의 눈이 잠시 휘둥그레진다. 그녀는 당신으로부터 고개를 돌린다. "아니, 난 그런 사람이 아니에요."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31268 /* ~"하지만 나는 당신이 그녀라고 생각하오, 여사. 나는 당신이 시 공회당의 메이지 강사라고 들었소."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31269 /* ~"당신은 정말 지독한 거짓말쟁이요."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31270 /* ~"그렇다면 당신은 누구시오?"~ */ GOTO 17
  IF ~~ THEN REPLY #31271 /* ~"그렇다고 해도 내겐 당신에게 질문할 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31272 /* ~"그럼 이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 17.0 18.0 18.1
  SAY #31273 /* ~쏜쿰 여사는 우울한 표정을 짓는다. "그래, 내가 만약 그 여자라면 그게 어떻다는 거죠?"~ */
  IF ~~ THEN REPLY #31274 /* ~"나는 마법 훈련을 받고자 하오."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31030 /* ~나는 사무구에 위치한 시 공회당의 감각 체험실들 중 한 곳에서 메이지 교사인 쏜쿰 여사를 만났다. 그녀는 날 가르치기를 거부했다. 그 이유는 알 수가 없다. ~ */ GOTO 4
  IF ~~ THEN REPLY #31275 /* ~"그럼 당신에게 질문을 좀 하고 싶소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31276 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 14.1 16.0
  SAY #31277 /* ~"그럼 내가 당신 희망을 산산조각 내주겠어요. 나는 더 이상 마법을 가르치길 원하지 않아요...이만 날 그냥 내버려 두고 가세요." ~ */
  IF ~~ THEN REPLY #31278 /* ~"하지만 그건 무엇 때문이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #31279 /* ~"가기 전에 당신에게 물어볼 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31280 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #31281 /* ~"그건 당신이 상관할 바가 아니에요!"~ */
  IF ~~ THEN REPLY #31282 /* ~"아니, 상관이 있소. 나는 배우고자 하고 당신은 날 가르칠 수가 있소. 나는 당신을 설득시키려면 내가 어떻게 해야 하는지 알고 싶소."~ */ GOTO 8
  IF ~~ THEN REPLY #31283 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 7.1
  SAY #31284 /* ~그녀는 고개를 젓는다. "늘 그런 건 아니지요... 메이지는 육체적으로 취약하며, 우리들의 주문은 그러한 결함을 메우기 위한 방편에 불과해요. 메이지는 마력을 모두 소진한 후에는 더 이상 싸울 수가 없어요."~ */
  IF ~~ THEN REPLY #31285 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31286 /* ~"이해하오. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 2.3 3.1 4.1 6.0 13.0 13.1 14.2 16.1 17.3 19.1 20.1
  SAY #31287 /* ~"좋아요, 물어보세요." 그녀는 무관심한 것 같다.~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31288 /* ~"당신이 혹시 쏜쿰 여사요?"~ */ GOTO 2
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31289 /* ~"퀴-사이는 날 훈련시키지 않으려고 하오... 그는 전투에서 주문이 점근전보다 더 유효하다고 하고 있소. 당신은 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~퀴-사이는 메이지의 장점에 대해 늘어놓으며 나를 전사로서 훈련시키는 일을 거부했다. 하지만 나는 시 공회당의 메이지 강사인 쏜쿰 여사와 이야기를 하였고, 그녀는 메이지가 얼마나 육체적으로 취약하며 주문은 그들의 그러한 약점을 보완하기 위한 것에 불과하다고 설명해 주었다. 이것은 퀴-사이의 주장에 대한 좋은 반론이 될 것 같다. ~ */ GOTO 6
  IF ~~ THEN REPLY #31290 /* ~"나는 당신에 대해 질문할 것이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #31291 /* ~"나는 이 곳에 대해 질문할 것이 있소."~ */ GOTO 13
  IF ~~ THEN REPLY #31292 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #31293 /* ~그녀는 크게 한숨을 쉬고 다시 손톱을 깨물기 시작한다. "당신이 내게 제시할 수 있는 것들 중 내 힘으로 구할 수 없는 것은 거의 없을 거예요. 감각석은 내 상당한 재력으로도 구할 수 없는 것들을 내게 모두 제공해 주고 있어요."~ */
  IF ~~ THEN REPLY #31294 /* ~"감각석?"~ */ GOTO 9
  IF ~~ THEN REPLY #31295 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #31296 /* ~"그래요... 각 감각석에는 하나의 체험이 기록되어 있어요. 공회당에 처음 왔을 때 나는 감각석을 별로 이용하지 않았어요. 이제와서야 나는 내가 뭘 놓치고 있었는지를 깨달았어요..." ~ */
  IF ~~ THEN REPLY #31297 /* ~"당신은 뭘 놓치고 있었소?"~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",2)
~ JOURNAL #31299 /* ~쏜쿰 여사는 감각석에 중독되어 마법 강사로서의 책무를 다하기보다는 다른 이들의 체험을 맛보는 데 시간을 보내는 것 같다. 그녀가 다시 강의를 하도록 설득하기 위해서는 어떻게 해야만 할까...~ */ GOTO 10
  IF ~~ THEN REPLY #31298 /* ~"좋소, 그럼. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31300 /* ~그녀는 미소를 지으며 고개를 끄덕인다. 그녀의 눈빛이 흐리멍덩해진다, 그러나 아직은 스스로를 제어할 수는 있는 것 같다. "이 곳에서는 감각석을 통해 경이로운 체험을 하고 또 하면서 평생이라도 보낼 수가 있어요... 말로는 그 장엄함을 표현할 수가 없어요. 나는 당신도 한 번 직접 체험해보라고 밖에는 말할 수가 없군요."~ */
  IF ~~ THEN REPLY #31301 /* ~"당신은... 중독된 것 같소."~ */ GOTO 11
  IF ~~ THEN REPLY #31302 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #31303 /* ~그녀는 당신에게 소리를 지른다. "말도 안돼요! 나는 내가 원하면 언제든지 중단할 수 있어요! 나는 단지 내 *선택*에 의해 그것들의 경이를 즐기고 있을 뿐이에요. 이 곳에서는 사랑스러운 감각석들에 둘러싸여 매일 백 개의 새로운 삶을 살 수가 있는데, 왜 내가 감사할 줄도 모르는 게으름뱅이 마법사 지망생들을 가르치려고 시간을 낭비해야 하는 거죠?"~ */
  IF ~~ THEN REPLY #31304 /* ~"나는 감각석들이 그러한 목적을 위해 있다고는 생각하지 않소. 당신은 다른 이들과 공유할 당신 스스로의 감각 체험을 추구해야 하지 않소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31305 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #31306 /* ~"흥! *당신* 생각은 내게 아무런 의미도 없어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #31307 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.2 7.3
  SAY #31308 /* ~당신은 그녀에게 질문을 하기 시작한다. 그러나 당신은 그녀가 당신에게 주의를 기울이기는커녕 당신을 보고 있지도 않다는 사실을 깨닫는다.~ */
  IF ~  GlobalLT("Thorncombe","GLOBAL",2)
~ THEN REPLY #31309 /* ~"여보시오? 질문할 것이 하나 있소..."~ */ GOTO 7
  IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN REPLY #31310 /* ~"쏜쿰 여사? 내 질문..."~ */ GOTO 7
  IF ~~ THEN REPLY #31311 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.1 17.1 18.2
  SAY #31312 /* ~쏜쿰 여사는 냉소한다. "그렇다면 당신은 끔찍한 흉터투성이의 인간 쓰레기로, 간신히 살아 있는 것 같은 모양을 한 시체에 불과하죠. 그만 꺼져요."~ */
  IF ~~ THEN REPLY #31313 /* ~"내게 그런 식으로 말을 하면 당신은 시체 신세가 될 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Thorn_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #31314 /* ~"기다리시오... 나는 마법 훈련을 받고자 하오."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31315 /* ~"아직 아니오. 당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31316 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #31317 /* ~그녀는 큰 소리로 당신을 조롱하듯이 웃는다. "고릴라처럼 가슴을 두들기는 건 당신을 조금이나마 두려워할 사람한테 가서 하시죠. 계속 그런 식으로 나온다면 농담이 아니라 나에 대한 모욕으로 간주하겠어요... 그렇게 되면 당신은 여기 있고 싶은 생각이 아마 싹 사라질 거예요."~ */
  IF ~~ THEN REPLY #31318 /* ~"쓸데없는 과정은 생략하고 어서 결판을 내자, 이 건방진 마녀야."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31319 /* ~"난 일이 이렇게 되기를 원했던 건 아니오. 내 사과를 받아주시오..."~ */ GOTO 16
  IF ~~ THEN REPLY #31320 /* ~"내가 떠나는 건 당신이 지겨워서이지 다른 이유가 있어서가 아니오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #31321 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #31322 /* ~그녀는 크게 한숨을 쉬며 고개를 젓는다. "당신이 날 그냥 내버려 두겠다면 용서하지요."~ */
  IF ~~ THEN REPLY #31323 /* ~"하지만 나는 마법 훈련을 받고 싶소."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",1)
~ JOURNAL #31326 /* ~나는 사무구에 위치한 시 공회당의 감각 체험실들 중 한 곳에서 메이지 교사인 쏜쿰 여사를 만났다. 그녀는 날 가르치기를 거부했다. 그 이유는 알 수가 없다. ~ */ GOTO 4
  IF ~~ THEN REPLY #31324 /* ~"그러리다, 하지만 그 전에 질문을 좀 하고 싶소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31325 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.2
  SAY #31327 /* ~그녀는 거북하게 웃는다. "별로 중요한 사람이 아니에요."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31328 /* ~"하지만 나는 당신이 그녀라고 생각하오, 여사. 당신은 시 공회당의 메이지 강사인 쏜쿰 여사요."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31329 /* ~"당신은 정말 지독한 거짓말쟁이요."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
  IF ~~ THEN REPLY #31330 /* ~"내게 당신 이름을 말해줄 수 있겠소?"~ */ GOTO 18
  IF ~~ THEN REPLY #31331 /* ~"그렇다고 해도 내겐 당신에게 질문할 것들이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31332 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #31333 /* ~"오... 나는... 아다나?"~ */
  IF ~  GlobalGT("Adahn","GLOBAL",0)
~ THEN REPLY #31334 /* ~"좋소, 그런 장난은 집어 치우시오. 나는 우리 둘 다 당신이 누구인지 알고 있다고 생각하오, 쏜쿰 여사."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31335 /* ~"실제로 당신은 시 공회당의 메이지 강사인 쏜쿰 여사요. 내 말이 맞소?"~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #31336 /* ~"당신은 정말 지독한 거짓말쟁이요."~ */ DO ~SetGlobal("Thorncombe","GLOBAL",2)
~ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Thorncombe","GLOBAL",2)
~ THEN BEGIN 19 // from:
  SAY #31337 /* ~이 여자는 아직도 이 감각석에서 저 감각석으로 왔다갔다하면서 감각 체험실 안을 배회하고 있다. 당신이 다가가자 그녀는 당신을 쳐다보나, 당신을 알아보지는 못하는 것 같다.다가오는 것을 ~ */
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #31338 /* ~"당신이 혹시 쏜쿰 여사요?"~ */ GOTO 2
  IF ~~ THEN REPLY #31339 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #31340 /* ~"나에 대해선 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",2)
~ THEN BEGIN 20 // from:
  SAY #31341 /* ~쏜쿰 여사는 당신이 누군지 기억해내려고 하는 듯 눈을 가늘게 뜨고 당신을 본다. 갑자기 그녀는 얼굴을 노골적으로 찌푸린다. "당신이로군요! 날 다시 훈련실로 데려가려는 헛된 시도를 하려고 온 게 아니길 바라겠어요... 난 절대 가지 않을 테니까요."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #31342 /* ~"나는 살라베쉬가 당신의 결정을 듣고 매우 기뻐하며 자신을 새로운 메이지 강사로 임명해 달라고 요청했다는 사실을 당신이 아는지 궁금했을 뿐이오."~ */ GOTO 21
  IF ~~ THEN REPLY #31343 /* ~"실은 질문할 것들이 좀 있을 뿐이오..."~ */ GOTO 7
  IF ~~ THEN REPLY #31344 /* ~"아니 그럴 생각은 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31345 /* ~"살라베쉬?! 그 살찐 머저리... 그 자는 곰팡난 자루에서 빠져나오는 하찮은 눈속임수조차 제대로 못하는 삼류 마법사라고요!! 당신이 얘기한 이 *결정*이라는 게 대체 뭐죠?"~ */
  IF ~~ THEN REPLY #31346 /* ~"당신이 자신보다 경험이 부족한 메이지들을 가르치는 것을 그만두고 감각 체험실에서 지내겠다는 결정 말이오."~ */ JOURNAL #31349 /* ~나는 쏜쿰 여사에게 그녀를 대신해 시 공회당의 마법 강사가 되려는 살라베쉬의 의지에 대하여 말해주었다. 그들은 사이가 나쁜 듯 그녀는 그의 계획을 망치기 위해 재빨리 메이지 훈련실로 돌아갔다. ~ */ GOTO 22
  IF ~~ THEN REPLY #31347 /* ~"아무 것도 아니오. 내가 한 말은 잊으시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31350 /* ~"뭐라고요?! 하지만... 나..."~ */
  IF ~~ THEN REPLY #31351 /* ~"무슨 용건이오, 쏜쿰 여사?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #31352 /* ~그녀는 당신을 째려본다. "바보 천치 같으니. 만약 살라베쉬를 다시 만나면 꿈 깨라고 전하세요. 나는 당장 훈련실로 돌아가겠어요."~ */
  IF ~~ THEN REPLY #31353 /* ~"그 곳에서 봅시다, 쏜쿰 여사. 안녕히 계시오."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",4)
SetGlobal("Thorncombe","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0603cut1",FALSE)
~ EXIT
END

IF ~  Global("Thorncombe","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31354 /* ~쏜쿰 여사는 당신을 보며 얼굴을 찌푸린다. "지금은 얘기할 시간이 없어요... 원한다면 나중에 메이지 훈련실로 찾아오세요. 그럼 이만."~ */
  IF ~~ THEN REPLY #31355 /* ~떠난다.~ */ EXIT
END

IF ~  GlobalGT("Thorncombe","GLOBAL",3)
~ THEN BEGIN 25 // from:
  SAY #31356 /* ~쏜쿰 여사는 당신에게 인사를 한다, 그러나 당신은 과연 그녀가 당신을 알아볼지 확신을 할 수가 없다. 그녀는 옷과 머리를 단정하게 다듬었으며, 나이가 꽤 들기는 했으나 그래도 아직 매력적인 귀부인으로 보인다... 하지만 여전히 꿈꾸는 듯한 눈을 하고 있으며 주의가 산만하다. "안녕하세요... 마법을 배우려고 이 곳에 왔나요?"~ */
  IF ~  Global("Thorncombe","GLOBAL",5)
Class(Protagonist,MAGE)
~ THEN REPLY #31357 /* ~"그렇소... 당신이 내게 가르칠 수 있는 주문들을 보여주시오."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~  Global("Thorncombe","GLOBAL",5)
GlobalGT("Mage_Training","GLOBAL",0)
!Class(Protagonist,MAGE)
~ THEN REPLY #64643 /* ~"그렇소... 나는 다시 메이지의 길을 걷고 싶소. 날 인도해 줄 수 있겠소?"~ */ GOTO 32
  IF ~  Global("Thorncombe","GLOBAL",4)
~ THEN REPLY #31358 /* ~"그렇소."~ */ GOTO 30
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #68458 /* ~"아니오, 하지만 주문을 좀 구입하고 싶소."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31359 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #31360 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4
  SAY #31364 /* ~"나는 내 시간과 관심은 내 학생들을 위해서만 사용해요... 그러니 내 학생들에게 물어보던지... 아니면 그들보다 더 한가한 사람에게 물어보시죠."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
GlobalGT("Thorncombe","GLOBAL",1)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #31362 /* ~"가다리시오: 퀴-사이는 날 훈련시키지 않으려고 하오... 그는 전투에서 주문이 점근전보다 더 유효하다고 하고 있소. 당신은 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Thorn_Ans","GLOBAL",1)
AddexperienceParty(250)
~ JOURNAL #66574 /* ~퀴-사이는 메이지의 장점에 대해 늘어놓으며 나를 전사로서 훈련시키는 일을 거부했다. 하지만 나는 시 공회당의 메이지 강사인 쏜쿰 여사와 이야기를 하였고, 그녀는 메이지가 얼마나 육체적으로 취약하며 주문은 그들의 그러한 약점을 보완하기 위한 것에 불과하다고 설명해 주었다. 이것은 퀴-사이의 주장에 대한 좋은 반론이 될 것 같다. ~ */ GOTO 27
  IF ~~ THEN REPLY #31363 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31365 /* ~그녀는 고개를 젓는다. "늘 그런 건 아니지요... 메이지는 육체적으로 취약하며, 우리들의 주문은 그러한 결함을 메우기 위한 방편에 불과해요. 메이지는 마력을 모두 소진한 후에는 더 이상 싸울 수가 없어요."~ */
  IF ~~ THEN REPLY #31366 /* ~"이해하오. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #31367 /* ~당신의 그녀의 마지막 질문에 대답을 한다, 그리고 그녀는 만족스러운 듯 고개를 끄덕인다. "당신은 메이지가 직업이군요?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #31369 /* ~"그렇소."~ */ GOTO 35
  IF ~  !Class(Protagonist,MAGE)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31370 /* ~"아니오... 그렇지 않소."~ */ GOTO 29
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31371 /* ~"아니, 현재는 아니오... 하지만 전에 훈련을 받은 적은 있소."~ */ GOTO 29
  IF ~~ THEN REPLY #31372 /* ~"관두시오. 이만 실례하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.2
  SAY #31373 /* ~그녀는 두 눈을 감고 천천히 긴 한숨을 쉰다. "그럼 대체 내가 뭘 가르치길 바라는 거죠? 나나 내 학생들의 시간을 낭비하지 말아요! 안녕히 가세요."~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31374 /* ~"기다리시오... 당신은 날 메이지로 만들어 줄 수 있겠소?"~ */ GOTO 32
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31375 /* ~"기다리시오... 나는 다시 한 번 메이지의 길을 걷고 싶소. 날 인도해 줄 수 있겠소?~ */ GOTO 32
  IF ~~ THEN REPLY #31376 /* ~"안녕히 계시오, 쏜쿰 여사."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 25.2
  SAY #31377 /* ~"좋아요. 그럼 다음 질문들에 대답을 하도록 하세요..." 그녀는 장시간에 걸쳐 논리 및 어휘 문제들을 연달아 냄으로서 당신의 지능과 추리력을 시험한다...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #31378 /* ~그녀의 질문들에 최선을 다해 대답한다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Thorncombe","GLOBAL",5)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #31379 /* ~그녀의 질문들에 최선을 다해 대답한다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #31380 /* ~"미안하지만 당신에게는 마법의 기본 개념을 이해할 만한 지성이 없군요. 하지만 당신이 다른 어떤 직업을 택하던 간에 그 직업에서는 성공할 수 있기를 기원하겠어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #31381 /* ~"어... 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.1 29.0 29.1
  SAY #31382 /* ~"*노력*을 해보지요. 당신은 진심으로 현재 직업을 포기할 생각인가요?"~ */
  IF ~  Class(Protagonist,FIGHTER)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31383 /* ~"그렇소, 나는 마법을 위해 칼을 버림으로서 다시 메이지가 되고 싶소."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #31384 /* ~"그렇소, 나는 도둑의 길을 포기하고 다시 메이지가 되고 싶소."~ */ GOTO 33
  IF ~  Class(Protagonist,FIGHTER)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31385 /* ~"그렇소, 나는 마법을 위해 칼을 버리겠소. 내게 마법을 가르쳐 주시오."~ */ GOTO 36
  IF ~  Class(Protagonist,THIEF)
Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #31386 /* ~"그렇소, 나는 도둑의 길을 포기하고 메이지가 되고 싶소."~ */ GOTO 36
  IF ~~ THEN REPLY #31387 /* ~"아니, 그러지 않는 편이 좋을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #31388 /* ~"좋아요. 우리는 마법에 대한 당신의 지식을 함께 점검해 보도록 하겠어요... 곧 당신이 다시 메이지의 길을 걸을 수 있도록 해주겠어요."~ */
  IF ~~ THEN REPLY #31389 /* ~듣고 또 듣는다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31390 /* ~"정말 감탄했어요! 만약 내가 감각석을 통해 불가능한 일들을 벌써 여러 차례나 체험하지 않았더라면, 당신이 마법에 대한 지식을 그토록 빨리 되찾았다는 사실을 도저히 믿지 못했을 거예요. 그럼 이제 당신은 내가 당신에게 가르칠 수 있는 주문들을 볼 준비가 되었나요?"~ */
  IF ~~ THEN REPLY #31391 /* ~"그렇소, 부디 내게 보여주시오."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31392 /* ~"지금은 아니오, 하지만 나중에 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.0
  SAY #31393 /* ~"그럼 이제 당신은 내가 당신에게 가르칠 수 있는 주문들을 볼 준비가 되었나요?"~ */
  IF ~~ THEN REPLY #31394 /* ~"그렇소, 부디 내게 보여주시오."~ */ DO ~StartStore("Thorn",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #31395 /* ~"지금은 아니오, 하지만 나중에 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2 32.3
  SAY #31396 /* ~"좋아요. 당신에게 내가 가르칠 수 있는 것을 가르치도록 하지요." 그녀는 생각에 잠겨 잠시 말을 멈춘다. "마법의 재능만 가지고는 충분하지 않아요. 마법을 사용하기 위해서는 정신집중을 위한 매개체, 즉 주문이 필요해요. 주문은 대개 책에 기록해요, 하지만 나는 파피루스 두루마리, 석판... 수를 놓은 비단... 동물 가죽 등에 주문을 기록하는 메이지들도 본 적이 있어요..." 그녀의 눈빛이 흐려진다, 그리고 그녀는 엄지손톱을 물어뜯기 시작한다. ~ */
  IF ~~ THEN REPLY #31397 /* ~"쏜쿰 여사? 당신은 무슨 얘기를 했소?"~ */ JOURNAL #39474 /* ~나는 시 공회당의 메이지 강사인 쏜쿰 여사에게 메이지가 되기 위한 훈련을 받았다 .~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31398 /* ~"네? 오! 미안해요... 내가 말한 것처럼 주문을 영창하려면 주문책이나 그와 유사한 것이 필요해요. 글은 읽을 줄 알죠?"~ */
  IF ~~ THEN REPLY #31399 /* ~"모르겠소."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
  IF ~~ THEN REPLY #31400 /* ~"그렇소."~ */ DO ~SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",2)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #31401 /* ~"그럼 당신을 다시 한 번 시험하겠어요." 그녀는 옆구리에 찬 가죽 케이스에서 두루마리 하나를 꺼낸다. "내게 이걸 읽어 주겠어요?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #31402 /* ~두루마리를 살펴본다.~ */ GOTO 39
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #31403 /* ~두루마리를 살펴본다.~ */ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #31404 /* ~두루마리에 쓰여진 글씨는 마치 빙빙도는 것처럼 보인다. 당신이 읽으려고 할 때마다 각 문자는 뒤틀려서 초점으로부터 벗어난다. 하지만 당신은 거의 본능적으로 눈을 편안하게 하고 페이지 전체를 동시에 보려고 시도한다... 그러자 심벌들이 갑자기 뚜렸해진다. 두루마리에는 마나(기)의 흐름을 제어하기 위한 불가해한 음절, 마법용 재료, 신비한 손동작 등이 기입되어 있다... 그것은 일종의 하급 매료 주문인 것 같다. ~ */
  IF ~~ THEN REPLY #31405 /* ~"이것은 하급 매료의 주문이오, 그렇지 않소? 이것은 자신을 다른 이들에게 더 매력적으로 보이게 만들어 카리스마를 향상시키는 주문 같소."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 38.1
  SAY #31406 /* ~두루마리에 쓰여진 글씨는 마치 빙빙도는 것처럼 보인다. 당신이 읽으려고 할 때마다 각 문자는 뒤틀려서 초점으로부터 벗어난다. ~ */
  IF ~~ THEN REPLY #31407 /* ~심벌들을 연구하여 그것들을 해독할 수 있는지 본다.~ */ GOTO 41
  IF ~~ THEN REPLY #31408 /* ~"포기하겠소, 쏜쿰 여사... 그것의 뜻은 무엇이오?~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #31409 /* ~당신은 심벌들을 골똘히 연구한다. 하지만 당신이 아무리 집중해도 두루마리에 적힌 글씨는 계속 초점에서 벗어나, 마치 둥지를 튼 뱀처럼 몸을 뒤틀며 꿈틀거린다. 그것들이 움직이는 모습은 보기만 해도 눈이 아플 지경이다. ~ */
  IF ~~ THEN REPLY #31410 /* ~계속 심벌들을 연구하여 그 의미를 파악하려고 노력한다.~ */ GOTO 42
  IF ~~ THEN REPLY #31411 /* ~"포기하겠소, 쏜쿰 여사... 그것의 뜻은 무엇이오?~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 41.0 42.0
  SAY #31412 /* ~당신은 심벌들을 몇 분 정도 더 연구한다. 쏜쿰 여사는 당신을 조용히 지켜보고 있다. 하지만 결국에 가서 쏜쿰 여사는 관심을 잃고 방 안을 두리번거리기 시작한다. ~ */
  IF ~~ THEN REPLY #31413 /* ~계속 심벌들을 연구하여 그 의미를 파악하려고 노력한다.~ */ GOTO 42
  IF ~~ THEN REPLY #31414 /* ~"포기하겠소, 쏜쿰 여사... 그것의 뜻은 무엇이오?~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.1 41.1 42.1
  SAY #31415 /* ~포기하려고 하다가 당신은 눈을 편안하게 하고 페이지 전체를 동시에 보려고 시도한다... 그러자 심벌들이 갑자기 뚜렸해진다. 두루마리에는 마나(기)의 흐름을 제어하기 위한 불가해한 음절, 마법용 재료, 신비한 손동작 등이 기입되어 있다... 그것은 일종의 하급 매료 주문인 것 같다. ~ */
  IF ~~ THEN REPLY #31416 /* ~"이것은 하급 매료의 주문이오, 그렇지 않소? 이것은 자신을 다른 이들에게 더 매력적으로 보이게 만들어 카리스마를 향상시키는 주문 같소."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.0 43.0
  SAY #31417 /* ~쏜쿰 여사의 눈이 휘둥그레진다. "당신은 대체 누구이기에 나를 그처럼 기만하려는 거죠?!" 그녀는 당신 손아귀로부터 두루마리를 낚아챈다. "내게 거짓말을 했나요? 당신은 실은 마법사인가요? 또는 혹시 마족? 대답해요!"~ */
  IF ~~ THEN REPLY #31418 /* ~"뭐가 잘못되었소?"~ */ JOURNAL #31420 /* ~쏜쿰 여사는 내게 시험 문제를 주었다... 두루마리에 마법의 언어로 쓰여진 하급 매료의 주문. 나는 아무런 훈련도 없이 그 의미를 해독할 수 있었다. 나는 전세에 마법을 읽는 방법을 배운 적이 있음에 틀림없다. ~ */ GOTO 45
  IF ~~ THEN REPLY #31419 /* ~"아니오... 적어도 내가 아는 한은. 뭐가 잘못되었소?"~ */ JOURNAL #31420 /* ~쏜쿰 여사는 내게 시험 문제를 주었다... 두루마리에 마법의 언어로 쓰여진 하급 매료의 주문. 나는 아무런 훈련도 없이 그 의미를 해독할 수 있었다. 나는 전세에 마법을 읽는 방법을 배운 적이 있음에 틀림없다. ~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #31421 /* ~"난 별 기대는 하지 않았었어요... 흠..." 그녀는 한참 동안 당신을 조심스럽게 살펴본다. "당신이 읽은 두루마리는 *마법*의 언어로 쓰여진 것이었어요. 당신이 메이지가 아니었다면, 그것들은 아무런 의미도 없는 뒤죽박죽이 된 심벌들로 보였을 거예요. 하지만 그것이 마치 애머리아의 하늘처럼 뚜렸하게 보였다면 당신은 그것을 이해한 거예요. 어떻게 이런 일이 가능하죠?"~ */
  IF ~~ THEN REPLY #31422 /* ~"모르겠소... 난 그냥 그것의 의미를 *알고* 있었소."~ */ GOTO 46
  IF ~~ THEN REPLY #31423 /* ~"한때는 알았으나 잊어버리고 있었던 것인지도 모르오. 그 심벌들을 본 것이 내 기억을 자극한 것 같소."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0 45.1
  SAY #31424 /* ~"아니면 당신에게는 천부적인 재능이 있는지도... 하지만 상관없어요." 그녀는 당신에게 미소를 짓는다. "당신은 몇 개월, 아니 몇 *년* 분의 내용을 벌써 배운 셈이요. 자... 당신은 이제 주문을 능숙하게 읽을 수가 있어요, 하지만 주문을 적을 책은 가지고 있나요?"~ */
  IF ~~ THEN REPLY #31425 /* ~"주문책? 아니오...".."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #31426 /* ~"그럼 저건 뭐죠?" 그녀는 당신 일지를 가리킨다.~ */
  IF ~~ THEN REPLY #31427 /* ~"이것은 내 일지요. 나는 그 안에 내가 만난 사람이나 일어난 일 등의 중요 사항들을 기록하고 있소." ~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31428 /* ~"그러면 당신 주문들도 그 책에 기입하도록 하세요." 그녀는 일지를 보며 눈살을 찌푸린다. "너덜너덜하긴 하지만... 주문책으로 쓸 수는 있겠지요." 그녀는 당신 일지를 보며 한참 동안 침묵을 지킨다. 그녀는 생각에 잠긴 듯하다, 그리고 그녀는 엄지손톱을 물어뜯기 시작한다.~ */
  IF ~~ THEN REPLY #31430 /* ~"쏜쿰 여사...?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #31432 /* ~그녀는 다시 당신을 똑바로 쳐다본다. "네? 오... 그렇죠. 자, 당신 주문들은 단지 이 책에 그냥 기록된 상태에서는 아무런 힘도 없는 단어들에 불과해요. 주문이 지닌 힘을 끌어내기 위해서는 그것들을 연구하고 *암기*하지 않으면 안 되요. 이를 위해서는 맑은 정신이 필요하기 때문에 사전에 휴식을 취하는 것이 바람직해요. 내 말을 이해하겠어요? ~ */
  IF ~~ THEN REPLY #31433 /* ~"그렇소, 계속하시오."~ */ GOTO 50
  IF ~~ THEN REPLY #31434 /* ~"나는 기초적인 사항들은 이해하고 있소, 쏜쿰 여사."~ */ GOTO 56
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #31435 /* ~"훌륭해요. 자, 수면을 취하기 *전에* 암기하고자 하는 주문을 선택하도록 하세요. 이는 지극히 중요한 일이에요. 이렇게 하면, 당신이 깨어났을 때 그 주문들은 마나로 충만된 채 새롭게 기억되어 언제라도 영창할 수 있게 될 거예요."~ */
  IF ~~ THEN REPLY #31436 /* ~"나는 주문을 몇 개나 영창할 수 있소?"~ */ GOTO 51
  IF ~~ THEN REPLY #31437 /* ~"나는 기초적인 사항들은 이해하고 있소, 쏜쿰 여사."~ */ GOTO 56
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #31438 /* ~"당신은 다시 휴식을 취할 때까지 고작해야 주문을 하나 또는 두 개만 사용할 수 있을 거예요... 당신은 초보 메이지라 머릿속에 그 이상의 마력을 담을 공간이 없어요. 그러니 마법에 더 익숙해질 때까지는 주문을 현명하게 사용하세요... 하지만 나는 마법에 숙달된 후에도 주문은 현명하게 사용하라고 당신에게 충고해 주고 싶어요. 당신이 경험을 더 쌓으면 그에 비례하여 주문을 암기할 수 있는 능력 역시 늘어날 거예요."~ */
  IF ~~ THEN REPLY #31439 /* ~"좋소, 계속하시오..."~ */ GOTO 52
  IF ~~ THEN REPLY #31440 /* ~"나는 이러한 기초적인 사항들은 이해하고 있소, 쏜쿰 여사."~ */ GOTO 56
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #31441 /* ~"당신은 당신이 암기한 주문만 사용할 수가 있어요. 그러니 예를 들어 당신이 두 개의 각기 다른 마법 아이템을 식별하고자 한다면 당신은 식별 주문을 몇 번 암기해야 하겠어요?"~ */
  IF ~~ THEN REPLY #31442 /* ~"한 번"~ */ GOTO 53
  IF ~~ THEN REPLY #31443 /* ~"두 번."~ */ GOTO 54
  IF ~~ THEN REPLY #31444 /* ~"어..."~ */ GOTO 53
  IF ~~ THEN REPLY #31445 /* ~"나는 이러한 기초적인 사항들은 이해하고 있소, 쏜쿰 여사."~ */ GOTO 56
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.2
  SAY #31446 /* ~"두 번! 같은 주문을 *두 번* 영창하려면 그 주문을 *두 번* 암기해야 해요."~ */
  IF ~~ THEN REPLY #31447 /* ~"이해하오. 어떻게 하면 주문을 더 입수할 수 있소?"~ */ JOURNAL #31449 /* ~쏜쿰 여사는 내게 마법의 기본에 대해 가르쳐 주었다. 그녀는 휴식을 취하기 전에 주문책을 펼쳐 기억하고자 하는 주문들을 선택해야 한다고 얘기해주었다. 만약 한 주문을 여러 번 사용하려면 그 주문을 원하는 회수만큼 기억해야만 한다. 휴식을 취하고 일어나면 주문은 기억되어 영창할 만반의 준비가 된다. 그녀는 내가 보다 능숙해질 때까지는 하루에 몇 가지 주문밖에는 사용할 수 없을 것이라고 말했다. 내게 주문을 영창하는 법을 가르쳐 줄 수 있는 다른 선생들을 시길에서 찾을 수 있을지도 모른다. ~ */ GOTO 55
  IF ~~ THEN REPLY #31448 /* ~"나는 이러한 기초적인 사항들은 이해하고 있소, 쏜쿰 여사."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY #31450 /* ~쏜쿰 여사는 미소를 지으며 고개를 끄덕인다. "그래요, 두 번, 맞아요."~ */
  IF ~~ THEN REPLY #31451 /* ~"어떻게 하면 주문을 더 입수할 수 있소?"~ */ JOURNAL #31449 /* ~쏜쿰 여사는 내게 마법의 기본에 대해 가르쳐 주었다. 그녀는 휴식을 취하기 전에 주문책을 펼쳐 기억하고자 하는 주문들을 선택해야 한다고 얘기해주었다. 만약 한 주문을 여러 번 사용하려면 그 주문을 원하는 회수만큼 기억해야만 한다. 휴식을 취하고 일어나면 주문은 기억되어 영창할 만반의 준비가 된다. 그녀는 내가 보다 능숙해질 때까지는 하루에 몇 가지 주문밖에는 사용할 수 없을 것이라고 말했다. 내게 주문을 영창하는 법을 가르쳐 줄 수 있는 다른 선생들을 시길에서 찾을 수 있을지도 모른다. ~ */ GOTO 55
  IF ~~ THEN REPLY #31452 /* ~"나는 기초적인 사항들은 이해하고 있소, 쏜쿰 여사."~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 53.0 54.0
  SAY #31453 /* ~"항상 더 배울 기회를 찾도록 하세요. 매우 평범한 사람들조차 당신에게 가르쳐 줄 수 있는 간단한 마법 한두 가지를 알고 있을지 모르니까요. 또한 처방전이나 책으로부터도 주문을 배울 수가 있고, 이들보다 한층 기묘한 아이템에 주문이 담겨 있는 경우도 있어요. 만약 이러한 것들을 발견하면 자세히 살펴보고 원하는 주문이라면 당신 주문책에 옮겨 적도록 하세요."~ */
  IF ~~ THEN REPLY #31454 /* ~"알았소."~ */ GOTO 56
  IF ~~ THEN REPLY #31455 /* ~"나는 이러한 기초적인 사항들은 이해하고 있소, 쏜쿰 여사."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 49.1 50.1 51.1 52.3 53.1 54.1 55.0 55.1
  SAY #31456 /* ~"그럼 이 두루마리들을 가져가세요... 당신의 마법에 대한 지식욕을 자극할 하급 마법들이에요." 그녀는 교활하게 미소짓는다. "다원 우주의 원리에 대해 더 깊이 이해할 수 있게 되면 이 곳으로 돌아오도록 하세요... 당신은 더 이상 이 곳에서 무료로 훈련을 받을 수가 없지만, 당신의 주문 영창 능력이 향상됨에 따라 나로부터 더욱 강력한 주문들을 구입할 수 있게 될 거예요."~ */
  IF ~~ THEN REPLY #31457 /* ~"고맙소, 쏜쿰 여사. 안녕히 계시오."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
  IF ~~ THEN REPLY #31458 /* ~"그럼 나중에 다시 오리다. 안녕히 계시오."~ */ DO ~GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,1,1,0)
GiveItemCreate("SPWI107",Protagonist,1,1,0)
GiveItemCreate("SPWI209",Protagonist,1,1,0)
~ EXIT
END
