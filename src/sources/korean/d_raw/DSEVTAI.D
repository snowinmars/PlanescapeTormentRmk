// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSEVTAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSEVTAI~

IF ~  Global("Sevtai_Quest","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25995 /* ~이 여인은 비탄에 잠긴 표정을 하고 있으며, 그녀의 전신은 물리거나 손톱에 할퀴어진 상처들로 뒤덮여 있다. 그녀는 손에 쥔 몇 조각의 넝마를 흔들어 대고 있으며, 기념관의 벽에 새겨진 이름들을 허망한 눈으로 바라보고 있다.~ */
  IF ~~ THEN REPLY #25996 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #25997 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26275 /* ~"쉿! 뒤로 물러서!" 여자는 검은색의 날카로운 송곳니를 드러낸다. "이 세브'타이에게 뭘 원하는 거지?"~ */
  IF ~~ THEN REPLY #26494 /* ~"무슨 일이오?"~ */ GOTO 2
  IF ~~ THEN REPLY #26495 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #26496 /* ~"무슨 일이냐고?! 그 빌어먹을 코스... 카오-스... 카오스맨이 내 마차를 부수고 날 공격했어... 그리고 그들을 제지하려고 한 내 자매 셋을 죽였어! 내겐 더 이상 자매들이 없어... 그들은 이제 기념관의 벽에 새겨진 이름들에 지나지 않아..."~ */
  IF ~~ THEN REPLY #26497 /* ~"카오스맨?"~ */ GOTO 3
  IF ~~ THEN REPLY #26498 /* ~"당신에게 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #26499 /* ~"카오스맨이라는 당파야. 하지만 그 실체는 벌통을 들쑤시고 다니면서 뭐든지 하고 싶은 대로 하는 미치광이들이지! 우린 그들에게 아무런 잘못도 하지 않았어! 그런데도 놈들은 미친 개들처럼 우릴 공격하고 손이 닿는 곳에 있는 건 모두 파괴했어.~ */
  IF ~~ THEN REPLY #26500 /* ~"당신을 공격한 카오스맨들은 어떤 놈들이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #26501 /* ~"당신에게 애도의 뜻을 표하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #26502 /* ~"놈들은 벌통을 활보하는 깡패들로... 스스로를... '굶주려 짖는 개'라는 얼토당토 않는 이름으로 부르는 미친놈들이야!"~ */
  IF ~~ THEN REPLY #26503 /* ~"돈을 좀 주겠다면 난 사람을 죽일 수도 있소. 돈이 있다면 나와 자세한 조건에 대해 얘기합시다."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sevtai_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #26504 /* ~"그들의 행동은 옳지 않았소. 만약 당신이 원한다면 그 일을 바로잡아 줄 수 있소. 그들이 세 명을 죽였다면, 같은 수의 이 '굶주린 개들'이라는 자들이 죽을 것이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sevtai_1","GLOBALLaw",1)
~ GOTO 5
  IF ~~ THEN REPLY #26505 /* ~"주의를 기울여 그들을 찾도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #26506 /* ~"만약 당신이 그 살인자들 세 명을 저 세상으로 보내 준다면 구리 귀걸이를 하나 주겠어. 어때?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26507 /* ~"좋소, 하지만 그 임무는 이미 완료되었소. 이미 일전에 나는 그들 중 셋을 벌통에서 죽였소. 아마 그들은 당신 자매들을 죽인 자들이었을 것이오."~ */ JOURNAL #26101 /* ~나는 시체안치소 밖의 더스트맨 기념비에서 세브'타이라는 이상한 여인을 만났다. 그녀는 굶주린 짖는 개라는 이름의 카오스맨 집단에게 습격당해 죽은 자신의 세 자매들을 위해 통곡하고 있었다. 그녀는 놈들 중 셋을 죽여달라고 부탁했으며 난 그러기로 했다. 그런데 난 그녀와 얘기를 나누기 전에 이미 그녀가 말한 놈들을 만났다, 따라서 난 그녀가 부탁하기도 전에 그녀의 요구를 들어준 셈이다. ~ */ GOTO 6
  IF ~~ THEN REPLY #26508 /* ~"그들을 반드시 죽이도록 하겠소.그들이 어디 있을지 말해줄 수 있겠소?"~ */ DO ~SetGlobal("Sevtai_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #26509 /* ~"난 당신을 도울 수가 없을 것 같소, 세브'타이. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.0 8.1
  SAY #26510 /* ~"신들도 오늘은 정의를 못 본 채 하지 않았군!" 그녀는 자신의 거미 같은 머리에 손을 넣어 구리 귀걸이를 하나 꺼낸다. "여기 있어. 팔면은 적잖은 돈을 받을 수 있어. 적어도 동전 서른 세 닢 가치는 있을 거야. 그건 원래 내 자매들 중 한 사람이 가지고 있던 물건이었어... 하지만 그녀에게는 더 이상 그게 필요없으니까."~ */
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",0)
~ THEN REPLY #26511 /* ~"좋소. 안녕히 계시오, 세브'타이."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(250)
~ EXIT
  IF ~  Global("Chaotic_Sevtai_1","GLOBAL",1)
~ THEN REPLY #26512 /* ~"좋소. 안녕히 계시오, 세브'타이."~ */ DO ~GiveItem("CopEar",Protagonist)
SetGlobal("Sevtai_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #26100 /* ~나는 세브'타이에게 돌아와 굶주린 개들을 죽였다고 거짓말을 했다. 그 송곳니 달린 년은 그들이 죽기를 얼라나 간절히 바랬던지 내가 그녀의 부탁대로 했다고 생각했다. 멍청한 여자 같으니... 적어도 난 그녀로부터 동전 몇 푼은 챙길 수가 있었다. ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26513 /* ~"여기서 스파이어 쪽에 있는 남쪽 관문으로 나가... 그리고 나서는 하늘을 향해 울부짖으며 빙빙돌고 있는 자들이 있는 곳에 다다를 때까지 계속 걸어가라고. 바로 그놈들이 굶주린 개들이야." ~ */
  IF ~  GlobalGT("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26514 /* ~"그래, 난 그 블록에 가본 적이 있소. 그건 이 곳 남쪽에 있는 창녀와 술주정뱅이들로 득실거리는 지역이오. 그 곳에 가서 곧 돌아오겠소."~ */ JOURNAL #26099 /* ~나는 시체안치소 밖의 더스트맨 기념비에서 세브'타이라는 이상한 여인을 만났다. 그녀는 굶주린 짖는 개라는 이름의 카오스맨 집단에게 습격당해 죽은 자신의 세 자매들을 위해 통곡하고 있었다. 그녀는 놈들 중 셋을 죽여달라고 부탁했으며 난 그러기로 했다. 그녀는 놈들이 기념비 남쪽의 주정뱅이와 창녀들로 득실거리는 벌통 구역에 있다고 말해주었다. ~ */ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",0)
~ THEN REPLY #26515 /* ~"그럼 가서 그들을 찾아보도록 하겠소."~ */ JOURNAL #26098 /* ~나는 시체안치소 밖의 더스트맨 기념비에서 세브'타이라는 이상한 여인을 만났다. 그녀는 굶주린 짖는 개라는 이름의 카오스맨 집단에게 습격당해 죽은 자신의 세 자매들을 위해 통곡하고 있었다. 그녀는 놈들 중 셋을 죽여달라고 부탁했으며 난 그러기로 했다. 그녀는 놈들이 남쪽 문을 지나서 있는 기념비 남쪽의 벌통 구역에 있다고 말해주었다. ~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #26516 /* ~"또 당신이군..." 그녀는 당신을 향해 고개를 돌린다, 그리고 이빨을 드러내며 으르렁거린다. "내가 원하는 소식을 가져왔어?"~ */
  IF ~  GlobalGT("Kill_SDThug","GLOBAL",2)
~ THEN REPLY #26517 /* ~"나는 굶주려 짖는 개들을 찾아내 그들 중 셋을 황천으로 보냈소."~ */ JOURNAL #26520 /* ~나는 굶주린 개 세 놈을 죽인 후 세브'타이에게 돌아갔다. 대신 그녀는 내 수고의 대가로 내게 구리 귀걸이를 주였으며 그녀의 자매들의 복수를 해준 데 대하여 감사를 했다. ~ */ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26518 /* ~거짓말: "나는 굶주려 짖는 개들을 찾아내 그들 중 셋을 황천으로 보냈소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sevtai_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  GlobalLT("Kill_SDThug","GLOBAL",3)
~ THEN REPLY #26519 /* ~"아직은 좋은 소식이 없소. 난 아직도 그 카오스맨들을 추적하는 중이오."~ */ EXIT
END

IF ~  Global("Sevtai_Quest","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #26521 /* ~송곳니가 달린 여인은 당신을 보자 인사를 한다. "세브'타이와 그녀의 자매들은 당신이 정의를 실현해 준 데 대해 감사하고 있어."~ */
  IF ~~ THEN REPLY #26522 /* ~"좋소, 세브'타이. 안녕히 계시오."~ */ EXIT
END
