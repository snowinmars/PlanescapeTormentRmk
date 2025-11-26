// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #3176 /* ~샤바는 당신 발에다 침을 뱉는다. "개자식! 거짓말로 날 이 곳에 가두고 감히 또 내게 말을 걸어? 배신자! 스틱스가 널 삼킨 후, 네 표백된 뼈들을 강변에 뱉어, 똥 먹는 자들의 군대가 그것으로 플루트를 만들어 불었으면 좋겠다!"~ */
  IF ~~ THEN REPLY #68278 /* ~"안녕히 계시오, 샤바."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3178 /* ~이 여자의 독수리 같은 얼굴에는 거만한 기색이 역력하며, 그가 당신을 경멸한다는 건 그녀의 말에서도 잘 드러난다. "나는 바쁜 여자예요. 날 오래 붙잡지는 말아요."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #3180 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60214 /* ~"커스트에 대해 몇 가지만 더 묻고 싶소..."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60215 /* ~"나는 안'이지우스와 얘기를 했소. 그는 흥미로운 제안을 했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60216 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",3)
GlobalLT("C_Off","GLOBAL",10)
~ THEN BEGIN 2 // from:
  SAY #60217 /* ~"어때요?"~ */
  IF ~  Global("C_Off","GLOBAL",5)
~ THEN REPLY #60218 /* ~"그는 당신을 배신하면 거액의 돈을 주겠다고 했소."~ */ GOTO 9
  IF ~  Global("C_Off","GLOBAL",6)
~ THEN REPLY #60219 /* ~"나는 경비대 대장과 얘기를 나누었고, 그는 안'이지우스를 감옥으로 호위하기 위해 부대를 파견하겠다고 했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",10)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #60222 /* ~나는 안'이지우스를 커스트 경비대에 성공적으로 넘긴 일에 대해 샤바에게 보고하였다. 그녀는 매우 기뻐했으며, 내게 이 작은 배신 행위에 대한 보수를 두둑하게 지불했다. ~ */ GOTO 10
  IF ~~ THEN REPLY #60220 /* ~"노력 중이오. 질문할 것들이 좀 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #60221 /* ~"노력 중이오. 나중에 다시 오리다."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #60223 /* ~"우리 거래는 끝났어요. 꺼지지 않으면 경비병들을 부르겠어요."~ */
  IF ~~ THEN REPLY #60224 /* ~"알겠소."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 13 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #60225 /* ~"왜 이렇게 빨리 돌아왔죠? 난 당신 질문에 대답해줄 시간은 없어요, 상처투성이 양반."~ */
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #60226 /* ~"질문할 것들이 몇 가지 있소..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #60227 /* ~"커스트에 대해 몇 가지만 더 묻고 싶소..."~ */ GOTO 6
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60228 /* ~"나는 안'이지우스와 얘기를 했소. 그는 흥미로운 제안을 했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60229 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #60230 /* ~"나는 당신 기분에 맞추어 질문에나 답해주는 가이드가 아니에요. 꺼져요."~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60231 /* ~"그럼 당신은 내가 안'이지우스와 얘기를 나누었다는 사실에 대해 관심이 있을 것 같군. 그는 흥미로운 얘기를 했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60232 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 4.1
  SAY #60233 /* ~그녀는 평가하는 듯한 시선으로 당신을 쳐다본다. "당신처럼 뛰어난 사람이라면 머물면서 담소라도 나누고 싶지만, 일이 있어서 실례해야겠어요. 이해하시죠? 당신이라면 이해하시겠죠?"~ */
  IF ~  Global("C_Off","GLOBAL",3)
~ THEN REPLY #60234 /* ~"그럼 당신은 내가 안'이지우스와 얘기를 나누었다는 사실에 대해 관심이 있을 것 같군. 그는 흥미로운 얘기를 했소."~ */ DO ~SetGlobal("C_Off","GLOBAL",4)
~ GOTO 7
  IF ~~ THEN REPLY #60235 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 4.2 5.0 6.0
  SAY #60236 /* ~"그는 내 명예를 훼손할 음모를 꾸미고 있죠, 그렇지 않나요? 그의 최신의 술수를 역이용하려면 어떻게 해야 할까요? 내가 그가 주겠다고 한 액수의 2배를 주겠다면?"~ */
  IF ~~ THEN REPLY #60237 /* ~"좋소. 거래 성립이오."~ */ GOTO 8
  IF ~~ THEN REPLY #60238 /* ~"안부를 전해달라고 했을 뿐이오. 그게 전부요."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #60239 /* ~"그럼 가서 그가 시킨 대로 하세요 - 단 나와 그의 역할을 바꿔서. 어때요? 후하게 사례하겠어요."~ */
  IF ~~ THEN REPLY #60240 /* ~"그럼 다녀오리다."~ */ JOURNAL #60241 /* ~커스트의 또 다른 관료인 샤바는 만약 내가 안'이지우스를 배신하면 그가 약속한 돈의 2배를 주겠다고 제의했다. 그 일에 대해선 잘 생각해 봐야겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #60242 /* ~"흥! 그만 집어치워요. 그가 약속한 만큼은 나도 낼 수 있지만 그 이상은 낼 수 없어요." 그녀는 도전적인 미소를 짓는다. "결정은 당신이 내리세요. 하지만 기억하세요... 나라면 그보다 추가로 약간 더 줄 수 있을지도 모른다는 사실을."~ */
  IF ~~ THEN REPLY #60243 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #68274 /* ~샤바는 그녀와 안'이지우스 사이의 배신 게임에서 내게 최후의 제의를 하였다. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #60244 /* ~그녀는 무거운 동전 자루를 하나 건네준다. "이걸 가지고 떠나세요. 우린 아무 얘기도 한 적이 없는 거예요." 그녀는 윙크를 한다. "당신에게는 감사를 드려요... 별 가치는 없겠지만. 안녕히 가세요, 이방인."~ */
  IF ~~ THEN REPLY #60245 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.2
  SAY #60246 /* ~"난 정말 바빠요. 내가 시킨 심부름을 마치고 난 뒤에 다시 오겠어요? 고마워요?" 그녀는 환한 미소를 지은 후 돌아선다.~ */
  IF ~~ THEN REPLY #60247 /* ~"그럼 다녀오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.1
  SAY #60248 /* ~그녀는 냉소한다. "잘도 그렇겠어요. 기억하세요... 그가 얼마를 제시했던 간에 난 그 두 배를 내겠어요. 잘 생각해보세요, 이방인."~ */
  IF ~~ THEN REPLY #60249 /* ~"그러리다. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 13 // from:
  SAY #66785 /* ~커스트의 관료 신분을 나타내는 좋은 옷을 입은 이 여자는 공포에 질려 있다. "그들은 날 죽이려 하고 있어요! 난 이 도시가 이동했을 때 내 직무를 하고 있었을 뿐인데, 그들은 내가 처형 명령서에 서명을 했다고 해서 커스트가 카케리에 떨어진 일과 내가 연관이 있다고 생각하고 있어요! 내겐 아무런 악의도 없었어요! 난 내 일을 하고 있었을 뿐이에요! 제발 도와주세요."~ */
  IF ~~ THEN REPLY #66792 /* ~"내가 할 수 있는 일을 하겠소. 날 위해 행운을 빌어주시오."~ */ EXIT
  IF ~~ THEN REPLY #66793 /* ~"자업자득이오."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #66794 /* ~"그럼 전부 다 게흐렐레스에게 잡아 먹혀 죽어! 개새끼!"~ */
  IF ~~ THEN REPLY #66795 /* ~"깨끗하게 죽으시오."~ */ EXIT
END
