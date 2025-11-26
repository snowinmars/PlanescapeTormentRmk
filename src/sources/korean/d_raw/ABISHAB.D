// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : ABISHAB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~ABISHAB~

IF ~  Global("Know_Abishai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3325 /* ~이 흑색 비늘의 파충류의 키는 2.4 m를 넘지만, 그러한 큰 키는 뱀과 흡사한 빈약한 골격에 의해 상쇄된다. 이 생물의 뒷부분에는 가죽질의 날개와 물건을 집는 데도 사용할 수 있는 긴 꼬리가 달려 있다. 그로부터는 강렬한 식초 냄새와 약간의 열이 발산된다. 그는 당신을 무시하고 있는 듯하다.~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3326 /* ~"안녕하시오."~ */ DO ~SetGlobal("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 131
  IF ~  NearbyDialog("DMorte")
Global("Morte_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3992 /* ~"안녕하시오."~ */ EXTERN ~DMORTE~ 133
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",0)
~ THEN REPLY #3993 /* ~"안녕하시오."~ */ DO ~SetGlobal("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 70
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
Global("Annah_Abishai_Hive_Quip_1","GLOBAL",1)
~ THEN REPLY #3994 /* ~"안녕하시오."~ */ EXTERN ~DANNAH~ 72
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #3995 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #7718 /* ~그 생물을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.4 11.0
  SAY #7719 /* ~그 생물은 천천히 고개를 돌려 당신을 쳐다본다. 그가 인상을 찌푸리는 탓에 그의 비늘로 덮인 이마에는 주름이 생긴다, 그리고 그가 입을 열자 귀에 거슬리는 저음이 들린다. 당신의 그에 몸에서 발산되는 열기가 한층 뜨거워지고 있음을 깨닫는다.~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7720 /* ~"당신과 잠시 얘기를 나누고 싶소."~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7721 /* ~"당신과 잠시 얘기를 나누고 싶소."~ */ GOTO 6
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7722 /* ~"당신과 잠시 얘기를 나누고 싶소."~ */ GOTO 6
  IF ~~ THEN REPLY #7723 /* ~그 생물을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #7724 /* ~그 생물이 입을 열자 검은색의 날카로운 이빨들이 드러난다. 그는 긴 저음의 괴성을 내고, 그의 어깨와 팔에서는 불꽃이 춤을 추기 시작한다. ~ */
  IF ~~ THEN REPLY #7725 /* ~"진정하시오! 난 당신과 얘기를 하고 싶을 뿐이오."~ */ GOTO 4
  IF ~~ THEN REPLY #7726 /* ~당신도 쉿 하는 소리를 낸다.~ */ GOTO 3
  IF ~~ THEN REPLY #7727 /* ~그 생물을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 5.0 5.1
  SAY #7728 /* ~그 생물은 으르렁거린 후, 당신을 향해 돌격한다!~ */
  IF ~~ THEN REPLY #7730 /* ~자신을 방어한다...~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #7731 /* ~그 생물의 목소리는 매우 귀에 거슬린다. 마치 거친 돌 두 개를 서로 문지르는 소리 같다. 그는 잠시 동안 쉿 소리를 낸다. 그 동안 귀에 거슬리는 그의 목소리는 커졌다 작아졌다 한다.~ */
  IF ~~ THEN REPLY #7732 /* ~"어... 뭐라고?"~ */ GOTO 5
  IF ~~ THEN REPLY #7733 /* ~그 생물을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #7734 /* ~그 생물은 으르렁거린다. "너한테 할 말은 없어." 그는 눈을 가늘게 뜬다. "만약 계속 여기서 머물면 돌들이 네 더운 피로 덮일 것이다."~ */
  IF ~~ THEN REPLY #7735 /* ~"난 당신에게 질문을 좀 하고 싶을 뿐이오..."~ */ GOTO 3
  IF ~~ THEN REPLY #7736 /* ~"어디 해보시오, 결판이 났을 때 거리가 누구의 피로 뒤덮이는지 어디 한 번 봅시다."~ */ GOTO 3
  IF ~~ THEN REPLY #7737 /* ~그 생물을 그냥 내버려 두고 뒤로 물러선다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 1.2
  SAY #7738 /* ~그 생물은 갑자기 공기 중의 냄새를 맡는다, 그리고 나서 괴상한 소리를 내면서 당신으로부터 돌아선다. 무슨 불쾌한 냄새라도 맡은 것 같다.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #7739 /* ~"난 당신과 이야기가 하고 싶다고 말했소."~ */ GOTO 8
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7740 /* ~"난 당신과 이야기가 하고 싶다고 말했소."~ */ GOTO 7
  IF ~~ THEN REPLY #7741 /* ~그 생물을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #7742 /* ~그 생물의 눈은 안나에 초점을 맞춘다. 그리고 나서 그는 눈을 실처럼 가늘게 뜬다. 그가 입을 열자 검은색의 날카로운 이빨들이 드러난다. 그는 긴 저음의 괴성을 내고, 그의 어깨와 팔에서는 불꽃이 춤을 추기 시작한다. 그의 몸으로부터 발산되는 열은 증가하기 시작한다.~ */
  IF ~~ THEN REPLY #7743 /* ~"이봐! 난 지금 당신에게 얘기하고 있다고!"~ */ GOTO 9
  IF ~~ THEN REPLY #7744 /* ~그 생물을 그냥 내버려 두고, 안나를 데리고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #7745 /* ~그 생물의 눈은 훨-후럼-그레이스에 초점을 맞춘다. 그리고 나서 그는 눈을 실처럼 가늘게 뜬다. 그가 입을 열자 검은색의 날카로운 이빨들이 드러난다. 그는 긴 저음의 괴성을 내고, 그의 어깨와 팔에서는 불꽃이 춤을 추기 시작한다. 그의 몸으로부터 발산되는 열은 증가하기 시작한다~ */
  IF ~~ THEN REPLY #7746 /* ~"이봐! 난 지금 당신에게 얘기하고 있다고!"~ */ GOTO 10
  IF ~~ THEN REPLY #7747 /* ~뒤로 물러선 다음, 훨-후럼-그레이스를 데리고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #7748 /* ~그 생물은 으르렁거린 후, 안나를 향해 돌격한다!~ */
  IF ~~ THEN REPLY #7749 /* ~"빌어먹을... !"~ */ DO ~Enemy()
Attack("Annah")
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #7750 /* ~그 생물은 으르렁거린 후, 훨-후럼-그레이스를 향해 돌격한다!~ */
  IF ~~ THEN REPLY #7751 /* ~"빌어먹을... !"~ */ DO ~Enemy()
Attack("Grace")
~ EXIT
END

IF ~  Global("Know_Abishai","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #7752 /* ~이 흑색 비늘의 파충류의 키는 2.4 m를 넘지만, 그러한 큰 키는 뱀과 흡사한 빈약한 골격에 의해 상쇄된다. 이 생물의 뒷부분에는 가죽질의 날개와 물건을 집는 데도 사용할 수 있는 긴 꼬리가 달려 있다. 그로부터는 강렬한 식초 냄새와 약간의 열이 발산된다. 그는 당신을 무시하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #7753 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #7758 /* ~아비샤이를 그냥 내버려 둔다.~ */ EXIT
END
