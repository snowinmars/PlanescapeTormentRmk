// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVERM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVERM~

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 0 // from:
  SAY #33152 /* ~그는 혐오와 공포가 뒤섞인 표정을 하며 뒤로 물러선다. "물러... 서시오! 날 그냥 내버려 두시오!"~ */
  IF ~~ THEN REPLY #33153 /* ~그를 그냥 보내준다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 1 // from:
  SAY #33154 /* ~당신이 다가가자 그는 놀라서 눈을 크게 뜬다, 그리고 당신으로부터 물러선다. "나는 당신에게 아무런 쓸모도 없소. 정말이오 - 날 좀 그냥 내버려 두시오!"~ */
  IF ~~ THEN REPLY #33155 /* ~그를 그냥 보내준다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 2 // from:
  SAY #33156 /* ~"꺼지시오! 난 당신과 아무 말도 하고 싶지 않소!"~ */
  IF ~~ THEN REPLY #33157 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 3 // from:
  SAY #33158 /* ~그는 당신을 무시하려고 무척 애를 쓴다. 당신이 그의 시선을 끌려고 하면 할수록 그는 더욱더 노골적으로 당신과 얘기할 의사가 없음을 나타낸다.~ */
  IF ~~ THEN REPLY #33159 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 4 // from:
  SAY #33160 /* ~"당신은 평생토록 벌통, 또는 그보다 더 지독한 곳에서 살아온 것 같소. 이제 날 그냥 내버려 두고 떠나 주시오!!"~ */
  IF ~~ THEN REPLY #33161 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33162 /* ~"당신은 정말 꼴이 말이 아니군. 휴식이 필요하면 여인숙에 가서 쉬시오... 그 곳은 이 지역 한가운데에 있소. 이제 날 그냥 내버려 두시오! 난 더 이상 당신 질문에 대답하느라 시간을 낭비하지 않겠소."~ */
  IF ~~ THEN REPLY #33163 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33164 /* ~"더스트맨이 모이는 바에는 가보았소? 당신은 내게 그 곳의 일꾼들을 연상시키오..." 그는 통렬하게 웃는다.~ */
  IF ~~ THEN REPLY #33165 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33166 /* ~사내는 꼬치에 꽂은 쥐처럼 보이는 것을 씹고 있다. "뭐요? 요리한 쥐를 본 적이 없는 거요? 몸에 좋고 맛도 괜찮소! 당신도 배고프면 크리든에게 가서 얘기를 하시오. 그는 해수 및 질병 관리국 밖에 서 있소."~ */
  IF ~~ THEN REPLY #33167 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33168 /* ~"최근 그 굶주린 개들과 만난 적이 있소? 나라면 그 울부짖으며 뛰어다니는 얼간이들을 가급적 피하겠소... 그들은 정말 미쳐도 더럽게 미쳤소!"~ */
  IF ~~ THEN REPLY #33169 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 9 // from:
  SAY #33170 /* ~"당신에게 도움이 될 만한 건 아무 것도 모르오.,. 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #33171 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 10 // from:
  SAY #33172 /* ~그는 당신을 쳐다보더니 가슴 위에 반원을 그린다. "나는 내 일에만 신경을 쓰니까 당신도 그렇게 해주면 고맙겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #33173 /* ~그를 그냥 보내준다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 11 // from:
  SAY #33174 /* ~당신이 다가가자 사내는 얼굴을 찌푸린다. "알지도 못하는 사람과 얘기할 시간 따윈 내겐 없소. 게다가 그런 짓을 하는 건 벌통에서는 별로 안전하지 못하오. 안녕히 계시오."~ */
  IF ~~ THEN REPLY #33175 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
NumTimesTalkedTo(0)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 12 // from:
  SAY #33176 /* ~"벌통에서 산다는 건 정말 엿같소."~ */
  IF ~~ THEN REPLY #33177 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33178 /* ~"당신은 정말 꼴이 말이 아니군. 휴식이 필요하면 여인숙에 가서 쉬시오... 그 곳은 이 지역 한가운데에 있소. 이제 날 그냥 내버려 두시오! 난 더 이상 당신 질문에 대답하느라 시간을 낭비하지 않겠소."~ */
  IF ~~ THEN REPLY #33179 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33180 /* ~"더스트맨이 모이는 바에는 가보았소? 당신은 내게 그 곳의 일꾼들을 연상시키오..." 그는 통렬하게 웃는다.~ */
  IF ~~ THEN REPLY #33181 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33182 /* ~사내는 꼬치에 꽂은 쥐처럼 보이는 것을 씹고 있다. "뭐요? 요리한 쥐를 본 적이 없는 거요? 몸에 좋고 맛도 괜찮소! 당신도 배고프면 크리든에게 가서 얘기를 하시오. 그는 해수 및 질병 관리국 밖에 서 있소."~ */
  IF ~~ THEN REPLY #339 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #340 /* ~"최근 그 굶주린 개들과 만난 적이 있소? 나라면 그 울부짖으며 뛰어다니는 얼간이들을 가급적 피하겠소... 그들은 정말 미쳐도 더럽게 미쳤소!"~ */
  IF ~~ THEN REPLY #341 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #3921 /* ~"나는 당신에 대한 얘기를 들었소... 파로드에 대해 캐묻고 다니고 있지 않소? 만약 아직도 그를 찾지 못했다면 이 곳 북쪽에 있는 넝마주이 광장에 가보시오."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33184 /* ~"그럼 그 곳에 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33188 /* ~"나는 그를 이미 찾았소. 어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33192 /* ~"위험한 모서리의 골목에 대해 들은 적이 있소? 한때는 그 곳에도 거리가 있었으나 깡그리 타버렸소. 이제는 깡패들만 그 곳을 어슬렁거리고 있소."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33193 /* ~"그래, 난 그 곳에 가보았소."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33194 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33195 /* ~"만약 지독한 악취를 견딜 수가 있다면, 이 근처에 이는 리크윈드란 자를 찾아가시오. 그는 당신에게 해줄 만한 흥미로운 이야기들을 적지 않게 알고 있을 거요."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33196 /* ~"나는 가서 그를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33197 /* ~"그래, 난 그를 만났소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33198 /* ~"불타는 시체는 내가 벌통에서 제일 좋아하는 바요... 때로는 너무 뜨겁긴 하지만 이름이 불타는 시체니 어쩔 수가 없지 않겠소."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33199 /* ~"그 곳에 이제 시체는 없소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33200 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33201 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 21 // from:
  SAY #33202 /* ~사내는 고개를 끄덕여 당신에게 인사한다. "안녕하시오, 친구. 도울 수만 있다면 돕고 싶소... 하지만 난 당신에게 도움이 될 만한 걸 알고 있지 못하오."~ */
  IF ~~ THEN REPLY #33203 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 22 // from:
  SAY #33205 /* ~"나는 여기가 싫소... 벌통을 영원히 떠날 수 있을 정도의 돈을 모을 수 있다면 좋겠소. 내 충고를 받아들여 아직 떠날 수 있을 때 이 곳을 떠나시오."~ */
  IF ~~ THEN REPLY #33206 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 23 // from:
  SAY #33207 /* ~"이 부근에서는 조심하는 게 좋을 거요... 벌통에서는 폭력이 삶의 한 방식이니까."~ */
  IF ~~ THEN REPLY #33208 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33209 /* ~"당신은 정말 꼴이 말이 아니군. 휴식이 필요하면 여인숙에 가서 쉬시오... 그 곳은 이 지역 한가운데에 있소. 이제 날 그냥 내버려 두시오! 난 더 이상 당신 질문에 대답하느라 시간을 낭비하지 않겠소."~ */
  IF ~~ THEN REPLY #33210 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33211 /* ~"나는 당신에 대한 얘기를 들었소... 파로드에 대해 캐묻고 다니고 있지 않소? 만약 아직도 그를 찾지 못했다면 이 곳 북쪽에 있는 넝마주이 광장에 가보시오."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"그럼 그 곳에 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"나는 그를 이미 찾았소. 어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33214 /* ~"나는 이 부근에서 포피론이라 사람을 만난 적이 있소... 그라면 다른 사람에게 싸우는 법에 대해 가르칠 수가 있을 거요."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33215 /* ~"나는 가서 그를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33216 /* ~"그래, 난 그를 만났소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33217 /* ~"만약 당신이 길을 찾고 있다면 '게시판'에 가보시오. 그것은 더스트맨이 모이는 바 밖에 서 있소."~ */
  IF ~~ THEN REPLY #33218 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33219 /* ~"위험한 모서리의 골목에 대해 들은 적이 있소? 한때는 그 곳에도 거리가 있었으나 깡그리 타버렸소. 이제는 깡패들만 그 곳을 어슬렁거리고 있소."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33220 /* ~"그래, 난 그 곳에 가보았소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33221 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33222 /* ~"많은 사람들이 죽은 친지들을 추모하려고 이 곳에 온다오... 더스트맨 기념관에는 정말 이상한 더스트맨이 한 사람 있는데, 그는 당신이 찾고 있는 사람이 죽었는지 여부에 대해 말해줄 수 있으며, 당신이 고인이 기억되기를 원할 경우 고인의 이름을 매장해 줄 수도 있소."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #1252 /* ~"그래, 그는 '이름의 죽음'이라 불리오. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #1254 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33223 /* ~"시길의 거의 모든 더스트맨들은 더스트맨이 모이는 바에서 일정 시간을 보내오. 만약 당신이 특정한 더스트맨을 찾고 있다면 그 곳에서부터 시작하는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #33225 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33228 /* ~사내는 꼬치에 꽂은 쥐처럼 보이는 것을 씹고 있다. "뭐요? 요리한 쥐를 본 적이 없는 거요? 몸에 좋고 맛도 괜찮소! 당신도 배고프면 크리든에게 가서 얘기를 하시오. 그는 해수 및 질병 관리국 밖에 서 있소."~ */
  IF ~~ THEN REPLY #33230 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33232 /* ~"만약 지독한 악취를 견딜 수가 있다면, 이 근처에 이는 리크윈드란 자를 찾아가시오. 그는 당신에게 해줄 만한 흥미로운 이야기들을 적지 않게 알고 있을 거요."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33233 /* ~"나는 가서 그를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33234 /* ~"그래, 난 그를 만났소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33235 /* ~"시장에 가면 당신이 필요로 하는 건 대부분 구할 수 있을 거요"~ */
  IF ~~ THEN REPLY #33236 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33237 /* ~"시장에서 프로피라라는 여자가 하는 얘기를 들은 적이 있소? 대부분의 사람들은 그녀가 돌았다고 얘기하지만 만약 그녀가 옳다면 시길은 조만간 아수라장이 될 거요."~ */
  IF ~~ THEN REPLY #33238 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33239 /* ~"위험한 모서리의 골목에 대해 들은 적이 있소? 한때는 그 곳에도 거리가 있었으나 깡그리 타버렸소. 이제는 깡패들만 그 곳을 어슬렁거리고 있소."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33240 /* ~"그래, 난 그 곳에 가보았소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33241 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33242 /* ~"최근 그 굶주린 개들과 만난 적이 있소? 나라면 그 울부짖으며 뛰어다니는 얼간이들을 가급적 피하겠소... 그들은 정말 미쳐도 더럽게 미쳤소!"~ */
  IF ~~ THEN REPLY #33243 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33244 /* ~"불타는 시체는 내가 벌통에서 제일 좋아하는 바요... 때로는 너무 뜨겁긴 하지만 이름이 불타는 시체니 어쩔 수가 없지 않겠소."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33246 /* ~"그 곳에 이제 시체는 없소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33247 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33248 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33249 /* ~"'나무를-위해-통곡하는-자'라는 미치광이는 만났소? 정말 얼간이요... 이 곳에 누가 나무 따위에 신경이나 쓰겠소. 내가 알고 싶은 건 애당초 어떤 바보가 이 곳에 나무를 갖다 심었는가 하는 거요!"~ */
  IF ~~ THEN REPLY #33250 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33251 /* ~"당신 지갑을 조심하라고만 말하겠소, 친구... 내가 알기로 이 지역에서는 소매치기 사고가 빈발하오."~ */
  IF ~~ THEN REPLY #33252 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33253 /* ~"때때로 이 주변을 뛰어다니는 미친 여자가 있소... 내가 듣기로 그녀는 고향으로 돌아갈 방법을 찾고 있는 무지한 물질계인이라고 하오."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33254 /* ~"그녀는 곧 고향에 도착하거나 고향으로 가게 될 것이오. 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33255 /* ~"나는 그녀를 만났소. 그녀의 이름은 잉그레스요. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33256 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33257 /* ~"여유 시간이 있고 주머니에 돈도 있다면, 시장에 있는 가오하에게 가서 얘기를 해보시오."~ */
  IF ~~ THEN REPLY #33258 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33259 /* ~"당신 몸에는 흥미롭게 생긴 문신들이 많소, 친구. 이 지역에는... 다름 아닌 다버스가 운영하는 문신 가게가 있소!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33260 /* ~"나도 알고 있소. 그의 이름은 휄이오.안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33261 /* ~"그래, 그 곳에는 내가 직접 가봤소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33262 /* ~"그럼 그 곳에 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_A","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33263 /* ~"틸럼! 나는 자네를 다시 보리라고는 생각도 못했네. 이게 얼마 만이지? 4년 만인가? 자네는... 상관없네. 내가 자네에게 빌렸던 동전 백 닢이 여기 있네. 진작 돌려주었어야 했지만 자네는 시길에서 완전히 사라진 듯 그 행방을 찾을 길이 없었네! 이제 그만 가봐야겠네, 틸럼... 행운을 비네!"~ */
  IF ~~ THEN REPLY #33264 /* ~"어..."~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33265 /* ~그를 그냥 보내준다.~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_B","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #33266 /* ~사내의 눈이 휘둥그레진다, 그리고 그의 얼굴에서 핏기가 가신다. "천상과 지옥의 신들이시여... 그들이 자네가 돌아올 거라고 했을 때 나는 믿-믿지 않았네!" 갑자기 그는 도망치려고 몸을 돌린다.~ */
  IF ~~ THEN REPLY #33267 /* ~그를 붙잡으려고 시도한다.~ */ DO ~Enemy()
EscapeArea()
SetGlobal("Hive_OT_B","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #33268 /* ~그를 그냥 보내준다.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_C","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33269 /* ~사내는 당신을 째려본다. "모릭? 당신이오?"~ */
  IF ~~ THEN REPLY #33270 /* ~거짓말: "그렇소... 내가 모릭이오."~ */ GOTO 47
  IF ~~ THEN REPLY #33271 /* ~"아마 그럴지도..."~ */ GOTO 47
  IF ~~ THEN REPLY #33272 /* ~"아니오, 미안하오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #33273 /* ~"그렇다면 미안하오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #33274 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0 45.1
  SAY #33275 /* ~"나는 자네가 시길에 다시는 돌아오지 않을 거라고 생각했는데...만약 아마테일이 자네가 돌아온 걸 알면 자네는 죽은 목숨이네! 어쨌든, 나는 자네가 내게 빌려준 두루마리를 아직도 가지고 있네. 여기 있네... 그리고 누가 우리 둘이 함께 있는 걸 보기 전에 어서 떠나게." ~ */
  IF ~~ THEN REPLY #33276 /* ~"하지만..."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33277 /* ~"고맙소... 안녕히 계시오."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Morte","GLOBAL",0)
InParty("Morte")
~ THEN BEGIN 48 // from:
  SAY #33278 /* ~사내는 숨을 헐떡거리며 모트를 가리킨다. "저걸 좀 보시오! 떠다니는 해골이오!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 321
END

IF ~~ THEN BEGIN 49 // from:
  SAY #33279 /* ~"뭐?! 넌 이빨 몇 개가 부러져야 정신을 차릴 것 같군, 이 횡설수설하는 해골바가지야!" 사내는 위협적인 자세로 모트에게 다가간다.~ */
  IF ~~ THEN REPLY #33280 /* ~그를 제지한다.~ */ GOTO 50
  IF ~~ THEN REPLY #33281 /* ~모트에게 맡긴다.~ */ EXTERN ~DMORTE~ 322
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #33282 /* ~당신은 모트와 사내 사이를 가로막고 선다. 그는 당신을 노려본 후 뒤로 물러선다. "시간 낭비야!" 그는 이 자리를 떠나려고 돌아선다. ~ */
  IF ~~ THEN REPLY #33283 /* ~그를 그냥 보내준다.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #33284 /* ~그는 모트와 당신을 차례로 노려본 후 고개를 젓는다. "시간 낭비야!" 그는 이 자리를 떠나려고 돌아선다. ~ */
  IF ~~ THEN REPLY #33285 /* ~그를 그냥 보내준다.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Annah","GLOBAL",0)
InParty("Annah")
~ THEN BEGIN 52 // from:
  SAY #33286 /* ~"안나! *이런* 쓰레기와 대체 뭘 하고 있는 거지? 나는 당신이 *내* 여자가 될 거라고 생각했는데..." 사내는 자기 넓적다리를 때리면서 실없이 크게 웃는다.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 180
END

IF ~~ THEN BEGIN 53 // from:
  SAY #33287 /* ~"그래. 당신은 늘 말뿐이지, 안나... 말뿐이야... 당신을 *진정으로* 만족시킬 수 있는 남자를 당신은 *결코* 죽일 수가 없어! 내게 와서 촉촉한 키스를 해줘, 내 작고 성질 더러운 티플링 공주님!" 그는 안나를 만지려고 손을 내민다. ~ */
  IF ~~ THEN DO ~Enemy()
Attack("Annah")
~ EXTERN ~DANNAH~ 181
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 54 // from:
  SAY #33288 /* ~이 사람은 더 이상 당신에게 할 말이 없다.~ */
  IF ~~ THEN REPLY #33289 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 55 // from:
  SAY #33290 /* ~이 사람은 더 이상 당신에게 할 중요한 얘기가 없다.~ */
  IF ~~ THEN REPLY #33291 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 56 // from:
  SAY #33292 /* ~이 사람은 더 이상 당신에게 할 말이 없다.~ */
  IF ~~ THEN REPLY #33293 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 57 // from:
  SAY #33294 /* ~이 사람은 더 이상 당신에게 할 말이 없다.~ */
  IF ~~ THEN REPLY #33295 /* ~떠난다.~ */ EXIT
END
