// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSDTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSDTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2933 /* ~이 미친 듯한 눈매의 남자는 등을 구부리고 목청이 터지도록 울부짖고 있다. 그의 빽빽하고 엉클어진 머리 아래에는 일련의 기묘한 문신들이 있다... 그것들의 종류는 비명을 지른 얼굴에서 기묘한 기하학적 형태와 시구에 이르기까지 다양하다. 그는 거의 알몸이나 그의 몸을 뒤덮은 먼지와 오물이 가려야 할 곳들은 가려 주고 있다.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13755 /* ~"안녕하시오."~ */ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13756 /* ~"안녕하시오."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #13757 /* ~길고 쓸쓸하게 울부짖는다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 89
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13758 /* ~길고 쓸쓸하게 울부짖는다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13759 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13760 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 1 // from: 0.1 4.0
  SAY #2934 /* ~사내는 당신 주위를 돌며 낮은 소리로 으르렁거린다. 그는 몇 초간에 길게 으르렁거리는 소리를 낸 후, 당신을 향해 격렬하게 짖기 시작한다. 멀리서 이에 응답하여 짖는 소리가 들린다. ~ */
  IF ~~ THEN REPLY #13761 /* ~"나는 '안녕하시오'라고 말했소."~ */ GOTO 3
  IF ~~ THEN REPLY #13762 /* ~이빨을 드러내며 그에게 으르렁거린다."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13763 /* ~"어... 그럼 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13764 /* ~"어... 그럼 안녕히 계시오."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 2 // from: 0.3 4.1
  SAY #13745 /* ~사내는 당신이 짖는 소리를 듣자 당신 주위를 돈다, 그리고 뒤틀린 미소를 지으며 고개를 뒤로 젖히고 당신과 함께 짖기 시작한다. 그는 잠시 후 멈춘다, 그리고 다시 들개처럼 뛰어다니며 으르렁거린다. ~ */
  IF ~~ THEN REPLY #13765 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 3
  IF ~~ THEN REPLY #13766 /* ~이빨을 드러내며 그에게 으르렁거린다."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13767 /* ~"어... 당신과 얘기할 수 있어 반가웠소, 그럼 이만."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13768 /* ~"어... 당신과 얘기할 수 있어 반가웠소, 그럼 이만."~ */ EXTERN ~DMORTE~ 162
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0 2.1
  SAY #13746 /* ~사내는 짖는 것을 으르렁 소리에 함께 멈추고, 당신에게 달려든다!~ */
  IF ~~ THEN REPLY #13769 /* ~"만약 그렇게 죽고 싶다면, 늑대 인간..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #13747 /* ~이 미친 듯한 눈매의 사내는 아직도 목청이 터져라 짖고 으르렁거리면서 뛰어다니고 있다. ~ */
  IF ~~ THEN REPLY #13770 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #13771 /* ~길고 쓸쓸하게 울부짖는다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_SDThug_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13772 /* ~그를 그냥 내버려 둔다.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13773 /* ~그를 그냥 내버려 둔다.~ */ EXTERN ~DMORTE~ 162
END
