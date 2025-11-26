// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTGU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTGU~

IF ~~ THEN BEGIN 0 // from:
  SAY #385 /* ~흑색 법복을 입은 험상궂은 표정의 남자가 보인다. 그는 당신을 의심스런 눈초리로 바라본다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #388 /* ~"안녕하시오."~ */ EXTERN ~DMORTE~ 77
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #389 /* ~"안녕하시오."~ */ EXTERN ~DMORTE~ 79
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #390 /* ~"안녕하시오."~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4119 /* ~"안녕하시오."~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4120 /* ~마치 이 곳 사람인 것처럼 행동하며 그를 무시하고 그냥 지나간다. ~ */ GOTO 1
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4146 /* ~그를 무시하고 지나간다. ~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.4
  SAY #386 /* ~더스트맨은 당신이 지나가자 눈살을 찌푸린다. 그는 당신에게 소리를 치려는 듯하다, 그러나 이내 멈춘다. 당신의 거동 때문에 잠자코 있기로 한 것 같다.~ */
  IF ~~ THEN REPLY #387 /* ~가던 길을 간다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5
  SAY #1407 /* ~당신이 지나가려고 하지 더스트맨은 눈살을 찌푸리며 당신을 부른다."거기 당신. 용건을 말하시오."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1409 /* ~"나는 이 곳의 홀들을 돌아다니다가 길을 잃은 것 같소. 방문객에게 길 안내를 해줄 가이드는 없소?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #1410 /* ~"나는... 길을 잃은 것 같소."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #1411 /* ~"내 용건은 당신이 알 바가 아니오. 당신 일이나 신경 쓰시오, 더스트맨."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1412 /* ~마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1413 /* ~마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #1408 /* ~"내 용무는 출구를 향해 가는 것뿐이오. 말썽을 일으킬 생각은 없소."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4147 /* ~"아무 것도 아니오. 나는 한때 길을 잃었으나 지금은 출구를 향해 가고 있소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.5 12.0 12.5 19.1 19.6
  SAY #1414 /* ~더스트맨은 눈살을 찌푸린다. 그는 당신을 의심하는 듯하다. "대기실에는 당신을 안내해 줄 수 있는 가이드들이 있소. 혼자서 시체안치소 안을 얼쩡거리지 마시오."~ */
  IF ~~ THEN REPLY #1415 /* ~"도움을 주어 고맙소. 가서 가이드와 얘기를 하겠소."~ */ EXIT
  IF ~~ THEN REPLY #1416 /* ~"나는 내가 원하는 곳은 어디든지 마음대로 갈 거요... 당신 일이나 신경 쓰시오, 더스트맨."~ */ DO ~Enemy()
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 2.6 12.1 12.6 19.2 19.7
  SAY #1417 /* ~"당신은 정말 길을 잃은 것 같군." 더스트맨은 눈을 가늘게 뜨고 허리에 찬 대거에 손을 뻗는다. "내가 당신을 밖으로 안내할 다른 경비병들을 부를 때까지 여기서 가만히 기다리시오," 그는 당장이라도 소리를 지를 것처럼 보인다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #1418 /* ~그가 미처 소리를 지르기 전에 그의 목을 부러트린다.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2536 /* ~그가 미처 소리를 지르기 전에 그의 목을 부러트린다.~ */ GOTO 7
  IF ~~ THEN REPLY #4148 /* ~"친구들을 부르게, 더스티... 난 그들을 만나길 학수고대하고 있으니까."~ */ GOTO 11
  IF ~~ THEN REPLY #4149 /* ~도망친다.~ */ GOTO 11
  IF ~~ THEN REPLY #4150 /* ~기다린다.~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 12.2 19.3
  SAY #4121 /* ~더스트맨은 눈을 가늘게 뜨고 허리에 찬 대거에 손을 뻗는다. 그는 당장이라도 경비병을 부를 것처럼 보인다.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4151 /* ~그가 미처 소리를 지르기 전에 그의 목을 부러트린다.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4152 /* ~그가 미처 소리를 지르기 전에 그의 목을 부러트린다.~ */ GOTO 7
  IF ~~ THEN REPLY #4153 /* ~"친구들을 부르게, 더스티... 난 그들을 만나길 학수고대하고 있으니까."~ */ GOTO 11
  IF ~~ THEN REPLY #4154 /* ~도망친다.~ */ GOTO 11
  IF ~~ THEN REPLY #4155 /* ~기다린다.~ */ GOTO 11
END

IF ~~ THEN BEGIN 6 // from: 2.3 12.4 19.4
  SAY #4122 /* ~당신이 그에게 '속삭이려고' 몸을 구부리자 더스트맨 역시 몸을 구부린다. 그가 팔이 닿을 거리 내로 들어오자 당신은 양손으로 그의 관자놀이를 꽉 조인다, 그리고 그의 목을 왼쪽으로 세게 비튼다.~ */
  IF ~~ THEN REPLY #4156 /* ~"당신 동료들에게 알리도록 내버려둘 수는 없지..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.1 14.0
  SAY #4123 /* ~더스트맨이 입도 뻥끗하기 전에 당신은 양손으로 그의 관자놀이를 꽉 조인다, 그리고 그의 목을 왼쪽으로 세게 비튼다.~ */
  IF ~~ THEN REPLY #4157 /* ~"당신 동료들에게 알리도록 내버려둘 수는 없지..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
AddexperienceParty(35)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #4124 /* ~*우지직*하는 소리가 나고 더스트는 맨은 당신 팔 안에서 맥없이 늘어진다. ~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4158 /* ~"나보다는 당신이 죽는 게 낫지, 더스티."~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 9
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #4159 /* ~"나보다는 당신이 죽는 게 낫지, 더스티."~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #4125 /* ~놀랍게도 이러한 행동은 당신에게 있어 매우 자연스러운 일인 것 같다... 마치 전에도 여러 번 비슷한 일을 해본 것처럼. 그런 생각이 들자 기억이 자극이 받으나, 표면으로 떠오를 정도로 강하지는 않다. ~ */
  IF ~~ THEN REPLY #4160 /* ~그의 시체를 어두운 곳에 밀어 넣은 다음 가던 길을 간다.~ */ DO ~Kill(Myself)
Deactivate(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.4 4.0 5.0 12.3 14.1 19.5
  SAY #4126 /* ~당신이 충분히 빠르지 못한 탓에 더스트맨은 당신의 돌격을 피한다. 한 걸음 물러선 후, 그는 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.~ */
  IF ~~ THEN REPLY #4161 /* ~"당신이 당신 신들과 화해했기를 빌겠소, 더스트맨..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 4.3 4.4 5.2 5.3 5.4 14.2 14.3
  SAY #4127 /* ~더스트맨은 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 철제 종소리가 울려 퍼지기 시작한다.~ */
  IF ~~ THEN REPLY #4162 /* ~"당신이 당신 신들과 화해했기를 빌겠소, 더스트맨..."~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.2 0.3
  SAY #4128 /* ~당신이 인사를 하자 더스트맨은 인상을 찌푸린다. "여기에는 무슨 용건으로 왔소?"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4163 /* ~"나는 이 곳의 홀들을 돌아다니다가 길을 잃은 것 같소. 방문객에게 길 안내를 해줄 가이드는 없소?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4164 /* ~"나는... 길을 잃은 것 같소."~ */ GOTO 4
  IF ~~ THEN REPLY #4165 /* ~"내 용건은 당신이 알 바가 아니오. 당신 일이나 신경 쓰시오, 더스트맨."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4166 /* ~마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4167 /* ~마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4168 /* ~"내 용무는 출구를 향해 가는 것뿐이오. 말썽을 일으킬 생각은 없소."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4169 /* ~"아무 것도 아니오. 나는 한때 길을 잃었으나 지금은 출구를 향해 가고 있소."~ */ GOTO 4
END

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #4129 /* ~흑색 법복을 입은 엄격하게 생긴 남자가 보인다. 그는 정면을 바라보고 있다. 그는 당신이 있다는 사실조차 모르는 것 같다.~ */
  IF ~~ THEN REPLY #4170 /* ~"안녕하시오."~ */ GOTO 14
  IF ~~ THEN REPLY #4171 /* ~비틀거리며 지나간다. ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4130 /* ~당신이 인사를 하자 더스트맨 경비병은 놀란 듯 한 걸음 물러선다.. "당신은 좀비가 아니군... 당신은 누구요? 그리고 어떻게 여기 들어왔소?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #4172 /* ~그가 미처 소리를 지르기 전에 그의 목을 부러트린다.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #4173 /* ~그가 미처 소리를 지르기 전에 그의 목을 부러트린다.~ */ GOTO 10
  IF ~~ THEN REPLY #4174 /* ~"설명을 하리다... 일은 내가 당신네 철판 위에서 죽음으로부터 깨어나면서 시작되었소... 거기에는 이 말하는 해골이 있었고..."~ */ GOTO 11
  IF ~~ THEN REPLY #4175 /* ~도망친다.~ */ GOTO 11
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 15 // from:
  SAY #4131 /* ~흑색 법복을 입은 엄격하게 생긴 남자가 보인다. 그는 당신을 보고 고개를 끄덕인다. ~ */
  IF ~~ THEN REPLY #4176 /* ~"안녕하시오."~ */ GOTO 16
  IF ~~ THEN REPLY #4177 /* ~고개를 끄덕여 답례하고 계속 걷는다.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #4132 /* ~"안녕하시오, 참입자."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #4178 /* ~"당신이라면 날 도울 수 있을 것 같소. 나는 길을 잃은 듯하오. 날 좀 안내해줄 수 있겠소?"~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #4179 /* ~"나는... 길을 잃은 것 같소."~ */ GOTO 17
  IF ~~ THEN REPLY #4180 /* ~"계속하시오, 동료 참입자."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #4133 /* ~"대기실에 가이드들이 있소. 그들이 당신을 안내할 수 있을 거요, 참입자." ~ */
  IF ~~ THEN REPLY #4181 /* ~"고맙소. 그들을 찾아가도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 8.1
  SAY #61284 /* ~Tu planques le corps flasque dans l'ombre.~ */
  IF ~~ THEN REPLY #61285 /* ~가던 길을 계속 간다. ~ */ DO ~Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #66691 /* ~검은 법복을 입은 엄하게 생긴 남자가 보인다. 그는 의심쩍은 눈초리로 당신을 노려본다. "당신 - 여기 온 용건을 말하시오?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66692 /* ~"나는 더스트맨 당파의 새로운 참입자요. 나는 시체안치소를 그냥 둘러보고 있었소."~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66693 /* ~"나는 이 곳의 홀들을 돌아다니다가 길을 잃은 것 같소. 방문객에게 길 안내를 해줄 가이드는 없소?"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66694 /* ~"나는... 길을 잃은 것 같소."~ */ GOTO 4
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66695 /* ~"내 용건은 당신이 알 바가 아니오. 당신 일이나 신경 쓰시오, 더스트맨."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66696 /* ~마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,DEX)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66697 /* ~마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66698 /* ~"내 용무는 출구를 향해 가는 것뿐이오. 말썽을 일으킬 생각은 없소."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,12,CHR)
!Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66699 /* ~"아무 것도 아니오. 나는 한때 길을 잃었으나 지금은 출구를 향해 가고 있소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #66700 /* ~경비병은 잠시 당신을 쳐다본 후 고개를 끄덕인다. "여기 있는 동안 다른 사람들의 일을 방해하지 않도록 주의하시오"~ */
  IF ~~ THEN REPLY #66701 /* ~"좋소. 그럼 당장 떠나도록 하겠소."~ */ EXIT
END
