// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIGNC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIGNC~

IF ~  Global("Diligence","GLOBAL",0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~이 초로의 엄격하게 생긴 여성은 명백히 어디론가 가는 중이다. 당신이 다가오는 것을 눈치채자 그녀는 입을 꽉 다물고 눈살을 찌푸린 채 비난하는 듯한 표정으로 당신을 살펴본다. ~ */
  IF ~~ THEN REPLY #29200 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Diligence","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #29201 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29167 /* ~여자는 정중하게 인사한다, 하지만 그녀의 어조는 얼음처럼 차갑다: "그래, 뭐지요? 그리고 말조심하도록 하세요. 나는 이 구역의 4급 재판관인 '근면'이니까요."~ */
  IF ~~ THEN REPLY #29202 /* ~"당신이 *누구*라고?"~ */ GOTO 14
  IF ~~ THEN REPLY #29203 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #29204 /* ~"내 용모에 무슨 문제라도 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #29205 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 14.1
  SAY #29168 /* ~"물론 그러리라고 생각했어요! 만약 복장규제 법령이 통과되었더라면 당신과 같은 부류의 사람들이 당신처럼 반쯤 벌거벗은 더러운 모습으로 어슬렁거리고 다니는 것은 결코 허용되지 않았을 거예요..."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29206 /* ~"미안하지만 난 꽤 깨끗한 편이오, 그리고... 당신에게 무례를 범할 생각은 없소, 부인... 하지만 문화권에 따라서는 *당신* 옷을 불쾌하게 느낄 수도 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #29207 /* ~"당신은 사람을 용모만 보고 성급하게 판단하는군, 그렇지 않소?"~ */ GOTO 9
  IF ~~ THEN REPLY #29208 /* ~"이 패션은 벌통에서 대유행 중이오. 당신도 한 번 입어 보시오, 당신에게 잘 어울릴 것 같소. ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #29209 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 15
  IF ~~ THEN REPLY #29210 /* ~"흠... 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 3 // from: 2.0 9.0 13.0
  SAY #29169 /* ~그녀는 회의적인 눈초리로 당신을 살펴본 후 고개를 끄덕인다. "당신 말씀도 일리가 있어요... 하지만 당신도 자신의 용모가 상당히 험악하다는 건 부정하지 못할 거예요."~ */
  IF ~~ THEN REPLY #29211 /* ~"내 용모는 내 환경과 힘든 삶의 산물이오, 부인, 그러니 그건 내 책임이 아니오."~ */ GOTO 4
  IF ~~ THEN REPLY #29212 /* ~"난 그건 할 수 없소. 어쨌든 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #29170 /* ~"아, 하지만 당신은 그렇게 해야만 해요! 모든 실패를 자신의 과거와 주변 환경의 탓으로 돌리는 건 쉬운 일이에요, 하지만 그래선 안돼요! 당신의 태도나 몸가짐을 볼 때 당신은 제대로 교육을 받은 분 같아요. 하지만 그럼에도 당신은 무의미한 폭력과 방황으로 인생을 허비하고 있는 듯하군요. 거리에서 피로 손을 더럽히는 방랑자 생활을 청산하고 시길에 정착하여 시에 기여할 수 있는 시민이 되지 않겠어요?"~ */
  IF ~~ THEN REPLY #29213 /* ~"분명히 말하겠지만 내게는 선택의 여지가 없었소."~ */ GOTO 5
  IF ~~ THEN REPLY #29214 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 18.0 25.0
  SAY #29171 /* ~"오?어떻게 그렇죠?" 그녀의 표정에서 차가움이 사라지고 대신 호기심으로 가득 찬다. ~ */
  IF ~~ THEN REPLY #29215 /* ~"그건 설명하기가 어렵소..."~ */ GOTO 6
  IF ~~ THEN REPLY #29216 /* ~당신의 내력을... 아는 한도 내에서 그녀에게 들려준다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29217 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29172 /* ~"그렇지만 그렇게 하라고 권하고 싶군요."~ */
  IF ~~ THEN REPLY #29218 /* ~당신의 내력을... 아는 한도 내에서 그녀에게 들려준다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~~ THEN REPLY #29219 /* ~"관두는 것이 좋을 것 같소, 그건 개인적인 문제니까... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #29173 /* ~당신은 그녀에게 당신 얘기를 끝까지 들려준다.

근면 부인은 충격을 받은 듯하다. "그건... 정말 놀라운 얘기로군요."
~ */
  IF ~~ THEN REPLY #29220 /* ~"그것이 한낱 이야기에 불과했다면 얼마나 좋았겠소. 그건 내 삶이며 내게는 그걸 입증할 흉터도 있소."~ */ DO ~SetGlobal("Diligence","GLOBAL",3)
~ GOTO 8
  IF ~~ THEN REPLY #29221 /* ~"그렇지 않소? 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29174 /* ~"그래요... 정말 그렇군요." 그녀는 가볍게 미소짓는다... 당신은 그녀도 미소를 지을 수 있다는 사실을 지금까지는 상상도 하지 못했다. "당신이 추구하는 일에 행운이 있기를. 당신이 자신을 되찾기를 기원하겠어요."~ */
  IF ~~ THEN REPLY #29222 /* ~"고맙소. 질문할 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #29223 /* ~"고맙소. 안녕히 계시오, 근면 부인."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 13.1
  SAY #29175 /* ~"이 도시를 어슬렁거리면서 만나는 사람마다 붙잡고 질문을 퍼부으며, 툭하면 비위에 거슬리는 사람들과 죽을 때까지 싸우는 주제에 당신은 스스로가 방랑자가 아니라는 건가요?"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29224 /* ~"그것만 접어둔다면 난 꽤 깨끗한 편이오, 그리고... 당신에게 무례를 범할 생각은 없소... 하지만 문화권에 따라서는 *당신* 옷을 불쾌하게 느낄 수도 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #29225 /* ~"어... 글쎄..."~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #29226 /* ~거짓말: "그건 사실이 아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
SetGlobal("Diligence","GLOBAL",2)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.2 19.2 21.2
  SAY #29176 /* ~근면 부인은 차가운 눈초리로 당신을 쳐다본다. "당신은 내게 거짓말을 하고 있군요. 난 당신에게 내 시간을 낭비하지 않겠어요. 만약 당신이 내게 또 말을 걸거나, 다시 내 가까이에 오면 즉시 경비병을 부르겠어요. 이제 그만 가보세요."~ */
  IF ~~ THEN REPLY #29227 /* ~"하지만..."~ */ GOTO 11
  IF ~~ THEN REPLY #29228 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 16.0 31.1
  SAY #29177 /* ~"경비병!"~ */
  IF ~~ THEN REPLY #29229 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29230 /* ~누가 도착하기 전에 떠난다.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #29178 /* ~그녀의 입술 모양으로부터 그녀가 당신을 조소하고 있다는 것을 희미하게나마 읽을 수가 있다. "나는 사람을 성급하게 판단하죠, 재판관이 내 직업이니까. 난 더 이상 당신에게 내 시간을 낭비하지 않겠어요. 만약 당신이 내게 또 말을 걸거나, 다시 내 가까이에 오면 즉시 경비병을 부르겠어요. 이제 그만 가보세요."~ */
  IF ~~ THEN REPLY #29231 /* ~"하지만..."~ */ GOTO 11
  IF ~~ THEN REPLY #29232 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.2
  SAY #29179 /* ~그녀는 눈을 더욱 가늘게 뜬다. "날 희롱할 생각은 마세요. 난 그런 건 참을 수가 없으니까요. 내게 뭘 원하는지 말해주시겠어요?" ~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29233 /* ~"내 잘못을 용서하시오, 부인. 하지만 진실을 말하자면 난 꽤 깨끗한 편이오, 그리고... 당신에게 무례를 범할 생각은 없소, 부인... 하지만 문화권에 따라서는 *당신* 옷을 불쾌하게 느낄 수도 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #29234 /* ~당신의 내력을... 아는 한도 내에서 그녀에게 들려준다.~ */ GOTO 9
  IF ~~ THEN REPLY #29235 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #29236 /* ~"흠... 이만 실례해야겠소. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #29180 /* ~근면 부인은 약간 역겹다는 표정으로 당신을 그냥 바라만 본다.~ */
  IF ~~ THEN REPLY #29237 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #29238 /* ~"내 용모에 무슨 문제라도 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #29239 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 1.1 2.3 13.2 14.0 30.1
  SAY #29181 /* ~근면 부인은 거북하게 웃는다. "난 동전 몇 푼을 받고 지나가는 사람의 질문에 대답을 해주는 관광 가이드가 아니에요. 내겐 중대한 공무가 있으니 다른 사람을 찾아서 물어보도록 하세요."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29240 /* ~"나는 당신이... 가이드라고는 생각하지 않았소. 오히려 당신은 매우 박식한 인물로 보였고, 그래서 나는 당신이 날 도와줄 수 있기를 기대했었소."~ */ GOTO 17
  IF ~~ THEN REPLY #29241 /* ~"그럼 딱 한 가지만 물어봅시다."~ */ DO ~SetGlobal("Diligence","GLOBAL",2)
~ GOTO 16
  IF ~~ THEN REPLY #29242 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29182 /* ~"하나도 없어요. 이제 날 그만 내버려 두세요! 만약 당신이 내게 또 말을 걸거나, 다시 내 가까이에 오면 즉시 경비병을 부르겠어요."~ */
  IF ~~ THEN REPLY #29243 /* ~"하지만..."~ */ GOTO 11
  IF ~~ THEN REPLY #29244 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0
  SAY #29183 /* ~"마찬가지예요. 내게는 당신 질문에 대답할 시간이 없어요."~ */
  IF ~~ THEN REPLY #29245 /* ~"그럼 사과하리다, 부인, 그리고 날 위해 시간을 내주어 고맙소. 안녕히 계시오."~ */ GOTO 18
  IF ~~ THEN REPLY #29246 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29184 /* ~"잠깐 기다리세요... 당신의 태도나 몸가짐을 볼 때 당신은 제대로 교육을 받은 분 같아요. 하지만 그럼에도 당신은 무의미한 폭력과 방황으로 인생을 허비하고 있는 듯하군요. 거리에서 피로 손을 더럽히는 방랑자 생활을 청산하고 시길에 정착하여 시에 기여할 수 있는 시민이 되지 않겠어요?"~ */
  IF ~~ THEN REPLY #29266 /* ~"분명히 말하겠지만 내게는 선택의 여지가 없었소."~ */ GOTO 5
  IF ~~ THEN REPLY #29267 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.4 13.3 14.2
  SAY #29185 /* ~"그렇게 성급하게 굴지 마세요... 잠깐!" 그녀는 눈을 가늘게 뜨고 당신을 본다. "당신은 누구죠?"~ */
  IF ~~ THEN REPLY #29268 /* ~"모르... 겠소."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29269 /* ~거짓말: "내 이름은 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29270 /* ~거짓말: "내 이름은 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #29271 /* ~"당신과는 상관없는 일이오."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #29186 /* ~"흠. 알았어요, '아단.' 안녕히 가세요."~ */
  IF ~~ THEN REPLY #29272 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.3
  SAY #29187 /* ~"당신은 아무런 이유도 없이 거리에서 말을 걸고서는 당신의 존재 그 자체로 내게 고통을 주었어요. 그러고 나서는 *뻔뻔스럽게* 내가 상관할 바가 아니라는 건가요? 어림없어요!"~ */
  IF ~~ THEN REPLY #29273 /* ~"모르... 겠소."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #29274 /* ~거짓말: "내 이름은 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #29275 /* ~거짓말: "내 이름은 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Diligence_2","GLOBALLaw",-1)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #29188 /* ~"자, 그렇게 쉽게 빠져나갈 수 있으라고는 당신도 생각하지 않지요? 당신 이름을 당장 말하세요!"~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29276 /* ~"이건 상당히 혼란스런 상황이오, 따라서 당신이 이 문제에 대해 인내심을 가져 주기를 바라겠소. 솔직히 말해 난 내 이름을 모르오. 나는 자신에 대한 기억을 잃어버렸소."~ */ GOTO 24
  IF ~~ THEN REPLY #29277 /* ~"나는 정말 모르오. 난 내 기억을 잃어버렸소."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #29189 /* ~그녀는 불쾌한 표정으로 당신을 조용히 응시한다. 마침내 그녀가 입을 연다. "좋아요. 떠나세요, 그리고 말썽에 말려들지 않도록 조심하세요."~ */
  IF ~~ THEN REPLY #29278 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #29190 /* ~"당신은 단어를 매우 신중하게 선택해서 말을 하는군요, 하지만 그 내용은 광기 그 자체예요." 그녀는 눈살을 찌푸린다 "하지만 당신이 기억을 잃었다는 게 사실인가요? 자 솔직히 말해보세요, 그리고 할 말과 안 할 말을 가려서 하도록 하세요."~ */
  IF ~~ THEN REPLY #29279 /* ~"맹세코 진실이오, 부인."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0 31.0
  SAY #29191 /* ~잠시 후 그녀는 참을 수 없다는 듯 크게 한숨을 내쉰다. "당신의 태도나 몸가짐을 볼 때 당신은 제대로 교육을 받은 분 같아요. 하지만 그럼에도 당신은 무의미한 폭력과 방황으로 인생을 허비하고 있는 듯하군요. 거리에서 피로 손을 더럽히는 방랑자 생활을 청산하고 시길에 정착하여 시에 기여할 수 있는 시민이 되지 않겠어요?"~ */
  IF ~~ THEN REPLY #29280 /* ~"분명히 말하겠지만 내게는 선택의 여지가 없었소."~ */ GOTO 5
  IF ~~ THEN REPLY #29281 /* ~"생각해 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 8.0 32.0
  SAY #29192 /* ~그녀는 고개를 젓는다. "미안하지만 나는 바쁜 여자예요. 나는 4급 재판관으로서의 책무 때문에 당신 질문에 답해줄 시간이 없어요. 하지만 다른 시민들이 당신을 도와줄 수 있을 거예요."~ */
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29282 /* ~"부인, 당신이 가기 전에 부탁 한 가지만 해도 되겠소?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29283 /* ~"그럼 안녕히 계시오, 근면 부인."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 32.1
  SAY #29193 /* ~그녀는 호기심에 찬 표정으로 당신을 바라보나 아무 말도 하지 않는다. ~ */
  IF ~~ THEN REPLY #29284 /* ~"나는 방황하면서 이 지역 주민들의 일부를 화나게 만든 것 같소..."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #29194 /* ~그녀는 당신 대신 당신 문장을 끝내 준다: "그래서 하모니움의 주목을 받게 된 것이겠지요? 그리고 지금 당신은 그들이 당신을 발견하지는 않을까 걱정하는 거죠?"~ */
  IF ~~ THEN REPLY #29285 /* ~"그렇소, 부인.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",-5)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29195 /* ~그녀는 고개를 젓는다, 그리고 장난꾸러기 어린애라도 보는 표정으로 당신을 보며 혀를 찬다. "내 힘이 닿는 데까지 노력을 해지요, 하지만 앞으로는 그런 분쟁을 일으키지 않도록 조심하세요."~ */
  IF ~~ THEN REPLY #29286 /* ~"대단히 감사하오, 근면 부인. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",1)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 30 // from:
  SAY #29196 /* ~근면 부인은 당신이 다가가자 눈살을 찌푸린다. "당신은 낯이 익군요..." 그리고 그녀의 얼굴은 말린 자두처럼 한층 더 일그러진다. "그래... 이제 당신을 기억하겠어요."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29287 /* ~"부인... 지난 번 우리가 만났을 때 내가 결례를 범한 것 같소. 부디 내 용서를 받아주시오."~ */ GOTO 25
  IF ~~ THEN REPLY #29288 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #29289 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 31 // from:
  SAY #29197 /* ~근면 부인은 못 볼 것을 보았다는 표정으로 당신을 쳐다본다. "내가 당신에게 내 주변에는 얼씬도 하지 말라고 말하지 않았나요? 나는 경비병을 부르겠다고 분명히 경고했어요..."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #29290 /* ~"근면 부인... 기다려 주시오, 부탁하리다. 지난 번 우리가 만났을 때 내가 결례를 범한 것 같소. 부디 내 용서를 받아주시오."~ */ GOTO 25
  IF ~~ THEN REPLY #29291 /* ~"대신 물어볼 것들이 좀 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #29292 /* ~"그럼 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Diligence","GLOBAL",2)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 32 // from:
  SAY #29198 /* ~당신이 다가가자 근면 부인은 인사를 한다. "다시 만나 반가워요."~ */
  IF ~~ THEN REPLY #29293 /* ~"만나서 반갑소, 근면 부인. 질문할 것들이 좀 있소."~ */ GOTO 26
  IF ~  BitCheck("0600_Status","AR0600",BIT10)
GlobalLT("Diligence","GLOBAL",4)
~ THEN REPLY #29294 /* ~"만나서 반갑소, 부인. 당신에게 부탁 한 가지만 해도 되겠소?"~ */ DO ~SetGlobal("Diligence","GLOBAL",4)
~ GOTO 27
  IF ~~ THEN REPLY #29295 /* ~"그냥 지나가던 중이었소. 안녕히 계시오, 근면 부인."~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 33 // from:
  SAY #29199 /* ~여자는 당신을 보자 놀라서 뒤로 물러선다. "당신처럼 악명 높은 자가 감히 이 구역의 4급 재판관에게 접근하다니 당신은 미쳤군요! 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #29296 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #29297 /* ~누가 도착하기 전에 떠난다.~ */ DO ~SetGlobal("Call_MK","GLOBAL",1)
Enemy()
Help()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END
