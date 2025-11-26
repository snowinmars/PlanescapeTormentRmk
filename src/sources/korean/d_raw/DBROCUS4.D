// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3204 /* ~이 신사는 눈에 멍이 든 것을 제외하고는 별로 특이한 점이 없다. 그는 당신이 다가오자 가볍게 고개를 숙인다. "안녕하시오."~ */
  IF ~~ THEN REPLY #3205 /* ~"안녕하시오. 물어볼 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40154 /* ~"안녕하시오, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40155 /* ~"다시 만나 반갑소."~ */
  IF ~~ THEN REPLY #40156 /* ~"안녕하시오. 물어볼 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40157 /* ~"안녕하시오, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.2 4.2 5.1 6.0 7.1 8.1 9.0 10.1 11.0 12.0 13.1 14.0 15.0 16.0 17.0
  SAY #40158 /* ~그는 고개를 끄덕인다. "그래, 계속하시오..."~ */
  IF ~~ THEN REPLY #40159 /* ~"어떻게 해서 눈에 멍이 들게 되었소?"~ */ GOTO 3
  IF ~~ THEN REPLY #40160 /* ~"여기서 뭘 하는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #40161 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40162 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 11
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68125 /* ~"침묵하는 창녀에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 11
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40163 /* ~"나는 케사이-세리스가 래벌의 딸이라는 애기를 들었소. 그게 사실이오?"~ */ GOTO 12
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40164 /* ~"나는 비비안의 향기를 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 13
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40165 /* ~"나는 마릿사의 진홍색 베일을 찾고 있소... 그것이 어디 있는지 혹시 아시오?"~ */ GOTO 15
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40166 /* ~"혹시 래벌 퍼즐웰에 대해 아는 것이 없소?"~ */ GOTO 16
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40167 /* ~"나는 지금까지 모두 아홉 명의 창녀들과 얘기를 했소... 열 번째 학생이 누구인지, 아니면 어디 있는지 혹시 아시오?"~ */ GOTO 17
  IF ~~ THEN REPLY #40168 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40169 /* ~그는 능글맞게 웃는다. "오, 이것 말이오? 그건 긴 이야기요. 당신은 별로 관심이 없을 거요."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 426
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40170 /* ~"하지만 난 듣고 싶소... 제발 얘기를 해주시오."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40171 /* ~"좋소. 다른 질문이 있소..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40172 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #40173 /* ~남자는 눈을 희번덕거리며 한숨을 쉰다. "좋소... 하지만 자세히 설명하지는 않겠소. 전에 긴 얘기라고 했지만, 세 단어로 줄여서 말할 수가 있소: 살무사의 혀 키마스사이."~ */
  IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN REPLY #40174 /* ~"누구?"~ */ GOTO 5
  IF ~  GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40175 /* ~"아... 그렇소, 난 그녀를 알고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #40176 /* ~"알겠소. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40177 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40178 /* ~"아, 당신은 아직 그녀와 얘기를 하지 않은 모양이군. 키마스사이라는 즐거운 쾌락인지에 대해 당신에게 구차하게 설명하지 않겠소... 직접 가서 얘기를 해보시오. 그녀는 이 곳의 창녀들 중 하나로, 그레이스 여사의 가장 흥미로운 학생이오." 그는 미소를 짓는다.~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40179 /* ~"그레이스 여사?"~ */ GOTO 9
  IF ~~ THEN REPLY #40180 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40181 /* ~"그럼 그녀를 찾아가도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #40182 /* ~남자는 꿈을 꾸듯 한숨을 쉰다. "그녀는 정말 멋지오, 그렇지 않소?" 그는 갑자기 주의를 환기시킨다. "하지만 기다리시오! 내 말을 애정의 표시로 착각하지는 마시오... 나는 이미 내가 진정으로 사랑하는 여자와 약혼한 상태이니. 하지만 키마스사이는 너무나도 *특이한* 대화 상대요." 그는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #40183 /* ~"다르다... 그렇소. 다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40184 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #40185 /* ~"나는 이 매음굴의 쾌락을 즐기고 있소! 당신은 아니오?"~ */
  IF ~~ THEN REPLY #40186 /* ~"쾌락?"~ */ GOTO 8
  IF ~~ THEN REPLY #40187 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40188 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40189 /* ~"그렇소... 당신은 이 곳의 숙녀들과 이야기를 하러 온 것이 아니오? 적어도 손님 입장에서는 그것이 이 시설의 목적이오. 그레이스 여사의 아름다운 학생들과의 대화!"~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40190 /* ~"그레이스 여사?"~ */ GOTO 9
  IF ~~ THEN REPLY #40191 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40192 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 8.0 10.0
  SAY #40193 /* ~그는 고개를 끄덕인다. "그녀는 정말 아름답소. 그녀의 목소리는 몇 시간을 들어도 지루하지 않소! 오직 키마스사이만이 더 재미있소..." 그의 정신은 잠시 딴 데 가 있는 듯하다. "오! 하지만 말했듯이 그레이스 여사는 이 매음굴의 주인이오. 그녀는 이 곳 어딘가에 틀림없이 있을 거요... 가서 그녀와 직접 대화를 나누시오. 결코 실망하지 않을 거요."~ */
  IF ~~ THEN REPLY #40194 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40195 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #40196 /* ~"시길에서 지적인 욕망을 힐난하는 매음굴을 모르는 사람이 어디 있겠소? 당신은 정말로 새내기인 모양이오." 그는 한숨을 쉰다. "돌아다니면서 이 곳의 숙녀들과 대화를 나누시오... 그것이 이 매음굴의 전부요. 만약 이 곳의 내력 등에 대해 알고 싶다면 가서 그레이스 여사와 얘기하시오."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40197 /* ~"그레이스 여사?"~ */ GOTO 9
  IF ~~ THEN REPLY #40198 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40199 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #40200 /* ~남자는 잠시 멈추고 생각을 한다. "그녀와 얘기를 한 적은 없지만 아마 그녀의 이름은 '에코'일 거요."~ */
  IF ~~ THEN REPLY #40201 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40202 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY #40203 /* ~"래벌... 래벌... 전설적인 나이트 해그 말이오? 그 괴물은 착한 케사이는 고사하고 그 어떤 *것*의 모친일 리도 없소."~ */
  IF ~~ THEN REPLY #40204 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40205 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #40206 /* ~"그녀가 향기를 잃었소? 이상하군... 나는 바로 몇 시간 전에 그녀를 지나쳤는데 아주 좋은 냄새가 났소. 물론 늘 그녀로부터는 좋은 냄새가 나오. 솔직히 그녀보다 더 매혹적인 향기를 지닌 여자는 만나 본 적이 없소."~ */
  IF ~~ THEN REPLY #40207 /* ~"실은 사라진 건 그녀의 *개인적* 향기요."~ */ GOTO 14
  IF ~~ THEN REPLY #40208 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40209 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40210 /* ~"정말이오? 그런 일이 가능하리라고는 상상도 못했소. 어쨌든 난 그녀가 그것을 되찾기를 기원하오!"~ */
  IF ~~ THEN REPLY #40211 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40212 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #40213 /* ~"아니, 모르오. 솔직히 나는 마릿사가 무섭소. 그녀의 방에는 무언가 끔찍한 것이 기다리고 있으며, 그녀는 날 갈가리 찢어 죽이기 전에 날 가지고 놀고 있을 뿐이라는 생각이 드오. 나는 그녀가 빨리 베일을 되찾아 다시 자신의 어두운 방 밖에서 손님들을 만나기를 진심으로 바라고 있소."~ */
  IF ~~ THEN REPLY #40214 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40215 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.8
  SAY #40216 /* ~"내가 래벌에 대해 아는 것 아이들을 위한 흔해 빠진 동화 수준이오... 그녀는 놀랄 정도로 사악했으며, 레이디 오브 페인의 분노를 사 영원히 추방되었다고 하오."~ */
  IF ~~ THEN REPLY #40217 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40218 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.9
  SAY #40219 /* ~"열 번째 ? 열 번째 학생... 열 번째 창녀... 흠. 아니, 그녀가 누군지 아는 건 고사하고 그런 사람이 있는지도 모르오."~ */
  IF ~~ THEN REPLY #40220 /* ~"다른 질문이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #40221 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END
