// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBAEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBAEN~

IF ~  Global("Baen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21485 /* ~걱정스러운 표정을 짓고 있는 덩치가 크고 윤곽이 뚜렷한 사내가 보인다. 큰 덩치에도 불구하고 그는 나약해 보인다, 그리고 당신이 지금까지 본 다른 주민들과는 달리 그는 최근에 목욕을 한 것 같다. 당신이 다가가자 그는 희망에 찬 눈으로 당신을 쳐다보며 높은 목소리로 외친다. "혹시 크래독이란 사람 모르십니까?"~ */
  IF ~~ THEN REPLY #21486 /* ~"뭐?"~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #22732 /* ~그를 무시하고 가던 길을 간다.~ */ DO ~SetGlobal("Baen","GLOBAL",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #22733 /* ~"에..." 당신 얼굴을 보자 그의 얼굴에서 희망에 찬 표정이 사라진다. "만약 제가 당신의 기분을 상하게 했다면 진심으로 사과 드립니다." 그는 고개를 약간 숙인다. "나는 심부름꾼 바엔으로, 심부름꾼 다이'바엔의 세 번째 아들입니다. 나는 심부름꾼 협회에 고용된 여러 심부름꾼들 중 하나입니다."~ */
  IF ~~ THEN REPLY #22734 /* ~"사과할 필요는 없소, 바엔. 뭘 원하시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #22735 /* ~"당신은 내 기분을 상하게 하지 않았소... 아직은. 뭘 원하시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #22736 /* ~"이것 보시오, 바엔, 난 이만 실례해야겠소..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #22737 /* ~당신이 지나가려고 하자 그는 이번에는 한층 더 큰 목소리로 당신을 부른다. 어찌나 악을 쓰는지 그의 목소리가 찢어질 듯하다. "크래독?! 당신에게 전할 메시지가 있습니다."~ */
  IF ~~ THEN REPLY #22738 /* ~"무슨 얘기를 하는 거요?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.2
  SAY #22739 /* ~"잠깐만 시간을 내주시면 됩니다. 나는 벌통에 있다는 크래독이라는 현장 감독을 찾고 있습니다, 하지만 불행히도 난 그를 도저히 찾을 수가 없습니다. 혹시 그런 사람에 대해 들은 적이 있습니까?" ~ */
  IF ~~ THEN REPLY #22740 /* ~"아니오."~ */ GOTO 5
  IF ~~ THEN REPLY #22741 /* ~"미안하오..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1
  SAY #22742 /* ~"사소한 일로 당신을 귀찮게 해 죄송하지만, 나는 벌통에 있다는 크래독이라는 현장 감독을 찾고 있습니다..." 바엔은 고통스러워하는 것 같다. " 하지만 불행히도 난 그를 도저히 찾을 수가 없습니다." 그는 다시 기대에 부푼 얼굴로 당신을 쳐다본다. "혹시 그런 사람에 대해 들은 적이 있습니까?" ~ */
  IF ~~ THEN REPLY #22743 /* ~"아니오."~ */ GOTO 5
  IF ~~ THEN REPLY #22744 /* ~"미안하오. 들은 적이 없소."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 4.0 4.1
  SAY #22745 /* ~바엔은 깊은 한숨을 내쉰다. "나는 그에게 메시지를 전달해야만 합니다, 하지만 운이 따르질 않는군요..."~ */
  IF ~~ THEN REPLY #22746 /* ~"난 당신을 도울 수가 있소... 만약 그 사람을 만나게 되면 당신 메시지를 전해줄 수 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22747 /* ~"대가만 지불하겠다면 그를 찾아서 당신 메시지를 전달할 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22748 /* ~"난 당신을 도울 수가 없소. 보시오, 이만 실례해야겠소..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #22749 /* ~"물론입니다. 당신의 시간을 빼앗아 죄송합니다." 바엔은 고개를 숙인다. "시간을 내주셔서 감사합니다."~ */
  IF ~~ THEN REPLY #22750 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 12.0
  SAY #22751 /* ~바엔의 얼굴이 초롱처럼 환해진다. "아, 오늘은 바엔과 심부름꾼 협회에 있어 정말 행운의 날입니다. 어떤 도움이라도 주신다면 정말 감사하겠습니다! 만약 당신이 이 크래독이라는 사람을 찾아 메시지를 전달해 주신다면 그 노고에 대한 대가는 지불하겠습니다."~ */
  IF ~~ THEN REPLY #22752 /* ~"좋소... 전할 말은 무엇이오?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.1 12.1
  SAY #22753 /* ~바엔의 얼굴이 초롱처럼 환해진다. "물론입니다. 만약 당신이 이 크래독이라는 사람을 찾아 메시지를 전달해 주신다면 그 노고에 대한 대가는 지불하겠습니다."~ */
  IF ~~ THEN REPLY #22754 /* ~"좋소... 전할 말은 무엇이오?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #22755 /* ~바엔은 메시지를 마치 진언처럼 암송한다. *"화물은 초사흗날까지 커스트에 도착해야 합니다, 아니면 위약금을 지불해야 합니다."* 바엔은 눈살을 찌푸린다. "내가 듣기로 크래독은 이 메시지에서 얘기하는 '화물'이 무엇인지 알고 있을 것입니다."~ */
  IF ~~ THEN REPLY #22756 /* ~"크래독을 만나게 되면 그 메시지를 전하리다. 혹시 내가 그를 찾는 데 도움이 될 만한 사항이라도 있소?"~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.1
  SAY #22757 /* ~"그는 기골이 장대하며 험상궂게 생겼다고 합니다. 또한 그는 벌통의 시장들 중 한 곳의 현장 감독이라고 합니다. 불행히도 저는 그 이외에 대해서는 모릅니다."~ */
  IF ~~ THEN REPLY #22758 /* ~"알겠소. 지금으로선 그걸로 충분할 것 같소."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #22759 /* ~바엔은 고개를 숙인다. "고맙습니다. 만약 당신이 운 좋게도 크래독을 발견하여 메시지를 전하고, 친절히도 내게 돌아와 그 사실을 알려 주신다면, 그 노고에 대한 대가를 지불하겠습니다.~ */
  IF ~~ THEN REPLY #22760 /* ~"좋소. 안녕히 계시오, 바엔."~ */ JOURNAL #22761 /* ~나는 크래독을 만나면 그에게 메시지를 전하기로 합의하였다. 바엔은 크래독이 벌통 어딘가에 있는 시장의 감독이라고 말했다. 시장을 유심히 찾아보아야겠다.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #22762 /* ~심부름꾼 바엔이 보인다. 당신이 다가가자 그는 희망에 찬 표정으로 바라본다... 하지만 당신에게 말을 걸지는 않는다. ~ */
  IF ~~ THEN REPLY #22763 /* ~"만약 당신이... 이 크래독이란 사람을 찾는 데 아직도 도움이 필요하다면 내가 당신을 도와줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Baen_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #22764 /* ~"마음을 바꿨소. 대가를 지불하겠다면 당신이 이 크래독이란 자를 찾는 일을 돕겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Baen_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #22765 /* ~그를 무시한다.~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
GlobalGT("Baen_Quest","GLOBAL",0)
GlobalLT("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #22766 /* ~심부름꾼 바엔이 보인다. 당신이 다가가자 그는 희망에 찬 표정으로 바라본다. "크래독을 찾으셨습니까?"~ */
  IF ~  Global("Baen_Quest","GLOBAL",2)
~ THEN REPLY #22767 /* ~"그렇소, 그리고 난 그에게 당신 메시지를 전했소. 하지만 그의 기분은 별로 나아지지 않은 듯했소."~ */ DO ~SetGlobal("Baen_Quest","GLOBAL",3)
AddexperienceParty(500)
~ JOURNAL #22770 /* ~나는 바엔에게 돌아와 크래독에게 메시지를 전했다고 말해주었다. 그는 기뻐했으며 보수로 내게 돈을 주었다. 단순히 누군가에게 메시지를 전하는 일치고는 괜찮은 보수다. ~ */ GOTO 14
  IF ~~ THEN REPLY #22768 /* ~"아직 아니오, 바엔. 그에 대해 다시 얘기해주겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #22769 /* ~"아니오... 난 아직도 그를 찾는 중이오. 그를 찾으면 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #22771 /* ~바엔은 *그렇소* 다음의 말은 듣지도 않은 듯 미소를 지으며 안도의 한숨을 내쉰다. "정말 다행입니다! 정말 감사합니다." 그는 옷 속에 손을 넣어 한 줌의 동전을 꺼낸 후 당신에게 준다. ~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #22772 /* ~"메시지 하나를 전달하는 데 동전 열 다섯 닢? 좋소."~ */ DO ~GivePartyGold(15)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #22773 /* ~"메시지 하나를 전달하는 데 동전 서른 닢? 좋소."~ */ DO ~GivePartyGold(30)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #22774 /* ~"메시지 하나를 전달하는 데 동전 마흔 다섯 닢? 좋소."~ */ DO ~GivePartyGold(45)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #22775 /* ~"좋고 말고요! 나는 시길에서 심부름꾼 협회의 심부름꾼보다 더 좋은 직업은 없다고 자신있게 말할 수 있습니다."~ */
  IF ~~ THEN REPLY #22776 /* ~"기억해 두리다. 안녕히 계시오, 바엔."~ */ EXIT
END

IF ~  GlobalGT("Baen","GLOBAL",0)
Global("Baen_Quest","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #22777 /* ~심부름꾼 바엔이 보인다. 당신이 다가가자 그는 공손하게 머리를 숙여 인사한다. "반갑습니다. 크래독을 찾아 메시지를 전하는 일을 도와주셔서 정말 감사합니다."~ */
  IF ~~ THEN REPLY #22778 /* ~"괜찮소. 안녕히 계시오, 바엔."~ */ EXIT
END
