// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRADINE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRADINE~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20209 /* ~여자는 당신을 보자 비명을 지른다. 그녀는 돌아서서 도망을 치는데, 그러자 그녀 목 주변의 문신이 가볍게 몸부림치는 것처럼 보인다. ~ */
  IF ~~ THEN REPLY #20210 /* ~"거기 가만히 계시오..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20211 /* ~그녀를 그냥 보내준다.~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #20212 /* ~당신을 다시 보게 되자 그녀는 얼굴을 찌푸린다. "그는 또 거절했군요, 그렇지 않나요? 그리고 당신은 정당하게 소유인 것을 빼앗으러 온 게 확실하군요."~ */
  IF ~~ THEN REPLY #20213 /* ~"정당하게 당신 소유? 당신에게는 그 이름과 번호를 지닐 권리가 없소. 당신은 그것을 훔쳤소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Radine_1","GLOBALLaw",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20214 /* ~"당신이 사는 데 번호는 필요가 없소. 하지만 그는 다르오. 설령 지금 당신에게는 상처가 되더라도 그것을 포기해야만 하오. 그것이 장기적으로는 당신들 두 사람 모두에게 득이 될 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Radine_1","GLOBALGood",1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20215 /* ~"순순히 내놓지 않으면 강제로 가져가도록 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #20216 /* ~"당신이 사는 데 그의 것과 같은 종류의 번호는 필요가 없소. 만약 스스로를 따뜻하게 유지하기 위해 번호가 필요하다면 당신만의 번호를 만드시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Radine_1","GLOBALLaw",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 2
  IF ~~ THEN REPLY #20217 /* ~"관두시오. 내가 신경을 쓸 가치도 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.3 9.1 13.1
  SAY #20218 /* ~"당신이 옳은 것 같아요. 난 정말 나쁜 사람이었어요. 더 이상 이걸 가지고 있을 수가 없어요. 자, 받으세요." 그녀는 목에서 물결치는 문신을 떼어내 당신에게 준다. 그러면서 그녀는 추위로 몸을 떤다. "그에게 그의 이름을 말해주세요. 그는 쿠'우 인이었고 앞으로도 그럴 거예요. 난 이만 실례하겠어요.~ */
  IF ~  PartyGoldGT(29)
~ THEN REPLY #20219 /* ~"당신 고생에 대한 대가로 돈을 좀 주리다. 이 돈으로 당신을 따뜻하게 해줄 걸 사시오."~ */ DO ~TakePartyGold(30)
IncrementGlobalOnceEx("GLOBALGood_Radine_2","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #20220 /* ~"고맙소. 질문할 것들이 몇 개 더 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #20221 /* ~"고맙소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 7.0 19.0
  SAY #20222 /* ~당신이 협박을 하자 그녀는 몸을 움츠린다. "그는 번호가 날 사악한 자들로부터 보호해 줄 거라고 했었는데 사실이 아닌 모양이군요. 그럼 이 염병할 것을 가지고 가버려요!" 그녀는 목에서 몸부림치는 문신을 떼어내는데, 이 때 적지 않은 양의 살점 역시 떨어져 나온다. 그녀는 그것을 당신에게 던지고 화급하게 도망친다. ~ */
  IF ~~ THEN REPLY #20223 /* ~그녀를 쫓는다.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20224 /* ~그녀를 그냥 보내준다.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #20225 /* ~"고마워요." 그녀는 돈을 주머니에 넣는다. 문신이 마력이 그녀를 떠난 순간부터 그녀는 더 단조로워 보인다. "그럼 나는 여길 떠나는 것이 좋을 것 같군요... 당신이 준 돈 덕분에 우리가 서로 더 좋은 상황에서 다시 만날 수 있었으면 좋겠어요."~ */
  IF ~~ THEN REPLY #20226 /* ~"그렇소. 안녕히 계시오, 래딘."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #20227 /* ~"더 이상 이름을 훔치지 마시오, 래딘. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #20228 /* ~그녀는 고개를 돌리고 발을 질질 끌면서 걸어간다. 그녀에게 신비한 분위기를 주었던 번호의 문신이 이제는 없는 탓인지 그녀에게는 생기가 없다. 당신이 그녀를 본 것은 그것이 마지막이었다. ~ */
  IF ~~ THEN REPLY #20229 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #20230 /* ~그녀는 돌아온 당신을 멍하니 쳐다본다, 그리고 나서 다시 정신을 차린다. 그러자 그녀의 목의 문신이 몸부림친다. "또 당신인가요? 난 이름과 번호를 돌려주지 않겠어요. 이 이름과 번호를 사용함으로서 내게 행운이 찾아왔어요. 나는 그가 새로운 이름과 번호를 살 수 있도록 상당한 액수의 돈을 지불할 용의가 있어요. 어떻게 생각하세요?"~ */
  IF ~~ THEN REPLY #20231 /* ~"얼마나 낼 용의가 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #20232 /* ~"그걸로는 충분하지 않소. 내게 그 이름과 번호를 주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #45386 /* ~"내가 당신으로부터 그걸 사면 어떻겠소?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 8.3
  SAY #20233 /* ~"동전 스무 닢은 어때요? 그 정도라면 그도 새로운 이름과 번호를 얻을 때까지 연명할 수 있을 거예요. 부탁이니까 가서 그에게 그게 그가 원하는 것인지 물어봐 주세요."~ */
  IF ~~ THEN REPLY #20234 /* ~"그냥 내게 그 이름과 번호를 주시오, 아니면 당신으로부터 강제로라도 찢어낼 테니. 날 믿으시오, 아마 당신은 그걸 원하지 않을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #20235 /* ~"좋소. 가서 그에게 물어보겠소. 그 전에 우선 내 질문에 대답을 해주시오."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #20236 /* ~"좋소. 가서 그에게 물어보겠소."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #45387 /* ~"내가 당신으로부터 그걸 사면 어떻겠소?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.1 9.3 10.2 11.2 12.1 13.2 14.1 15.0 16.1 17.0 19.1
  SAY #20237 /* ~"당신의 질문에 대한 답을 내가 가지고 있을 수도 있고 그렇지 않을 수도 있어요."~ */
  IF ~~ THEN REPLY #20238 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #20239 /* ~"이 곳에 대해 얘기해주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #20240 /* ~"그 문신에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  GlobalGT("KYName","GLOBAL",2)
~ THEN REPLY #20241 /* ~"당신이 얘기한 가격을 다시 말해주겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #20242 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 11.0
  SAY #20243 /* ~"나요? 이제 나는 이름이 두 개가 있어요, 하지만 당신에게는 그 중 하나만 보여주겠어요. 당신이 내 새 이름을 훔치는 건 원하지 않으니까. 헤헤!. 날 그냥 래딘이라고 부르세요. 다른 이름은 내가 꼭 쥐고 간직할 거니까."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20244 /* ~"그 이름의 원래 소유주가 자신의 이름과 번호를 돌려받고 싶어하고 있소. 그것들 없이 그는 죽을 것이오."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20245 /* ~"당신에게 힘들 거라는 건 나도 알지만 제발 그에게 그의 이름과 번호를 돌려줄 수는 없겠소?"~ */ DO ~AddexperienceParty(250)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20246 /* ~"이름이 두 개? 그것 참 멋지겠군."~ */ GOTO 13
  IF ~~ THEN REPLY #20247 /* ~"좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #20248 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.2 11.1
  SAY #20249 /* ~"이 꿈틀거리는 것 말이에요? 그건 식별 번호예요. 그건 내가 자신을 지탱해 줄 번호도 없이 추위에 떨고 있는 걸 보고 어떤 친절한 사람이 준 내 번호예요. 그게 생긴 이래로 난 전보다 훨씬 행복해요."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20250 /* ~"그 사람은 그것을 당장 돌려받기를 원하오."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20251 /* ~"흥미롭군. 그건 어떻게 효력을 발휘하오?"~ */ GOTO 14
  IF ~~ THEN REPLY #20252 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #20253 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1
  SAY #20254 /* ~"매장된 마을 말이에요? 괜찮은 곳이에요. 해부되는 시체의 악취, 지붕 위에 쌓이는 쓰레기, 그리고 쥐들이 늘 뛰어다니는 것만 견딜 수 있다면. 이름만 있고 당신을 보호해 줄 번호는 없다면 훨씬 더 춥고 견디기 힘든 곳일 거라는 건 틀림없어요."~ */
  IF ~~ THEN REPLY #20255 /* ~"당신 이름에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #20256 /* ~"그 번호에 대해 얘기해주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #20257 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #20258 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.0 14.0 16.0
  SAY #20259 /* ~그녀의 목소리가 날카로워진다. "그것들을 그에게 돌려줄 순 없어요! 그는 그것들을 내게 제공했고, 난 그것들을 간직하기로 한 것뿐이에요. 그는 *빌려줄* 뿐이라는 말은 하지 않았고, 돌려 받아야 한다는 얘기도 하지 않았어요! 가서 그에게 전하라고요! 만약 그가 그토록 이름을 필요로 한다면 내 이름을 가지라고 하세요... '래딘'이라는 이름은 누구에게도 좋은 이름이에요!"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20260 /* ~"당신도 그 이름에 만족하지 않았는데 어떻게 그가 만족할 수 있겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #20261 /* ~"그에게 전하리다. 그 밖의 질문에 대답해주시오..."~ */ GOTO 8
  IF ~~ THEN REPLY #20262 /* ~"그에게 전하리다. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #45389 /* ~"내가 당신으로부터 그걸 사면 어떻겠소?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 13 // from: 9.2
  SAY #20263 /* ~"그래, 그건 그래요."~ */
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20264 /* ~"그 이름의 원래 소유주가 자신의 이름과 번호를 돌려받고 싶어하고 있소. 그것들 없이 그는 죽을 것이오."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20265 /* ~"당신에게 힘들 거라는 건 나도 알지만 제발 그에게 그의 이름과 번호를 돌려줄 수는 없겠소?"~ */ DO ~AddexperienceParty(250)
SetGlobal("KYName","GLOBAL",6)
GiveItemCreate("KYName",Protagonist,1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #20266 /* ~"그 밖의 질문에 대답해줄 수 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #20267 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #20268 /* ~"번호는 안도감을 주고, 안도감은 따뜻함을, 그리고 따뜻함은 다시 안락함을 주죠. 당신이 번호의 힘에 경의를 표하는 한 그것은 당신에게 이 모든 것들을 줄 수가 있어요."~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20269 /* ~"당신에 그 번호를 준 사람이 이제는 그걸 돌려받기를 원하고 있소."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20270 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #20271 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #20272 /* ~"어떤 이름을 가지고 처음부터 시작하는 것과 다른 사람의 이름을 가지는 건 하늘과 땅 차이죠. 오래된 이름을 배경으로 한 새로운 자세는 모든 것을 바꿀 수가 있어요. 내가 이 이름을 가지고 어떤 일을 했는지 보이나요 ?"~ */
  IF ~~ THEN REPLY #20273 /* ~"그에게 애기를 해보겠소. 그 전에 먼저 내 질문에 좀 대답해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #20274 /* ~"좋소. 그에게 애기를 해보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from:
  SAY #20275 /* ~그녀는 여전히 꿈꾸는 듯한 눈으로 어딘가를 바라보고 있다, 하지만 이번에는 몽상 속에 그렇게 깊이 빠지지는 않은 것 같다. 그녀는 전만큼 당신 때문에 놀라지는 않은 듯하다. "또 당신이에요?"~ */
  IF ~  Global("KYName","GLOBAL",1)
~ THEN REPLY #20276 /* ~"당신이 래딘이오? 당신에게 이름을 빼앗긴 사람이 그것을 당장 돌려받기를 원하고 있소."~ */ DO ~SetGlobal("KYName","GLOBAL",2)
~ GOTO 12
  IF ~~ THEN REPLY #20277 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #20278 /* ~"아니, 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #20279 /* ~주름진 얼굴을 하고 칙칙한 옷을 걸친 여자가 보인다. 그녀의 눈은 꿈을 꾸고 있는 듯하며, 새로운 삶이라도 얻은 듯 그녀의 피부 아래로부터는 새로운 활력이 솟아나는 것 같다. 그녀의 목 주위에는 특수한 패턴의 문신이 있다. 당신이 말을 걸자 그녀는 깜짝 놀란다. "에? 뭘 원하죠?" ~ */
  IF ~~ THEN REPLY #20280 /* ~"난 몇 가지 질문을 하고 싶었을 뿐이오..."~ */ GOTO 8
  IF ~~ THEN REPLY #20281 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 7.3 12.3
  SAY #45388 /* ~그녀는 미친 사람이라도 보는 듯한 눈으로 당신을 쳐다본다. "완전히 돌았어요? 당연히 내 이름은 팔 수가 없어요!"~ */
  IF ~~ THEN REPLY #45391 /* ~"그건 왜요?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #45390 /* ~"왜냐하면 그건 내 이름이기 때문이에요! 이름을 파는 사람이 어디 있어요!"~ */
  IF ~~ THEN REPLY #45392 /* ~"그냥 내게 그 이름과 번호를 주시오, 아니면 당신으로부터 강제로라도 찢어낼 테니. 날 믿으시오, 아마 당신은 그걸 원하지 않을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Radine_1","GLOBALGood",-1)
GiveItemCreate("KYName",Protagonist,0,0,0)
SetGlobal("KYName","GLOBAL",6)
~ GOTO 3
  IF ~~ THEN REPLY #45393 /* ~"좋소. 가서 그에게 물어보겠소. 우선 내 질문에 대답해 주시오."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ GOTO 8
  IF ~~ THEN REPLY #45394 /* ~"좋소. 가서 그에게 물어보겠소."~ */ DO ~SetGlobal("KYName","GLOBAL",4)
~ EXIT
END
