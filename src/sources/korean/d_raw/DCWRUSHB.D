// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #26110 /* ~이 깨끗하게 차려 입은 노신사는 어디로 가는 도중임에 틀림없다. ~ */
  IF ~~ THEN REPLY #26111 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #26199 /* ~그가 지나가도록 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26112 /* ~그는 잠시 멈추고 당신 쪽을 바라본다. 그는 당신의 생김새를 살피며 얼굴을 찌푸리고 한쪽 눈썹을 치켜 올린다. 마침내 그는 당신을 마주본다. "뭔가?"~ */
  IF ~~ THEN REPLY #26113 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26198 /* ~"내 용모에 무슨 문제라도 있소?'~ */ GOTO 23
  IF ~~ THEN REPLY #26206 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #26114 /* ~그는 신랄하고, 다소 생색을 내는 듯한 어조로 말을 한다: "미안하네... 하지만 내겐 자네 질문에 답할 시간이 없네. 잘 있게."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #26115 /* ~"그럼 딱 한 가지만 물어봅시다."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #26188 /* ~"그럼 딱 한 가지만 물어봅시다."~ */ GOTO 20
  IF ~~ THEN REPLY #26192 /* ~"없으면 시간을 *만들어야* 할 거요. 이제 내 질문에 대답하시오.."~ */ GOTO 6
  IF ~~ THEN REPLY #26193 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26116 /* ~그는 가볍게 코웃음친다. "허! 어쩔 수가 없군. 그래... '질문'을 하게. 하지만 서두르게!"~ */
  IF ~~ THEN REPLY #26117 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #26132 /* ~"이 곳의 볼거리에는 어떤 것들이 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #26139 /* ~"이 곳에서 일거리를 구하려면 어디로 가야 하오?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #26144 /* ~"난 길 안내를 필요로 할 뿐이오..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #26179 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 21
  IF ~~ THEN REPLY #26187 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26118 /* ~"난 자네가 길을 잃었으리라고 짐작했어야 했어. 자네는 지금 사무구에 있네. 만약 마계구나 자네가 온 곳으로 돌아가고 싶다면 출구는 이 지역의 북서쪽에 있네. 잘 있게."~ */
  IF ~~ THEN REPLY #26119 /* ~"기다리시오... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #26131 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0 22.1 22.2
  SAY #26120 /* ~"다 이상 질문을 받아 줄 수 없네. 다른 사람을 찾아보게. 잘 있게."~ */
  IF ~~ THEN REPLY #26121 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #26130 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #26122 /* ~그는 흥분하여 당신을 빤히 쳐다보며 호통을 친다. "나는 더 이상 질문에 대답하지 않겠네! 내가 하모니움 사관들을 불러 자네의 흉터투성이 엉덩이를 걷어차 이 구역으로부터 내쫓기 전에 어서 꺼지게!"~ */
  IF ~~ THEN REPLY #26123 /* ~"아마 누구도 당신을 구할 정도로 신속히 오지는 못할 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #26127 /* ~"만약 당신이 자기 신상에 무엇이 좋은지를 안다면 아무도 부르지 않을 거요."~ */ GOTO 7
  IF ~~ THEN REPLY #26128 /* ~"미안하오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #26129 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #26124 /* ~"경비병! 경비병!" 그는 뒤로 물러서기 시작한다.~ */
  IF ~~ THEN REPLY #26125 /* ~그를 공격한다. ~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #26126 /* ~누가 도착하기 전에 떠난다.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #26133 /* ~그는 눈알을 희번덕거린다. "내가 '귀하'의 길 안내까지 해야 하겠나? 내겐 급한 용무가 있네!" 그는 잠시 중얼거리더니 다시 말문을 연다. "시 공회당에 가보게. 그 곳에는 자네가 관심을 가질 만한 것들이 있을지도 모르니."~ */
  IF ~~ THEN REPLY #26134 /* ~"그 밖에 다른 건?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26135 /* ~"아니네." 그는 잠시 생각에 잠긴다. "그래... 아마도... 자네 마음에 들지는 모르겠지만 지적인 욕망을 힐난하는... 매음굴에 한 번 가보게."~ */
  IF ~~ THEN REPLY #26136 /* ~"매음굴에 대해 얘기해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #26137 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26138 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #26140 /* ~그는 놀란 듯하다. "자네는 정직한 일거리를 찾고 있는가? 좋은 일일세. 약국이나 변호사에게 가보게. 누구든지 사회에 기여할 수 있는 일자리를 얻을 수 있어야 한다는 것이 내 생각일세."~ */
  IF ~~ THEN REPLY #26141 /* ~"당신이 얘기한 장소들 중 한 곳에 대해 물어볼 것이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #26142 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26143 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #26145 /* ~"어디 말인가? 빨리 말하게."~ */
  IF ~~ THEN REPLY #26146 /* ~"변호사 저택."~ */ GOTO 12
  IF ~~ THEN REPLY #26150 /* ~"약국."~ */ GOTO 13
  IF ~~ THEN REPLY #26154 /* ~"화랑."~ */ GOTO 14
  IF ~~ THEN REPLY #26158 /* ~"매음굴."~ */ GOTO 15
  IF ~~ THEN REPLY #26162 /* ~"이 구역 아래의 지하 묘지."~ */ GOTO 16
  IF ~~ THEN REPLY #26166 /* ~"시 공회당"~ */ GOTO 17
  IF ~~ THEN REPLY #26170 /* ~"골동품 가게."~ */ GOTO 18
  IF ~~ THEN REPLY #26174 /* ~"양장점."~ */ GOTO 19
  IF ~~ THEN REPLY #26178 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26147 /* ~"변호사를 찾는가? 흠. 마계구로 통하는 관문에서 남쪽으로 가게. 그의 집은 길의 동쪽에 있을 걸세."~ */
  IF ~~ THEN REPLY #26148 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26149 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #26151 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가게. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가게... 가다 보면 그 길의 동쪽에 그 건물이 나타날 것이네. 남쪽을 향하고 있으며 스테인드 글라스로 만들어진 창이 세 개 있는 건물이네."~ */
  IF ~~ THEN REPLY #26152 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26153 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #26155 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가게. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가게... 가다 보면 그 길의 서쪽에 그 건물이 나타날 것이네. 남쪽을 향하고 있으며 큰 돌들에 의해 지붕의 타일들이 지탱되고 있는 건물이네."~ */
  IF ~~ THEN REPLY #26156 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26157 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #26159 /* ~마계구로 통하는 관문의 바로 동쪽에 있네. 그 곳은 입구가 남쪽을 향하고 있는 크고 둥근 건물이지."~ */
  IF ~~ THEN REPLY #26160 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26161 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #26163 /* ~"입구는 두 군데가 있지. 하나는 마계구로 통하는 관문 동쪽, 양장점과 시 공회당 사이에 있네. 그리고 다른 하나는 관문의 남쪽에 있네."~ */
  IF ~~ THEN REPLY #26164 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26165 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #26167 /* ~"시 공회당은 이 지역의 북동쪽에 있는 거대한 건물이네. 멍청이에다 장님이 아닌 다음에야 그 곳을 찾지 못할 리가 없네."~ */
  IF ~~ THEN REPLY #26168 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26169 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #26171 /* ~"흠. 내가 듣기로는 그 곳에서는 어떤 여자가 다른 차원들... 주로 마계에서 수입한 물건들을 판다고 하더군. 만약 자네가 찾는 것이 그런 것들이라면, 그녀의 가게는 이 지역 남동쪽의 넓은 계단 위에 있으니 찾아가 보게."~ */
  IF ~~ THEN REPLY #26172 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26173 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #26175 /* ~"마계구로 통하는 관문의 북동쪽으로 가게. 입구가 남쪽을 향하고 있는 넓적한 건물일세."~ */
  IF ~~ THEN REPLY #26176 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26177 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #26180 /* ~그는 고개를 저으며 당신에게 가라고 손짓한다. "다른 사람을 찾아보게. 잘 있게."~ */
  IF ~~ THEN REPLY #26181 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #26185 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #26182 /* ~그는 잠시 아무 말도 하지 않는다. "별로 아는 게 없네. 책에서 그녀에 댜해 언급한 구절을 읽은 것이 전부네."~ */
  IF ~~ THEN REPLY #26183 /* ~"이러한 책들에는 그녀에 대해 어떻게 쓰여 있소?"~ */ GOTO 22
  IF ~~ THEN REPLY #26184 /* ~"알겠소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #26186 /* ~"고맙소. 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #26189 /* ~"내가 아는 것은 그녀가 절대적으로 사악한 존재였다는 것뿐이네. 많은 사람들은 그녀를 단지 전설에 불과하다고 생각하나, 그녀의 존재는 기록된 사실일세. 극히 소량의 기록만이 존재하나 기록된 건 분명한 사실이지. 그녀는 시길을 파멸시키려는 시도가 실패한 후... 레이디 오브 페인의 미로들 중 한 곳으로 추방되었다고 하네."~ */
  IF ~~ THEN REPLY #26190 /* ~"레이디 오브 페인에 대해 얘기해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #26191 /* ~"이러한 미로에 도달하는 건 가능하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #26194 /* ~"다른 질문이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #26207 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #26195 /* ~"자네 꼴을 좀 보게! 자네는... 자네는... 벌거숭이나 마찬가지인데다가 흉터투성이인 몰골로 시길의 거리를 방황하며 사람들을 붙잡고 말을 걸고 있네... 나는 자네보다 더 예의바르고 외관도 말끔한 마족들도 여럿 보았네. 자네는 모욕할 생각은 없지만 마음에도 없는 사탕발림을 할 생각도 없네."~ */
  IF ~~ THEN REPLY #26196 /* ~"물어본 것 같소. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #26197 /* ~"더 이상 필요한 건 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #26200 /* ~"또 자네로군! 나는 오늘 자네 질문에 대답할 여유가 없네."~ */
  IF ~~ THEN REPLY #26201 /* ~"기다리시오. 질문할 것들이 좀 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #26205 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #26202 /* ~"아니, 질문에 답해줄 수가 없네. 나는 갈 데가 있네, 그리고 다른 사람의 호기심 때문에 발이 묶일 순 없네. 다른 사람을 찾아보게. 잘 있게."~ */
  IF ~~ THEN REPLY #26203 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #26204 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
