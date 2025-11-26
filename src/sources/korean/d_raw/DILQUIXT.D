// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXT~

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3069 /* ~당신 앞에는 어깨가 넓고 기골이 장대하며, 팔이 네 개 달린 개 대가리 괴물이 서 있다. 그의 근육질의 팔들 중 한 쌍에는 끔찍하게 생긴 집게들이 달려 있는데, 그것은 희생자로부터 강제로 영혼을 찢어 낼 수 있을 정도로 무시무시해 보인다. 그는 의외로 부드러운 목소리로 말을 한다. "아, 여행자여! 당신은 훌륭한 동료들을 거느리고 있소." 그는 잠시 멈추고 냄새를 맡는다. "맛있는 향기로군. 안나, 난 당신 아버지를 알지, 그는 아직도 어비스 깊은 곳에서 부지런히 일하고 있지. 그리고 그레이스 여사, 당신 어머니인 레드 슈라우드(붉은 수의)는 당신이 잘 지낸다는 소식을 들으면 매우 기뻐할 거요."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #11201 /* ~당신 앞에는 어깨가 넓고 기골이 장대하며, 팔이 네 개 달린 개 대가리 괴물이 서 있다. 그의 근육질의 팔들 중 한 쌍에는 끔찍하게 생긴 집게들이 달려 있는데, 그것은 희생자로부터 강제로 영혼을 찢어 낼 수 있을 정도로 무시무시해 보인다. 그는 의외로 부드러운 목소리로 말을 한다. "아, 여행자여! 당신은 훌륭한 동료들을 거느리고 있소." 그는 잠시 멈추고 냄새를 맡는다. "맛있는 향기로군. 안나, 난 당신 아버지를 알지, 그는 아직도 어비스 깊은 곳에서 부지런히 일하고 있지."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #11203 /* ~당신 앞에는 어깨가 넓고 기골이 장대하며, 팔이 네 개 달린 개 대가리 괴물이 서 있다. 그의 근육질의 팔들 중 한 쌍에는 끔찍하게 생긴 집게들이 달려 있는데, 그것은 희생자로부터 강제로 영혼을 찢어 낼 수 있을 정도로 무시무시해 보인다. 그는 의외로 부드러운 목소리로 말을 한다. "아, 여행자여! 당신은 훌륭한 동료들을 거느리고 있소." 그는 잠시 멈추고 냄새를 맡는다. "맛있는 향기로군. 그레이스 여사, 당신 어머니인 레드 슈라우드(붉은 수의)는 당신이 잘 지낸다는 소식을 들으면 매우 기뻐할 거요."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DGRACE~ 11
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 3 // from:
  SAY #11204 /* ~당신 앞에는 어깨가 넓고 기골이 장대하며, 팔이 네 개 달린 개 대가리 괴물이 서 있다. 그의 근육질의 팔들 중 한 쌍에는 끔찍하게 생긴 집게들이 달려 있는데, 그것은 희생자로부터 강제로 영혼을 찢어 낼 수 있을 정도로 무시무시해 보인다. 
그는 의외로 부드러운 목소리로 말을 한다. "그 아비샤이들을 그들의 이름을 구성하는 음절들로 분해해 버린 것 매우 만족스러운 일이었소. 그럴 기회를 주어 고맙소."
~ */
  IF ~~ THEN REPLY #3367 /* ~"천만의 말씀이오. 당신에게 질문을 좀 하고 싶소."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ GOTO 5
  IF ~~ THEN REPLY #11202 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 4 // from:
  SAY #11205 /* ~그는 당신이 자신의 오랜 친구라도 되는 것처럼 반갑게 당신을 향해 돌아선다. "아, 여행자! 당신이 돌아왔군! 내게 어떻게 도와 드리면 되겠소?" 그는 의도적으로 훨-후럼-그레이스와 안나에게 조롱하는 듯한 인사를 한다.~ */
  IF ~~ THEN REPLY #11206 /* ~"당신에게 질문을 더 하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11207 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0 6.0 7.0 8.0 9.2 10.1 11.0 12.2 13.1 14.1 15.2 16.0 17.0 18.0 18.2 19.0
  SAY #11208 /* ~"하지만 물론이오! 나는 가장 귀중한 친구이자 동맹이 될 수 있는 사람을 기꺼이 돕고 싶을 뿐이오!"~ */
  IF ~~ THEN REPLY #11209 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #11210 /* ~"왜 전에는 변장을 하고 있었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #11211 /* ~"이 선술집과 손님들에 대해 얘기해 주시오."~ */ GOTO 11
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11212 /* ~"Barkis veut que je trouve une solution au probl?e de la note de Mochai."~ */ GOTO 12
  IF ~~ THEN REPLY #11213 /* ~"더 이상 필요한 건 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 6 // from:
  SAY #11214 /* ~그는 당신이 자신의 오랜 친구라도 되는 것처럼 반갑게 당신을 향해 돌아선다. "아, 여행자! 당신이 돌아왔군! 내게 어떻게 도와 드리면 되겠소?" 그는 의도적으로 안나에게 조롱하는 듯한 인사를 한다.~ */
  IF ~~ THEN REPLY #11215 /* ~"당신에게 질문을 더 하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11216 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 7 // from:
  SAY #11217 /* ~그는 당신이 자신의 오랜 친구라도 되는 것처럼 반갑게 당신을 향해 돌아선다. "아, 여행자! 당신이 돌아왔군! 내게 어떻게 도와 드리면 되겠소?" 그는 의도적으로 훨-후럼-그레이스에게 조롱하는 듯한 인사를 한다.~ */
  IF ~~ THEN REPLY #11218 /* ~"당신에게 질문을 더 하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11219 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 8 // from:
  SAY #11220 /* ~그는 당신이 자신의 오랜 친구라도 되는 것처럼 반갑게 당신을 향해 돌아선다. "아, 여행자! 당신이 돌아왔군! 내게 어떻게 도와 드리면 되겠소?" ~ */
  IF ~~ THEN REPLY #11221 /* ~"당신에게 질문을 더 하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11222 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #11223 /* ~"나 말이오? 나는 무지한 자들이 '마신'이라고도 부르는 타나리의 일원으로 평범한 글라브레주요. 나는 이 곳에서 인간들과 같이 지내며 그들이 사는 방식에 대해 배우고 있소. 그리고 나는 그럴 만한 자격이 있다고 생각되는 사람에게는 파격적인 조건으로 힘을 제공하고 있소. "당신에게라면 나는 그러한 제의를 하고 싶소, 하지만 당신으로부터는 질서의 냄새가 강하게 풍기고 있고, 당신의 영혼 역시 그것에 속박당하고 있소. 그것의 힘은 현재로서는 나도 깨트릴 수가 없소. 하지만 만약 당신이 나중에 그 힘을 시험해 보고자 한다면..." 그는 날카로운 이빨로 가득한 입을 열고 웃는다. "아마 우리가 어떤 협정을 체결할 수 있을 지도 모르오."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11224 /* ~"아마 그럴수 있을지도. 타나리에 대해 더 얘기해 주시오."~ */ GOTO 13
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11225 /* ~"아마 그럴수 있을지도 타나리에 대해 더 얘기해 주시오."~ */ GOTO 14
  IF ~~ THEN REPLY #11226 /* ~"아마도. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11227 /* ~"아마도. 하지만 지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #11228 /* ~"내가 변장을 했던 건 이제는 죽은 아비샤이들을 염탐하고, 또 마음 약한 인간이 나를 보고 놀라는 것을 막기 위해서였소. 하지만 이제 내 본래 모습으로 활보할 때가 왔소."~ */
  IF ~~ THEN REPLY #11229 /* ~"왜 지금이오?"~ */ GOTO 17
  IF ~~ THEN REPLY #11230 /* ~"알겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #11231 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #11232 /* ~"역겨운 아비샤이들이 없어져 이 술집은 더욱 쾌적해졌소. 타는 살의 냄새, 나약한 자들의 분쟁, 그리고 이류 드라마가 모두 뒤섞여 이 곳을 매우 즐거운 것으로 만들고 있소. 비명이 좀 부족한 느낌은 들지만 여긴 어비스가 아니니까. 이 곳의 손님들은 대부분 하찮은 사상가와 몽상가들이오. O는 내게 있어서도 수수께끼요. 나는 아직 그의 힘을 이해하지 못하나 언젠가 반드시 알아내고 말 거요. 다른 자들은 별로 흥미거리가 되지 못하오. 나는 그들과 같은 자들을 수천 년이 넘는 세월 동안 무수히 보아 왔소."~ */
  IF ~~ THEN REPLY #11233 /* ~"좋소. 그럼 다른 질문들에 좀 대답해주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #11234 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #11235 /* ~"해법은 간단하오. 그녀를 그냥 죽일 수도 있겠지만, 그러면 불필요한 주목을 받을 우려가 있소. 따라서 나는 독살을 권장하오."~ */
  IF ~~ THEN REPLY #11236 /* ~"만약 이번에는 내가 외상을 대신 갚아주어 그녀를 돕기로 한다면?"~ */ GOTO 18
  IF ~~ THEN REPLY #11237 /* ~"실은 내게는 독이 없소."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11238 /* ~"충고해 주어 고맙소. 다른 질문들에 대답해주시오..."~ */ GOTO 5
  IF ~~ THEN REPLY #11239 /* ~"충고해 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #11240 /* ~이퀵스는 그레이스를 가리키며 고개를 끄덕인다. "당신 동료도 나만큼은 얘기해줄 수 있을 거요." 그는 잠깐 곁눈질을 한 후 얘기를 계속한다. "우리는 우리가 혼돈의 종족이라는 것이 자랑스럽소. 우리는 개인의 힘을 믿소. 물론 이건 나 개인의 견해이긴 하오." 그는 얄궂다는 듯 미소를 짓는다. "어떤 이들은 우리를 사악하다고 하며, 그것이 사실일지도 모르오. 하지만 각 개인은 오직 자기 자신에 대해서만 책임질 의무가 있다고 나는 생각하오. 다른 사람에게 지나치게 신경을 쓰는 건 나약함이오. 마지막으로 이 사실을 기억하시오. 각 타나리 -- 당신들 인간은 때때로 우리를 마신이라고도 부르긴 하지만 --는 특정한 사고 방식, 즉 정신이 그 의지를 표현하는 방식을 나타내오. 자, 이제 어비스에 얼마나 많은 타나리들이 있는지 생각해 보시오. 우리는 우리의 대의가 인간의 정신에서 얼마나 큰 힘을 지니고 있는지를 진정으로 보여주고 있소."~ */
  IF ~~ THEN REPLY #11241 /* ~"그럼 당신들은 물질적인 존재가 아니오?"~ */ GOTO 15
  IF ~~ THEN REPLY #11242 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11243 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #11244 /* ~"우리는 우리가 혼돈의 종족이라는 것이 자랑스럽소. 우리는 개인의 힘을 믿소. 물론 이건 나 개인의 견해이긴 하오." 그는 얄궂다는 듯 미소를 짓는다. "어떤 이들은 우리를 사악하다고 하며, 그것이 사실일지도 모르오. 하지만 각 개인은 오직 자기 자신에 대해서만 책임질 의무가 있다고 나는 생각하오. 다른 사람에게 지나치게 신경을 쓰는 건 나약함이오. 마지막으로 이 사실을 기억하시오. 각 타나리 -- 당신들 인간은 때때로 우리를 마신이라고도 부르긴 하지만 --는 특정한 사고 방식, 즉 정신이 그 의지를 표현하는 방식을 나타내오. 자, 이제 어비스에 얼마나 많은 타나리들이 있는지 생각해 보시오. 우리는 우리의 대의가 인간의 정신에서 얼마나 큰 힘을 지니고 있는지를 진정으로 보여주고 있소."~ */
  IF ~~ THEN REPLY #11245 /* ~"그럼 당신들은 물질적인 존재가 아니오?"~ */ GOTO 15
  IF ~~ THEN REPLY #11246 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11247 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0 14.0
  SAY #11248 /* ~"물론 우리는 물리적인 실체를 지니고 있소. 아웃터 플레인에 머무는 한은. 하지만 아웃터 플레인은 생각이 실체화한 곳이오. 우리의 진정한 정체는 인간의 믿음이 구현화한 존재요. 주물질계에서 우리의 대의에 대한 믿음이 강해지면 그에 비례하여 우리의 힘도 커지오. 이것이 우리가 그들 자신의 가슴과 정신 속에 우리들이 존재하고 있다는 사실을 모르는 인간들 중에서 새로운 희생자를 찾는 이유요."~ */
  IF ~~ THEN REPLY #11249 /* ~"그건 역겹소. 그들에게는 자유의지를 가지고 스스로 선택할 권리가 있어야 하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_IlquixT_One","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #11250 /* ~"만약 그들이 당신들에게 저항하지 못할 정도로 약하거나 스스로 당신들을 불러들인다면, 무슨 일을 당하던 그것은 그들의 자업자득이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_IlquixT_One","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #11251 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11252 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #11253 /* ~"그들에게는 자유 의지가 있소. 만약 그들이 우리에게 저항한다면 우리가 발을 들여놓을 여지가 없소. 그들을 파멸시키는 것은 그들의 나약함이오. 그들이 자신들을 더욱 강하게 만든다면 우리는 아무 것도 이룩할 수가 없소. 하지만 현실은 그렇지 않소. 따라서 우리는 계속 강해지오. 그것이 존재의 법칙이오." 그는 미소짓는다. "설령 그렇지 않다고 하더라도 우리가 그렇게 만들 것이오."~ */
  IF ~~ THEN REPLY #11254 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11255 /* ~"교육에 감사하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #11256 /* ~"내가 이 시점을 선택했기 때문이오. 내게도 나름대로의 이유가 있소, 작은 불사신, 그리고 단순히 당신 호기심 때문에 그걸 알려 줄 순 없소. 물론 당신에게 날 강제할 힘이 있다면 모르지만..."~ */
  IF ~~ THEN REPLY #11257 /* ~"대신 다른 질문을 하고 싶소..."~ */ GOTO 5
  IF ~~ THEN REPLY #11258 /* ~"계속 그렇게 우기겠다면 죽을 준비를 하시오."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0
  SAY #11259 /* ~"만약 당신이 정말 그렇게 하고자 했다면, 왜 마족에게 자문을 구한 거요? 자, 독살이야말로 이 문제의 가장 좋은 해법이오."~ */
  IF ~~ THEN REPLY #11260 /* ~"아니, 다른 방법을 시도하는 것이 좋을 것 같소. 날 위해 다른 질문에 대답해주시오."~ */ GOTO 5
  IF ~  !PartyHasItem("Embalm")
~ THEN REPLY #11261 /* ~"문제들 중 하나는 내게 독이 없다는 거요."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11262 /* ~"생각해 보겠소. 날 위해 다른 질문에 대답해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #11263 /* ~"아마 그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1 18.1
  SAY #11264 /* ~"독이 없소? 그럼 내가 당신에게 제공해 주리다!" 그는 잠시 집중을 한다, 그러자 그의 발톱에 액체가 담긴 병이 나타난다. "아마 당신은 이것이 더스트맨이 쓰는 향료라는 것을 알아 볼 수 있을 거요." 그는 만족스러운 듯 말한다. "그녀는 고통스럽지 않게 죽을 거요, 물론 당신이 그런 일에 신경을 쓴다면 말이지만." 마족은 병을 당신 손에 쥐어 준다. ~ */
  IF ~~ THEN REPLY #11265 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 5
  IF ~~ THEN REPLY #11266 /* ~"감사하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2072 /* ~마족은 즐거운 표정으로 당신 쪽으로 고개를 돌린다. "그녀에게 아직 예의범절을 가르치지 않았소, 여행자?" ~ */
  IF ~~ THEN REPLY #2073 /* ~"안나, 진정하시오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ EXTERN ~DANNAH~ 80
  IF ~~ THEN REPLY #2077 /* ~"아니오. 그녀는 독립된 하나의 인격체이며, 자신만의 생각을 가지고 말하오."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~DANNAH~ 81
END
