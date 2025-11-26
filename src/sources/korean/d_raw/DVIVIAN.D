// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIVIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIVIAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 28 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",0)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 0 // from:
  SAY #2999 /* ~이 키가 크고 우아하며, 선명한 용모와 당당한 태도를 지닌 여인은 귀족적인 아름다움을 상징하고 있다. 그녀의 옷은 은으로 만든 실로 짜여진 듯하며, 그녀의 목걸이에는 작은 약병이 매달려 있다. 그녀는 이국적이며 에로틱한 향내를 풍기고 있으며, 그 향은 당신을 그녀에게로 끌고 간다.~ */
  IF ~~ THEN REPLY #3000 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Vivian","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #38430 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #38431 /* ~이 키가 크고 우아하며, 선명한 용모와 당당한 태도를 지닌 여인은 귀족적인 아름다움을 상징하고 있다. 그녀의 옷은 은으로 만들 실로 짜여진 듯하며, 그녀의 목걸이는 작은 약병이 매달려 있다. 그녀는 이국적이며 에로틱한 향내를 풍기고 있으며, 그 향은 당신을 그녀에게로 끌고 간다. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #38434 /* ~그녀는 눈썹을 치켜 올리고 멸시하는 듯한 표정으로 당신을 본다. "안녕하세요. 내 이름은 비비안이에요. 혹시 날 부르셨나요?"~ */
  IF ~~ THEN REPLY #38435 /* ~"아니오, 질문할 것이 좀 있을 뿐이오..."~ */ GOTO 3
  IF ~~ THEN REPLY #38436 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.1 7.2 9.2 10.1 12.0 17.0 18.0 19.1 20.1 21.1 22.0 23.0 24.1 25.0 26.0 27.0 28.0 29.2 30.1 37.0 38.0
  SAY #39059 /* ~그녀는 오만하게 고개를 끄덕인다. "그럼 계속하세요."~ */
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39060 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 4
  IF ~  GlobalGT("Scent_Quest","AR0605",0)
~ THEN REPLY #39067 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 30
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39068 /* ~"그 놀랄 만큼 좋은 향기는 대체 뭐요?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",0)
~ THEN REPLY #39069 /* ~"당신 목걸이에 달려 있는 작은 유리병은 뭐요?"~ */ GOTO 20
  IF ~~ THEN REPLY #39070 /* ~"내게 이 곳에 대해 얘기해줄 수 있겠소?"~ */ GOTO 24
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #39071 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 38
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67850 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ DO ~SetGlobal("Ecco_Rumor_1","AR0605",1)
~ JOURNAL #66744 /* ~매음굴의 창녀들 중 하나는 내게 침묵하는 창녀 에코에 대해서는 돌로라에게 물어보라고 권했다. 그녀의 의하면 돌로라는 에코의 옛 애인과 가끔 얘기를 하는데, 그는 에코가 말을 하지 않기 전부터 그녀를 알고 있었다고 한다. ~ */ GOTO 38
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #39072 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ JOURNAL #66743 /* ~나는 창녀들 중 하나에게 케사이-세리스가 정말로 래벌의 딸인지 아느냐고 묻자, 그녀는 내게 줄리엣에게 물어보라고 권했다. 줄리엣이 몬태규와 만나기 전에 그들은 좋은 친구였던 모양이다.~ */ GOTO 26
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #39073 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #39074 /* ~"혹시 래벌 퍼즐웰에 대해 아는 것이 없소?"~ */ GOTO 21
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #39075 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 27
  IF ~~ THEN REPLY #39076 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #39077 /* ~"이 곳에서의 내 학생으로서의 일 말고요? 실은 난 어떤 것을 찾고 있어요. 혹시 그것의 냄새를 맡으신 적은 없나요?" ~ */
  IF ~~ THEN REPLY #39078 /* ~"학생?"~ */ GOTO 5
  IF ~~ THEN REPLY #39079 /* ~"냄새를 맡아?"~ */ GOTO 6
  IF ~~ THEN REPLY #39080 /* ~"아니, 그런 적은 없는 것 같소..."~ */ GOTO 7
  IF ~~ THEN REPLY #39081 /* ~"실은 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #39082 /* ~비비안은 좀 지루한 표정으로 고개를 끄덕인다. "맞아요. 그레이스 여사는 우리들에게 화술, 즉 말로 다른 사람에게 영향을 미치고 자타에 대한 새로운 견식을 얻는 방법에 대해 가르치죠. 이 곳의 모든 창녀들은 그러한 학생들이에요."~ */
  IF ~~ THEN REPLY #39083 /* ~"당신은... 내가 어떤 냄새를 맡은 적이 있냐고 물은 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #39084 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39085 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 19.0 20.0
  SAY #39086 /* ~"그래요... 내 향기들 중 하나가 사라져... 어딘가를 '방황하고' 있어요. 그것은 한 곳에 보관하기가 좀 어려워요... 다른 사람이 실수로 그것을 가져간 것이 아니면 좋으련만... 하지만 여기에는 '숙녀'들이 여럿 있으니 알 수가 없지요." 그녀는 눈살을 찌푸린다. "그래서 말인데... 혹시 그 냄새를 어디서 맡으신 적은 없나요?"~ */
  IF ~~ THEN REPLY #39087 /* ~"당신은 지금도 매우 좋은 향기를 풍기고 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #39088 /* ~"어떻게 '향기'가 방황할 수가 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #39089 /* ~"난 맡은 적이 없는 것 같소..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.2 8.1
  SAY #39090 /* ~"불행한 일이에요, 나는 걸 다시는 찾지 못할까 걱정이 돼요."~ */
  IF ~~ THEN REPLY #39091 /* ~"만약에 찾는다면 그걸 어떻게 식별할 수가 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #39092 /* ~"내가 도와줄 수가 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #39093 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39094 /* ~"곧 찾게 되기를 바라겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #39095 /* ~그녀는 잠시 얼굴을 찡그린다, 그러나 곧 당신에게 미소를 짓는다. "그래요, 그리고 칭찬해 주셔서 고마워요... 하지만 이 향기는 내 개인적 향기에 비하면 아무 것도 아니에요." 그녀는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #39096 /* ~"어떻게 '향기'가 방황할 수가 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #39097 /* ~"난 맡은 적이 없는 것 같소..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #39098 /* ~비비안은 고개를 젓는다. "그건 누군가가 *가져갔다*는 말을 돌려서 한 거예요. 이 곳의 '숙녀'들은 좀 질투가 심하고, 때때로 내 향수들을 내 허락도 없이 쓰기도 해요. 하지만 이번에는 누가 나만을 위한 개인적인 향기를 가지고 달아났어요... 나는 나는 그 향기를 힘들여 완성했는데 *훅*하고 없어진 거예요." 비비안은 발을 동동 구른다. "나는 향기를 돌려받고 싶어요, 그것도 지금 당장!"~ */
  IF ~~ THEN REPLY #39099 /* ~"만약에 찾는다면 그걸 어떻게 식별할 수가 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #39100 /* ~"내가 도와줄 수가 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #39101 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39102 /* ~"곧 찾게 되기를 바라겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 9.0
  SAY #39103 /* ~"단언하겠는데 냄새만 맡으면 당신도 금새 알 수가 있을 거예요. 그건 매우 인상적이에요, 특히 남성에게는."~ */
  IF ~~ THEN REPLY #39104 /* ~"내가 도와줄 수가 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #39105 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39106 /* ~"곧 찾게 되기를 바라겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.1 9.1 10.0
  SAY #39107 /* ~비비안은 의심쩍어한다. "정말이에요? 강요할 생각은 없어요."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #39108 /* ~"전혀 강제가 아니오. 나는 당신과 같은 아름다운 여인을 도울 수가 있게 되어 기쁘오."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~나는 지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 비비안이 그녀의 '개인적 향기'를 찾는 일을 돕기로 했다. 그녀는 내게 냄새만 맡으면 금방 그것을 알아볼 수 있을 거라고 했다.  ~ */ GOTO 12
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #39109 /* ~"전혀 강제가 아니오. 나는 당신과 같은 아름다운 여인을 도울 수가 있게 되어 기쁘오."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~나는 지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 비비안이 그녀의 '개인적 향기'를 찾는 일을 돕기로 했다. 그녀는 내게 냄새만 맡으면 금방 그것을 알아볼 수 있을 거라고 했다.  ~ */ EXTERN ~DANNAH~ 194
  IF ~~ THEN REPLY #39110 /* ~"오, 전혀 강제가 아니오. 단지 나는 상응하는 보수를 기대할 뿐이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vivian_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #39111 /* ~"만약 당신이 날 의심한다면 난 당신을 도울 수가 없소."~ */ GOTO 18
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39112 /* ~비비안은 웃으며 고개를 끄덕인다. "당신은 정말 친절하시군요. 좋아요... 그걸 찾으면 내게 알려 주세요. 나는 그걸 꼭 되찾고 싶어요. 이 세상에 하나밖에 없는 향기니까요."~ */
  IF ~~ THEN REPLY #39113 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39114 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #39115 /* ~비비안은 눈을 부라린다. "당신의 야만적인 용병 같은 외관으로부터 짐작했던 대로군요. 좋아요... 내 향기를 찾아 주면 나도 당신의 냄새 문제를 도와주겠어요.~ */
  IF ~~ THEN REPLY #39116 /* ~"내 냄새를?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39117 /* ~그녀는 능글맞게 웃으며 당신을 가리킨다. "그래요 *당신* 냄새. 그 고약한 신 냄새 말이에요." 그녀는 냄새를 맡더니 코를 찌푸린다. "그것은 당신 피부에도 배어 있어요... 아무리 목욕을 해도 그 악취는 제거할 수가 없어요."~ */
  IF ~~ THEN REPLY #39118 /* ~"당신은 대체 어떤 방법으로 그러한 일을 할 수가 있소? 그리고 그것이 내게 가져다 줄 혜택은?"~ */ GOTO 15
  IF ~~ THEN REPLY #39119 /* ~"관두시오. 시간 낭비요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39120 /* ~"당신의 첫 번째 질문에 대답하자면, 내겐 특별한 재주가 있어요. 일종의 마법이지만 자세한 설명은 생략하겠어요. 어쨌든 나는 사람의 냄새를 만들거나 바꿀 수가 있어요." ~ */
  IF ~~ THEN REPLY #39121 /* ~"그리고 그 혜택은...?"~ */ GOTO 16
  IF ~~ THEN REPLY #39122 /* ~"관두시오. 시간 낭비요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #39123 /* ~"누구도 사람의 인상에 냄새가 큰 영향을 미친다는 것을 부정할 수는 없어요. 당신이 다른 사람에게 그런 얘기를 들었는지는 모르겠지만, 나는 사람들이 당신으로부터 발산되는 죽음의 향기 때문에 당신을 다소나마 꺼리고 있을 거라고 확신해요. 당신의 냄새를 개선하면 당신의 카리스마가 눈에 띄게 향상될 수도 있어요." ~ */
  IF ~~ THEN REPLY #39124 /* ~"좋소... 당신 향기를 내가 찾아 주겠소."~ */ DO ~SetGlobal("Scent_Quest","AR0605",1)
SetGlobal("Scent_Quest_QJ","GLOBAL",1)
~ JOURNAL #61607 /* ~나는 지적인 욕망을 힐난하는 매음굴의 창녀들 중 하나인 비비안이 그녀의 '개인적 향기'를 찾는 일을 돕기로 했다. 그녀는 내게 냄새만 맡으면 금방 그것을 알아볼 수 있을 거라고 했다.  ~ */ GOTO 17
  IF ~~ THEN REPLY #39125 /* ~"관두시오. 시간 낭비요."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39126 /* ~"그럼 거래는 성립되었군요. 그걸 찾으면 내게 알려 주세요. 나는 그걸 꼭 되찾고 싶어요. 이 세상에 하나밖에 없는 향기니까요."~ */
  IF ~~ THEN REPLY #39127 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39128 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.3 14.1 15.1 16.1
  SAY #39129 /* ~"좋아요. 상관없어요. 당신 도움이 없어도 언젠가는 꼭 찾을 수 있을 테니까요.~ */
  IF ~~ THEN REPLY #39130 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39131 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.2
  SAY #39132 /* ~그녀는 미소짓는다. "칭찬해 주셔서 고마워요... 하지만 이 향기는 내 개인적 향기에 비하면 싸구려 향수 냄새나 마찬가지예요." 그녀는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #39133 /* ~"당신의... '개인적' 향기?"~ */ GOTO 6
  IF ~~ THEN REPLY #39134 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39135 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.3
  SAY #39136 /* ~비비안은 자신의 목에 걸린 향수병을 내려다본다. "아, 이거 말인가요? 그건 보통 향수에 불과해요. 이 향기는 내 개인적 향기에 비하면 아무 것도 아니에요." 그녀는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #39137 /* ~"당신의... '개인적' 향기?"~ */ GOTO 6
  IF ~~ THEN REPLY #39138 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39139 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.9
  SAY #39140 /* ~"역사상의 인물이 아닌가요? 기억이 나질 않아요. 그녀가 누구죠?"~ */
  IF ~~ THEN REPLY #39141 /* ~"과거 시길에 존재했던 나이트 해그인 것 같소."~ */ JOURNAL #66742 /* ~매음굴의 창녀들 중 하나에게 래벌에 대해 묻자, 그녀는 이브즈와 얘기를 해보라고 권했다. 그녀의 말에 의하면 이브즈는 온갖 종류의 이야기를 수집하며, 아마 그녀의 레퍼토리 중에는 래벌의 얘기도 포함되어 있을 것이라고 한다.  ~ */ GOTO 22
  IF ~~ THEN REPLY #39142 /* ~"관두시오... 그럼 당신에게 다른 것에 대해 물어봅시다..."~ */ GOTO 3
  IF ~~ THEN REPLY #39143 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39144 /* ~"나는 그녀가 과거의 존재로 남길 바라요. 나이트 해그는 다원 우주 전역에 걸쳐 여성의 이름은 더럽히는 존재니까요." 그녀는 갑자기 멈춘다. "이브즈한테 물어보세요. 그녀는 온갖 기묘한 이야기들을 알고 있으니까요."~ */
  IF ~~ THEN REPLY #39146 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39147 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.8
  SAY #39148 /* ~"만약 내가 그것이 어디 있는지 알기만 한다면 불에 태운 후 그 재를 가장 깊숙한 심연에 던져 버리겠어요! 나는 그 끔찍한 괴물이 다시는 자신의 소중한 베일을 찾지 못한 채 죽는 날까지 자신의 방에서 갇혀 지내기를 바래요!" 비비안은 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #39149 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39150 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.4
  SAY #39151 /* ~"그레이스 여사의 매음굴 말인가요? 그레이스 여사가 우리들에게 화술, 즉 말로 다른 사람에게 영향을 미치고 자타에 대한 새로운 견식을 얻는 방법에 대해 가르치는 학교예요. 많은 이들에게 있어 센세이트가 되기 위한 과정이에요."~ */
  IF ~~ THEN REPLY #39152 /* ~"감각의 공동체?"~ */ GOTO 25
  IF ~~ THEN REPLY #39153 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39154 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 30.0
  SAY #39155 /* ~비비안은 한숨을 쉰다. "센세이트에 대해서라면 훨-후럼-그레이스나 시 공회당에 있는 사람들에게 물어보세요. 그들이라면 기꺼이 설명해 줄 거예요."~ */
  IF ~~ THEN REPLY #39156 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39157 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 3.7
  SAY #39158 /* ~비비안은 고개를 끄덕이며 목소리를 낮춘다. "나도 그런 소문은 들었어요. 그렇다면 그녀의 붉은 눈과 기묘한 피부색도 납득이 가요. 하지만 그 소문이 사실인지는 모르겠어요. 줄리엣에게 물어보세요. 줄리엣이 몬태규와 사랑에 빠지기 전까지는 그녀가 케사이-세리스의 가장 친한 친구였으니까요."~ */
  IF ~~ THEN REPLY #39159 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39160 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 3.10
  SAY #39161 /* ~"열 번째 학생?" 그녀는 혹시 자신이 당신 말을 잘못 들은 것은 아니지 확인하려고 당신을 살펴본다. "당신은 머리를 너무 많이 두들겨 맞은 것 같군요. 아니면 이 곳 여자들 중 하나가 당신을 놀렸던지. 내가 아는 한 열 번째 학생은 없어요." ~ */
  IF ~~ THEN REPLY #39162 /* ~"그럼 다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39163 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 29 37 even though they appear after this state */
~  Global("Vivian","GLOBAL",1)
Global("Scent_Quest","AR0605",0)
~ THEN BEGIN 28 // from:
  SAY #39164 /* ~비비안은 당신을 보자 당당하게 고개를 끄덕여 인사한다. 그녀는 아직도 그녀의 진기하고 에로틱한 향수의 향기에 둘러싸여 있다, 그리고 당신은 그 향기에 끌려 그녀에게 다가간다.~ */
  IF ~~ THEN REPLY #39165 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39166 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 37 even though they appear after this state */
~  Global("Scent_Quest","AR0605",1)
~ THEN BEGIN 29 // from:
  SAY #39167 /* ~비비안은 정중한 미소로 당신을 맞이한다. "혹시 내 향기를 찾는 데 성공했나요?"~ */
  IF ~  PartyHasItem("SVeil")
~ THEN REPLY #39168 /* ~"그렇소... 이 진홍색 베일 안에서 찾았소."~ */ DO ~DestroyPartyItem("SVeil",FALSE)
GiveItemCreate("CVeil",Protagonist,1,0,0)
AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~나는 비비안의 개인적 향기를 그녀에게 돌려주었다. ~ */ GOTO 31
  IF ~  Global("Veil_Quest","AR0605",2)
~ THEN REPLY #39169 /* ~"그렇다고 할 수도 있소. 내 생각에 그것은 마릿사가 잃어버렸던 베일 속에 있었소. 나는 그 베일을 마릿사에게 돌려주었고 당신 향기는 이제 그녀가 가지고 있을 거요."~ */ DO ~AddexperienceParty(25000)
SetGlobal("Scent_Quest","AR0605",2)
SetGlobal("Scent_Quest_QJ","GLOBAL",2)
~ JOURNAL #61608 /* ~나는 비비안의 개인적 향기를 그녀에게 돌려주었다. ~ */ GOTO 35
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39170 /* ~"아니오, 하지만 질문할 것들이 있소."~ */ GOTO 3
  IF ~  !PartyHasItem("SVeil")
~ THEN REPLY #39171 /* ~"아니오, 하지만 계속 찾아 보겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 3.1
  SAY #39172 /* ~"나는 그레이스 여사의 창녀, 즉 학생들 중 하나예요. 나는 센세이트의 일원이 되고자 해요. 내 가족은 과연 내가 정말로 당원이 되고자 하는지를 검증하기 위한 방법들 중 한 가지로서 이 시설에서 수업을 받을 것을 내게 권했어요. ~ */
  IF ~~ THEN REPLY #39173 /* ~"센세이트 당파?"~ */ GOTO 25
  IF ~~ THEN REPLY #39174 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #39175 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #39176 /* ~비비안의 눈빛이 명랑해진다. "아, 정말 너무 반가워요!" 그녀는 베일을 당신 손으로부터 건네 받는다. 그리고 그 위에다 대고 뭐라고 몇 마디 중얼거린 후 다시 당신에게 돌려준다. 그녀는 자신의 진홍색 머리를 비빈다, 그러자 잠시 후 당신은 지금까지 맡아본 냄새 중 가장 에로틱하고 자극적인 강렬한 향기로 에워싸이게 된다.~ */
  IF ~  Global("Evil_Vivian_1","GLOBAL",0)
~ THEN REPLY #39177 /* ~"냄새가 너무... 좋소..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39178 /* ~"냄새가 너무... 좋소..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 36.0
  SAY #39179 /* ~"그렇죠?" 그녀는 미소짓는다. "당신이 날 도와줬으니 나도 당신을 돕고 싶어요. 가까이 오세요..."~ */
  IF ~~ THEN REPLY #39180 /* ~그녀에게 접근한다.~ */ GOTO 33
  IF ~~ THEN REPLY #39181 /* ~"사양하겠소. 난 괜찮소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 34.0
  SAY #39184 /* ~당신은 비비안에게 다가간다. 그녀는 당신의 손을 잡아서 뒤집더니 당신 팔목의 냄새를 조심스럽게 맡는다. "체!" 그녀는 코를 찌푸린다. "식초! 아니... 향료? 자, 내가 이 냄새를 당신으로부터 제거해 주겠어요..." 그녀는 기묘한 주문을 몇 마디 중얼거린다, 그러자 약간 따끔한 감각이 당신 피부 전체로 퍼져 나간다. 잠시 후 당신 몸에서 나는 약물 냄새는 대폭 준다. "자, 어때요? 이제 사람들은 전처럼 당신과의 대화를 적극적으로 피하려고 하지 않을 거예요." ~ */
  IF ~~ THEN REPLY #39185 /* ~"고맙소, 비비안. 안녕히 계시오."~ */ DO ~PermanentStatChange(Protagonist,CHR,RAISE,1)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1 36.1
  SAY #39186 /* ~"그렇죠?" 비비안의 얼굴에서 미소가 갑자기 사라진다. "이제 당신은 보수를 원하겠군요. 가까이 오세요..."~ */
  IF ~~ THEN REPLY #39187 /* ~그녀에게 접근한다.~ */ GOTO 33
  IF ~~ THEN REPLY #39188 /* ~"사양하겠소. 난 괜찮소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.1
  SAY #39189 /* ~아주 잠시 동안 비비안의 눈은 분노로 불탄다, "그녀가 가지고 있다고요, *그녀*가? 어디 두고 보자. 어디 가지 마세요, 곧 돌아올 테니."~ */
  IF ~~ THEN REPLY #39190 /* ~기다린다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #39191 /* ~"자! 그걸로 그 문제는 해결되었어요! 그 추악한 마녀는... 늘 내 향수를 훔치곤 했어요, 하지만 감히 내 개인적 향기를 훔칠 정도로 뻔뻔스러우리라고는 상상하지 못했어요. 흥!" 그녀는 갑자기 자신의 진홍색 머리를 비빈다, 그러자 잠시 후 당신은 지금까지 맡아본 냄새 중 가장 에로틱하고 자극적인 강렬한 향기로 에워싸이게 된다.~ */
  IF ~  !Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39192 /* ~"냄새가 너무... 좋소..."~ */ GOTO 32
  IF ~  Global("Evil_Vivian_1","GLOBAL",1)
~ THEN REPLY #39193 /* ~"냄새가 너무... 좋소..."~ */ GOTO 34
END

IF WEIGHT #0 ~  Global("Scent_Quest","AR0605",2)
~ THEN BEGIN 37 // from:
  SAY #39194 /* ~비비안은 돌아서서 당신에게 인사한다. 그녀의 귀족적인 아름다움조차도 그녀를 에워싸고 있는 놀랄 정도로 에로틱한 향기... 당신이 그녀에게 되찾아 준 그녀의 '개인적 향기'의 찬란함에 비하면 빛이 바랜다. ~ */
  IF ~~ THEN REPLY #39195 /* ~"질문할 것이 하나 있소, 비비안..."~ */ GOTO 3
  IF ~~ THEN REPLY #39196 /* ~"그냥 지나던 길이었소. 안녕히 계시오, 비비안."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 3.5 3.6
  SAY #39197 /* ~"에코 말인가요? 그녀는 참 귀엽고 좋은 아이예요. 조용하죠." 비비안은 얼굴을 찌푸린다. "그것이 그녀의 매력일지도 몰라요. 그녀가 왜 말을 못하는 지에 대해서는 여러 가지 추측이 난무하고 있지만, 나는 그녀가 처절한 실연을 했기 때문이라고 생각해요. 돌로라가 제일 잘 알 거예요. 그녀는 에코가 목소리를 잃기 전에 한 때 사랑했던 남자와 사귀고 있는 것으로 알려져 있으니까요."~ */
  IF ~~ THEN REPLY #39199 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #52814 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
