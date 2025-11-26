// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUJOG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUJOG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53212 /* ~이 거구의 경비병은 자기 주변의 민간인들에게 큰 소리로 명령을 내리고 있다. 당신이 그를 제지하자 그는 헬멧의 틈새 사이로 당신을 노려본다. "뭐야, 얼간아? 바쁘니까 빨리 말해."~ */
  IF ~~ THEN REPLY #53213 /* ~"대체 무슨 일이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #53214 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53215 /* ~"뭐처럼 보이냐, 얼간아? 우린 이 창고를 털 거라고. 너도 끼고 싶어? 내가 명령을 내리고 있으니까 머저리들이 무질서하게 소란을 피우는 것과는 달리 계획적으로 제대로 할 거라고."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53216 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53217 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53218 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53219 /* ~"당신이 하는 짓은 사태를 악화시키고 있소. 약탈을 하는 대신 이 사람들을 데리고 가서 시의 벽을 지키는 일을 도우시오. 커스트가 다시 아웃랜즈로 되돌아갈 수 있도록." ~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53220 /* ~"당신이 하는 짓은 사태를 악화시키고 있소. 약탈을 하는 대신 이 사람들을 데리고 가서 시의 벽을 지키는 일을 도우시오. 커스트가 다시 아웃랜즈로 되돌아갈 수 있도록." ~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53221 /* ~"멈추시오. 내가 있는 동안 약탈은 용납할 수 없소."~ */ GOTO 3
  IF ~~ THEN REPLY #53222 /* ~"나는 다른 할 일이 있소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3
  SAY #53223 /* ~경비병은 면갑을 열고는 당신 발에 침을 뱉는다. "흥! 꺼져, 우린 약탈을 해야 하니까."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53224 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53225 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53226 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53227 /* ~"멈추시오. 내가 있는 동안 약탈은 용납할 수 없소."~ */ GOTO 3
  IF ~~ THEN REPLY #53228 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.5 2.3
  SAY #53229 /* ~투구가 그의 얼굴을 가리고 있음에도 당신은 그가 조소하고 있다는 것을 느낄 수 있다. "그래? 그럼..." 그는 자신의 거대한 무기를 쳐든다. "그럼 그 상황을 개선해야겠군."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #53230 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #53231 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #53232 /* ~"만약 우리가 사태를 진정시킬 수 있다면 시가 아웃랜즈로 되돌아가는 데 일조할 수가 있을 것이오. 일단 커스트가 괴물들로 범람하게 되면 당신들이 얼마나 오랫동안 살아남아 약탈한 재물을 즐길 수 있으리라고 생각하시오?"~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #53693 /* ~"당신이 하는 짓은 사태를 악화시키고 있소. 약탈을 하는 대신 이 사람들을 데리고 가서 시의 벽을 지키는 일을 도우시오. 커스트가 다시 아웃랜즈로 되돌아갈 수 있도록." ~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #53694 /* ~"당신이 하는 짓은 사태를 악화시키고 있소. 약탈을 하는 대신 이 사람들을 데리고 가서 시의 벽을 지키는 일을 도우시오. 커스트가 다시 아웃랜즈로 되돌아갈 수 있도록." ~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Jujog_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #53233 /* ~자신을 방어한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 1.4 2.0 2.1 2.2 3.0 3.1 3.2 3.4
  SAY #53234 /* ~"하지만... 아, 염병할. 당신이 옳아." 그는 자기 주변에 모인 약탈자들에게 소리를 지른다. "좋아! 그가 하는 얘기는 들었지? 어서 움직여! 그리고 도시가 원래대로 돌아간 후 이 일을 입 밖에 내면 죽은 목숨인 줄 알라고! 어서 가! 움직이라고!" 그는 다시 당신 쪽으로 돌아선다. "당신은 보기와는 달리 머리가 좋군. 당신은 괜찮은 친구야."~ */
  IF ~~ THEN REPLY #53235 /* ~"고맙소. 안녕히 계시오."~ */ DO ~AddexperienceParty(150000)
EscapeArea()
~ JOURNAL #53236 /* ~나는 다른 사람도 아닌 시 경비병에 의해 이끌리는 한 무리의 시민들을 약탈을 중지하고 시의 방어를 위해 협력하도록 설득하는 데 성공했다. ~ */ EXIT
END
