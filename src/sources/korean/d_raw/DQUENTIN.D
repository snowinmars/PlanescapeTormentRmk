// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUENTIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUENTIN~

IF ~  Global("Quentin","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #7410 /* ~당신 앞에 서 있는 남자는 보통 키에 나이는 40대 정도인 것 같다. 그는 뚱뚱하며 황소처럼 굵은 목을 가지고 있고, 마치 거대한 무게가 그를 압박하는 듯 어깨를 구부리고 있다. 그는 불안한 듯한 눈으로 그에 앞에 있는 검은색 비석을 바라보고 있다.~ */
  IF ~~ THEN REPLY #7411 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #7412 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #7413 /* ~그는 당신을 흘긋 본다. "장소는 충분하오. 여기에 서 있기 위해 내 허락을 받을 필요는 없소."~ */
  IF ~~ THEN REPLY #7414 /* ~실은 이 비석이 무엇인지 알고 싶었소."~ */ DO ~SetGlobal("Quentin","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #7415 /* ~"좋소. 방해를 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 13.0
  SAY #7416 /* ~"그것은 다원 우주를 위한 묘비요." 그는 코방귀를 뀐다. "그 돌에 새겨진 이름들의 무덤이오. 나는 내 이름이 이 돌을 둘로 쪼갤 이름이기를 바랄 뿐이오." 그는 비석의 바닥을 가리킨다. "바로 저기에 '퀜틴'이라고 말이오. 그 빌어먹을 돌을 박살낼 정도로 망치로 세게."~ */
  IF ~~ THEN REPLY #7417 /* ~"다원 우주를 위한 묘비?"~ */ GOTO 3
  IF ~~ THEN REPLY #7418 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #7419 /* ~"그렇소." 퀜틴은 애처로운 미소를 짓는다. "더스티들은 죽은 자들의 이름을 이 기념비에 새긴다오..." 그는 몸짓으로 주위를 가리킨다. "그리고 이 곳의 벽들에도. 내가 알기로 이제는 공간이 부족하오... 하지만 그럼에도 그들은 최선을 다하오. 이름들 중 절반도 알아보기 힘드오."~ */
  IF ~~ THEN REPLY #7420 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #7421 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.1
  SAY #7422 /* ~"새로 새겨진 이름들을 읽고 있소. 매일 새로운 이름을 찾아, 내가 아는 이름인지 상기해 볼 뿐이오."~ */
  IF ~~ THEN REPLY #7423 /* ~"더스트맨은 모든 죽은 자들의 이름을 이 기념비에 기록한단 말이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #7424 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7425 /* ~"그들은 이름들을 돌에 새기고... 이 곳의 벽들에도 새긴다오." 퀜틴은 코방귀를 뀐다. "나는 왜 그들이 죽은 자들을 세는 데 공을 들이는지 모르겠소... 더스티들은 산 자에게 더 관심이 많소."~ */
  IF ~  Global("Mourn","GLOBAL",0)
~ THEN REPLY #7426 /* ~"산 자?"~ */ DO ~SetGlobal("Mourn","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Mourn","GLOBAL",0)
~ THEN REPLY #7427 /* ~"산 자?"~ */ GOTO 6
  IF ~~ THEN REPLY #7428 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #7429 /* ~"그래... 당신은 이 곳에 오는 더스트맨 애도자들에 대해 아시오? 그들은 죽은 자를 애도하는 게 아니라 산 자를 애도하고 있소. 그들에게 불쌍한 *산* 자를 애도해 달라고 부탁하지 않는 한 그들과는 한 마디 대화도 나누기 힘드오." ~ */
  IF ~~ THEN REPLY #7430 /* ~"왜 그들은 산 자를 위해 통곡하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #7431 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #7432 /* ~"나도 모르겠소." 그는 어깨를 으쓱한다. "그들에게 물어보시오. 내게는 죽은 자들이 이 빈민굴에 사는 어떤 놈보다도 세 배는 더 불쌍하오. " 그는 고개를 끄덕여 기념비를 가리킨다. "내가 생각하기에 이름이 저기 새겨진 모든 사람들은 '축복'받은 사람들이오. ~ */
  IF ~~ THEN REPLY #7433 /* ~"저곳에 이름이 기록된 사람들 중 생환한 사람은 있소?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7434 /* ~"비석의 반대쪽에 있는 저 미치광이 더스트맨이 누구인지 내게 말해줄 수 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #7435 /* ~"알겠소. 나와 얘기를 해주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Quentin","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #7436 /* ~퀜틴이 보인다. 그는 자신의 시선으로 기념비를 무너뜨리려는 듯 그것을 아직도 살펴보고 있다.~ */
  IF ~~ THEN REPLY #7437 /* ~"안녕하시오, 퀜틴."~ */ GOTO 9
  IF ~~ THEN REPLY #7438 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #7439 /* ~"에?" 퀜틴은 당신을 흘긋 본 후 고개를 끄덕인다. "다시 만나 반갑소. 당신 이름을 이 돌에 새기러 왔소?"~ */
  IF ~~ THEN REPLY #7440 /* ~"아직 아니오. 당신에게 물어볼 것들이 좀 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #7441 /* ~"아니오, 그냥 지나가던 중이오. 안녕히 계시오, 퀜틴."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 13.3
  SAY #7442 /* ~퀜틴은 능글맞게 웃는다. "그는 닭장에서 가장 정신이 멀쩡한 새는 아니오, 안 그렇소? 그 미치광이는 이름의 죽음이라고 하오." 그는 코방귀를 뀐다. "하지만 '감각의 죽음'이 그에게는 더 어울릴 것 같소."~ */
  IF ~~ THEN REPLY #7443 /* ~"그는 여기서 뭘 하고 있는 거요?"~ */ GOTO 11
  IF ~~ THEN REPLY #7444 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #7445 /* ~"그는 이 기념관의 관리자요. 그는 이 곳에 새겨진 모든 이름을 알고 있으며, 만약 당신이 원한다면 특정한 이름이 어디 있는지 알려 줄 수도 있소. 그가 약간 미쳤다는 건 의심할 여지가 없으나, 과거에 그는 날 몇 차례 도와주었소." 그는 어깨를 으쓱한다. "그는 또한 죽은 사람의 이름을 새기는 직무도 수행하고 있소."~ */
  IF ~~ THEN REPLY #7446 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #7447 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.0 13.2
  SAY #7448 /* ~"죽음으로부터 생환한 사람 말이오?" 퀜틴은 고개를 젓는다. "그런 자는 아무도 없소, 친구. 산 자는 반드시 죽기 마련이오, 그리고 그것은 우주의 섭리요." 그는 어깨를 으쓱한다. "하지만 다원 우주가 무한한 것을 감안한다면 그 어떤 일도 가능할 수가 있소."~ */
  IF ~~ THEN REPLY #7449 /* ~"그런가 보오. 그 밖에도 당신에게 물어볼 것들이 있소..."~ */ GOTO 13
  IF ~~ THEN REPLY #7450 /* ~"알겠소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 11.0 12.0
  SAY #7451 /* ~"물어보시오."~ */
  IF ~~ THEN REPLY #7452 /* ~"이 기념비가 무엇인지 다시 한 번 얘기해주겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #7453 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #7454 /* ~"저곳에 이름이 기록된 사람들 중 생환한 사람은 있소?"~ */ GOTO 12
  IF ~  GlobalGT("Death_of_Names","GLOBAL",0)
!Dead("DeathON")
~ THEN REPLY #7455 /* ~"비석의 반대쪽에 있는 저 미치광이 더스트맨이 누구인지 내게 말해줄 수 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #7456 /* ~"알겠소. 고맙소."~ */ EXIT
END
