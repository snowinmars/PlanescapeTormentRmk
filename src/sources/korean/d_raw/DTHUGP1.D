// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP1~

IF ~  Global("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26003 /* ~이 건장한 깡패는 빨간색과 검은색으로 염색된 넝마 조각들을 걸치고 있다. 그는 전신이 근육으로 되어 있는 듯하다. 당신이 다가가자 그는 당신을 노려본다. ~ */
  IF ~~ THEN REPLY #26004 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #26005 /* ~깡패를 그냥 내버려둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #26878 /* ~"어떻게 도와줄까, 나으리?" 그는 코웃음친다. "당신에겐 의사의 도움이 필요할 것 같군."~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26879 /* ~"당신이 벌통에서 한 수도승으로부터 그의 기도용 염주 목걸이를 빼앗아간 자들 중 하나요?"~ */ GOTO 4
  IF ~~ THEN REPLY #26880 /* ~"당신에게 물어볼 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #26881 /* ~"그 조소하는 표정을 당장 지우지 않으면 의사를 필요로 하는 건 내가 아닌 당신이 될 거요, '두목.'"~ */ GOTO 3
  IF ~~ THEN REPLY #26882 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #26883 /* ~"닥쳐. 문답을 할 시간 따윈 없어." 그는 당신 발에 침을 뱉는다. "당장 꺼져, 이 얼간아!"~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
HasItem("PorNeck","ThugP1")
~ THEN REPLY #26884 /* ~"당신이 벌통에서 한 수도승으로부터 그의 기도용 염주 목걸이를 빼앗아간 자들 중 하나요?"~ */ GOTO 4
  IF ~~ THEN REPLY #26885 /* ~"내가 보기에 죽어야 할 건 당신 같은데."~ */ GOTO 3
  IF ~~ THEN REPLY #26886 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 4.0 11.0
  SAY #26887 /* ~"협박을 할 때 장소를 가려서 하라고, 나으리. 또 한 번 버릇없이 혀를 놀리면 내가 성형수술을 해주지. 알겠어?"~ */
  IF ~~ THEN REPLY #26888 /* ~"날 이길 수 있다고 생각하면 어디 덤벼보시오."~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #26889 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #26890 /* ~"얼굴이 주름투성이인 멍청이 말이야? 자기가 우릴 모두 죽일 수 있다고 주장하면서도 우리가 자길 터는 걸 그냥 보고만 있었던 자식 말이야?" 그는 천천히 미소를 짓는다. 그의 입 안에는 성한 이빨이 몇 개 없다. "그런 작자에 대해서는 들어본 적도 없어."~ */
  IF ~~ THEN REPLY #26891 /* ~"*내가* 당신들 모두를 황천으로 보내기 전에 그의 목걸이를 돌려주는 것이 좋을 거요."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #26892 /* ~거짓말: "재미있군. 그의 교단의 나머지 신도들이 당신들을 찾고 있소. *에릿-애제*의 형제들은 당신들에 대해 상당히 잘 알고 있는 것 같더군."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_PorThug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #26893 /* ~"합의를 하는 것이 좋을 것 같소. 그 목걸이는 그의 교단의 신도 이외의 사람에게는 아무런 가치도 없소. 난 그것을 당신으로부터 살 용의가 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #26894 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #26895 /* ~그는 눈살을 찌푸린다. "아니, 난 그게 마음에 들어. 그냥 줄 수는 없지... 돈을 꽤 준다면 모를까. 동전 열 다섯 닢은 어때?"~ */
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26896 /* ~"좋소."~ */ GOTO 6
  IF ~  PartyGoldGT(10)
~ THEN REPLY #26897 /* ~"열 닢은 어떻소?"~ */ GOTO 7
  IF ~~ THEN REPLY #26898 /* ~허풍: "아니, 그럴 가치가 없소. 그의 교단의 다른 신도들이 당신들을 찾도록 내버려 두겠소. *에릿-애제*의 형제들은 당신들과 합의를 볼 수 있을 거요, 하지만 당신은 아마 그 결과에 만족하지 않을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Thug_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~  PartyGoldLT(15)
~ THEN REPLY #26899 /* ~"당신 가격은 내가 감당할 수 없소. 나중에 다시 오리다."~ */ EXIT
  IF ~  PartyGoldGT(14)
~ THEN REPLY #26900 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26901 /* ~"그럼 좋아. 여기 있어..."~ */
  IF ~~ THEN REPLY #26902 /* ~"고맙소."~ */ DO ~TakePartyGold(15)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #26903 /* ~"에... 좋아. 뭐, 어차피 흉하게 생긴 물건이니까. 여기 있어..."~ */
  IF ~~ THEN REPLY #26904 /* ~"고맙소."~ */ DO ~TakePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",3)
GiveItem("PorNeck",Protagonist)
AddexperienceParty(500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.2
  SAY #26905 /* ~"에?" 사내의 얼굴에서 조소하는 표정이 싹 가신다. "대체 무슨 얘기야? 형제라니? 그 얼간이는 혼자였다고."~ */
  IF ~~ THEN REPLY #26906 /* ~거짓말: "바보 같으니, 그는 어떤 교단의 일원이오. 그 '목걸이'는 그들의 가장 신성한 성보요. 만약 그것이 반환되지 않는다면 그의 교단의 나머지 신도들이 모두 당신들을 찾으러 올 거요. 그리고 그들은 도둑을 죽이는 데 있어 조금도 주저하지 않소."~ */ DO ~AddexperienceParty(500)
GiveItem("PorNeck",Protagonist)
SetGlobal("Porphiron_Necklace","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #26907 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26908 /* ~그의 눈이 휘둥그레진다. "에... 우린 그냥 그를 위해 '유물'을 그냥 보관했을 뿐이라고..." 그는 옷에 손을 넣어 목걸이를 꺼낸다, 그리고 그것을 당신에게 조심스럽게 준다. "여기 있어. 악의는 없었다고. 이해하지?"~ */
  IF ~~ THEN REPLY #26909 /* ~거짓말: "이것이 교단의 다른 신도들을 진정시킬 수 있으면 좋으련만. 아마 그들의 교단에 대한 기부가 필요할지도 모르오. 그건 그들의 감정을 누그러트리고 그들이 당신에게 걸지도 모르는 저주를 회피하는 데 도움이 될 거요."~ */ DO ~GivePartyGold(10)
SetGlobal("Porphiron_Necklace","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Thug_2","GLOBALLaw",-1)
~ JOURNAL #26912 /* ~나는 깡패들 중 하나에게 포피론의 목걸이에 대해 얘기를 하고... 만약 목걸이를 돌려주지 않으면 그의 교단의 보다 호전적인 형제들이 그들을 벌하러 올 것이라는... 일련의 무해한... 거짓말로 놈들을 설득시켰다. ~ */ GOTO 10
  IF ~~ THEN REPLY #26910 /* ~"당신 지혜는 산이라도 움직일 수 있을 거요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26913 /* ~"저주?!" 사내는 가슴 위에 반원을 그린다. "에... 그런 건 원치 않는다고..." 그는 벨트에 달린 지갑에 손을 넣어 동전을 여러 닢 꺼낸 후 당신에게 준다. "내 감사와 함께 받아 줘. 그리고 그에게 악의는 없었다고 전해줘."~ */
  IF ~~ THEN REPLY #26914 /* ~"기부에 감사하오. 안녕히 계시오."~ */ DO ~AddexperienceParty(250)
~ EXIT
END

IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #26915 /* ~이 건장한 깡패는 빨간색과 검은색으로 염색된 넝마 조각들을 걸치고 있다. 그는 전신이 근육으로 되어 있는 듯하다. 당신이 다가가자 그는 당신을 노려본다. "꺼져! 난 더 이상 당신과 할 말이 없어."~ */
  IF ~~ THEN REPLY #26916 /* ~"내가 보기에 꺼져야 할 건 당신 같은데."~ */ GOTO 3
  IF ~~ THEN REPLY #26917 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
