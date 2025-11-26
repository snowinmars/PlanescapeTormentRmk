// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDEATHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDEATHAD~

IF ~  True()
~ THEN BEGIN 0 // from: 65.0
  SAY #2945 /* ~"어서 오시오, 시길의 주민 여러분! 저리에 앉아 내가 얘기할 '비밀'에 귀를 기울이시오!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ EXTERN ~DMORTE~ 299
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2946 /* ~귀를 기울인다.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32106 /* ~듣는 것을 멈추고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32107 /* ~그는 음울한 어조로 강연을 시작한다. "죽음. 그것이 인생이라는 여행의 끝에서 당신을 기다리고 있는 것이오." 그는 약간 기침을 한 후, 양쪽 눈썹을 극적으로 치켜 올리는 동시에 손을 흔든다. "죽음은 끝이 *아니오!* 시작일 뿐이오!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 300
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32108 /* ~계속 듣는다.~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32109 /* ~강의실에서 나간다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #32110 /* ~"왜냐하면 죽더라도 당신의 존재가 소멸하지는 않기 때문이오! 오히려 그 정 반대요! 아웃터 플레인이 당신을 그 품 안에 받아들일 거요! 그 곳에서는 당신 같은 사람이 생각하지조차 못했던... 새로운 삶이 기다리고 있소!" ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 301
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32111 /* ~계속 듣는다.~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32112 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #32113 /* ~"당신은 현생이라는 누더기 망토를 벗어 던지고 충실한 신자, 즉 청원자가 될 것이오! 아웃터 플레인의 청원자가 됨으로서 당신의 인생 여정은 진정한 시작을 맞이하게 되는 것이오!"~ */
  IF ~~ THEN REPLY #32115 /* ~계속 듣는다.~ */ GOTO 4
  IF ~~ THEN REPLY #32114 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32116 /* ~"만약 당신이 선량한 신사로 다른 사람들에게 자선과 호의를 베풀었다면, 당신이 죽은 후 마운트 실레스쳐의 살짝 눈 덮인 경사면이 당신을 맞아들일 것이오. 당신 영혼은 그 곳으로 가서, 애무하는 것처럼 부드러운 햇빛을 쪼이며, 그 곳의 황금과도 같은 아름다운 아침을 만끽하게 될 것이오..." 그는 꿈을 꾸는 듯한 표정으로 한숨을 쉰다.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 302
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32117 /* ~계속 듣는다.~ */ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32118 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #32119 /* ~"만약 당신이 출세하기 위해 남을 배신하고, 단지 자신의 목적을 위해 진실보다는 거짓을 말하고 남을 중상했다면, 모든 배반자들이 죽은 후에 가는 핏빛의 차원 카케리가 당신의 감옥이 될 것이오. 그 차원의 청원자로서 당신은 신뢰와 믿음이라고는 찾아볼 수도 없는, 거짓과 배신으로 가득 찬 삶을 살게 될 것이오."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 303
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32120 /* ~계속 듣는다.~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32121 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #32122 /* ~그는 앞뒤를 재빨리 둘러보며 허리를 구부린다. "그리고 *만약* 당신이 피에 굶주린 사악한 삶을 살며, 다른 사람들을 멸시하고, 상대를 가리지 않고 기분 내키는 대로 죽였다면...~ */
  IF ~~ THEN REPLY #32123 /* ~계속 듣는다.~ */ GOTO 7
  IF ~~ THEN REPLY #32124 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32125 /* ~"...당신은 마계의 차원들 중 한 곳 - 베이터, 또는 소용돌이치는 혼돈의 차원 어비스의 한 층에 떨어지게 될 것이오! 그러한 차원으로 가는 자들은 *뼛속*까지 악으로 물든 자들이오, 그리고 그들 중 대부분은 분별없는 잔인함과 고통의 제물이 되거나 소름 끼치는..." 그는 극적인 어조로 속삭인다. "...블러드 워에 끌려 나가게 되는 것이오." ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 304
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32126 /* ~계속 듣는다.~ */ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32127 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #32128 /* ~"당신이 사후에 어디로 가게 되든 간에 이 점만 알아 두시오. 당신은 *새* 삶을 시작하게 되는 것이오. 새 삶을, 내 동료 시길 시민들이여!" ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 305
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32129 /* ~계속 듣는다.~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32130 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #32131 /* ~"당신은 전생의 삶에 대한 기억에 대해 고만할 필요없이 새로운 삶을 시작하게 될 것이오. 당신의 영혼의 목표는 당신이 도달한 새로운 차원과 *하나*가 되는 것이오, 즉 그 차원 그 자체를 구성하고 있는 성분과 이상의 일부가 되는 것이오!"~ */
  IF ~~ THEN REPLY #32132 /* ~계속 듣는다.~ */ GOTO 10
  IF ~~ THEN REPLY #32133 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32134 /* ~"당신은 그 차원의 주민인 청원자가 될 것이오, 또는 보다 이상적으로, 그 차원을 구성하는 기본적인 성분의 일부가 될 수도 있소! 그것이야말로 *모든* 청원자들의 목표요! 이 목표를 달성하기 위해 당신은..." 그는 강조를 하려고 손뼉을 친다: "...반드시 *손뼉!* 당신의 *손뼉!* 이상을 *손뼉!* 고수하여야 *손뼉!* 하오!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 306
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32135 /* ~계속 듣는다.~ */ GOTO 11
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32136 /* ~강의실에서 나간다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #32137 /* ~"당신의 이념! 선 또는 악, 질서 또는 혼돈, 아니면 그 중간! 당신이 자신이 있는 차원의 속성에 근접해 감에 따라 당신의 여행은 종착역에 도달하게 되오... 그 차원의 일부가 됨으로서! 그것은 매우 영광스러운 존재의 방식이오, 내 동료 시길 시민들이여!" ~ */
  IF ~~ THEN REPLY #32138 /* ~계속 듣는다.~ */ GOTO 12
  IF ~~ THEN REPLY #32139 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #32140 /* ~"그것이 바로 *사후*에 당신을 기다리고 있는 것이오, 여러분! 삶을 사는 방식을 선택할 때 유의하시오, 그리고 사후에 당신을 기다리고 있는 것이 영원한 소멸이 아니라는 것을 기억하시오!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 307
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32141 /* ~계속 듣는다.~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32142 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #32143 /* ~"자, 이제부터 여러분들의 질문을 받도록 하겠소. 누구 없소?"~ */
  IF ~~ THEN REPLY #32144 /* ~"질문할 것이 하나 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32145 /* ~조용히 기다린다.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1 16.1
  SAY #32146 /* ~"질문이 없다면 일단 강의를 마치도록 하겠소... 나는 이 강당에서 계속 강의를 하게 될 것이오, 아마 지금부터 몇 년 후까지는... 나는 사후에 청원자가 된 *여러분들*을 만나게 될 것이오." ~ */
  IF ~~ THEN REPLY #32147 /* ~듣는 것을 멈추고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #32148 /* ~강사는 얼굴을 약간 찌푸리며 고개를 모트 쪽으로 돌린다. 그는 몸을 내밀어 누가 얘기를 했는지 보려고 한다. "질문이 있소? 살아 있는 사람으로부터 질문?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 308
END

IF ~~ THEN BEGIN 16 // from:
  SAY #32149 /* ~그는 당신에게 분수를 알도록 했다는 듯 고개를 끄덕인다. "좋소. 자 여러분들의 질문을 받도록 하겠소. 누구 없소?"~ */
  IF ~~ THEN REPLY #32150 /* ~"질문할 것이 하나 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32151 /* ~조용히 기다린다.~ */ GOTO 14
END

IF ~~ THEN BEGIN 17 // from: 13.0 16.0 19.1 20.0 22.0 23.0 24.2 25.2 26.2 27.0 28.1 29.2 30.1 31.3 32.1 35.0 36.0 37.0 38.2 39.2 40.1 42.1 43.0 44.0 45.1 46.1 52.0 53.0 54.0 55.4 56.0 57.0 58.0 59.0
  SAY #32152 /* ~그는 당신에게 계속하라고 손짓한다.~ */
  IF ~~ THEN REPLY #64426 /* ~"청원자가 무엇이오?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"청원자도 죽을 수가 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"왜 청원자는 기억을 잃는 거요?"~ */ GOTO 28
  IF ~~ THEN REPLY #32153 /* ~"무엇이 사후에 가는 차원을 결정하오?"~ */ GOTO 19
  IF ~~ THEN REPLY #32157 /* ~"죽을 수가 없는 사람의 경우에는?"~ */ GOTO 39
  IF ~~ THEN REPLY #32158 /* ~"내게 '속성'에 대해 설명하시오."~ */ GOTO 43
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #32159 /* ~"더스트맨은 *현생*이 바로 우리가 죽은 뒤에 오게 되는 세계라고 말하고 있소."~ */ GOTO 44
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32160 /* ~"당신 얘기가 옳다는 것을 증명하시오."~ */ GOTO 45
  IF ~~ THEN REPLY #32161 /* ~"블러드 워에 대해 얘기해주시오."~ */ GOTO 54
  IF ~~ THEN REPLY #32162 /* ~"나는 당신이 얘기한 차원들 중 하나에 대해서 물어보고 싶소."~ */ GOTO 55
  IF ~~ THEN REPLY #32163 /* ~"관두시오. 질문할 것이 없소." ~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.10 19.2 20.1 22.1 23.1 24.3 25.3 26.3 27.1 28.2 29.3 30.2 31.4 32.2 35.1 36.1 37.1 38.3 39.3 40.2 42.2 43.1 44.1 45.2 46.2 52.1 53.1 54.1 55.5 56.1 57.1 58.1 59.1 66.4
  SAY #32164 /* ~"질문이 없으면..."~ */
  IF ~  Global("Deaths_Adv","GLOBAL",1)
~ THEN REPLY #32165 /* ~떠날 준비를 한다.~ */ GOTO 60
  IF ~  Global("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32166 /* ~떠날 준비를 한다.~ */ GOTO 61
  IF ~  Global("Deaths_Adv","GLOBAL",3)
~ THEN REPLY #32167 /* ~떠날 준비를 한다.~ */ GOTO 62
END

IF ~~ THEN BEGIN 19 // from: 17.3 66.0
  SAY #32168 /* ~"물론 당신의 속성이오! 좋은 사람들은 천상계로 가고, *악한* 사람들은 마계에 떨어지게 되오..." 그는 눈알을 부라리며 마치 연극이라도 하는 듯이 가슴을 손으로 꽉 움켜쥔다. "신들이 그들의 영혼에 자비를 배풀기를." ~ */
  IF ~~ THEN REPLY #32169 /* ~"중립 속성의 사람들은 어디로 가오?"~ */ GOTO 20
  IF ~~ THEN REPLY #32170 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32171 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32172 /* ~그는 한쪽 눈썹을 치켜든다. "좋은 질문이오!" 그는 손가락 하나를 치켜들며 청중 쪽으로 돌아선다. "답은 다음과 같소: 선과 악, 질서와 혼돈 중 그 어느 쪽으로도 치우치지 않은 삶을 산 영혼은 바로 이 시길을 에워싸고 있는 대지(차원)인 *아웃랜즈*의 청원자가 되오. 그들은 다름 아닌 우리 도시의 하늘 밖에 있는 대지에 오게 되는 것이오. 시길을 지탱하는 스파이어도 바로 이 곳에 위치하고 있소."~ */
  IF ~~ THEN REPLY #32173 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32174 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 17.0 66.1
  SAY #32175 /* ~"청원자란 당신이 사후 새로운 차원에 도달하여 취하는 형태요. 청원자가 되면 과거의 삶과 기억을 버리고, 새로운 삶에만 전념하게 되오. 그리고 이 새로운 삶의 목표는...? 그는 미소를 지으며 당신 대답을 기다린다. ~ */
  IF ~~ THEN REPLY #32176 /* ~"차원과 융합하기 위해."~ */ GOTO 22
  IF ~~ THEN REPLY #32177 /* ~"당신 스스로의 질문에 대답하시오. 감히 날 시험할 생각은 하지 마시오."~ */ GOTO 23
  IF ~~ THEN REPLY #32178 /* ~"나에게 은혜를 베풀려는 척은 하지도 마라, 이 쓰레기."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32179 /* ~"좋소! 당신의 단단한 머리로도 내가 한 말들 중 적어도 일부는 이해할 수 있었던 모양이오!" 청중들이 웃음을 터트린다.~ */
  IF ~~ THEN REPLY #32180 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32182 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 23 // from: 21.1 21.2
  SAY #32183 /* ~"흥. 그럼 무지한 상태로 계속 계시구려."~ */
  IF ~~ THEN REPLY #32185 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32186 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 24 // from: 17.1 66.2
  SAY #32188 /* ~그는 당신 말을 듣고 좀 거북해 하는 것 같다. "그래... 그렇소."~ */
  IF ~~ THEN REPLY #32190 /* ~"어떻게?"~ */ GOTO 25
  IF ~~ THEN REPLY #32192 /* ~"그들이 죽으면 어떻게 되오?"~ */ GOTO 26
  IF ~~ THEN REPLY #32193 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32194 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1
  SAY #32197 /* ~그는 조금 더 거북해 보인다. "정상적인 방법으로는 그렇소."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 309
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32198 /* ~"그들이 죽으면 어떻게 되오?"~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32199 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32201 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.1
  SAY #32203 /* ~그는 조금 더 거북해 보인다. "차원과 융합을 하게 되오..."~ */
  IF ~~ THEN REPLY #32204 /* ~"만약 청원자가 자신의 차원 이외의 장소에서 죽으면?"~ */ GOTO 27
  IF ~~ THEN REPLY #32205 /* ~"그럼 그들은 어떻게 하면 죽을 수가 있소?"~ */ GOTO 25
  IF ~~ THEN REPLY #32207 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32208 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32209 /* ~그는 매우 거북해 하는 듯하다. "에... 그럼 그건 그의 인생의 끝이오... 하지만 자신의 고향 차원을 떠나길 원하는 청원자는 아무도 없소, 친구!" 그는 주변을 둘러본다, 그리고 자신이 함정에 빠졌다는 사실을 깨닫는다. "고향 차원 이외의 장소에서 죽을 경우, 어, 영원히 소멸하게 되니까."~ */
  IF ~~ THEN REPLY #32210 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32212 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 28 // from: 17.2 66.3
  SAY #32213 /* ~그는 한쪽 눈썹을 치켜 올린다. "실례지만 뭐라고 했소?"~ */
  IF ~~ THEN REPLY #32214 /* ~"난 *왜* 청원자들은 죽으면 기억을 잃는 거냐고 물었소."~ */ GOTO 29
  IF ~~ THEN REPLY #32216 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32217 /* ~"그럼 관두시오. 더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #32219 /* ~그는 거북해 하는 것 같다? "글쎄... 누가 기억과 같은 짐을 지길 원하겠소?" 청중들이 웅성거린다.~ */
  IF ~~ THEN REPLY #32220 /* ~"내가 원하오."~ */ GOTO 30
  IF ~~ THEN REPLY #32221 /* ~"하지만 *왜* 그들은 기억을 잃는 거요?"~ */ GOTO 31
  IF ~~ THEN REPLY #32222 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32223 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #32224 /* ~강사는 능글맞게 웃는다. "당신 몰골을 보니 무리도 아닌 것 같소." 청중들이 낄낄거린다. ~ */
  IF ~~ THEN REPLY #32225 /* ~"그래 *왜* 그들은 기억을 잃는 거요?"~ */ GOTO 31
  IF ~~ THEN REPLY #32226 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32227 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0
  SAY #32228 /* ~"내..." 그는 눈살을 찌푸린다, 그리고 뭔가 말을 하려다가 그만둔다. 잠시 후 그는 할 말 안 할 말을 조심스럽게 가려 가면서 얘기를 계속한다. "내 생각에 그건 새 차원에 도착했을 때 청원자의 영혼이 순수한 상태에서 다시 시작해야 하기 때문일 것이오."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32229 /* ~"하지만 인생 전반에 걸친 경험이 사후에 갈 차원을 결정한다면 왜 그럴 필요가 있는 거요?"~ */ GOTO 32
  IF ~~ THEN REPLY #32231 /* ~"그건 답이 되지 못하오."~ */ GOTO 33
  IF ~~ THEN REPLY #32232 /* ~"그건 끔찍스럽군. 마치 아주 질이 나쁜 농담 같소."~ */ GOTO 38
  IF ~~ THEN REPLY #32233 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32235 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 32 // from: 31.0 38.0
  SAY #32236 /* ~그는 매우 거북해 하는 것 같다. "글쎄... 나는..." 그는 잠시 멈춘다. "모르겠소."~ */
  IF ~~ THEN REPLY #32237 /* ~"그건 답이 되지 못하오."~ */ GOTO 33
  IF ~~ THEN REPLY #32238 /* ~"좋소... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32239 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0 38.1
  SAY #32240 /* ~그는 조금 화를 낸다. "당신에게 *더* 좋은 답이 있소, 친구? 그렇다면 우리와 그것을 나누지 않겠소?" 청중들은 당신을 쳐다본다.~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #32241 /* ~"어디서 언제 들었는지는 생각나지 않으나, 기억들이 '기억의 핵'으로서 애스트럴계를 떠돈다는 얘기는 들은 적이 있소."~ */ GOTO 34
  IF ~~ THEN REPLY #32242 /* ~"아니오..."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32243 /* ~청중들 중 한 사람이 외친다: "그의 말이 옳소!"

연사는 고개를 돌려 발언한 사람을 바라본다. "그가 옳을 수도 있소. 그렇다면 나는 다음과 같은 질문을 던지고 싶소. 평생 동안의 기억이 삶을 새로 사는 것보다 중요하오?"
~ */
  IF ~~ THEN REPLY #32244 /* ~진실: "그렇소."~ */ GOTO 35
  IF ~~ THEN REPLY #32245 /* ~진실: "아니오."~ */ GOTO 36
  IF ~~ THEN REPLY #32246 /* ~"모르겠소."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #32247 /* ~그는 화난 어조로 말한다: "그럼 답은 간단하구려. 그럼 아예 죽지를 마시오." 청중들이 킬킬거린다. ~ */
  IF ~~ THEN REPLY #32248 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32249 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #32250 /* ~그는 과장된 몸짓으로 고개를 반쯤 숙인다: "바로 그렇소!"~ */
  IF ~~ THEN REPLY #32251 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32252 /* ~"그런 것 같소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 37 // from: 34.2 41.1 47.1
  SAY #32253 /* ~그는 코웃음친다. "난 당신 답이 그런 것일 줄 이미 알고 있었소."~ */
  IF ~~ THEN REPLY #32254 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32255 /* ~"더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 38 // from: 31.2
  SAY #32256 /* ~"하지만 새로운 차원에서 기다리는 삶에 비하면 그건 사소한 것이오."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #32257 /* ~"하지만 인생 전반에 걸친 경험이 사후에 갈 차원을 결정한다면 왜 그럴 필요가 있는 거요?"~ */ GOTO 32
  IF ~~ THEN REPLY #32258 /* ~"그건 답이 되지 못하오."~ */ GOTO 33
  IF ~~ THEN REPLY #32259 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32260 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 39 // from: 17.4
  SAY #32261 /* ~그는 웃는다. "터무니없군! 모든 생명체는 죽기 마련이오. 신들조차 죽음을 피할 순 없소."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32262 /* ~"나는 죽을 수가 없소."~ */ GOTO 40
  IF ~~ THEN REPLY #32263 /* ~"하지만 죽을 수 없는 사람이 있다고 가정합시다."~ */ GOTO 42
  IF ~~ THEN REPLY #32264 /* ~"흠. 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32265 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 42.0
  SAY #32266 /* ~"오, 정말이오? 보시오, 여러분, 보기 드문 장관이오. 위대한 불사신들 중 한 분께서 우리 앞에 강림하셨소! 망극하옵니다, 불사신이시여!" 청중들이 웃음을 터뜨린다. ~ */
  IF ~~ THEN REPLY #32267 /* ~"난 그걸 증명할 수가 있소."~ */ GOTO 41
  IF ~~ THEN REPLY #32268 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32269 /* ~"관두시오. 더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #32270 /* ~"오, 부디 그렇게 하시오." 청중석에서 나는 웃음소리는 한층 커진다. "정말 굉장한 눈요기거리로군! 주목하시오, 여러분. 오늘 우리는 내 강의를 실제로 체험할 기회를 가지게 될 것 같소. 올라오시오, 불사신, 그리고 우리는 누가 옳고 누가 죽을 것인지 알게 될 것이오!"~ */
  IF ~~ THEN REPLY #32271 /* ~스스로를 죽인 후 다시 일어난다.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",1)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32272 /* ~"관두겠소."~ */ GOTO 37
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #32273 /* ~"내가 *강의한* 내용에 의거한다면, 그는 결코 아웃터 플레인에 도달하여 청원자가 될 수가 없소."~ */
  IF ~  GlobalLT("Deaths_Adv","GLOBAL",2)
~ THEN REPLY #32274 /* ~"난 죽을 수가 없소."~ */ GOTO 40
  IF ~~ THEN REPLY #32275 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32276 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 43 // from: 17.5
  SAY #32277 /* ~"내 설명이 부족했다면 사과하리다. '속성'이란 당신의 영적인 성향이오: 선 또는 악, 질서 또는 혼돈. 속성은 당신이 생각하고 행동하는 방식이오. 그리고 그것은 극히 중요하오! 당신이 삶을 사는 방식이 사후에 갈 곳에 결정하게 되오."~ */
  IF ~~ THEN REPLY #32278 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32279 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 44 // from: 17.6
  SAY #32280 /* ~연사는 조롱하듯이 낄낄 웃는다... 청중들 중 일부 역시 따라서 낄낄거린다. "더스트맨의 '철학'에 찬동하지 않는 청원자들은 수없이 많소, 친구, 그리고 그들 중에는 더스트맨이었던 사람들도 다수 있을 거요..."~ */
  IF ~~ THEN REPLY #32281 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32282 /* ~"내가 알고자 했던 건 그게 전부요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 45 // from: 17.7
  SAY #32283 /* ~"에?" 강사는 놀란 듯하다. "어떻게 내가 그렇게 할 수 있소?" ~ */
  IF ~~ THEN REPLY #32284 /* ~"당장 여기서 죽으시오."~ */ GOTO 46
  IF ~~ THEN REPLY #32285 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32286 /* ~"관두시오. 더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32287 /* ~청중들이 쥐죽은듯이 조용해진다. 무언의 압력을 느낀 연사는 침을 꿀꺽 삼킨다. "글쎄..." 그는 갑자기 능글맞게 웃는다. "당신이 먼저 하면 나도 따라하겠소." 청중들이 낄낄거린다.~ */
  IF ~~ THEN REPLY #32288 /* ~"좋소."~ */ GOTO 47
  IF ~~ THEN REPLY #32289 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32290 /* ~"관두시오. 더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32291 /* ~"좋소!" 연사의 얼굴이 도처럼 굳어진다, 그러나 잠시 후 다시 밝아진다. "연단으로 올라오시오, 친구!" 그는 미소를 지으며 청중들을 향한다. "정말 보기 드문 광경이오, 시길 시민 여러분! 오늘 - 오늘에 한해 - 우리는 어떻게 청원자가 되는가에 대한 시범을 보게 될 것이오."~ */
  IF ~~ THEN REPLY #32292 /* ~스스로를 죽인 후 다시 일어난다.~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("CW_Suicide_Reason","GLOBAL",2)
SetGlobal("Death_Lecture","GLOBAL",2)
~ GOTO 48
  IF ~~ THEN REPLY #32293 /* ~"관두겠소."~ */ GOTO 37
END

IF ~~ THEN BEGIN 48 // from: 41.0 47.0
  SAY #32294 /* ~그 광경을 보자 연사는 창백한 얼굴로 뒤로 한 걸음 물러선다. "신들이시여...!"~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32295 /* ~"이제는 당신이 스스로의 주장을 입증해야 공평하지 않겠소?"~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32296 /* ~"당신 차례요."~ */ GOTO 49
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32297 /* ~그를 바라보며 미소짓는다.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 48.2
  SAY #32298 /* ~"어..." 청중들은 뭐에 홀린 듯한 표정으로 바라본다. "그럼 이제..."~ */
  IF ~  Global("CW_Suicide_Reason","GLOBAL",1)
~ THEN REPLY #32299 /* ~"그럼 죽으시오. 여기서 당장. 당신 얘기가 진실이었음을 입증하시오. 청원자로서의 삶을 받아들이시오."~ */ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32300 /* ~허풍: "스스로 목숨을 끊으시오, 아니면 내가 대신 해줄 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_DA_1","GLOBALLaw",-1)
~ GOTO 50
  IF ~  Global("CW_Suicide_Reason","GLOBAL",2)
~ THEN REPLY #32301 /* ~진실: "스스로 목숨을 끊으시오, 아니면 내가 대신 해줄 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-1)
~ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2
  SAY #32302 /* ~그는 침을 꿀꺽 삼킨다. "이제... 에... 으음." 그는 힘없이 말한다. "허. 나는 아직은 죽고 싶은 생각이 없다는 사실을 고백해야겠소." ~ */
  IF ~~ THEN REPLY #32303 /* ~그를 죽인다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_DA_1","GLOBALGood",-2)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
SetGlobal("Death_Lecture","GLOBAL",4)
SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #32304 /* ~그를 죽이는 시늉을 하다가 그의 목 바로 앞에서 멈춘다.~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",3)
~ GOTO 51
  IF ~~ THEN REPLY #32305 /* ~"그래, 아웃터 플레인에서의 새롭고 위대한 삶이 당신이 말하던 것 만큼 훌륭하지는 않은 모양이지?"~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 52
  IF ~~ THEN REPLY #32306 /* ~"그럴 줄 알았다, 이 잘난 척하는 허풍선이 돌팔이야."~ */ DO ~SetGlobal("Deaths_Adv","GLOBAL",2)
~ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #32307 /* ~연사는 겁에 질려 움찔한다, 그리고 눈을 꼭 감고 날카로운 비명을 지른다... 그가 오줌을 쌈에 따라 가랑비가 내리는 것 같은 소리가 들린다. ~ */
  IF ~~ THEN REPLY #32308 /* ~"그래, 아웃터 플레인에서의 새롭고 위대한 삶이 당신이 말하던 것 만큼 훌륭하지는 않은 모양이지?"~ */ GOTO 52
  IF ~~ THEN REPLY #32309 /* ~"그럴 줄 알았다, 이 잘난 척하는 허풍선이 돌팔이야."~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.2 51.0
  SAY #32310 /* ~연사는 자신의 태도가 위선적이라는 것을 인식하고는 있으나 달리 행동할 용기는 없다. "그럴 수는 없을 것 같소..." 그는 재빨리 청중들의 눈치를 본다. "에... 적어도 *지금*은."~ */
  IF ~~ THEN REPLY #32311 /* ~"생각했던 대로군. 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32312 /* ~"내가 생각했던 대로군. 더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 53 // from: 50.3 51.1
  SAY #32313 /* ~"어... 그렇소." 연사는 겁을 먹은 듯하다, 그리고 그의 목소리는 패배감에 오그라든다. "으음... 그렇소."~ */
  IF ~~ THEN REPLY #32314 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32315 /* ~"더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 54 // from: 17.8
  SAY #32316 /* ~"아니, 그런 것도 모르시오, 오 무지하신 분이여? 바테주와 타나리 사이의 전쟁도 모르오? 그 전쟁에 대해 제대로 설명하려면 몇 세기는 걸릴 거요, 하지만 내겐 그럴 시간이 없소. 이 강의의 주제는 그것과 상관이 없으니 다른 사람에게 물어보시오."~ */
  IF ~~ THEN REPLY #32317 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32318 /* ~"더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 55 // from: 17.9
  SAY #32319 /* ~"오? 어느 것 말이오?"~ */
  IF ~~ THEN REPLY #32320 /* ~"어비스..."~ */ GOTO 56
  IF ~~ THEN REPLY #32321 /* ~"베이터..."~ */ GOTO 57
  IF ~~ THEN REPLY #32322 /* ~"카케리..."~ */ GOTO 58
  IF ~~ THEN REPLY #32323 /* ~"마운트 실레스쳐..."~ */ GOTO 59
  IF ~~ THEN REPLY #32324 /* ~"관두시오. 다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32325 /* ~"관두시오. 더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #32326 /* ~"사악과 혼돈이 창궐하는 육백 개가 넘는 층들로 구성된 차원이오. 사악한 타나리들의 고향이오." 그는 과장된 몸짓을 한다. "하지만 자세한 건 차원들에 대해 나보다 더 잘 아는 사람을 찾아서 물어보는 것이 좋을 거요." ~ */
  IF ~~ THEN REPLY #32327 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32328 /* ~"더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 57 // from: 55.1
  SAY #32329 /* ~"질서와 악에 의해 통제되는 아홉 개의 층으로 구성된 차원이오." 그는 낄낄거리며 과장된 몸짓을 한다. "사악한 바테주들의 고향이오. 일단 그들과 계약서에 서명을 하면 당신인 그들의 음모의 사슬에 영원히 묶이게 되오." 그는 미소짓는다. "하지만 자세한 건 차원들에 대해 나보다 더 잘 아는 사람을 찾아서 물어보는 것이 좋을 거요." ~ */
  IF ~~ THEN REPLY #32330 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32331 /* ~"더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #32332 /* ~"차갑고 잔혹하며, 핏빛으로 물든 감옥 차원이오. 그 곳은 배신자들과 거짓말쟁이들의 차원으로... 타이탄족이 올림포스에서 추방된 후 그 곳에 봉인되었다고 하오!" 그는 과장된 몸짓을 한다. "하지만 자세한 건 차원들에 대해 나보다 더 잘 아는 사람을 찾아서 물어보는 것이 좋을 거요." ~ */
  IF ~~ THEN REPLY #32333 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32334 /* ~"더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 59 // from: 55.3
  SAY #32335 /* ~"마운트 실레스쳐는 영원한 선과 신앙의 차원이오." 그는 기도를 하듯이 두 손을 꽉 쥔다. " 그 곳의 하늘에서는 디바들이 날아다니며, 아컨들이 신의와 고귀함으로 통치하고 있소... 선의 본보기와도 같은 차원이오!" 그는 미소짓는다. "하지만 자세한 건 차원들에 대해 나보다 더 잘 아는 사람을 찾아서 물어보는 것이 좋을 거요." ~ */
  IF ~~ THEN REPLY #32336 /* ~"다른 질문이 있소..."~ */ GOTO 17
  IF ~~ THEN REPLY #32337 /* ~"더 이상 질문할 것이 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 60 // from: 18.0
  SAY #32338 /* ~"...그럼 일단 강의를 마치도록 하겠소... 나는 이 강당에서 계속 강의를 하게 될 것이오, 아마 지금부터 몇 년 후까지는... 나는 사후에 청원자가 된 *여러분들*을 만나게 될 것이오." ~ */
  IF ~~ THEN REPLY #32339 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 18.1
  SAY #32340 /* ~그는 빨리 끝내려고 안달인 것 같다. "... 그럼 이 강의를 끝내도록 하겠소.. 음, 나는 이 강당에서 계속 강의를 하게 될 것이오, 그러니... 어... 아는 사람들에게 그렇게 말해주시오."~ */
  IF ~~ THEN REPLY #32341 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 18.2
  SAY #32342 /* ~그는 빨리 끝내려고 안달인 것 같다. "... 그럼 이 강의를 끝내도록 하겠소.. 음, 나는 이 강당에서 계속 강의를 하게 될 것이오, 그러니... 어... 아는 사람들에게 그렇게 말해주시오."~ */
  IF ~~ THEN REPLY #32343 /* ~듣는 것을 멈추고 떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #32344 /* ~청중석에서 누군가가 외친다. "물론이오! 그들이 당신이 바지를 적시는 꼴을 볼 수 있도록 말이오!" 방은 웃음의 도가니가 된다.~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #32345 /* ~"어... 흠..."~ */
  IF ~~ THEN REPLY #32346 /* ~떠난다.~ */ DO ~SetGlobal("Lecture_Death","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49450 /* ~이 땅딸막한 사내는 꽤나 거드름을 피우고 있다. 그는 지금 강의를 하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #49451 /* ~남아서 강의를 듣는다.~ */ GOTO 0
  IF ~~ THEN REPLY #49452 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #64424 /* ~"그럼 해보시오..."~ */
  IF ~~ THEN REPLY #64425 /* ~"무엇이 사람이 죽은 후에 갈 차원을 결정하오?"~ */ GOTO 19
  IF ~~ THEN REPLY #64426 /* ~"청원자가 무엇이오?"~ */ GOTO 21
  IF ~~ THEN REPLY #64427 /* ~"청원자도 죽을 수가 있소?"~ */ GOTO 24
  IF ~~ THEN REPLY #64428 /* ~"왜 청원자는 기억을 잃는 거요?"~ */ GOTO 28
  IF ~~ THEN REPLY #64429 /* ~"관두시오. 실은 질문할 것이 없소."~ */ GOTO 18
END
