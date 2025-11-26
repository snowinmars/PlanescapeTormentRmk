// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVOORSHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVOORSHA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57956 /* ~허름한 옷을 입은 중년 남자가 보인다. 당신이 다가오는 것을 보고 그는 눈살을 찌푸린다, 그리고 주변을 조심스럽게 둘러본다.~ */
  IF ~~ THEN REPLY #57957 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57959 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57961 /* ~당신을 살펴보면서 그는 얼굴을 한층 더 찌푸린다. "어... 안녕하시오. 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #57963 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57965 /* ~"관두시오. 이만 실례해야겠소. 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.1 8.1 10.3 11.2 12.2 13.2 14.0 15.0 16.0 19.1 20.0 21.0
  SAY #57966 /* ~"예를 들어?"~ */
  IF ~~ THEN REPLY #57967 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #57968 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #57969 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #57970 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 커스트에 있다고 들었소."~ */ GOTO 17
  IF ~~ THEN REPLY #68251 /* ~"이만 실례해야 겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57971 /* ~그는 대답하기 전에 잠시 주저한다. "내 이름은 부어샤요." 그는 그 이상은 말하지 않는다.~ */
  IF ~~ THEN REPLY #57972 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57973 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #57974 /* ~그는 당신을 냉담하게 보더니 어깨를 으쓱한다. "나는... 상인이오. 여긴 내 창고요.~ */
  IF ~~ THEN REPLY #57975 /* ~"이 곳에는 무엇을 저장하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #57976 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57977 /* ~그는 눈살을 찌푸린다. "그건 당신이 알 바가 아니오."~ */
  IF ~~ THEN REPLY #57978 /* ~"그냥 궁금할 뿐이오..."~ */ GOTO 6
  IF ~~ THEN REPLY #57979 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57980 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57981 /* ~그는 어깨를 으쓱한다. "그건..." 그는 모호하게 손짓한다. "에일 맥주, 꿀술... 등의 상품이오." 그는 불안해 하는 듯하다.~ */
  IF ~~ THEN REPLY #57982 /* ~"무엇 때문에 그렇게 신경이 곤두선 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #57983 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57984 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57985 /* ~그는 안절부절 못한다. "아무 것도 아니오..." 그는 도전적인 표정으로 당신을 쳐다본다. "주제를 바꿀 수는 없소?"~ */
  IF ~~ THEN REPLY #57986 /* ~"아니, 내 생각에 당신은 무슨 일을 꾸미고 있고 난 그걸 알아야겠소."~ */ GOTO 8
  IF ~~ THEN REPLY #57987 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57988 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #57989 /* ~그는 당신을 노려본다, 그러나 이내 한숨을 쉰다. "나는 다른 경로로... 물건을 수입하고 있소. 경비병들은 알지 못하오..."~ */
  IF ~~ THEN REPLY #57990 /* ~"당신은 밀수꾼이군."~ */ GOTO 9
  IF ~~ THEN REPLY #57991 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57992 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57993 /* ~그는 눈살을 찌푸린다. "나는 불법 수입업자요. 밀수꾼이라고 하는 것보다는 듣기가 좋소 ?"  그는 당신을 유심히 살핀다. "내 사업에 끼워 줄 테니, 날 도와줄 생각은 없소?"~ */
  IF ~~ THEN REPLY #57995 /* ~"어떤 종류의 도움 말이오?"~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #57997 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.1
  SAY #57999 /* ~그는 잠시 생각한다. "이 근처에 게흐렐레스가 한 마리 있소. 놈은 날 죽이려 하고 있고, 때문에 난 물건을 여기서 가지고 나가는 데 어려움을 겪고 있소. 나는 놈을 처치해 줄 사람이 필요하오"~ */
  IF ~~ THEN REPLY #58002 /* ~"게흐렐레스란 뭐요?"~ */ GOTO 11
  IF ~~ THEN REPLY #58003 /* ~"당신이 직접 놈을 처리하시오." ~ */ GOTO 12
  IF ~~ THEN REPLY #58004 /* ~"그놈을 처치해주면 난 무슨 대가를 받소?"~ */ GOTO 13
  IF ~~ THEN REPLY #58005 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58006 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0
  SAY #58008 /* ~그는 어깨를 으쓱한다. "놈은 눈에 보이는 것은 뭐든지 먹는 멍청한 괴물이오..." 그는 걱정스러운 표정으로 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #58011 /* ~"당신이 직접 놈을 처리하시오." ~ */ GOTO 12
  IF ~~ THEN REPLY #58013 /* ~"그놈을 처치해주면 난 무슨 대가를 받소?"~ */ GOTO 13
  IF ~~ THEN REPLY #58015 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58018 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #58020 /* ~"나는 전사가 아니오. 놈은 날 일격에 죽일 거요." 그는 당신의 흉터를 흘긋 본다. "당신처럼 아수라장을 수없이 경험한 사람이라면 놈을 처치할 수 있을 거요."~ */
  IF ~~ THEN REPLY #58023 /* ~"게흐렐레스란 뭐요?"~ */ GOTO 11
  IF ~~ THEN REPLY #58026 /* ~"그놈을 처치해주면 난 무슨 대가를 받소?"~ */ GOTO 13
  IF ~~ THEN REPLY #58028 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58032 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.1 22.0
  SAY #58036 /* ~그는 미소짓는다. "나는 동업자가 필요하오. 사업은 번창하고 있고, 나 혼자 영업을 다 하긴 벅차오. 나는 당신과 이익을 반반씩 나눌 거요. 어떻게 생각하오?"~ */
  IF ~~ THEN REPLY #58039 /* ~"좋소, 나쁠 것 없지."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #58041 /* ~"관심없소."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #58047 /* ~"생각해 보겠소. 그 밖에도 질문할 것들이 있소.."~ */ GOTO 2
  IF ~  Dead("Ghrist")
~ THEN REPLY #68272 /* ~"나는 이미 그 게흐렐레스를 처리했소. 놈은 죽었소. 그러니 우린 이제 동업자인 거요?"~ */ GOTO 23
  IF ~~ THEN REPLY #68273 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58053 /* ~그녀는 환하게 웃는다. "좋소. 게흐렐레스를 처치하고 내게로 다시 오시오."~ */
  IF ~~ THEN REPLY #58056 /* ~"좋소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58060 /* ~"그만 가야겠소. 안녕히 계시오..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #58063 /* ~그는 눈살을 찌푸린다. "좋소, 내 제의는 계속 유효하니 마음을 바꾸면 다시 오시오. 게흐렐레스를 처치하지 못하면 내 장사는 망한 거나 마찬가지요."~ */
  IF ~~ THEN REPLY #58065 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58066 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #58067 /* ~그는 주변을 두리번거린다. "별로 말할 것이 없소." 그는 어깨를 으쓱한다. "당신이 직접 한 번 둘러보시오."~ */
  IF ~~ THEN REPLY #58068 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58069 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #58070 /* ~그는 눈살을 찌푸린다. "디바... 소문은 들었소..." 그는 잠시 멈춘다.~ */
  IF ~~ THEN REPLY #58071 /* ~"어떤 소문들 말이오?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58072 /* ~그는 어깨를 으쓱하며 시선을 다른 데로 돌린다. "감옥을 확장하려고 한창 땅을 파다가 우연히 미지의 감옥을 건드린 모양이오..." 그는 다시 당신 쪽으로 돌아선다. "그리고 거기서 감금된 뭔가 또는 누군가를 발견했다고 하오."~ */
  IF ~~ THEN REPLY #58073 /* ~"계속하시오."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58074 /* ~"어떤 사람들은 디바를 발견했다고 하오, 하지만 바테주나 타나리를 발견했다는 얘기도 들리오." 그는 어깨를 으쓱한다. "어느 쪽이든 나하고는 상관없소, 난 그 근처에도 갈 생각이 없으니까." ~ */
  IF ~~ THEN REPLY #58075 /* ~"그 방은 어디 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #58076 /* ~"그만 가야겠소. 안녕히 계시오"~ */ GOTO 2
  IF ~~ THEN REPLY #68252 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #58077 /* ~"모르겠소. 계속 돌아다니면서 들쑤시다 보면 아마 발견하게 될 거요... 그게 당신 신상에 이로우리라는 보장은 없지만."~ */
  IF ~~ THEN REPLY #58078 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58079 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #58080 /* ~불법 수입업자 부어샤가 보인다. 당신이 다가가자 그는 초조하게 주변을 두리번거린다. "다시 만나 반갑소. 내게 뭘 원하시오?"~ */
  IF ~  Global("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #57963 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~  Global("Snuff_Ghrist","GLOBAL",1)
~ THEN REPLY #58082 /* ~"당신은 도움이 필요하다고 했소. 어떤 도움이 필요하오?"~ */ GOTO 10
  IF ~  Global("Snuff_Ghrist","GLOBAL",2)
~ THEN REPLY #58083 /* ~"당신은 내게 게흐렐레스를 처치해 달라고 했소."~ */ GOTO 22
  IF ~  Global("Snuff_Ghrist","GLOBAL",3)
Dead("Ghrist")
~ THEN REPLY #58084 /* ~"나는 당신을 위해 게흐렐레스를 죽였소."~ */ DO ~SetGlobal("Snuff_Ghrist","GLOBAL",4)
~ GOTO 23
  IF ~~ THEN REPLY #58085 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #58086 /* ~그는 잠시 당신을 쳐다본다. "그렇소. 일을 해주겠소?"~ */
  IF ~~ THEN REPLY #58087 /* ~"그 일을 하면 난 뭘 얻소?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 23 // from: 13.3 21.3
  SAY #58088 /* ~그는 놀란 듯하다, 하지만 곧 냉정을 되찾는다. 그는 당신이 눈치챘는지 보려고 당신을 쳐다본다. "어... 기쁜 소식이오. 잘했소."~ */
  IF ~~ THEN REPLY #58089 /* ~"당신은 날 당신 동업자로 만들어 주겠다고 했소. 난 돈을 받을 준비가 됐소."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #58090 /* ~그는 고개를 끄덕인다. "그래... 그런 얘기를 했소." 그는 당신을 잠시 쳐다보더니 안절부절 못하기 시작한다.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #58091 /* ~"이제 우린 동업자요. 그렇소?"~ */ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #58092 /* ~"당신은 내가 게흐렐레스를 죽일 수 없다고 생각했소, 안 그렇소?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58093 /* ~그는 당신을 잠시 더 쳐다보더니 한숨을 쉰다. "아니... 난 그렇게 생각하지 않소..." 그는 한숨을 쉰다. "당신은 내 예상을 훨씬 뛰어넘었소... 나는 게흐렐레스가 당신을 처치해 내 수고를 덜어 주기를 기대하고 있었소. 이제는 내가 당신을 직접 처리해야 할 것 같군." 그는 무기를 뽑아 들고 당신을 공격한다.~ */
  IF ~~ THEN REPLY #58094 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #58095 /* ~그는 당신을 잠시 더 쳐다보더니 한숨을 쉰다. "아니... 당신은 내 예상을 훨씬 뛰어넘었소... 나는 게흐렐레스가 당신을 처치해 내 수고를 덜어 주기를 기대하고 있었소. 이제는 내가 당신을 직접 처리해야 할 것 같군." 그는 무기를 뽑아 들고 당신을 공격한다.~ */
  IF ~~ THEN REPLY #58097 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
