// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BSPHERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BSPHERE~

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #62409 /* ~이 단순한 청동 구체는 지름이 약 30 cm이며 마치 속이 비기라도 한 것처럼 무척 가볍다. ~ */
  IF ~~ THEN REPLY #62412 /* ~구체를 살펴본다.~ */ GOTO 1
  IF ~~ THEN REPLY #62413 /* ~구체를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #62410 /* ~그것의 기본적인 외관은 평범하나 이 구체는 당신의 다른 감각들을 자극한다. 구체의 질감, 즉 '느낌'은 그것이 곧 활짝 열릴 알과 같다는 인상을 당신에게 준다 - 만지기만 해도 피부가 근질근질해진다. 설상가상으로 그것으로부터는 썩은 커스터드 냄새가 희미하게 나 당신 눈에서 눈물이 나게 만든다. ~ */
  IF ~~ THEN REPLY #62414 /* ~구체를 치운다.~ */ EXIT
END

IF ~  Global("Absorb_Real_Incarnation","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64916 /* ~구체를 들고 살펴보자, 당신은 첫 번째 화신의 기억이 당신 안에서 움직이는 것을 느낀다. 하지만 그것은 충동이나 압박이 아니라, 오랫동안 보지 못한 친구를 찾아온 사람의 입에서 나오는 부드러운 목소리처럼 느껴진다.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64917 /* ~당신의 정신 속에서 그의 존재를 느끼자, 당신은 구체를 다른 각도에서 보게 된다. 그것은 추악한 것이 아니라 갓난아기처럼 소중한 것이다 - 구체는 당신이 그레이 웨이스트에서 래벌을 만나 불가능한 일을 부탁하기 직전의 기억이 담겨 있다. ~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64918 /* ~이제 당신은 그녀에게 왜 부탁을 했는지 안다. 그리고 당신은 구체의 표면을 양손으로 만지면서 *후회*를 느끼기만 하면 구체가 열릴 것이라는 것을 안다.~ */
  IF ~~ THEN REPLY #64919 /* ~돌을 꽉 쥐고 후회한다.~ */ DO ~DestroyPartyItem("BSphere",TRUE)
~ GOTO 5
  IF ~~ THEN REPLY #64920 /* ~기억들을 청동 구체 안에 묻힌 채로 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64921 /* ~구체의 표면이 벗겨져 나가면서 눈물로 변한다, 그리고 그것은 다시 청동의 비로 변해 당신을 에워싼다. 그것이 한 방울 한 방울씩 당신 안으로 들어올 때마다 당신은 새로운 기억 - 잃어버린 사랑, 잊혀진 고통, 상실의 아픔 등이 요동치는 것을 느낀다. 그리고 그것과 함께 엄청난 후회의 압력이 엄습한다 - 부주의한 행동에 대한 후회, 고통에 대한 후회, 전쟁에 대한 후회, 죽음에 대한 후회... 그리고 당신은 자신의 정신이 그 압력 때문에 휘어지려고 하는 것을 느낀다 - 너무나도 많은 것이 한꺼번에 밀려들고 있다. 남들에게 너무나도 많은 고통을 주었다... 그러한 고통만으로 거대한 요새를 하나 만들 수 있을 정도로.~ */
  IF ~~ THEN REPLY #64922 /* ~집중을 유지하려고 노력한다.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64923 /* ~그리고 갑자기 당신은 후회의 격류 속에서 첫 번째 화신의 존재를 다시 느낀다. 그는 보이지 않고 무게도 없는 손을 당신 어깨에 얹고는 당신의 마음을 평온하게 해준다. 그는 아무 말도 하지 않으나, 그의 손길이 닿자 당신은 자신의 이름을 기억한다.~ */
  IF ~~ THEN DO ~GiveExperience(Protagonist,2000000)
FullHealEx(Protagonist)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64924 /* ~...그리고 그것은 당신이 생각했던 것과는 달리 너무나도 간단한 것이었다, 그리고 갑자기 당신은 마음이 편해지는 것을 느낀다. 당신의 이름, 진실된 이름을 앎으로서, 당신은 자신에게 있어 가장 중요한 부분을 되찾았다는 사실을 안다.  ~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64925 /* ~자신의 이름을 앎으로서 당신은 스스로를 알게 되었다, 그리고 이제 당신이 할 수 없는 일이라곤 거의 없다. 첫 번째 화신의 손은 더 이상 당신 어깨 위에 없다, 그리고 그는 가벼운 미소를 지으며 당신을 지켜보고 있다.~ */
  IF ~~ THEN REPLY #64927 /* ~"애초부터 내 이름은 그것이었소? 하지만 만약 내가-"~ */ DO ~SetGlobal("Know_Nameless_Name","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64926 /* ~첫 번째 화신은 자신의 입에 손가락을 갖다 대어 당신의 입을 다물게 한다. 그는 당신 팔에 새겨진 심벌을 보며 고개를 끄덕인다. 그는 그것을 사용하라고 하는 것 같다. ~ */
  IF ~~ THEN REPLY #64929 /* ~당신 팔을 살펴본다.~ */ DO ~GiveItemCreate("SymTorm",Protagonist,33,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64928 /* ~고통(토먼트)의 심벌은 마치 간신히 당신 피부에 달라붙어 있는 듯 왠지 약하게 느껴진다. 무의식적으로 당신은 손을 내밀어 그것을 벗겨 낸다. ~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 12.0
  SAY #64931 /* ~질문을 반쯤 했을 즈음 당신은 정신 속에서 무거운 적막감이 감도는 것을 느낀다 - 당신은 더 이상 당신 안에서 첫 번째 화신의 존재를 느낄 수가 없다. ~ */
  IF ~~ THEN REPLY #64935 /* ~토먼트의 심벌을 뜯어낸다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #64938 /* ~당신은 그것을 딱지를 떼듯이 벗겨 낸다. 그것을 손에 쥐자 당신은 자신의 그것의 힘을 이용할 수 있다는 사실을 깨닫는다. 그것은 더 이상 당신을 지배하지 않는다.~ */
  IF ~~ THEN REPLY #64939 /* ~"그 심벌은 더 이상 내 몸에 붙어 있지 않소. 그것이 뜻하는 건...?"~ */ GOTO 11
END
