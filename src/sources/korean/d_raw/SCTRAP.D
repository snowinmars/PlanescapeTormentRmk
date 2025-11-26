// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SCTRAP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~SCTRAP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66878 /* ~이 오래된 낡은 양피지 두루마리는 붉은 리본으로 묶여 있으며, 곰팡내가 희미하게 난다. 리본은 밀랍으로 봉인되어 있다. ~ */
  IF ~~ THEN REPLY #66880 /* ~봉인을 뜯어 두루마리를 연 후 그것을 읽는다.~ */ DO ~SetGlobal("CW_Scroll_Trap","GLOBAL",1)
~ JOURNAL #66828 /* ~나는 마법의 덫이 있는 두루마리를 펼쳐 읽었으며 그 내용은:

"이것이 널 죽이지는 않겠지만 틀림없이 널 늦출 것이다."
"날 그만 쫓아다녀라 이 도둑놈들아 내 몸은 내 것이란 말이다"
"이제... 죽어라!"

내게 이 두루마리를 준 여인은 그것을 자신의 어머니로부터 그것을 나와 같은 모습의 사내에게 주라는 지시 사항과 함께 받았다고 한다.~ */ GOTO 1
  IF ~~ THEN REPLY #66881 /* ~두루마리를 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66882 /* ~두루마리에는 갈겨 쓴 글 몇 줄과 기묘한 룬이 적혀 있다. 글의 내용은:

"이것이 널 죽이지는 못하겠지만 네 행보를 늦추는 효과는 분명히 있을 거다"
"날 그만 쫓아라 이 도둑놈들아 이건 내 몸이다 내 몸이란 말이다"
"이제... 죽어라"~ */
  IF ~  HPLT(Protagonist,36)
~ THEN REPLY #66883 /* ~"뭐...?"~ */ GOTO 2
  IF ~  HPGT(Protagonist,35)
~ THEN REPLY #66884 /* ~"뭐...?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66885 /* ~룬은 갑자기 고동친다, 그리고 두루마리 전체가 녹아서 역겨운 검은 액체가 된다. 이 액체는 당신 손의 피부에 직접 침투한다... 그리고 이 마법의 독은 수 초만에 당신 피를 검은 담즙으로 만들어 버린다. 당신은 엄청난 고통을 느끼며 죽어간다...~ */
  IF ~~ THEN REPLY #66886 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #66887 /* ~룬은 갑자기 고동친다, 그리고 두루마리 전체가 녹아서 역겨운 검은 액체가 된다. 이 액체는 당신 손의 피부에 직접 침투한다... 그리고 이 마법의 독은 수 초가 지난 후 당신 피를 검은 담즙으로 만들기 시작한다. 당신은 엄청난 고통을 느끼며 죽어간다... 잠시 당신은 몸을 움켜 쥐며 고통 때문에 울부짖는다... 그리고 고통은 가라앉는다. 당신은 두루마리에 걸려 있던 끔찍한 마법을 견디고 살아 남았다. ~ */
  IF ~~ THEN REPLY #66888 /* ~완료.~ */ DO ~Damage(Protagonist,LOWER,35)
DestroyPartyItem("ScTrap",FALSE)
~ EXIT
END
