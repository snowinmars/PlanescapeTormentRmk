// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZM985.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZM985~

IF ~  Global("Topple_985","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45515 /* ~이 시체 "985"번은 갑자기 멈추어 섰다. 왼쪽 다리의 상태로 미루어 볼 때, 곰팡이나 세균 때문에 무릎 부분이 썩은 듯하다. 시체는 균형을 유지하려고 앞뒤로 불안정하게 비틀거리고 있다.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #45516 /* ~시체를 밀친다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ EXTERN ~DMORTE~ 482
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #45517 /* ~시체를 밀친다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_ZM985_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_ZM985_1","GLOBALGood",-1)
PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 3
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #45518 /* ~시체가 균형을 유지하는 것을 돕는다.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1)
~ GOTO 4
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #45519 /* ~시체가 균형을 유지하는 것을 돕는다.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_ZM985_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_ZM985_1","GLOBALGood",1)
~ GOTO 6
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45520 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45521 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #45522 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #45523 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 5.0 5.1 5.2
  SAY #45524 /* ~시체는 아무 것도 느끼지 못하고 앞만 바라본다. 당신이 말을 걸어도 아무런 반응을 나타내지 않는다.~ */
  IF ~~ THEN REPLY #45525 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.5 5.3
  SAY #45526 /* ~시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.~ */
  IF ~~ THEN REPLY #45527 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 6.0
  SAY #45528 /* ~시체의 왼쪽 다리에서 *우두둑* 소리가 들린다, 그리고 시체는 죽은 나무처럼 쓰러진다. 동체는 판석과 충돌하여 썩은 멜론처럼 산산조각이 나고, 그 안에서 오물과 농장이 콸콸 흘러나온다. 놀랍게도 아무도 시체가 쓰러진 것을 눈치채지 못한 듯하다... 더욱 이상한 것은 왼쪽 다리가 시체가 서 있던 자리에 마치 차렷을 하는 듯 그대로 서 있다는 점이다. 하지만 다리도 잠시 후 *쿵* 소리와 함께 쓰러진다.~ */
  IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
CreateItem("Limb985",1,0,0)
SetGlobal("Topple_985","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #45530 /* ~당신은 시체를 안정시키려고 그것의 왼쪽 팔을 잡으려 한다. 하지만 당신이 팔을 잡자 시체는 갑자기 오른쪽으로 기운다. 때문에 당신은 시체를 안정시키기는커녕 잡아당긴 꼴이 되었다...~ */
  IF ~~ THEN DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ EXTERN ~DMORTE~ 482
END

IF ~  GlobalGT("Topple_985","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #45531 /* ~누군가가 이 시체의 왼쪽 다리와 왼쪽 팔을 다른 시체로부터 가져온 여분의 팔다리로 교체한 것 같다. 왼쪽 다리는 전의 다리보다 짧다, 하지만 적어도 이제 시체는 설 수가 있다.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #45532 /* ~"일전에 당신을 넘어뜨려 미안하오. 그건 사고였소." ~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #45533 /* ~"일전에 당신을 넘어뜨려 미안하오. 그건 사고였소." ~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #45534 /* ~"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #45535 /* ~시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.~ */ GOTO 2
  IF ~~ THEN REPLY #45536 /* ~"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #45537 /* ~시체를 그냥 내버려 두고 떠난다. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3
  SAY #45538 /* ~당신은 시체를 안정시키려고 그것의 왼쪽 팔을 잡으려 한다. 하지만 당신이 팔을 잡자 시체는 갑자기 오른쪽으로 기운다. 때문에 당신은 시체를 안정시키기는커녕 잡아당긴 꼴이 되었다...~ */
  IF ~~ THEN REPLY #45539 /* ~"이런..."~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #64205 /* ~당신은 시체의 썩은 잔해를 살펴보다가 그것의 왼쪽 팔은 아직도 멀쩡하다는 사실을 발견한다. 그것은 낙하 도중에 동체로부터 떨어져 나갔으며, 신체의 다른 부위와는 달리 부패가 별로 진행되지 않은 듯하다. ~ */
  IF ~~ THEN REPLY #64206 /* ~"흠... 혹시 저 팔을 이용할 수 있을지도..."~ */ EXIT
END
