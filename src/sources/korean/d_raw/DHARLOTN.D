// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1809 /* ~꽉 끼는 가죽 보디스와 레깅스를 입은, 피곤한 기색이 역력한 여자가 보인다. 싸구려 향수 냄새가 그녀의 몸을 감싸고 있으며, 얼굴은 투박한 화장으로 뒤덮여 있다. 그녀는 당신을 보자 미소를 짓는다. "나랑 잠시 얘기를 나누는 건 어때요, 자기?"~ */
  IF ~~ THEN REPLY #7190 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #7191 /* ~그냥 지나간다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1810 /* ~여자는 수줍은 듯 당신을 바라본다. "당신은 뭔가를 *잃어버린* 사람처럼 보이는군요. 아마 내가 당신이 잃은 것을 찾도록 도울 수 있을지도 몰라요." 그녀는 가볍게 웃는다.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #7192 /* ~"오?"~ */ EXTERN ~DMORTE~ 37
  IF ~  Global("Journal","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7193 /* ~"나는 일지를 잃어버렸소."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7194 /* ~아마 당신은 내가 잃어버리고 있던 것을 찾는 일을 도울 수 있을지도 모르오."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7195 /* ~"실은 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7196 /* ~"오늘은 사양하겠소,고맙소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #1812 /* ~"에?" 그녀는혼란스러운 듯하다. "무슨 말을 하는 거죠?"~ */
  IF ~~ THEN REPLY #7197 /* ~"일지에 대해서는 신경 쓰지 마시오. 아마 당신은 내가 *정말로* 잃어버리고 있던 것을 찾는 일을 도울 수 있을지도 모르오."~ */ GOTO 3
  IF ~~ THEN REPLY #7198 /* ~"아무 것도 잃어버린 건 없지만 질문할 것들은 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7199 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #1813 /* ~그녀의 어조는 사무적이 된다. "그래요, 자기, 구전을 주겠다면 도울 수도 있죠."~ */
  IF ~~ THEN REPLY #7200 /* ~"알겠소. 얼마면 되겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #7201 /* ~"그럼 관두시오. 물어볼 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #7202 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #1814 /* ~"당신이 잃어버린 것을 *흘깃* 보는 데는 동전 몇 닢, 그리고 잃어버린 것을 실제로 찾는 데는 열 닢이에요."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7203 /* ~"좋소."~ */ DO ~TakePartyGold(10)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #7204 /* ~"관두시오. 대신 물어볼 것들이 좀 있소..."~ */ GOTO 9
  IF ~  PartyGoldGT(9)
!NearbyDialog("DMorte")
~ THEN REPLY #7205 /* ~"관두시오. 내가 찾고자 하는 것은 스스로의 힘으로 찾도록 하겠소. 어쨌든 고맙소."~ */ GOTO 11
  IF ~  PartyGoldLT(10)
~ THEN REPLY #7206 /* ~"관두시오. 내가 찾고자 하는 것은 스스로의 힘으로 찾도록 하겠소. 어쨌든 고맙소."~ */ GOTO 6
  IF ~  PartyGoldGT(9)
NearbyDialog("DMorte")
Global("Morte_Harlot_Quip_1","GLOBAL",0)
~ THEN REPLY #7207 /* ~"관두시오. 내가 찾고자 하는 것은 스스로의 힘으로 찾도록 하겠소. 어쨌든 고맙소."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 38
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #1815 /* ~"당신은 자신이 잃어버린 걸 찾은 것 같군요. 그럼 나와 함께 오세요, 자기."~ */
  IF ~  InParty("Annah")
NearbyDialog("DAnnah")
~ THEN REPLY #7208 /* ~그녀를 따라간다...~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 49
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #7211 /* ~그녀를 따라간다...~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 6
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7212 /* ~그녀를 따라간다...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  !InParty("Annah")
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~그녀를 따라간다...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~그녀를 따라간다...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #1816 /* ~여자는 웃는다. "돈이 모자란다고요? 걱정할 것 없어요. 나중에 돈이 생기면 다시 오세요."~ */
  IF ~~ THEN REPLY #7213 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #1817 /* ~여자는 말참견을 한다. "미미르나... 다른 기형의 경우에는 요금이 두 배예요."~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #7214 /* ~"어... '미미르?'"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 129
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7215 /* ~"알겠소. 너무 그렇게 고민하지 말게, 모트. 그녀 꼴을 보니 난 자네를 두 번째 죽음로부터 구하는 셈일세."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7217 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1823 /* ~"당신 내장이 수두에 걸려 썩어 버리길 빌겠어요! 당신의 패션 센스와 냄새는 염소떼만큼이나 고약하고, 생기기는 두 배나 더 못생겼어요!"~ */
  IF ~~ THEN REPLY #7218 /* ~"어..."~ */ EXTERN ~DMORTE~ 130
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.1 3.1 4.1 32.0
  SAY #1824 /* ~여자는 눈살을 찌푸린다. "난 가이드가 아니에요..." 그녀는 눈살을 찌푸린다, 그리고 나서 두 손가락을 문지른다. "당신이 내 시간에 대해 금전적 보상을 해준다면 모르지만."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #7219 /* ~"나는 당신에게 돈을 줄 수가 있소. 얼마면 되겠소?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #7223 /* ~"나는 당신에게 돈을 줄 수가 있소.얼마면 되겠소?"~ */ GOTO 33
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #7224 /* ~"나는 당신에게 돈을 줄 수가 있소.얼마면 되겠소?"~ */ GOTO 34
  IF ~~ THEN REPLY #7225 /* ~"그럼 관두시오. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #1825 /* ~"동전 열 닢. 다른 질문이나, 더 비밀스러운 내용은 요금이 더 비싸요."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7226 /* ~"적절한 가격인 듯하오. 여기 열 닢이 있소."~ */ DO ~TakePartyGold(10)
~ GOTO 12
  IF ~~ THEN REPLY #7227 /* ~"관두시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.4 2.2 3.2 4.2 9.3 10.1 13.7 33.1 34.1
  SAY #1826 /* ~"그래 봐야 당신 손해예요. 당신이 잃어버리는 데 지쳐 뭔가를 찾을 필요를 느끼게 되면 내게로 돌아오세요."~ */
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7228 /* ~"기억해 두리다. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7229 /* ~"기억해 두리다. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7230 /* ~"기억해 두리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 33.0 34.0
  SAY #1827 /* ~"좋아요 그럼." 그녀는 돈을 재빠르게 채간다. "자..."~ */
  IF ~~ THEN REPLY #7231 /* ~"알고 싶은 것들이 좀 있소..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.2 15.1 16.1 17.0 19.1 20.1 21.1 22.0 23.0 24.3 24.4 24.5 24.6 25.2 26.2 27.1 28.1 29.1 30.0 31.0
  SAY #1828 /* ~"질문을 하세요, 자기."~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7232 /* ~"이 도시에 대해 얘기해줄 수 있겠소?"~ */ GOTO 14
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #7233 /* ~"시길에 대해 이야기해줄 수 있겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #7236 /* ~"이 부근에서는 뭐가 볼만한지 얘기해줄 수 있겠소?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #7237 /* ~"당파들에 대해서 얘기해줄 수 있겠소?"~ */ GOTO 21
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #7238 /* ~"내게 레이디 오브 페인에 대해 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7239 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7240 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 23
  IF ~~ THEN REPLY #7241 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #1829 /* ~그녀는 눈을 좁게 뜨고 의심스러운 눈초리로 바라본다. "이 도시? 이 도시가 어떻다는 거죠?"~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7242 /* ~"그게 무엇이오?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7243 /* ~"그게 무엇이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #7244 /* ~"실은 그 밖에도 물어볼 것이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7245 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7246 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7247 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #1830 /* ~"시길이 뭐냐구요?" 그녀는 어깨를 으쓱한 후 주변을 둘러본다. "시길은 지금이 당신이 발을 디디고 있으며 또 당신을 에워싸고 있는 도시예요." 그녀는 웃는다. "방문객들의 위장을 울렁거리게 만드는 곳이지요."~ */
  IF ~~ THEN REPLY #7248 /* ~"시길은 정확히 어디에 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #7249 /* ~"실은 그 밖에도 물어볼 것이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7250 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7251 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7252 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #1831 /* ~"다원 우주의 중심이라고 하더군요." 그녀는 코방귀를 뀐다. "만약 당신이 그런 쓰레기를 믿는다면 말이지만."~ */
  IF ~~ THEN REPLY #7253 /* ~"왜 그것이 '쓰레기'인 거요?"~ */ GOTO 17
  IF ~~ THEN REPLY #7254 /* ~"실은 그 밖에도 물어볼 것이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7255 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7256 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7257 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #1832 /* ~그녀는 능글능글 웃는다. "있잖아요, 자기, 학자들이나 다른 머리 굴리기 좋아하는 작자들의 말을 빌리자면 다원 우주는 무한하게 펼쳐진다고 해요." 그녀는 자신의 머리를 가볍게 두드린다. "그런데 어디가 중심이라는 거죠?"~ */
  IF ~~ THEN REPLY #7258 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7259 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7260 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7261 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 19.0 20.0
  SAY #1833 /* ~그녀는 입술에 손을 대고 입을 삐죽 내민다. "당신이 어디에 관심이 있는가에 달렸어요."~ */
  IF ~~ THEN REPLY #7379 /* ~"난 화끈하게 즐길 수 있는 곳을 찾고 있소."~ */ GOTO 19
  IF ~~ THEN REPLY #7381 /* ~"나는 일거리를 찾고 있소."~ */ GOTO 20
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7385 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7389 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7393 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1834 /* ~"나는 이미 당신에게 제안을 했어요, 그리고 그 가격은 결코 부당한 게 아니에요. 다른 곳에서는 내가 당신에게 줄 수 있는 것 같은 쾌락을 느낄 수가 없어요."~ */
  IF ~~ THEN REPLY #7263 /* ~"이 곳에서 또 뭐가 볼만하오?"~ */ GOTO 18
  IF ~~ THEN REPLY #7264 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7265 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7266 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7267 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #1835 /* ~그녀는 웃는다. "당신이 내게 그걸 묻는 건가요? 아니, 자매들의 일원이 될 생각이라도 있는 건가요?" 그녀는 꼬꾸라질 정도로 심하게 웃는다... 그녀의 웃음 소리는 술에 취한 하피의 비명을 연상시킨다. 마침내 그녀는 웃음을 멈추고 심호흡을 한다. "당신은 정말 부자인 모양이군요."~ */
  IF ~~ THEN REPLY #7269 /* ~"이 곳에서 또 뭐가 볼만하오?"~ */ GOTO 18
  IF ~~ THEN REPLY #7270 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7272 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7273 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7274 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #1837 /* ~그녀는 일부러 웃는다. "나는 당파들에게 '봉사해요.' 나는 그들과 거래하지 않아요."~ */
  IF ~~ THEN REPLY #7275 /* ~"더스트맨조차도?"~ */ GOTO 22
  IF ~~ THEN REPLY #7276 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7277 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7278 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7279 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #1838 /* ~"더스트맨은 내 품안에서는 더스티처럼 굴어요." 그녀는 조롱한다. "그들은 죽음에 대해 늘 떠들어대지만, 내 품안에서는 그런 얘기는 별로 안 해요, 무슨 뜻인지 알겠어요?"~ */
  IF ~~ THEN REPLY #7280 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7281 /* ~"계몽적이군... 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7282 /* ~"계몽적이군... 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7283 /* ~"계몽적이군... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.6
  SAY #1839 /* ~"그런 게 어디 있는지 난 몰라요, 자기. 다른 곳을 찾아보는 개 좋을 거예요..." 그녀는 도발적인 미소를 짓는다. "당신이 시작을 해볼만한 곳들은 알고 있어요."~ */
  IF ~~ THEN REPLY #7284 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7285 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7286 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7287 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.5
  SAY #1840 /* ~"파로드? 그건 중대한 비밀들 중 하나예요. 만약 그에 대해 알고 싶다면 통상 질문의 세 배에 해당하는 요금을 내야 해요."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldGT(29)
~ THEN REPLY #7318 /* ~"적절한 가격인 듯하오. 여기 서른 닢이 있소."~ */ DO ~TakePartyGold(30)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldGT(20)
~ THEN REPLY #7319 /* ~"적절한 가격인 듯하오. 여기 스물 한 닢이 있소."~ */ DO ~TakePartyGold(21)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldGT(8)
~ THEN REPLY #7320 /* ~"적절한 가격인 듯하오. 여기 아홉 닢이 있소."~ */ DO ~TakePartyGold(9)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldLT(30)
~ THEN REPLY #7321 /* ~"흠... 그만한 돈이 없소. 하지만 질문할 것들은 좀 있는데..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldLT(21)
~ THEN REPLY #7322 /* ~"흠... 그만한 돈이 없소. 하지만 질문할 것들은 좀 있는데..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldLT(9)
~ THEN REPLY #7323 /* ~"흠... 그만한 돈이 없소. 하지만 질문할 것들은 좀 있는데..."~ */ GOTO 13
  IF ~~ THEN REPLY #7324 /* ~"그럼 관두시오... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7325 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7326 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7327 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #1841 /* ~그녀는 당신이 내민 돈을 한 번 쳐다본다, 그리고 어깨를 으쓱한 후 그것을 주머니에 넣는다. "파로드에 대해 뭘 알고 싶은 거죠?"~ */
  IF ~~ THEN REPLY #7328 /* ~"*그* 가격이라면 당신이 그에 대해 알고 있는 건 내게 죄다 말해야 할 거요." ~ */ GOTO 26
  IF ~~ THEN REPLY #7329 /* ~"내게 그에 대해 어떤 얘기를 해줄 수가 있겠소."~ */ GOTO 26
  IF ~~ THEN REPLY #7330 /* ~"그럼 관두시오... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7331 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7332 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7333 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1842 /* ~그녀는 어깨를 으쓱한다. "내가 듣기로 그는 수집자들의 왕초래요. 그는 많은 수의 부하들을 거느리고 있다고 하더군요."~ */
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",0)
~ THEN REPLY #7334 /* ~"그는 어디 있소?"~ */ DO ~SetGlobal("Harlot_Reveals_Pharod","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 27
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",1)
~ THEN REPLY #7335 /* ~"그는 어디 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #7336 /* ~"파로드에 대한 얘기는 관두시오... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7337 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7338 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7339 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #1843 /* ~"아무도 정확하게는 몰라요, 하지만 나보고 찍으라고 한다면 넝마주이 광장을 찍겠어요."~ */
  IF ~~ THEN REPLY #7340 /* ~"넝마주이 광장?"~ */ GOTO 28
  IF ~~ THEN REPLY #7341 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7342 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7343 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7344 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #1848 /* ~"시체안치소 서쪽에 있는 크고 오래된 쓰레기 더미예요. 수집자들은 모두 거기 살고 있고, 파로드도 그 곳에 집이 있을 가능성이 높아요."~ */
  IF ~~ THEN REPLY #7345 /* ~"수집자란 뭐요?"~ */ GOTO 29
  IF ~~ THEN REPLY #7346 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7347 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7348 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7349 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1849 /* ~"돈을 벌기 위해 시체를 수거하는 자들이죠. 정말 불쌍한 작자들이에요."~ */
  IF ~~ THEN REPLY #7262 /* ~"그들은 시체를 수거하오? 왜?"~ */ GOTO 30
  IF ~~ THEN REPLY #7395 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7396 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7397 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7398 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1850 /* ~"왜냐하면 그들은 나같은 일을 할 정도로 외모가 출중하지 않으니까."~ */
  IF ~~ THEN REPLY #7399 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7400 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7401 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7402 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 13.4
  SAY #1851 /* ~그녀는 침을 뱉은 후 가슴 위에 반원을 그린다. "그 칼날 달린 마녀! 잘난 체하는 이 도시 전체의 여주인으로, 조용히 떠다니며 비위에 거슬리는 자는 누구든 죽이지요. 그녀는 이 도시를 돌보죠..." 그녀는 속삭인다. "그리고 그 안에 있는 것들이 *썩도록* 방치해요."~ */
  IF ~~ THEN REPLY #7457 /* ~"알겠소... 다른 질문들이 있소..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7458 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7459 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7460 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 5.2 5.3 5.4
  SAY #1852 /* ~"그럼 할 수 없죠."~ */
  IF ~~ THEN REPLY #7461 /* ~"이제 집중을 할 수가 있으니 당신에게 질문을 좀 해야겠소..."~ */ GOTO 9
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7462 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7463 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7464 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.1
  SAY #1853 /* ~"당신 경우는..." 그녀는 당신을 까다롭게 살펴본다. "더도 덜도 말고 동전 일곱 닢만 주세요. 단, 보다 비밀스러운 것에 관한 질문을 하려면 돈을 더 내야 해요."~ */
  IF ~  PartyGoldGT(6)
~ THEN REPLY #7465 /* ~"적절한 가격인 듯하오. 여기 일곱 닢이 있소."~ */ DO ~TakePartyGold(7)
~ GOTO 12
  IF ~~ THEN REPLY #7466 /* ~"관두시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 9.2
  SAY #1854 /* ~"당신처럼 잘생긴 사람이라면..." 그녀는 더러운 치아를 드러내며 활짝 웃는다. "동전 세 닢만 내세요." 그녀는 자기 입술을 핥은 후 눈살을 찌푸린다. "하지만 보다 비밀스러운 것에 관한 질문을 하려면 돈을 더 내야 해요."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #7467 /* ~"적절한 가격인 듯하오. 여기 세 닢이 있소."~ */ DO ~TakePartyGold(3)
~ GOTO 12
  IF ~~ THEN REPLY #7468 /* ~"관두시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from:
  SAY #30536 /* ~창녀는 이 기회를 이용해 도망친다.~ */
  IF ~~ THEN REPLY #30537 /* ~"빌어먹을, 안나..."~ */ DO ~EscapeArea()
~ EXIT
END
