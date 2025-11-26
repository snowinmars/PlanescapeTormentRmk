// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBISH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBISH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 13 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #34107 /* ~당신이 방에 들어가자 한 명의 거한이 의자에서 일어나 당신에게 다가온다. "이보시오! 난 비쉬요. 헌데 당신은 누구요?" ~ */
  IF ~~ THEN REPLY #34123 /* ~"내겐 이름이 없소."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 1
  IF ~~ THEN REPLY #34124 /* ~거짓말: "내 이름은 '아단'이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 2
  IF ~~ THEN REPLY #34125 /* ~"당신과는 상관없는 일이오."~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 3
  IF ~~ THEN REPLY #34126 /* ~그를 무시하고 가던 길을 간다.~ */ DO ~SetGlobal("Bish_Talked","AR0108",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #34108 /* ~"이름이 없다니 그게 무슨 소리야? 스틱스 강에서 수영이라도 하다 온 거야, 이 얼간아?!" 당신은 비쉬의 손이 무기를 향해 천천히 움직이고 있다는 사실을 깨닫는다. "아니면 내게 얘기를 하지 않으려는 건가? 내 생각에 당신은 뭔가를 숨기고 있어."~ */
  IF ~~ THEN REPLY #34127 /* ~"이것 보시오, 난 진실을 말하고 있소. 난 내 이름을 모르오."~ */ DO ~IncrementGlobal("Law","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34128 /* ~"나는 아무 것도 숨길 게 없소, 그리고 난 말썽을 원하지 않소. 난 그냥 이 곳을 지나가고 싶을 뿐이오."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~~ THEN REPLY #34129 /* ~거짓말: "알았소, 알았소... 내 이름은 '아단'이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34130 /* ~"난 그냥 이 곳을 지나가고 싶을 뿐이오."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34131 /* ~"만약 당신이 당장 비키지 않겠다면 엄청난 대가를 치르게 될 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34132 /* ~"만약 당신이 당장 비키지 않겠다면 엄청난 대가를 치르게 될 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34133 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34134 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #34135 /* ~"나는 파로드를 이 근방에서 찾을 수 있다는 얘기를 들었소."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~~ THEN REPLY #34136 /* ~"당신과는 상관없는 일이오."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
  IF ~~ THEN REPLY #34137 /* ~비쉬를 공격한다.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66908 /* ~비쉬를 무시하고 가던 길을 계속 간다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 4.1
  SAY #34109 /* ~"아다-뭐라고?" 비쉬는 잠시 당신을 멍하니 바라보더니 고개를 격렬하게 젓는다. "난 당신을 전에 본 적이 없어, 그리고 난 파로드에게 '아단'이라는 자가 올 거라는 얘기는 듣지 못했어." 당신은 비쉬의 손이 무기를 향해 천천히 움직이고 있다는 사실을 깨닫는다. "내게 당신이 여기서 뭘 하고 있는지 털어놓는 게 좋을 거야."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66904 /* ~"파로드는 당신이 생각하는 만큼 당신을 신뢰하지 않는 것 같소."~ */ DO ~AddexperienceParty(1200)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34138 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34139 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #34140 /* ~"당신과는 상관없는 일이오."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34141 /* ~"나는 아무 것도 숨길 게 없소, 그리고 난 말썽을 원하지 않소. 난 그냥 이 곳을 지나가고 싶을 뿐이오."~ */ DO ~AddexperienceParty(1200)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34142 /* ~"난 그냥 이 곳을 지나가고 싶을 뿐이오."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34143 /* ~"만약 당신이 당장 비키지 않겠다면 엄청난 대가를 치르게 될 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34144 /* ~"만약 당신이 당장 비키지 않겠다면 엄청난 대가를 치르게 될 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34145 /* ~비쉬를 공격한다.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34146 /* ~비쉬를 무시하고 가던 길을 간다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.9 1.11 2.3 2.9 4.2 4.4 7.3 7.9
  SAY #34110 /* ~비쉬는 갑자기 무기를 뽑아 든다. "좋아. 만약 당신이 내게 솔직히 털어놓지 안겠다면 강제로라도 답을 얻어낼 수밖에."~ */
  IF ~~ THEN REPLY #34147 /* ~"어디 해보시오..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY #34111 /* ~당신이 돌아서서 떠나려고 하자 비쉬가 당신 앞을 가로막는다. "한 번만 더 묻겠다, 이 얼간아! 네 이름은 대체 뭐야?"~ */
  IF ~~ THEN REPLY #34148 /* ~"나는 내 이름이 뭔지 모르오."~ */ GOTO 1
  IF ~~ THEN REPLY #34149 /* ~거짓말: "내 이름은 '아단'이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 2
  IF ~~ THEN REPLY #34150 /* ~"그건 당신이 상관할 바가 아니오!"~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #34151 /* ~비쉬를 공격한다.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34152 /* ~계속 비쉬를 무시하고 그를 돌아서 가려고 시도한다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 1.6 2.1 7.1
  SAY #34112 /* ~"만약 파로드가 당신을 만나고 싶어 한다면 내가 모를 리가 없지." 비쉬는 갑자기 무기를 뽑아 든다. "난 너와 스무고개하는 데는 이제 질렸어, 얼간아. 답은 네 시체로부터 듣기로 하지."~ */
  IF ~~ THEN REPLY #34153 /* ~"난 그렇게 생각하지 않소..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7 2.2 7.2
  SAY #34113 /* ~"당신은 당신이 전에 이 곳에 온 적이 있다는 거야? 일지든 아니든 간에 난 지금까지 당신을 한 번도 본 적이 없어. 그렇다면 당신은 나 몰래 이 곳을 어슬렁거렸다는 얘기로군." 비쉬는 갑자기 무기를 뽑아 든다. "그런 짓을 한 대가는 당신 목숨으로 치러야겠어."~ */
  IF ~~ THEN REPLY #34154 /* ~"뭐든 간에..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #34114 /* ~뷔쉬는 짜증을 견디다 못해 양손을 공중으로 치켜든다. "관둬, 얼간아! 더 이상 중요하지 않아!" 그는 고개를 앞뒤로 젓는다. "더 중요한 건 당신이 여기서 뭘 하고 있느냐는 거지." ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #66906 /* ~"나는 이 근방에 파로드가 있다는 얘기를 들었소."~ */ DO ~AddexperienceParty(1200)
~ GOTO 17
  IF ~  Global("Pharod","GLOBAL",0)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #34155 /* ~"나는 파로드란 사람을 찾고 있소."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34156 /* ~"나는 어떤 일지를 찾고 있소."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 6
  IF ~~ THEN REPLY #34157 /* ~"당신과는 상관없는 일이오."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34158 /* ~"나는 어떤 말썽도 일으키고 싶지 않소. 난 그냥 이 곳을 지나가고 싶을 뿐이오."~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #34159 /* ~"난 그냥 이 곳을 지나가고 싶을 뿐이오."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #34160 /* ~"만약 당신이 당장 비키지 않겠다면 엄청난 대가를 치르게 될 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #34161 /* ~"만약 당신이 당장 비키지 않겠다면 엄청난 대가를 치르게 될 거요."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 11
  IF ~~ THEN REPLY #34162 /* ~비쉬를 공격한다.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34163 /* ~비쉬를 무시하고 가던 길을 간다.~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 1.1 2.4 7.4
  SAY #34115 /* ~비쉬는 당신을 보면서 얼굴을 찌푸린다. "좋아, 가라고." 당신이 비쉬 옆을 지나가려고 할 때, 그는 당신 귀에다 대고 조용하게 경고한다. "하지만 이건 명심해, 만약 당신이 저 아래서 무슨 말썽이라도 일으키면, 다음에 만났을 때 내가 당신 해골을 부숴 버리겠어."~ */
  IF ~~ THEN REPLY #34164 /* ~안녕히.~ */ EXIT
  IF ~~ THEN REPLY #34165 /* ~"난 내 맘대로 하겠소..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.5 7.5
  SAY #34116 /* ~비쉬는 고개를 젓는다. "우린 모두 많은 것들을 원하지, 친구." 그는 큰 소리로 웃는다. "난 당신을 몰라, 그리고 난 당신이 싫어, 그러니 거래를 하지. 돈을 내든지 아니면 목숨을 내놔."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #34166 /* ~"그럼 내 돈."~ */ DO ~TakePartyGold(10000)
~ GOTO 12
  IF ~  PartyGold(0)
~ THEN REPLY #34167 /* ~"그럼 내 돈."~ */ DO ~SetAnimState(Myself,ANIM_STANDTOSTANCE)
~ GOTO 14
  IF ~~ THEN REPLY #34168 /* ~"그 어느 쪽도 줄 수 없소!"~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.4 2.6 7.6
  SAY #34117 /* ~"당신은 내가 생각했던 것보다 더 무지하군!" 비쉬는 어깨를 으쓱한다. "좋아, 그럼 본때를 보여주지!"~ */
  IF ~~ THEN REPLY #34169 /* ~"본때를 보여주마..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.5 2.7 7.7
  SAY #34118 /* ~비쉬는 으르렁거린다. "당신은 만만한 작자 같지는 않군." 그는 고개를 끄덕인 후 무기를 꺼낸다. "하지만 이것 앞에서 무사하진 못할 걸."~ */
  IF ~~ THEN REPLY #34170 /* ~"내 생각은 다른데..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #34119 /* ~비쉬는 당신 소지품을 철저하게 조사한다. "값나가는 거라곤 아무 것도 없으니 당신 목이라도 쳐야겠지만 참도록 하지! 이제 갈 길을 가라고. 하지만 경고를 하겠어, 만약 저 아래서 무슨 말썽이라도 일으키면 내가 쫓아가서 요절을 내겠어!"~ */
  IF ~~ THEN REPLY #34171 /* ~"떠나도록 하겠소."~ */ EXIT
  IF ~~ THEN REPLY #34172 /* ~"개자식..."~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #34120 /* ~비쉬가 자신의 초소를 지키고 있는 것이 보인다. 당신이 다가가자 그는 당신을 흘긋 보며 인사한다. "야아. 빨리 지나가라고."~ */
  IF ~~ THEN REPLY #34173 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #34121 /* ~비쉬는 동전을 찾으려고 당신 소지품을 철저하게 조사한다... 하지만 한 푼도 찾지 못한다. "넌 내 시간을 낭비하려고 한 거야, 아니며 네 붕대가 무슨 값어치라도 있을 거라고 생각한 거야?" 비쉬는 무기를 휘두른다. "대신 네 시체를 팔아서 돈을 챙겨야 할 것 같군!" ~ */
  IF ~~ THEN REPLY #34174 /* ~"두고 보시오..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Buried_Attack","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #34122 /* ~비쉬는 몸을 돌려 당신 인사에 대해 무기를 뽑아 드는 것으로 답례한다! "내가 뭐라고 했는지 기억하지? 마을에서 말썽을 일으켰으니 이제는 내가 네 해골을 부수겠어!"~ */
  IF ~~ THEN REPLY #34175 /* ~"뭐든 간에..."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0
  SAY #66905 /* ~비쉬는 당신에게 코방귀를 뀐다. "그에게 만약 나와 내 부하들이 이 염병할 곳을 계속 지키길 원한다면 생각을 바꾸라고 전하시오." 그는 무기를 집어 넣고는 바닥에 있는 함정문을 가리킨다. "가시오."~ */
  IF ~~ THEN REPLY #66910 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.8 7.0
  SAY #66907 /* ~비쉬는 의심쩍은 눈초리로 당신을 본다. "파로드는 대개 내게 방문객들에 대해 알려 주오, 하지만 당신같은 자가 온다는 얘기를 들은 기억은 없소." 그는 당신을 흘긋 보더니 냉담한 표정으로 어깨를 으쓱한다. "당신은 경비병들이 처리 못할 정도의 상대는 아닌 것 같군. 가시오."~ */
  IF ~~ THEN REPLY #66909 /* ~"안녕히 계시오."~ */ EXIT
END
