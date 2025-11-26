// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BNORDOM~

IF ~  LastPersonTalkedTo("Morte")
Global("Nordom_Talked_Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #31490 /* ~"주목: 모트. 당신은 내게 여섯 개의 면이 있다는 사실을 압니까?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY #63630 /* ~"질문입니다, 모트, 당신은 어떤 방법으로 부유합니까?~ [NOR286A] */
  IF ~~ THEN EXTERN ~DMORTE~ 624
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63631 /* ~"생각해 보겠습니다."~ [NOR286B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",3)
InParty("Dakkon")
~ THEN BEGIN 3 // from:
  SAY #63632 /* ~"다콘의 침묵은 언어의 가장 효율적인 사용법 같습니다."~ [NOR287] */
  IF ~~ THEN EXTERN ~DMORTE~ 625
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",4)
InParty("Annah")
NearbyDialog("DANNAH")
~ THEN BEGIN 4 // from:
  SAY #63633 /* ~"모트, 왜 당신이 '안나를 깨물고 싶은지' 설명해 주십시오. 그러한 행위는 공격을 유발하지 않겠습니까?"~ [NOR288] */
  IF ~~ THEN EXTERN ~DMORTE~ 626
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",5)
InParty("Annah")
~ THEN BEGIN 5 // from:
  SAY #63634 /* ~"주목: 모트. 질문이 있습니다. 당신에게는 운명이 있습니까? 목적은?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 627
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63635 /* ~"긍정적."~ [NOR313B] */
  IF ~~ THEN EXTERN ~DMORTE~ 628
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",6)
~ THEN BEGIN 7 // from:
  SAY #63636 /* ~"주목: 모트. 당신은 내게 16개의 관절부가 있다는 사실을 압니까?"~ [NOR312] */
  IF ~~ THEN EXTERN ~DMORTE~ 629
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",7)
~ THEN BEGIN 8 // from:
  SAY #63637 /* ~"주목: 모트. 질문이 있습니다. 내게는 자유 의지가 있습니까?"~ [NOR317A] */
  IF ~~ THEN EXTERN ~DMORTE~ 630
END

IF ~~ THEN BEGIN 9 // from:
  SAY #63638 /* ~"자유 의지는 모드론에게 별다른 혜택을 주지 않는 것 같습니다."~ [NOR317B] */
  IF ~~ THEN EXTERN ~DMORTE~ 631
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",8)
InParty("Grace")
~ THEN BEGIN 10 // from:
  SAY #63639 /* ~"주목: 모트. 질문이 있습니다. 당신에게는 운명이 있습니까? 목적은?"~ [NOR313A] */
  IF ~~ THEN EXTERN ~DMORTE~ 632
END

IF ~~ THEN BEGIN 11 // from:
  SAY #63640 /* ~"부정적."~ [NOR310A] */
  IF ~~ THEN EXTERN ~DMORTE~ 633
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",9)
InParty("Grace")
InParty("Annah")
~ THEN BEGIN 12 // from:
  SAY #63641 /* ~"주목: 모트. 질문이 있습니다. 삼의 법칙은 무엇입니까?"~ [NOR319A] */
  IF ~~ THEN EXTERN ~DMORTE~ 634
END

IF ~~ THEN BEGIN 13 // from:
  SAY #63642 /* ~"그것은 이전의 정의와 모순됩니다."~ [NOR319B] */
  IF ~~ THEN EXTERN ~DMORTE~ 635
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",10)
InParty("Annah")
~ THEN BEGIN 14 // from:
  SAY #63643 /* ~"주목: 모트. 질문이 있습니다. 운명이란 무엇입니까?"~ [NOR321A] */
  IF ~~ THEN EXTERN ~DMORTE~ 636
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63644 /* ~"료해."~ [NOR321B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",10)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",11)
~ THEN BEGIN 16 // from:
  SAY #63645 /* ~"모트, 사실입니까-"~ [NOR289A] */
  IF ~~ THEN EXTERN ~DMORTE~ 637
END

IF ~~ THEN BEGIN 17 // from:
  SAY #63646 /* ~"당신은 매우 심술궂은 것 같습니다."~ [NOR289B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Morte","GLOBAL",11)
~ EXIT
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",12)
~ THEN BEGIN 18 // from:
  SAY #63647 /* ~"주목: 모트. 나는 당신의 동체에 대해 얘기하고자 합니다."~ [NOR324A] */
  IF ~~ THEN EXTERN ~DMORTE~ 638
END

IF ~~ THEN BEGIN 19 // from:
  SAY #63648 /* ~"나는 당신의 동체의 소재에 대해 의문이 하나 있습니다. 그것은 어디 있습니까?"~ [NOR324B] */
  IF ~~ THEN EXTERN ~DMORTE~ 639
END

IF ~~ THEN BEGIN 20 // from:
  SAY #63649 /* ~"어떻게 당신이 알지 못하는 사이에 두부가 동체로부터 분리될 수 있습니까?"~ [NOR324C] */
  IF ~~ THEN EXTERN ~DMORTE~ 640
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
InParty("Grace")
NearbyDialog("DGRACE")
InParty("Annah")
~ THEN BEGIN 21 // from:
  SAY #63650 /* ~"주목: 모트. 우리는 친우 상태에 도달했습니까?"~ [NOR323] */
  IF ~~ THEN EXTERN ~DMORTE~ 641
END

IF ~  LastPersonTalkedTo("Annah")
Global("Nordom_Talked_Annah","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #63651 /* ~"안나, 당신의 꼬리는 균형을 유지하는 데 도움을 줍니까?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END

IF ~~ THEN BEGIN 23 // from:
  SAY #63652 /* ~"그렇습니다. 그것은 매우 논리적입니다."~ [NOR291B] */
  IF ~~ THEN EXTERN ~DANNAH~ 311
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #63653 /* ~"안나, 당신의 꼬리의 목적은 현재의 적의의 수준을 표시하는 것입니까?"~ [NOR292A] */
  IF ~~ THEN EXTERN ~DANNAH~ 312
END

IF ~~ THEN BEGIN 25 // from:
  SAY #63654 /* ~"내 분석이 옳은 것으로 나타나고 있습니다: 위험! 위험!"~ [NOR292B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Annah","GLOBAL",2)
~ EXIT
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMorte")
~ THEN BEGIN 26 // from:
  SAY #63655 /* ~"안나, 당신이 모트를 '파냈다'는 것이 사실입니까?"~ [NOR293] */
  IF ~~ THEN EXTERN ~DANNAH~ 313
END

IF ~  LastPersonTalkedTo("Grace")
Global("Nordom_Talked_Grace","GLOBAL",0)
~ THEN BEGIN 27 // from:
  SAY #63656 /* ~"내 추정에 의하면 321,023 종 이상의 종족들의 남성이 훨-후럼-그레이스를 매력적으로 느낍니다. 오차는 플러스 또는 마이너스 5입니다."~ [NOR290A] */
  IF ~~ THEN EXTERN ~DGRACE~ 374
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63657 /* ~"나는 더 이상 그 질문에 대답할 수 없습니다. 나는 모릅니다."~ [NOR290B] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",1)
~ EXIT
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",2)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 29 // from:
  SAY #63658 /* ~"훨-후럼-그레이스, 모든 여성이 떠다니는 해골을 섹시하다고 느낀다는 것이 사살입니까?'"~ [NOR294] */
  IF ~~ THEN EXTERN ~DGRACE~ 375
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",3)
InParty("Morte")
NearbyDialog("DMORTE")
~ THEN BEGIN 30 // from:
  SAY #63659 /* ~"주목: 훨-후럼-그레이스. 당신은 시각적 중력을 발산합니까?"~ [NOR325A] */
  IF ~~ THEN EXTERN ~DGRACE~ 376
END

IF ~~ THEN BEGIN 31 // from:
  SAY #63660 /* ~"나는 당신이 다른 사람들로 하여금 눈으로 당신을 쫓게 하는 역장을 발산하는 것을 감지하였습니다. 그들은 시선을 돌릴 근육 제어 능력을 상실하고 있습니다."~ [NOR325B] */
  IF ~~ THEN EXTERN ~DMORTE~ 645
END

IF ~  LastPersonTalkedTo("Grace")
GlobalLT("Nordom_Talked_Grace","GLOBAL",4)
~ THEN BEGIN 32 // from:
  SAY #63661 /* ~"주목: 훨-후럼-그레이스. 나는 당신 신체에 대해 얘기하고 싶습니다."~ [NOR326A] */
  IF ~~ THEN EXTERN ~DGRACE~ 377
END

IF ~~ THEN BEGIN 33 // from:
  SAY #63662 /* ~"당신의 신체. 당신의 형태. 그것을 선택한 이유. 왜입니까?"~ [NOR326B] */
  IF ~~ THEN EXTERN ~DGRACE~ 378
END

IF ~~ THEN BEGIN 34 // from:
  SAY #63663 /* ~"당신이 모드론의 형태를 취하는 것이 더 실용적일 것입니다. 그 형태가 13.27% 더 효율적입니다. 오차는 플러스 또는 마이너스 5.2%입니다."~ [NOR326C] */
  IF ~~ THEN EXTERN ~DGRACE~ 379
END

IF ~~ THEN BEGIN 35 // from:
  SAY #63664 /* ~"당신에 대해 법적 행동을 취하는 것은 내 의도가 아닙니다."~ [NOR326D] */
  IF ~~ THEN DO ~SetGlobal("Nordom_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~  LastPersonTalkedTo("Vhail")
Global("Nordom_Talked_Vhail","GLOBAL",0)
~ THEN BEGIN 36 // from:
  SAY #63665 /* ~"나는 정의가 장님이라고 들었습니다. 그것이 머시킬러가 존재하는 이유입니까?"~ [NOR295] */
  IF ~~ THEN EXTERN ~DVHAIL~ 157
END

IF ~  LastPersonTalkedTo("Morte")
GlobalLT("Nordom_Talked_Morte","GLOBAL",13)
~ THEN BEGIN 37 // from:
  SAY #64219 /* ~"주목: 모트. 당신은 내게 여섯 개의 면이 있다는 것을 압니까?"~ [NOR311] */
  IF ~~ THEN EXTERN ~DMORTE~ 623
END

IF ~  LastPersonTalkedTo("Annah")
GlobalLT("Nordom_Talked_Annah","GLOBAL",3)
~ THEN BEGIN 38 // from:
  SAY #64220 /* ~"안나, 당신의 꼬리는 균형을 유지하는 데 도움을 줍니까?"~ [NOR291A] */
  IF ~~ THEN EXTERN ~DANNAH~ 310
END
