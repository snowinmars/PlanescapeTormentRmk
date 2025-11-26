// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCROG~

IF ~  !Global("Curst_Rogue_Paid","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #10037 /* ~악한처럼 생긴 사내가 보인다. 그를 바라보면서 당신은 그가 근처에 있는 어떤 건물을 감시하고 있다는 생각을 하게 된다.~ */
  IF ~~ THEN REPLY #10038 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #10039 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10040 /* ~당신에 인사에 답례하는 것을 볼 때 그는 친절한 듯하다. "안녕히 계시오." 그는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #10041 /* ~"잠깐만. 난 당신에게 한 가지만 물어보고 싶소."~ */ GOTO 2
  IF ~~ THEN REPLY #10042 /* ~그를 그냥 보내준다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10043 /* ~그는 멈추고 정다운 미소를 지으며 당신을 향해 돌아선다. "물론이오. 어떤 도움을 원하시오?" 당신은 그의 팔이 다소 부자연스럽게 옆구리 쪽에 가 있는 것을 눈치챈다. 당신의 숙련된 눈으로 볼 때 그는 숨긴 무기를 꺼내려는 것 같다."~ */
  IF ~~ THEN REPLY #10044 /* ~"당신은 저기 저 건물을 그냥 바라보고 있었던 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #10045 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 커스트에 있다고 들었소."~ */ GOTO 9
  IF ~~ THEN REPLY #10046 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #10047 /* ~그는 다소 놀란 듯 당신을 바라본다. "아니, 그렇지 않소. 왜요? 거기서 무슨 흥미로운 일이라도 벌어지고 있소?" 그는 고개를 돌려 당신이 가리킨 건물을 살펴본다. ~ */
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #10048 /* ~"이것 보시오. 난 바보가 아니오. 당신은 그 건물을 미리 탐사하고 있군!"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #10049 /* ~"오 정말로?"~ */ EXTERN ~DANNAH~ 78
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #10050 /* ~"신경 쓰지 마시오, 내 실수요. 하지만 당신에게 물어볼 것이 하나 있소. 나는 이 마을에 있을지도 모르는 디바를 찾고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #10051 /* ~"미안하오, 내 실수요. 그만 가야겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10052 /* ~그는 당신을 쳐다보며 평가하는 듯하다. 그리고 나서 그는 교묘한 손짓을 하고 천진난만한 표정으로 당신을 바라본다. 내려다 보니 그의 소매에서 동전이 번쩍이는 것이 보인다. "당신이 잘못 본 것이 틀림없소, 친구. 난 오늘같은 화창한 날에 산보를 즐기고 있었을 뿐이오."~ */
  IF ~~ THEN REPLY #10053 /* ~"그렇소, 당신이 옳소. 미안하오... 친구."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #10054 /* ~"아니, 난 당신이 하던 짓이 그것이라고 거의 확신하오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10055 /* ~그는 앞으로 나아가며 당신 등을 정답게 두드린다. 그러자 당신은 당신 지갑의 무게가 늘어나는 것을 느낄 수가 있다. "그럼 안녕히 계시오, 친구. 우리가 다시 만날 때까지."~ */
  IF ~~ THEN REPLY #10056 /* ~"안녕히 계시오."~ */ DO ~GivePartyGold(25)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #10057 /* ~그는 눈살을 찌푸린다. "그럼 당신을 설득하기 위해... 난 두 배로 노력을 해야 할 것 같군. 하지만 당신 생각을 바꾸기 위해 그 이상은 낼 수 없소." 그는 또다시 민첩하게 동작을 하고, 그러자 그의 양쪽 소매에서 동전이 빛나는 것이 보인다.~ */
  IF ~~ THEN REPLY #10058 /* ~"물론 그렇소. 난 당신이 당신 말대로 그냥 산책을 즐기고 있었다고 믿소."~ */ DO ~SetGlobal("Curst_Rogue_Paid","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10059 /* ~"아니, 난 내가 뭘 봤는지 아오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #10060 /* ~그는 앞으로 나아가며 당신 등을 정답게 두드린다. 그러자 당신은 당신 지갑의 무게가 늘어나는 것을 느낄 수가 있다. "그럼 안녕히 계시오, 친구. 우리가 다시 만날 때까지."~ */
  IF ~~ THEN REPLY #10061 /* ~"안녕히 계시오."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #10062 /* ~그는 눈살을 찌푸리고양쪽 팔로 몸짓을 한다. 그러자 동전 대신 칼이 그의 소매 속에서 나타난다. "타협을 보았더라면 좋았을 텐데... 참으로 딱한 일이오."~ */
  IF ~~ THEN REPLY #10063 /* ~"당신 만큼 후회하지는 않을 걸."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.2 11.1
  SAY #10064 /* ~그는 놀란 듯 당신을 쳐다본다. "정말... 놀라운 얘기요. 이 도시는 디바가 있을 만한 곳이 아니오. 하지만 만약 그런 일이 있다면 배신자의 문 여관에 가서 물어보는 것이 좋을 거요. 그 곳에 있는 사람들은 당신이 원하는 것과 같은 종류의 정보를 거래하는 것으로 난 알고 있소."~ */
  IF ~~ THEN REPLY #10065 /* ~"고맙소. 그러리다."~ */ EXIT
  IF ~~ THEN REPLY #10066 /* ~"그 장소는 어디에 있소?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #10067 /* ~"미안하오, 친구. 나도 그 곳에 가본 적이 없어 정확한 위치는 모르오. 하지만 이 지역에 있는 건 틀림없으니 돌아다니다 보면 발견할 수 있을 거요."~ */
  IF ~~ THEN REPLY #10068 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Curst_rogue_paid","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #10069 /* ~도둑은 당신을 다시 보게 돼 다소 불쾌한 듯하다. "아니, 내 옛 친구가 아닌가. 날 다시 보러 왔소? 반갑기는 하지만 난 해야 할 일이 있소."~ */
  IF ~~ THEN REPLY #10070 /* ~"난 돈 때문에 온 거지 대화를 하러 온 것이 아니오."~ */ GOTO 12
  IF ~~ THEN REPLY #10072 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 이 곳 커스트에 있다고 들었소."~ */ GOTO 9
  IF ~~ THEN REPLY #10073 /* ~"방해해서 미안하오, 난 그냥 인사나 할 생각이었소."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #10071 /* ~그는 당신을 보고 눈살을 찌푸리며 매우 심각한 어조로 말한다. "잘 들으시오, 친구. 당신은 내가 하려는 일을 눈치챘고, 프로 대 프로로서 난 당신에게 날 가만히 내버려 두라고 대가를 지불했소. 그러니 그건 그렇게 하도록 하고 우린 서로 친구로 남도록 합시다."~ */
  IF ~~ THEN REPLY #10074 /* ~"좋소. 그럼 떠나겠소."~ */ EXIT
  IF ~~ THEN REPLY #10075 /* ~"그렇게 생각하지 않소. 돈을 내놓지 않으면 당신을 요절내겠소."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #10076 /* ~"타협을 볼 수 있었다면 좋았을 텐데... 참으로 딱한 일이오."~ */
  IF ~~ THEN REPLY #10077 /* ~"당신 만큼 후회하지는 않을 걸."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
