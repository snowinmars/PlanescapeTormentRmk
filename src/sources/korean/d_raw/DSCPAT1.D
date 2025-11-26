// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~더럽고 머리도 제대로 빗지 않은 남자가 보인다. 그에게서는 알코올 냄새가 심하게 난다. "뭐요? 뭘 원하는 거요?" 그는 당신 쪽으로 몸을 구부려 당신을 아래위로 살펴본다. "당신에게는 치료사가 필요할 것 같군!" 그는 자신의 썰렁한 유머에 웃음을 터트리며, 그로부터 술과 제대로 소화되지 않은 음식의 메스꺼운 악취가 당신에게로 몰려온다.~ */
  IF ~~ THEN REPLY #3372 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10782 /* ~"나는 어떤 일지를 찾고 있소. 혹시 본 적이 있소?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10783 /* ~"나는 파로드란 이름의 수집자를 찾고 있소. 혹시 그에 대해 아는 것이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #10784 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10785 /* ~"입구에서 불타고 있는 건 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #10786 /* ~"당신이 날 도울 수 없다는 건 명백하군. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10787 /* ~"내 오랜 친구가 아니라면 누구요, 흉터투성이 양반!" 그는 숨을 헐떡이며 깔깔 웃는다, 아니 적어도 그렇게 하려고 시도한다. 그는 만취한 상태라 아무 것도 조용히 할 수 없다. "그래 이 '따귀'에게 뭘 원하시오, 흉터투성이 양반?"~ */
  IF ~~ THEN REPLY #10788 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10789 /* ~"나는 내 일지를 찾고 있소. 난 그걸 엉뚱한 곳에 둔 모양이오."~ */ GOTO 3
  IF ~~ THEN REPLY #10790 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10791 /* ~"입구에서 불타고 있는 건 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #10792 /* ~"아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 6.0
  SAY #10793 /* ~"나? 나는 앤도요!" 그는 비틀거린다. "전에도 나도 누구나 알아 주는 전사였소, 하지만 그건 내가 술에 빠지기 전 얘기지. 친구들은 내가 남의 따귀를 잘 때린다고 해서 날 '따귀'라고 부르곤 했소, 하지만 이제는 여자들이 내가 말만 걸면 내 따귀를 때린다고 해서 날 그렇게 부르오."~ */
  IF ~~ THEN REPLY #10794 /* ~"그건 대단하군. 내 질문에 좀 대답해줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #10795 /* ~"그건 대단하군... 음... 안도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 6.1
  SAY #10796 /* ~그는 잠시 멈춘다. "글쎄, 만약 당신이 그것을 벌통에서 잃어버렸다면 수집자들 중 한 사람이 그걸 가지고 있을 가능성이 높소. 벌통 안을 좀더 돌아다녀 보시오. 그들은 거기서 각종 잡다한 것들을 다 찾아내니까. 아마 그들이라면 당신을 도울 수 있을지도 모르오."~ */
  IF ~~ THEN REPLY #10797 /* ~"좋소. 몇 가지만 더 물어봐도 괜찮겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #10798 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 6.3
  SAY #10799 /* ~"이 가게? 불타는 시체요. 술을 마시기에는 이 도시에서 제일 좋은 곳이요. 물론 옆에 마족들이 있는 걸 견딜 수가 있다면 말이지만. 그리고 가끔씩 붉은 죽음들이 와서 수사한답시고 쑤시고 다니는 것도 참아야 하오. 여기에는 많은 사람들과 많은 흥미로운 것들이 있소."~ */
  IF ~~ THEN REPLY #10800 /* ~"그럼 당신도 인기거리의 하나인 모양이군. 다른 질문에도 좀 대답해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #10801 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.3 6.4
  SAY #10802 /* ~"저거? 그는 이그너스요. 그는 벌통을 불태우려는 기발한 생각을 한 미치광이 마법사요. 위험한 모서리의 골목을 아시오? 그건 그의 작품이오. 한 무리의 마법사들이 힘을 합쳐 그에게 마법을 걸었고, 이제 그는 이 술집의... 음... 마스코트요. 내 사촌도 그 마법사들 중 하나였소. 뭐 대단한 실력은 아니지만 그래도 그를 잡은 건 틀림없는 사실이오!"~ */
  IF ~~ THEN REPLY #10803 /* ~"그건 대단하오, 따귀. 다른 질문들도 좀 대답해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #10804 /* ~"고맙소, 따귀. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 4.0 5.0 7.0
  SAY #10805 /* ~"무엇을 알고 싶소?"~ */
  IF ~~ THEN REPLY #10806 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10807 /* ~"나는 내 일지를 찾고 있소. 혹시 최근에 그런 걸 본 적이 있소?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10808 /* ~"나는 파로드란 이름의 수집자를 찾고 있소. 혹시 그에 대해 아는 것이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #10809 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10810 /* ~"입구에서 불타고 있는 건 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #10811 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 6.2
  SAY #10812 /* ~"파로드? 어디서 들어본 이름같소... 하지만 당신도 알지 않소, 술에 취하면 대가리가 어떻게 되는지... 기억을 할 수가 없소. 미안하오."~ */
  IF ~~ THEN REPLY #10813 /* ~"좋소. 그럼 내 질문에 좀 대답해주시오."~ */ GOTO 6
  IF ~~ THEN REPLY #10814 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
