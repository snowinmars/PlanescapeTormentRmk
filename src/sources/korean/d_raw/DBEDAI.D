// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBEDAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBEDAI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Smuggle","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY #43055 /* ~"도와줘 고마워요. 아마 당신은 나나... 내 친구들을 다시 보게 될 거예요. 우리 동지들은 사방에 퍼져 있으니까요." ~ */
  IF ~~ THEN REPLY #43056 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43057 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Smuggle","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #43058 /* ~"창고로 가기 전에 아직 해야 할 일들이 많아요. 뭘 원하시죠 ?"~ */
  IF ~~ THEN REPLY #43059 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43060 /* ~"아무 것도 아니오."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #43061 /* ~그녀는 당신을 경멸하는 눈초리로 바라본다. "꺼져요! 당신과 같은 작자에게 허비할 시간은 없어요!"~ */
  IF ~~ THEN REPLY #43062 /* ~그녀를 공격한다.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #43063 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #43064 /* ~그녀는 아무 말도 없이 당신을 싸늘한 표정으로 바라보면서 경비병들이 오기를 기다린다.~ */
  IF ~~ THEN REPLY #43065 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #43066 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43067 /* ~그녀는 계속 당신을 응시한다. "지금은 당신에게 대답을 해줄 수가 없어요. 당신이 돌아오면 해줄 수 있을지도 모르죠."~ */
  IF ~~ THEN REPLY #43068 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Smuggle","GLOBAL",1)
!Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 5 // from:
  SAY #43069 /* ~"그래, 날 여기서 탈출시킬 방법은 찾았나요? 그들은 이대로는 날 내보내 주지 않을 거예요. 변장 또는 다른 술책이 필요해요.:~ */
  IF ~~ THEN REPLY #43070 /* ~"무엇으로 변장할 지에 대해 생각해 둔 거라도 있소?"~ */ GOTO 6
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43071 /* ~"나는 대장장이 복장을 가져왔소. 입으시오."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43072 /* ~"아니, 아직 아니오. 당신에게 물어볼 것들이 더 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43073 /* ~"아니, 아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 34.1 35.0 36.0
  SAY #43074 /* ~"그들은 대장장이가 이 곳을 떠나는 건 막지 않아요. 만약 당신이 내게 대장간용 도구 한 세트와 여분의 넝마를 가져다 준다면... 단지 도구들만 가지고는 곤란하고 다른 옷가지들도 있어야 해요. 하지만 어디 가면 그런 걸 구할 수 있을 지는 모르겠어요. 그리고 여기서 더 이상 사람들을 죽이지 말라고요, 알겠어요? 난 벌써 이 곳에서 충분하고도 남을 만큼의 소동을 일으켰어요, 그리고 시의 다른 지역에까지 소문이 나는 건 원하지 않아요. 다른 말로 하자면 옷을 뺏으려고 대장장이를 죽이지 말란 얘기예요. 어차피 내게는 맞지도 않을 테니."~ */
  IF ~  PartyHasItem("Disguise")
~ THEN REPLY #43075 /* ~"나는 대장장이 복장을 가져왔소. 입으시오."~ */ DO ~DestroyPartyItem("Disguise",TRUE)
~ GOTO 7
  IF ~~ THEN REPLY #43076 /* ~"좋소. 노력을 해보리다. 지금은 일단 내 질문에 대답을 해주시오..."~ */ GOTO 9
  IF ~~ THEN REPLY #43077 /* ~"좋소. 노력을 해보리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #43078 /* ~"떠날 준비가 되는 대로 이걸 입겠어요. 이제 어떻게 할 거죠? 당신이 날 인도하고 나가야 해요."~ */
  IF ~~ THEN REPLY #43079 /* ~"좋소, 갑시다."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43082 /* ~"일단 정문으로 나간 다음 내 친구들이 기다리고 있는 창고로 갈 거예요. 준비는 됐어요?~ */
  IF ~~ THEN REPLY #43083 /* ~"갑시다."~ */ DO ~SetGlobal("Smuggle","GLOBAL",5)
AddexperienceParty(8000)
StartCutSceneMode()
StartCutSceneEx("0503cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.0 1.0 5.2 6.1 10.4 11.2 12.3 13.0 14.2 15.4 16.3 17.0 18.1 19.0 20.1 21.2 22.1 23.2 24.2 25.0 32.1 75.0
  SAY #43084 /* ~"무엇을 알고 싶으시죠?"~ */
  IF ~~ THEN REPLY #43085 /* ~"혁명가 연맹에 대해 얘기해주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #43086 /* ~"내게 갓즈맨에 대해 얘기해주시오."~ */ GOTO 17
  IF ~~ THEN REPLY #43087 /* ~"왜 당신들은 그러한 파괴 활동을 하는 거요?"~ */ GOTO 18
  IF ~~ THEN REPLY #43088 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 20
  IF ~~ THEN REPLY #43089 /* ~"사로스는 어떡하오?"~ */ GOTO 75
  IF ~~ THEN REPLY #43090 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43091 /* ~그녀는 당신을 평가하려는 듯 눈을 가늘게 뜨고 당신을 본다. "우리는 모든 권력은 본질적으로 부패할 수밖에 없다고 생각해요. 우리는 권력자들을 타도하기 위해 위해 존재해요. 따라서 시길의 당파들이 우리의 주된 목표죠. 그들은 모든 이들이 자유롭게 통과할 수 있어야 하는 문들의 도시를 독점하고 있어요. 그들은 언론의 자유를 억압하며, 스스로의 의지로 행동하려는 자들을 말살하고 있어요. 시길의 권력 체계는 붕괴되어야만 해요!"~ */
  IF ~~ THEN REPLY #43092 /* ~"혁명가 연맹의 조직은 어떻게 구성되어 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #43093 /* ~"당신은 어떻게 해서 이러한 사람들과 동조하게 되었소?" ~ */ GOTO 11
  IF ~~ THEN REPLY #43094 /* ~"왜 체제 안에서 변화를 일으키려는 노력을 하지 않소?"~ */ GOTO 12
  IF ~~ THEN REPLY #43095 /* ~"어떻게 하면 혁명가 연맹에 가입할 수 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #43096 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43097 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1 12.1 14.0 15.1 16.0
  SAY #43098 /* ~"내 아버지는 자유연맹이었죠, 그런데 의견이 다르다고 해서 어떤 둠가드에게 살해당했어요. 살인자는 아무런 처벌도 받지 않았어요. 내 어머니는 공정한 수사와 재판을 요구했지만, 오히려 말썽을 피운다고 해서 하모니움 석두들에게 체포당했어요. 부패한 판사는 내 어머니가 평화를 깨뜨리고 혼란을 조장했다는 명목으로 유죄를 선고했고, 그녀는 머시킬러에 의해 처형당했어요. 물론 나는 아나키스트에 가입했죠 - 이제 내가 찾고 있는 답을 줄 수 있는 건 그들밖에 없으니까."~ */
  IF ~~ THEN REPLY #43100 /* ~"왜 체제 안에서 변화를 일으키려는 노력을 하지 않소?"~ */ GOTO 12
  IF ~~ THEN REPLY #43101 /* ~"어떻게 하면 혁명가 연맹에 가입할 수 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #43102 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43103 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 15.2 16.1
  SAY #43104 /* ~"이 체제에서? 아무런 변화도 가져오기 전에 나도 부패하게 될 거예요. 이 체제는 그 권력을 약화시키려는 어떠한 것과도 협력할 생각이 없어요. 자신의 권력을 유지하기 위해서는 다른 사람들을 희생시키는 것도 서슴치 않는 것이 인간의 본성이에요. 만약 당신이 지금 당파들을 비판하는 말을 한 마디라도 내뱉는다면, 다음 번 숨을 내쉬기도 전에 그들이 당신을 저 세상으로 보낼 걸요. 차라리 모두 다 제거하고 새롭게 시작하는 편이 낫죠."~ */
  IF ~~ THEN REPLY #43105 /* ~"그런 방식으로는 많은 무고한 사람들이 희생될 것이오."~ */ GOTO 14
  IF ~~ THEN REPLY #43106 /* ~"당신은 어떻게 해서 아나키스트와 동조하게 되었소?"~ */ GOTO 11
  IF ~~ THEN REPLY #43107 /* ~"어떻게 하면 혁명가 연맹에 가입할 수 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #43108 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43109 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3 11.1 12.2 14.1 15.3 16.2
  SAY #43110 /* ~그녀는 의심을 하는 것 같다. "우리의 일원이 되겠다고요? 흠. 당신은 우리를 배신할 경우 함께 처벌을 받고도 남을 정도의 일을 저질렀어요, 그러니 어쨌든 당신은 우리에게 해보다는 도움이 된 셈이죠." 그녀는 잠시 멈추고 조금 더 생각을 한다. "좋아요. 가서 인쇄소의 무법자 펜과 얘기를 하세요. 그에게 내가 '도시는 불타야만 하오'라고 했다고 얘기하세요. 그는 당신이 무슨 말을 하는 건지 알 거예요." 그녀는 매서운 표정으로 당신을 노려본다. "하지만 경고하겠어요. 만약 내게 *무슨* 일이라도 생기면 그 암호는 아무런 의미도 없어요."~ */
  IF ~~ THEN REPLY #43111 /* ~"'도시는 불타야만 하오.' 알았소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ JOURNAL #68106 /* ~베다이-린은 내게 인쇄소에 있는 무법자 펜을 찾아가 다음과 같은 암호를 말하라고 했다.  "도시는 불타야 한다."~ */ GOTO 9
  IF ~~ THEN REPLY #43112 /* ~"'도시는 불타야만 하오.' 알았소. 안녕히 계시오."~ */ JOURNAL #68106 /* ~베다이-린은 내게 인쇄소에 있는 무법자 펜을 찾아가 다음과 같은 암호를 말하라고 했다.  "도시는 불타야 한다."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #43113 /* ~그녀는 냉소한다. "만약 당신이 죄없는 사람들에 대해 신경을 썼다면 애당초 날 도와주지도 않았을 거예요. 당신이 대 주조소에서 무기를 파괴할 때 죽인 노동자들은 어떻게 할 거죠? 어떤 전쟁에서든 죄없는 사람들이 피해를 입기 마련이에요. 하지만 당신이 우리와 함께 행동을 하면 그들에게 회복할 기회가 주어질 거예요. 당파의 지배 아래서는 그들은 헛되이 희생될 뿐이에요."~ */
  IF ~~ THEN REPLY #43114 /* ~"당신은 어떻게 해서 아나키스트와 동조하게 되었소?"~ */ GOTO 11
  IF ~~ THEN REPLY #43115 /* ~"어떻게 하면 혁명가 연맹에 가입할 수 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #43116 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43117 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.0
  SAY #43118 /* ~"우리는 세포들로 나뉘어 있으며, 각 세포는 일정하지 않은 수의 멥버들로 구성되어 있어요. 한 세포의 구성원은 다른 세포의 구성원을 알지 못해요, 따라서 서로를 배신할 수가 없죠. 때때로 우리는 서로 대립하기도 하나, 우리가 횡포한 당파들에게 입히는 타격은 그러한 것을 벌충하고도 남아요."~ */
  IF ~~ THEN REPLY #43119 /* ~"당신들의 행동 때문에 당파들이 더욱 타락하고 호전적이 되고 있을 수도 있다는 생각은 하지 않소?"~ */ GOTO 16
  IF ~~ THEN REPLY #43120 /* ~"당신은 어떻게 해서 아나키스트와 동조하게 되었소?"~ */ GOTO 11
  IF ~~ THEN REPLY #43121 /* ~"왜 체제 안에서 변화를 일으키려는 노력을 하지 않소?"~ */ GOTO 12
  IF ~~ THEN REPLY #43122 /* ~"어떻게 하면 혁명가 연맹에 가입할 수 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #43123 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43124 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #43125 /* ~"아뇨. 그들이 자신들이 보호하기로 맹세한 바로 그 사람들을 파멸시키려 할 때 그들의 위선은 적나라하게 드러나죠. 시길의 체제를 자신들이 수호한다고 주장하던 자들도 자신들의 지위가 위협을 받고 있다고 느끼게 되면 앞장서서 그것을 파괴하려고 들 거예요. 우리는 이러한 통치에 대한 그들의 이념이 사상누각이라는 걸 보여주고 있어요. 우리는 촉매이지 원흉이 아니에요."~ */
  IF ~~ THEN REPLY #43126 /* ~"당신은 어떻게 해서 아나키스트와 동조하게 되었소?"~ */ GOTO 11
  IF ~~ THEN REPLY #43127 /* ~"왜 체제 안에서 변화를 일으키려는 노력을 하지 않소?"~ */ GOTO 12
  IF ~~ THEN REPLY #43128 /* ~"어떻게 하면 혁명가 연맹에 가입할 수 있소?"~ */ GOTO 13
  IF ~~ THEN REPLY #43129 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43130 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.1
  SAY #43131 /* ~"갓즈맨? 하! 적어도 대부분의 다른 당파들은 자신들에게 답이 있다는 시늉이라도 해요. 갓즈맨은 그들보다 더 질이 나빠요 - 진실이 무엇인지 짐작조차 하지 못하면서 진실을 찾으려고 시도하는 자들의 훼방만 놓고 있으니까요. 고약한 심술쟁이들이죠. 게다가 노약자들을 죽이는 죽음의 안개로 마계구를 오염시키고 있어요. 그들은 자신들이 친절하다고 하지만, 그 실체는 또 다른 죽음의 상인들의 집단에 불과해요."~ */
  IF ~~ THEN REPLY #43132 /* ~"좋소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43133 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 9.2
  SAY #43134 /* ~"낡은 질서는 붕괴돼야 하기 때문이죠. 당파 본부의 일부를 파괴함으로서 나는 사람들이 갓즈맨에 대한 믿음을 잃도록 돕고 있어요. 그 끔찍한 무기를 파괴함으로서 나는 고객들이 갓즈맨에 대한 신뢰를 잃도록 돕고 있어요. 그리고 간부를 암살함으로서 나는 사람들에게 권력자들이 우리의 표적이며, 따라서 이 부패한 체제하에서 누구도 높은 지위를 얻으려고 노력해서는 안 된다는 것을 보여 주고 있어요. 이러한 행동들은 각각 상징적인 의미도 지니고 있어요. 하지만 그 어느 것도 파괴를 위한 파괴는 아니에요. 만약 그렇다면 우리도 둠가드보다 나을 게 없겠죠."~ */
  IF ~~ THEN REPLY #43135 /* ~"누구?"~ */ GOTO 19
  IF ~~ THEN REPLY #43136 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43137 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #43138 /* ~"둠가드는 모든 것이 필연적으로 소멸할 것이기 때문에 자신들이 책임지고 구심점이 존재할 수 없도록 만들어야 한다고 생각하는 작자들이죠. 우리는 명목상으로는 그들과 동맹을 맺고 있지만, 그들 역시 타도의 대상이에요. 궁극적으로 모든 당파는 타도되어야 해요."~ */
  IF ~~ THEN REPLY #43139 /* ~"좋소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43140 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.3
  SAY #43141 /* ~"나요? 나에 대해서는 별로 할 말이 없어요. 나는 모든 당파가 망하는 꼴을 보겠다고 맹세했고. 침투 대상이 될 당파들이 날 귀중한 인재라고 생각하도록 마법 공학을 공부했죠. 갓즈맨 이전에도 다른 당파들에 잠입한 적이 있어요. 나는 기억도 다 하지 못할 만큼 다양한 얼굴로 변장을 했고, 무수한 가명을 사용했어요. 내가 지금까지 배신한 사람들의 이름은 다 댈 수조차 없어요."~ */
  IF ~~ THEN REPLY #43142 /* ~"꽤나 평온한 인생 같소. 당신은 그것에 만족하시오?"~ */ GOTO 21
  IF ~~ THEN REPLY #43143 /* ~"알겠소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #43144 /* ~"재미있겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43145 /* ~그녀는 짤막하게 웃더니 씁슬한 어조로 말한다. "행복? 행복이 무슨 의미를 지녔던 적이 한 번이라도 있나요?"~ */
  IF ~~ THEN REPLY #43146 /* ~"만약 행복하지 않다면 왜 그 일을 그만두지 않소?"~ */ GOTO 22
  IF ~~ THEN REPLY #43147 /* ~"그런 적은 없소. 행복은 거짓된 이상으로, 약하고 어리석은 자들을 억압하기 위해 만들어진 것이오. 진정한 행복은 존재하지 않소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_3","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #43148 /* ~"당신이 옳소. 그 얘기에 대해선 잊으시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43149 /* ~"좋은 지적이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43150 /* ~"그만두라고요? 그리고 복수를 포기하라고요? 복수가 나라는 사람을 정의해요. 당신이 한 말은 나보고 팔을 하나 잘라내고 살라는 것과 같아요." 그녀는 당신의 흉터를 노려본다. "하지만 당신이라면 그럴 수도 있겠군요."~ */
  IF ~~ THEN REPLY #43151 /* ~"그래서 당신은 당신의 고통과 증오가 자신을 지배하도록 내버려 두는 거요?"~ */ GOTO 23
  IF ~~ THEN REPLY #43152 /* ~"그럴지도. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #43153 /* ~"그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43154 /* ~"그것은 내 알부가 되었어요. 그것 없이 난 아무 것도 아니에요."~ */
  IF ~~ THEN REPLY #43155 /* ~"그럼 다른 것을 선택하시오, 그리하여 지금까지의 당신 이상의 존재가 되시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_1","GLOBALGood",1)
~ GOTO 24
  IF ~~ THEN REPLY #43157 /* ~"그럼 당신의 증오를 키워 그것이 당신을 지배하도록 하시오. 더 큰 슬픔을 창출하시오. 난 상관없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #43160 /* ~"좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43163 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #43165 /* ~"나는... 어떻게 해야 하는지 모르겠어요."~ */
  IF ~~ THEN REPLY #43167 /* ~"노력을 하시오. 노력을 하고서 어떻게 되는지 두고 보시오."~ */ GOTO 27
  IF ~~ THEN REPLY #43168 /* ~"그렇다면 당신은 그냥 자살을 하는 게 좋을 것 같소, 스스로를 변화시킬 수 없다면 삶은 무의미하니까."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Bedai_2","GLOBALGood",-1)
~ GOTO 28
  IF ~~ THEN REPLY #43169 /* ~"그럼 좋소. 그 밖에도 질문할 것들이 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43170 /* ~"그럼 아예 하지를 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.1
  SAY #43171 /* ~"동의해요. 우리는 우리의 투쟁의 궁극적인 목적이 행복이라고 들었어요. 하지만 행복한 사람은 너무나도 드물어요... 그리고 행복한 것처럼 보이는 사람들은 바보나 자기 도취에 빠져 자신을 둘러싸고 있는 세계의 진정한 공포를 깨닫지 못하는 자들뿐이에요. 행복을 위해 그러한 대가를 치르느니 고통을 받는 편이 낫겠어요."~ */
  IF ~~ THEN REPLY #43172 /* ~"참으로 옳은 말이오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 9
  IF ~~ THEN REPLY #43173 /* ~"그렇소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.1
  SAY #43174 /* ~"아뇨. 그러한 무관심이야말로 바로 우리가 싸우고 있는 적이에요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #43175 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #43176 /* ~"생각해보도록 하겠어요. 하지만 아무 것도 약속을 할 수는 없어요. 안녕히 가세요, 여행자. 당신은 내게 생각해야 할 과제를 많이 주었어요."~ */
  IF ~~ THEN REPLY #43177 /* ~"그러길 바라겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 24.1
  SAY #43178 /* ~"그것에 대해서 생각을 했죠, 하지만 그 때 나는 내 행동이 작은 변화라도 가져오고 있다는 사실을 깨달았어요. 내겐 그걸로 충분해요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #43179 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",3)
~ THEN BEGIN 29 // from:
  SAY #43180 /* ~그녀는 당신을 경멸의 눈초리로 보며 냉소한다. "마음이 바뀌어 돌아왔나요, 아니면 내게 무슨 용건이라도 있나요?"~ */
  IF ~~ THEN REPLY #43181 /* ~"마음을 바꿨소. 당신을 위해 그를 죽이겠소."~ */ GOTO 30
  IF ~~ THEN REPLY #43182 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 31
  IF ~~ THEN REPLY #43183 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 그럼 잘 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #43184 /* ~"당신에게는 이미 기회를 주었어요. 이제와서 내가 당신을 믿고 일을 맡길 것 같아요? 내 앞에서 썩 꺼져요."~ */
  IF ~~ THEN REPLY #43185 /* ~"그럼 내 질문에 대답해주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #43186 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 33.1 54.0
  SAY #43187 /* ~"당신이 날 돕지 않겠다면 내가 왜 당신을 도와야 하죠? 안녕히 가세요."~ */
  IF ~~ THEN REPLY #43188 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 36 35 even though they appear after this state */
~  GlobalGT("F_Ass","GLOBAL",1)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN BEGIN 32 // from:
  SAY #43189 /* ~"산도즈는 죽였나요?"~ */
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43190 /* ~"그렇소, 그는 죽었소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",4)
SetGlobal("Smuggle","GLOBAL",1)
AddexperienceParty(8000)
~ GOTO 34
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43191 /* ~"아니, 아직 아니오. 그 전에 물어보고 싶은 것들이 있소."~ */ GOTO 9
  IF ~  !Dead("Sandoz")
~ THEN REPLY #43192 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 36 35 even though they appear after this state */
~  Global("F_Ass","GLOBAL",1)
~ THEN BEGIN 33 // from:
  SAY #43193 /* ~"일을 맡기로 결정을 내렸나요?"~ */
  IF ~~ THEN REPLY #43194 /* ~"그래, 하겠소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_1","GLOBALLaw",-1)
~ GOTO 46
  IF ~~ THEN REPLY #43195 /* ~"아니, 하지 않겠소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Bedai_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_1","GLOBALLaw",1)
~ GOTO 31
  IF ~~ THEN REPLY #43196 /* ~"아니, 아직 아니오. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 38
  IF ~~ THEN REPLY #43197 /* ~"아니, 아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.0 43.2
  SAY #43198 /* ~"한 가지 일만 더 부탁하겠어요. 그리고 나서 우리는 혼란스러워 하는 갓즈맨들을 내버려 두고 이 곳을 떠날 거예요. 당신은 날 여기서 몰래 빼내 주어야겠어요. 경비병들은 죄를 씌울 대상을 찾고 있으나, 나는 당신이 그 표적이 되기를 바라지 않아요. 일단 내가 사라지면 그들은 내가 범인이라는 걸 알 것이고, 당신은 의심받지 않을 거예요. 어떻게 생각해요?"~ */
  IF ~~ THEN REPLY #43199 /* ~"내게 생각할 시간을 주시오."~ */ GOTO 35
  IF ~~ THEN REPLY #43200 /* ~"그래, 하겠소. 내가 어떤 일을 해야만 하오?"~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43201 /* ~"아니, 난 당신이 날 함정에 빠뜨리려고 한다고 생각하는데."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
END

IF WEIGHT #5 ~  Global("Smuggle","GLOBAL",1)
Dead("Sandoz")
~ THEN BEGIN 35 // from: 34.0
  SAY #43202 /* ~"나는 주조소에서 탈출해야만 해요. 날 도와주겠어요? 난 대답을 당장 원해요."~ */
  IF ~~ THEN REPLY #43203 /* ~"빌어먹을... 좋소."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43204 /* ~"아니, 난 당신이 날 함정에 빠뜨리려고 한다고 생각하는데."~ */ DO ~SetGlobal("Smuggle","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #43205 /* ~"나는 내게 시간을 달라고 했소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Smuggle","GLOBAL",3)
~ THEN BEGIN 36 // from: 34.2 35.1
  SAY #43206 /* ~"당신이 내가 여기서 나가는 걸 도와주지 않겠다면 당신과는 할 말이 없어요."~ */
  IF ~~ THEN REPLY #43207 /* ~"좋소, 그럼. 당신이 탈출하는 것을 돕겠소."~ */ DO ~SetGlobal("Smuggle","GLOBAL",2)
~ GOTO 6
  IF ~~ THEN REPLY #43208 /* ~"아니, 하지 않겠소."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #43210 /* ~"그렇다면 당신에게는 할 말이 없어요."~ */
  IF ~~ THEN REPLY #43211 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.2 39.2 40.2 41.1 42.0 49.1 50.1 51.1 52.1 68.1
  SAY #43212 /* ~"다른 질문? 당신에게는 해야 할 일이 있지 않나요?~ */
  IF ~~ THEN REPLY #43213 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 39
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43214 /* ~"왜 내가 이 일을 해야 하는 거요?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43215 /* ~"왜 내가 이 일을 해야 하는 거요?"~ */ GOTO 41
  IF ~~ THEN REPLY #43216 /* ~"갓즈맨에게 무슨 원한이라도 있소?"~ */ GOTO 42
  IF ~~ THEN REPLY #43217 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #43218 /* ~"내 이름은 베다이-린이에요. 나는 마법 기술자예요. 말해 두겠는데 나는 마법사가 아니라 이론가예요. 그라고 나는 갓즈맨이 그 무기를 사용하거나, 다른 전쟁용 병기를 하청받지 못하게 만들 거예요."~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
~ THEN REPLY #43219 /* ~"왜 그를 죽이는 거요?"~ */ GOTO 40
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #43220 /* ~"왜 기계를 파괴하는 거요?"~ */ GOTO 41
  IF ~~ THEN REPLY #43221 /* ~"좋소. 다른 질문들에 대답해주시오..."~ */ GOTO 38
  IF ~~ THEN REPLY #43222 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.0
  SAY #43223 /* ~"갓즈맨이 그들의 고객들과 체결한 이러한 계약들은 사악한 것들이기 때문이에요. 갓즈맨은 자신들의 행동이 아무런 결과도 가져오지 않을 것처럼 행동하죠. 하지만 그건 위선이에요. 그리고 나는 애당초 그 계약을 체결한 사람이 다시는 짓을 못하도록 죽임으로서 그들에게 그들의 행동이 어떤 결과를 낳는지 보여줄 거예요."~ */
  IF ~  Global("F_Ass","GLOBAL",1)
~ THEN REPLY #43224 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~  Global("F_Ass","GLOBAL",2)
~ THEN REPLY #43225 /* ~"하고 싶지 않소."~ */ GOTO 45
  IF ~~ THEN REPLY #43226 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #43227 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 38.2 39.1 68.2
  SAY #43228 /* ~"왜냐고요? 그건 그 무기가 문자 그대로 악마의 도구이기 때문이에요. 마족들은 다원 우주의 각지에서 무한한 재앙과 파괴를 가져올 것이며, 그 지옥의 도구가 평화적 용도를 아무리 많이 가지고 있더라도, 그것들 중 그 어느 것도 그것이 가져올 고통을 정당화할 수는 없어요."~ */
  IF ~~ THEN REPLY #43229 /* ~"노동자들은 어떻게 되는 거요?"~ */ GOTO 52
  IF ~~ THEN REPLY #43230 /* ~"좋소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #43231 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 38.3
  SAY #43232 /* ~"내가 그들을 싫어하는 건 그들도 다른 당파들과 마찬가지로 장님이기 때문이에요. 그들은 자신들에게는 딴 생각이 없다고 하면서도 이 도시를 철권으로 통치하고 있어요. 그들의 삶을 긍정하는 철학은 실제로는 삶을 긍정하지 않고 있어요. 그들에게 그들 방식으로 맛을 보여줄 때가 됐어요."~ */
  IF ~~ THEN REPLY #43233 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #43234 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #10 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 43 // from:
  SAY #43235 /* ~"나도 여기서 폭발 소리를 들었어요. 수고했어요. 다른 이무에도 관심이 있나요?"~ */
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43236 /* ~"뭐요?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 44
  IF ~  Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #43237 /* ~"어떻게 해서 당신은 폭발시 프로젝트에 참가한 다른 노동자들과 함께 죽지 않았소?~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
~ GOTO 71
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #66890 /* ~"뭐요?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",7)
AddexperienceParty(8000)
SetGlobal("Smuggle","GLOBAL",1)
~ GOTO 34
END

IF ~~ THEN BEGIN 44 // from: 43.0 71.0
  SAY #43238 /* ~"당 간부인 산도즈는 당신도 알지요? 그가 바로 애당초 그 사악한 무기의 개발을 시작한 사람이에요. 그가 적극적으로 계약 유치에 나섰으며, 그 무시무시한 무기를 만들 수 있다고 보증한 사람도 그예요. 다른 기술자들의 죽음에 진정한 책임이 있는 자도 바로 그예요. 그는 죽어야만 해요."~ */
  IF ~~ THEN REPLY #43239 /* ~"하겠소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43240 /* ~"싫소. 이미 너무나 많은 사람들이 죽었소."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 40.1 44.1
  SAY #43241 /* ~"하지 않겠다고요? 그것 참 애석하군요. 당신은 이미 이 일에 깊이 관여를 했어요. 한 사람을 더 죽인다고 해서 무슨 큰 일이라도 날 거라고 생각하나요? 당신이 이미 저지른 일과, 여기서 멈출 경우 치러야 할 대가에 대해 생각해보세요. 여기서 멈출 경우 아무런 변화도 가져올 수 없을 뿐만 아니라, 당신이 죽인 사람들의 죽음 역시 헛되게 만드는 거예요. 당신은 정말로 당파들에 의한 학살을 막을 생각이 있나요, 아니면 그냥 허풍만 떤 거였나요? ~ */
  IF ~~ THEN REPLY #43242 /* ~"그를 죽이겠소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",2)
~ GOTO 46
  IF ~~ THEN REPLY #43243 /* ~"아니, 난 그를 죽이고 싶지 않소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 33.0 40.0 44.0 45.0
  SAY #43244 /* ~"좋아요. 그의 이름은 산도즈예요. 나는 당신이 그와 만난 적이 있다고 알고 있어요. 그는 아무런 의심도 하지 않을 거예요. 조용히 처리하려고 애쓸 것도 없어요. 산도즈는 최근 시끄럽게 굴었기 때문에 약간의 소동이 벌어져도 경비병들이 눈치채지 못할 거예요. 알을 마치면 내게 돌아오세요, 시킬 일이 한 가지 더 있으니까. 자, 빨리 시작하라고요."~ */
  IF ~~ THEN REPLY #43245 /* ~"마음을 바꿨소. 난 그를 죽이고 싶지 않소."~ */ DO ~SetGlobal("F_Ass","GLOBAL",3)
~ GOTO 47
  IF ~~ THEN REPLY #43246 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #43247 /* ~그녀의 눈에는 경멸하는 빛이 역력하다. "당신은 내가 생각했던 것보다 나약하군요... 정말 한심할 정도로 나약해요, 그럼 잘 가세요. 다시는 내게 말 걸지 마세요." 그녀는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #43248 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #11 ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",6)
~ THEN BEGIN 48 // from:
  SAY #43249 /* ~"그 지옥의 장치를 파괴했나요?"~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #43250 /* ~"아니오. 내가 문을 통과하려면 징표가 필요하오."~ */ GOTO 49
  IF ~  !PartyHasItem("Gtoken")
False()
~ THEN REPLY #43251 /* ~"아니오. 나는 문을 통과하는 대 필요한 장표를 잃어버렸소."~ */ GOTO 50
  IF ~~ THEN REPLY #43252 /* ~"노동자들은 어떻게 되는 거요?"~ */ GOTO 52
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #43253 /* ~"아직 아니오, 하지만 곧 하리다. 내게 그 기계의 취약점에 대해 얘기해줄 수 있겠소."~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #43254 /* ~"징표가 필요하다고요? 그럼 주조소 감독에게 얘기를 하세요... 아마 그녀의 이름은 앨릿사 틸드일 거예요. 아니면 사로스에게 부탁해 보세요. 내가 알기로 그는 손버릇이 나쁘니까..."~ */
  IF ~~ THEN REPLY #43255 /* ~"좋소. 그 기계의 취약한 부분은 어떤 곳들이오?"~ */ GOTO 51
  IF ~~ THEN REPLY #43256 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #43257 /* ~"좋소, 그렇게 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #43258 /* ~"그럼 그것이 어디 있는지 찾아내거나, 주조소 감독 앨릿사 틸드 또는 사로스로부터 얻으세요. 그럴 수 없다면 무력을 동원해야 할 텐데, 그건 권하고 싶지 않군요.~ */
  IF ~~ THEN REPLY #43259 /* ~"좋소. 그 기계의 취약한 부분은 어떤 곳들이오?"~ */ GOTO 51
  IF ~~ THEN REPLY #43260 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #43261 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.3 49.0 50.0 68.0
  SAY #43262 /* ~"발사 장치에 주력하세요. 거기에 금속 물체를 집어넣는 게 좋을 거예요. 그것의 금속 성분이 불꽃을 튕기며 기계 내부에 혼란을 일으켜 무기의 마력장의 공명을 파괴하고, 그 결과 기계는 자폭하게 될 거예요. 일단 기계에 아이템을 집어넣은 후에는 빨리 자리를 뜨세요, 약 반 시간 후에는 폭발을 할 테니."~ */
  IF ~~ THEN REPLY #43263 /* ~"노동자들은 어떻게 되는 거요?"~ */ GOTO 52
  IF ~~ THEN REPLY #43264 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #43265 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 41.0 48.2 51.0
  SAY #43266 /* ~"그들이 어떻다는 거죠? 그들은 자신들의 당파의 노예에 불과하고, 그들이 죽어도 당파는 조금도 슬퍼하지 않을 거예요. 그런데 왜 당신이 신경을 써야 하죠?"~ */
  IF ~~ THEN REPLY #43267 /* ~"그들에게는 죄가 없기 때문에 신경이 쓰이오."~ */ GOTO 53
  IF ~~ THEN REPLY #43268 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 38
  IF ~~ THEN REPLY #43269 /* ~"당신이 옳소. 기계가 파괴되었다는 소식을 가지고 돌아오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #43270 /* ~"죄없는? 하! 이처럼 부패한 조직에서나 죽음의 기계를 만드는 일을 하는 자들을 '죄없다'고 하겠죠. 정말 가소롭군요." 그녀는 목에서 담즙을 삼키려는 듯 잠시 멈춘다. "그 기계를 파괴할 거예요 아니에요?"~ */
  IF ~~ THEN REPLY #43271 /* ~"하지 않겠소. 그들은 죽어야 할 이유가 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43272 /* ~"그러리다. 내 성공의 소식을 가지고 돌아오겠소."~ */ EXIT
END

IF WEIGHT #12 ~  Global("Sabotage","GLOBAL",8)
~ THEN BEGIN 54 // from: 55.0
  SAY #43273 /* ~"당신에게는 이미 기회를 주었어요. 이제와서 내가 당신을 믿고 일을 맡길 것 같아요? 내 앞에서 썩 꺼져요."~ */
  IF ~~ THEN REPLY #43274 /* ~"그럼 내 질문에 대답해주시오."~ */ GOTO 31
  IF ~~ THEN REPLY #43275 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 53.0 68.3 79.1
  SAY #43276 /* ~"그럼 우린 더 이상 할 말이 없군요. 이 일에 대해서는 입을 다물도록 하세요, 그럼 나도 당신이 배신을 모의했다는 얘기를 아무에게도 하지 않을 테니. 그럼 잘 가세요. 다시는 내게 말 걸지 마세요."~ */
  IF ~~ THEN REPLY #43277 /* ~"기다리시오! 난 마음을 바꿨소!"~ */ GOTO 54
  IF ~~ THEN REPLY #43278 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #13 ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 56 // from:
  SAY #43279 /* ~"당신은 이제 갓즈맨이군요. 아직도 만족하나요?"~ */
  IF ~~ THEN REPLY #43280 /* ~"그렇소."~ */ GOTO 57
  IF ~~ THEN REPLY #43281 /* ~"아니, 별로."~ */ GOTO 58
  IF ~~ THEN REPLY #43282 /* ~"당신에게 질문할 것이 좀 있소."~ */ GOTO 59
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43295 /* ~"틸돈은 당신이 아나키스트라고 했소."~ */ GOTO 73
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"틸돈은 당신이 아나키스트라고 했소."~ */ GOTO 64
  IF ~~ THEN REPLY #5531 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 58.3
  SAY #43284 /* ~"좋아요. 당신이 스스로의 선택에 만족한다니 기쁘군요. 내게 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #43285 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 59
  IF ~~ THEN REPLY #43286 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.1
  SAY #43287 /* ~"그건 왜요?"~ */
  IF ~~ THEN REPLY #43288 /* ~"내가 생각했던 것과는 다른 것 같소."~ */ GOTO 60
  IF ~~ THEN REPLY #43289 /* ~"왜냐하면 난 그것이 공허한 칭호라는 걸 깨달았기 때문이오."~ */ GOTO 61
  IF ~~ THEN REPLY #43290 /* ~"그냥 불만이오."~ */ GOTO 60
  IF ~~ THEN REPLY #43291 /* ~"실은 난 상당히 만족하고 있소."~ */ GOTO 57
END

IF ~~ THEN BEGIN 59 // from: 56.2 57.0 60.0 63.0 64.0 65.0 66.0 67.0 72.0 73.1 76.0 77.1
  SAY #43292 /* ~"질문이 뭐죠?"~ */
  IF ~~ THEN REPLY #43293 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 62
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43294 /* ~"살인 사건에 대해 당신이 아는 것을 얘기해주시오."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43295 /* ~"틸돈은 당신이 아나키스트라고 했소."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43296 /* ~"틸돈은 당신이 아나키스트이며, 당신이 죄를 자기에게 뒤집어씌우려고 한다고 말했소."~ */ GOTO 73
  IF ~~ THEN REPLY #43297 /* ~"당신이 일하고 있는 프로젝트에 대해 얘기해주시오."~ */ GOTO 65
  IF ~~ THEN REPLY #43298 /* ~"이 곳에 있는 다른 사람들에 대해 얘기해주시오."~ */ GOTO 66
  IF ~~ THEN REPLY #43299 /* ~"당신은 누구요?"~ */ GOTO 67
  IF ~~ THEN REPLY #43300 /* ~아무 것도 아니오. 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.0 58.2 61.0 61.1
  SAY #43301 /* ~"만사가 우리 뜻대로 되는 건 아니고 우린 모두 불만을 가지게 되죠. 당파의 멤버가 되다는 건 무형의 보수예요. 이 점에 대해 잘 생각해본 후 나중에 다시 오세요."~ */
  IF ~~ THEN REPLY #43302 /* ~"좋소. 대신 물어볼 것들이 좀 있소..."~ */ GOTO 59
  IF ~~ THEN REPLY #43303 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 58.1
  SAY #43304 /* ~"그럼 당신은 자신이 갓즈맨에 헌신적이라고 말할 수 있나요?" ?"~ */
  IF ~~ THEN REPLY #43305 /* ~진실: "그렇소."~ */ GOTO 60
  IF ~~ THEN REPLY #43306 /* ~거짓말: "그렇소."~ */ GOTO 60
  IF ~~ THEN REPLY #43307 /* ~진실: "아니오."~ */ GOTO 69
  IF ~~ THEN REPLY #43308 /* ~거짓말: "아니오."~ */ GOTO 69
  IF ~~ THEN REPLY #43309 /* ~"그게 당신과 무슨 상관이오?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 62 // from: 59.0 81.0
  SAY #43310 /* ~그녀는 하품을 한다. "주조소 내의 그 누구에게 물어봐도 같은 답을 얻을 거예요. 왜 나로부터 다른 답을 들을 수 있을 거라고 생각하는 거죠? 다른 질문이나 하세요." ~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #43311 /* ~"살인 사건에 대해 당신이 아는 것을 얘기해주시오."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #43312 /* ~"틸돈은 당신이 아나키스트이며, 당신이 죄를 자기에게 뒤집어씌우려고 한다고 말했소."~ */ GOTO 64
  IF ~~ THEN REPLY #43313 /* ~"당신이 일하고 있는 프로젝트에 대해 얘기해주시오."~ */ GOTO 65
  IF ~~ THEN REPLY #43314 /* ~"이 곳에 있는 다른 사람들에 대해 얘기해주시오."~ */ GOTO 66
  IF ~~ THEN REPLY #43315 /* ~아무 것도 아니오. 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1 62.0 81.1
  SAY #43316 /* ~"어디 볼까요... 내가 그 날 밤에 경비병들을 내보낸 건, 내가 옆 방에서 프로젝트에 관련된 정교한 기술에 대해 연구를 하고 있었으며, 그들의 정신적 파장이 중요한 작업을 망치는 것을 원하지 않았기 때문이에요. 방에서 나와 시체를 발견했을 때 나는 당황했어요. 내게 다른 알리바이가 없기 때문에 내가 용의자라는 건 나도 알아요. 그리고 아마 당신은 내가 진실을 강제하는 주문을 내게 거는 것에 동의하지 않았다는 사실도 알고 있을 거예요. 하지만 그 이유는 그렇게 하면 프로젝트를 보호하기 위해 내가 한 비밀 유지 서약을 어기게 되기 때문이에요."~ */
  IF ~~ THEN REPLY #43317 /* ~"알겠소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 59
  IF ~~ THEN REPLY #43318 /* ~"그건 켈도에게 확인해보도록 하겠소."~ */ GOTO 72
  IF ~~ THEN REPLY #43319 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 56.4 59.2 62.1 81.2
  SAY #43320 /* ~그녀는 냉소한다. "아나키스트? 좋아요. 여기 내 다른 한쪽 다리도 있어요. 진지한 질문이 있는 건가요, 아니면 하던 일로 돌아가도 괜찮겠어요?"~ */
  IF ~~ THEN REPLY #43321 /* ~"그 밖에도 질문할 것들이 있소."~ */ GOTO 59
  IF ~~ THEN REPLY #43322 /* ~"하던 일로 돌아가시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 59.4 62.2 81.4
  SAY #43323 /* ~"우리가 목숨을 걸고 지키고 완성하기로 한 프로젝트에 대해 당신에게 얘기하라고요? 아니, 그럴 수 없어요. 적어도 지금은. 그것은 매우 강력하며, 우리가 공을 들일 가치가 있는 것이라고만 말해 두지요."~ */
  IF ~~ THEN REPLY #43324 /* ~"좋소. 그럼 다른 질문들에 좀 대답해주시오..."~ */ GOTO 59
  IF ~~ THEN REPLY #43325 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.5 62.3 81.5
  SAY #43326 /* ~"이 곳의 다른 사람들? 총명하지만 괴팍한 닐 잰더, 추방당한 기스저라이 켈'레라, 그 마음은 그 별명과 달리 모호하지 않은 회색의 틸돈, 간부 켈도, 간부 산도즈, 산도즈의 두 자녀, 현장 감독들, 대장장이들... 이들 이외에도 많이 있어요. 모두 지나가다 한두 번 스친 적은 있지만, 솔직히 그들에 대해 알려고 별 노력은 하지 않았어요. 미안하지만 내게 중요한 건 그들이 나를 위해 일을 하는가 여부뿐이에요. 난 내 일에 꽤 열심이거든요."~ */
  IF ~~ THEN REPLY #43327 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 59
  IF ~~ THEN REPLY #43328 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 59.6 81.6
  SAY #43329 /* ~"내 이름은 베다이-린이에요. 나는 마법 기술자예요. 말해 두겠는데 나는 마법사가 아니라 이론가예요. 그라고 나는 갓즈맨이 그 무기를 사용하거나, 다른 전쟁용 병기를 하청받지 못하게 만들 거예요."~ */
  IF ~~ THEN REPLY #43330 /* ~"좋소. 다른 질문들에 대답해주시오..."~ */ GOTO 59
  IF ~~ THEN REPLY #43331 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 79.0
  SAY #43332 /* ~그녀는 만족스럽게 미소짓는다. "좋아요. 기계의 약점을 공격한 후 돌아와서 내게 알려 주세요."~ */
  IF ~~ THEN REPLY #43333 /* ~"그것의 취약점은 어떤 부분들이오?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #43334 /* ~"일이 끝나면 당신에게 알리겠소. 지금은 우선 질문할 것들이 있소."~ */ GOTO 38
  IF ~~ THEN REPLY #43335 /* ~"당신은 왜 이런 일을 원하는 거요?"~ */ GOTO 41
  IF ~~ THEN REPLY #43336 /* ~"마음을 바꿨소. 당신을 넘기겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Bedai_4","GLOBALGood",1)
SetGlobal("Sabotage","GLOBAL",8)
~ GOTO 55
  IF ~~ THEN REPLY #43337 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.2 61.3
  SAY #43338 /* ~"당신은 기회만 있다면 갓즈맨을 기꺼이 공격할 정도로 그들에 대한 충성심이 희박하나요?"~ */
  IF ~~ THEN REPLY #43339 /* ~"그렇소."~ */ GOTO 74
  IF ~~ THEN REPLY #43340 /* ~"물론 아니오."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 61.4
  SAY #43341 /* ~"아니, 그렇지 않아요." 그녀는 당신에게 등을 돌린다. "안녕히 가세요."~ */
  IF ~~ THEN REPLY #43342 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #43343 /* ~"뻔하지 않나요? 나는 거짓 이름과 신분으로 서약을 했어요. 나는 그 서약을 한 사람이 아니기 때문에 내게는 효과가 없었죠. 자, 이 새 임무를 맡을 거예요, 아니에요?"~ */
  IF ~~ THEN REPLY #43344 /* ~"뭐요?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 72 // from: 63.1
  SAY #43345 /* ~"그렇게 하세요. 그가 내가 한 말을 확인해 줄 거예요. 서약을 주관한 건 그니까 그 위력에 대해서도 알고 있어요."~ */
  IF ~~ THEN REPLY #43346 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 59
  IF ~~ THEN REPLY #43347 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 56.3 59.3 81.3
  SAY #43348 /* ~그녀의 눈에 분노의 빛이 감돈다, 그러나 그것이 어찌나 빨리 경멸하는 눈빛으로 바뀌었는지 당신은 자신에 제대로 보긴 했는지 의심할 정도이다. "아나키스트? 좋아요. 여기 내 다른 한쪽 다리도 있어요. 그것도 당겨 보시죠. 진지한 질문이 있는 건가요, 아니면 하던 일로 돌아가도 괜찮겠어요?"~ */
  IF ~~ THEN REPLY #43349 /* ~"그 번득이는 분노는 대체 뭐였소?"~ */ GOTO 77
  IF ~~ THEN REPLY #43350 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 59
  IF ~~ THEN REPLY #43351 /* ~"하던 일로 돌아가도 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 69.0
  SAY #43352 /* ~"그럼 당신은 제대로 찾아왔어요." 그녀는 미소짓는다, 그리고 그녀의 눈에 새로운 빛이 감돈다. "바테주와 갓즈맨 양쪽 모두에게 타격을 입히는 일에 대해 어떻게 생각하나요?""~ */
  IF ~~ THEN REPLY #43353 /* ~"무슨 뜻이오?"~ */ GOTO 79
  IF ~~ THEN REPLY #43354 /* ~"별로 내키지 않소."~ */ GOTO 80
END

IF ~~ THEN BEGIN 75 // from: 9.4
  SAY #43355 /* ~"그는 유용한 졸병이었어요, 하지만 그는 개인적인 관계에 너무 집착해 그들이 파멸해야 할 필요성을 이해하지 못했어요. 그가 살든 죽든 그건 내게 있어 별로 대수로운 일이 아니에요. 나는 그를 제 몫을 하기는 했으나 가능성을 지니지 못했던 소년으로 애정을 가지고 기어할 생각이에요."~ */
  IF ~~ THEN REPLY #43356 /* ~"좋소. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 9
  IF ~~ THEN REPLY #43357 /* ~"그거 참 인정도 많군. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #43358 /* ~"좋아요, 좋아. 이 당파가 배신자를 배출하지 않는다는 건 보기 좋군요. 내가 달리 도울 건 없겠어요?"~ */
  IF ~~ THEN REPLY #43359 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 59
  IF ~~ THEN REPLY #43360 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 73.0
  SAY #43361 /* ~그녀는 가볍게 미소를 짓는다. "당신의 관찰력은 예리하군요. 이렇게 설명하죠: 만약 당신이 억울한 누명을 썼다면 기분이 어떻겠어요? 내 분노는 거기서부터 나온 거예요. 그 이상도 이하도 아니에요." 그녀의 이 말은 솔직한 것 같다...~ */
  IF ~~ THEN REPLY #43362 /* ~"난 그 말을 믿지 않소."~ */ GOTO 78
  IF ~~ THEN REPLY #43363 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 59
  IF ~~ THEN REPLY #43364 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #43365 /* ~"그래야 할 거예요, 나로부터는 답을 얻지 못할 테니." 그녀는 뻣뻣하게 돌아선다. "안녕히 가세요."~ */
  IF ~~ THEN REPLY #43366 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 74.0
  SAY #43367 /* ~"내 말은 엄청나게 강력한 무기가 바테주, 다른 말로는 악마의 지원 아래 이 곳 주조소에서 개발되고 있다는 뜻이에요. 그것을 파괴하면 당신이 거부하는 당파에 타격을 입힐 뿐만 아니라 마족 전체의 코를 납작하게 해줄 수도 있어요. 어떻게 생각하나요?"~ */
  IF ~~ THEN REPLY #43368 /* ~"하겠소."~ */ DO ~SetGlobal("Sabotage","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Bedai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaos_Bedai_2","GLOBALLaw",-1)
~ GOTO 68
  IF ~~ THEN REPLY #43369 /* ~"아니, 하지 않겠소."~ */ DO ~SetGlobal("Sabotage","GLOBAL",8)
IncrementGlobalOnceEx("GLOBALGood_Bedai_3","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Bedai_2","GLOBALLaw",1)
~ GOTO 55
END

IF ~~ THEN BEGIN 80 // from: 74.1
  SAY #43370 /* ~"그럼 당신은 내게 아무런 쓸모가 없어요. 당신이 입을 다물면 나도 다물지요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #43371 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #14 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 81 // from: 82.0
  SAY #43372 /* ~"무엇을 원하죠?"~ */
  IF ~~ THEN REPLY #43373 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 62
  IF ~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #43374 /* ~"살인 사건에 대해 당신이 아는 것을 얘기해주시오."~ */ GOTO 63
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #43375 /* ~"틸돈은 당신이 아나키스트이며, 당신이 죄를 자기에게 뒤집어씌우려고 한다고 말했소."~ */ GOTO 64
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #43376 /* ~"틸돈은 당신이 아나키스트이며, 당신이 죄를 자기에게 뒤집어씌우려고 한다고 말했소."~ */ GOTO 73
  IF ~~ THEN REPLY #43377 /* ~"당신이 일하고 있는 프로젝트에 대해 얘기해주시오."~ */ GOTO 65
  IF ~~ THEN REPLY #43378 /* ~"이 곳에 있는 다른 사람들에 대해 얘기해주시오."~ */ GOTO 66
  IF ~~ THEN REPLY #43379 /* ~"당신은 누구요?"~ */ GOTO 67
  IF ~~ THEN REPLY #43380 /* ~아무 것도 아니오. 관두시오."~ */ EXIT
END

IF WEIGHT #15 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 82 // from:
  SAY #43381 /* ~불타는 듯한 빨간 머리를 지닌 모질게 생긴 여인이 보인다. 머리를 뒤로 단단히 젖힌 탓인지 다소 불안하며, 긴장하고 있다는 인상을 준다. 당신이 다가가자 그녀는 당신을 쳐다보며 말한다. "내게 무슨 도움을 바라나요?"~ */
  IF ~~ THEN REPLY #43382 /* ~"그렇소, 질문할 것들이 좀 있소..."~ */ GOTO 81
  IF ~~ THEN REPLY #43383 /* ~"아니오, 미안하오. 안녕히 계시오."~ */ EXIT
END
