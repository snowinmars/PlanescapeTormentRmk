// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANDER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANDER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6657 /* ~노인은 당신을 두려움없이 바라보며 말을 한다. "그래 그들이 야단법석을 떨고 있는 게 당신 때문인가? 그럼 여기서 떠나시오. 난 당신에게 할 말이 없소."~ */
  IF ~~ THEN REPLY #6668 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6669 /* ~노인은 당신을 보며 눈을 한두 번 깜박인 후 말한다. "난 당신을 도울 수가 없소. 당신은 경비병들과 동행을 해야 할 것이오." 그는 다시 자신이 쥐고 있는 기계로 눈을 돌린다.~ */
  IF ~~ THEN REPLY #6670 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Evil_Xander_1","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #6671 /* ~"정말 당신은 당신이 날 위협한 후에도 내가 당신을 도울 거라고 생각하오? 당신이 내가 생각했던 것보다 더 멍청한 모양이군. 나는 사과를 원하오. 지금 당장." ~ */
  IF ~~ THEN REPLY #6672 /* ~"지옥에나 떨어지시오, 늙은이."~ */ GOTO 15
  IF ~~ THEN REPLY #6673 /* ~거짓말: "사과하오. 내 성깔 때문에 자제력을 잃었었소. 다시는 그런 일이 없을 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_2","GLOBALLaw",-1)
~ GOTO 16
  IF ~~ THEN REPLY #6674 /* ~"사과하오. 내 성깔 때문에 자제력을 잃었었소. 다시는 그런 일이 없을 거요."~ */ GOTO 16
  IF ~~ THEN REPLY #6675 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 15 even though they appear after this state */
~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #6676 /* ~"그 톱니 바퀴들은 어긋났소. 베다이-린이 죽었으니 이제는 어쩔 수 없이 내가 당신에게 그걸 고치는 데 필요한 힌트를 주어야 할 것 같군. 자, 이게 그 요령이오..." 그는 정보를 쏟아내기 시작한다. 당신은 자신이 그 내용을 전부 다 알아들었는지 확신할 수 없다.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #6677 /* ~"그건 알 것 같소. 다른 말로 하면 주 톱니를 떼어내 그리스로 청소하고, 둔탁해진 이를 날카롭게 간 후 갈아 끼운다는 얘기가 아니오?"~ */ DO ~SetGlobal("GearRepair","GLOBAL",4)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #6678 /* ~"그건 알 것 같소... 주 동기 유닛에 대한 부분은 어떤... 아나, 기다리시오, 난 그것은 전혀 이해하지 못했소."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #6679 /* ~"그렇소. 이제 난 내가 하던 디자인을 계속해도 괜찮겠소, 아니면 당신은 내게 또 질문할 것들이 있소?"~ */
  IF ~~ THEN REPLY #6680 /* ~"실은 당신에게 질문을 더 하고 싶소."~ */ GOTO 27
  IF ~~ THEN REPLY #6681 /* ~"아니, 그게 전부였소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #6682 /* ~"당신이 그걸 고치지 못할 건 명확하오. 아무래도 내가 직접 가서 고쳐야 할 것 같군." 그는 툴툴거리며 움직이기 시작한다. 그는 중얼거린다. "어떤 녀석들은 우리들 회색 수염을 너무 귀찮게 하거든."~ */
  IF ~~ THEN REPLY #6683 /* ~"당신이 가기 전에 질문을 더 하고 싶소."~ */ DO ~SetGlobal("GearRepair","GLOBAL",7)
~ GOTO 27
  IF ~~ THEN REPLY #6684 /* ~"그래, 어떤 사람들은 다른 기술도 가지고 있소, 얼간이 양반."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",4)
~ THEN BEGIN 6 // from: 12.2
  SAY #6685 /* ~"꿈의 열쇠를 받을 준비가 되면 언제든지 내게 말하시오, 그럼 그것을 당신에게 넘겨주리다."~ */
  IF ~~ THEN REPLY #6686 /* ~"내게 열쇠를 주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #6687 /* ~"아니, 아직 아니오. 다른 질문에도 좀 대답해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6688 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #6689 /* ~그는 마치 흩어진 생각을 한 데 모으려는 듯 잠시 멈춘다. 그리고 그는 말을 한다. "눈을 감고 손을 내미시오. 당신은 이 열쇠를 보기 전에 그것을 느껴야만 하오, 아니면 그것은 기능을 하지 않을 것이오."~ */
  IF ~~ THEN REPLY #6690 /* ~그가 시키는 대로 한다.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6691 /* ~엿본다.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.1 11.0
  SAY #6692 /* ~당신은 자신의 딱딱한 손바닥 위에서 뭔가를 느낀다. 처음에는 간신히 느낄 정도이나, 급속도로 강해져 몇 초안에 확고한 실체를 지니게 된다. 드디어 잰더가 입을 연다. "눈을 뜨시오." 눈을 뜨자 손바닥 위에 평범한 검은색 깃털 하나가 보인다. 잰더가 말한다. "내 일은 다 끝났소. 그 열쇠를 주조소의 가장 왼쪽 문에 사용하시오, 그러면 꿈 제조기가 당신을 위해 열릴 것이오. 이제 나는 그만 가야겠소... 할 일이 있으니까."~ */
  IF ~~ THEN REPLY #6693 /* ~"깃털? 깃털 하나 때문에 그 고생을?"~ */ JOURNAL #68034 /* ~나는 드디어 그 빌어먹을 꿈 제조기 퀘스트를 완료했다. 그 대가로 받은 것은 깃털 하나였다. 이것이 꿈으로 통하는 문을 열 열쇠인 듯하다. 고생한 보람이 있었으면 좋겠다. ~ */ GOTO 10
  IF ~~ THEN REPLY #6695 /* ~"고맙소, 잰더. 안녕히 계시오."~ */ DO ~EscapeArea()
~ JOURNAL #68034 /* ~나는 드디어 그 빌어먹을 꿈 제조기 퀘스트를 완료했다. 그 대가로 받은 것은 깃털 하나였다. 이것이 꿈으로 통하는 문을 열 열쇠인 듯하다. 고생한 보람이 있었으면 좋겠다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #6696 /* ~당신은 잰더가 잠시 집중을 한 후 당신 손 위에서 손을 쥐는 것을 눈을 살짝 뜨고 지켜본다. 아무 일도 일어나지 않는다. 잰더는 눈을 뜨고 당신 손이 텅 빈 것을 본 후, 격노한다. "나는 당신보고 눈을 감으라고 분명히 말했소! 이건 장난이 아니오! 당신을 내가 당신의 멍청한 장치를 위해 내 인생을 허비하는 것을 즐겼으리라고 생각하오? 당신은 내가 당신이 내 작품을 의심하는 것을 원하리라고 생각하오? 눈을 감고 그대로 가만히 있으시오, 아니면 열쇠를 얻지 못할 거요!"~ */
  IF ~~ THEN REPLY #6697 /* ~"내게 열쇠를 주시오, 늙은이. 지금 당장."~ */ GOTO 11
  IF ~~ THEN REPLY #6698 /* ~그가 시키는 대로 한다.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
AddexperienceParty(16000)
~ GOTO 8
  IF ~~ THEN REPLY #6699 /* ~"관두시오. 미치광이의 헛소리에 놀아나는 것보다 유익한 할 일은 얼마든지 있소." 떠난다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #6700 /* ~"그것은 꿈 제조기의 최종 안전 장치요. 당신은 내가 그 곳에 아무나 들어가게 하리라고 생각하시오? 뭔가 다른 걸 원하오, 아니면 내가 하던 일로 돌아가도 괜찮겠소?"~ */
  IF ~~ THEN REPLY #6702 /* ~"하던 일로 돌아가시오."~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #6703 /* ~"하던 일로 돌아가시오, 내 감사와 함께."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #6704 /* ~그는 얼굴을 붉히며 욕설을 닥치는 대로 퍼붓는다. 그는 숨을 내쉰 후, 분노를 억누르며 말한다. "친구, 열쇠는 믿음으로 자물쇠가 채워져 있소. 날 믿고 눈을 감으시오, 그렇지 않으면 당신은 결코 당신의 꿈을 찾지 못할 것이오. 당신에게 달렸소, 친구."~ */
  IF ~~ THEN REPLY #6705 /* ~그가 시키는 대로 한다.~ */ DO ~GiveItemCreate("DrmKey",Protagonist,1,0,0)
SetGlobal("Dream","GLOBAL",5)
~ GOTO 8
  IF ~~ THEN REPLY #6706 /* ~"관두시오. 미치광이의 헛소리에 놀아나는 것보다 유익한 할 일은 얼마든지 있소." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Xander_1","GLOBALLaw",-1)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 15 even though they appear after this state */
~  Global("Dream","GLOBAL",3)
~ THEN BEGIN 12 // from: 19.2
  SAY #6707 /* ~"당신은 날 위해 물건을 하나만 더 가져다 주어야겠소. 그러면 우리는 꿈 제조기의 완성을 위한 최종 단계에 돌입할 수가 있소. 나는 관 속에 놓아둔 적이 있는 베개가 필요하오 -- 그것은 죽음만큼이나 깊은 잠을 상징하오. 그것은 당신의 정신을 꿈 제조기에게 개방할 것이오. 이는 내가 받은 영감에 의해 고안된 것이오."~ */
  IF ~  !PartyHasItem("DrmPllw")
~ THEN REPLY #6708 /* ~"관용 베개? 가져오리다. 우선, 몇 가지 질문에 더 대답해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6709 /* ~"당신을 위해 계속 이런 아이템들을 가져다 줄 생각은 없소."~ */ GOTO 13
  IF ~  PartyHasItem("DrmPllw")
~ THEN REPLY #6710 /* ~"당신을 위해 베개를 가져왔소. 빨리 일을 계속합시다."~ */ DO ~TakePartyItemNum("DrmPllw",1)
SetGlobal("Dream","GLOBAL",4)
~ JOURNAL #68035 /* ~나는 잰더를 위해 햄리스로부터 관용 베개를 얻어왔다. 다음에는 그가 내게 어떤 심부름을 시킬지 궁금하다. ~ */ GOTO 6
  IF ~~ THEN REPLY #6711 /* ~"가져오겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 19.1 21.1
  SAY #6712 /* ~"원하지 않는다고? 그럼 당신에게 이 사실을 상기시켜 주어야겠군. 당신이 이러한 물건들을 가져와야 하는 건 당신이 돈을 댔고, 애초에 당신이 시작하기를 원했으며, 어찌나 비실용적인지 우리 가족이 4대에 걸쳐 그 해법을 찾느라고 고생했던 프로젝트를 위한 것이오. 즉 모두 당신을 위한 일이란 말이오.만약 당신이 프로젝트가 완성되기를 원한다면, 끝없이 불평만 하지 날고 프로젝트의 마지막 단계를 끝내도록 하시오."~ */
  IF ~~ THEN REPLY #6713 /* ~"늙은이, 내게 그런 말투로 말하지 마시오, 아니면 그것이 당신이 하는 마지막 말이 될 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Xander_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #6714 /* ~"좋소. 알겠소. 하리다. 그러니 소리 좀 그만 지르시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #6715 /* ~"그 많은 시간과 노력을 다 버리겠다는 말이오? 누군가가 당신보고 얼간이라고 부르는 게 싫어 자신의 꿈을 잃겠다는 거요? 만약 당신이 내 지식없이 이 프로젝트를 완성할 수 있다고 생각한다면 당신은 정말 얼간이요. 그리고 만약 당신이 누가 입을 잘못 놀렸다고 해서 그가 죽어야 한다고 생각한다면 당신은 더 큰 바보요. 당신은 당신이 만나는 모든 사람을 협박해서 당신의 문제를 해결할 수 있으리라고 생각하오? 다원 우주는 그렇게 움직이지 않소, 내 흉터투성이 친구."~ */
  IF ~~ THEN REPLY #6716 /* ~"난 그보다 더 하찮은 일로도 사람을 죽였소."~ */ GOTO 16
  IF ~~ THEN REPLY #6717 /* ~"난 이만 떠나겠소. 우리 둘 다 후회할 실수를 내가 저지르기 전에."~ */ EXIT
END

IF WEIGHT #2 ~  Allegiance(Myself,ENEMY)
~ THEN BEGIN 15 // from: 2.0
  SAY #6718 /* ~"관두시오. 병신 같으니. 당신은 결코 당신 꿈을 되찾지 못할 거요. 당신의 소중한 꿈 제조기는 없어졌소."~ */
  IF ~~ THEN REPLY #6719 /* ~완료.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.1 2.2 14.0
  SAY #6720 /* ~"너라면 충분히 그랬겠지, 이 얼간아. 네가 서투른 호걸 시늉을 하는 걸 보는 것도 이제는 질렸다. 너와 네 꿈 제조기는 어비스에나 떨어지라고 해." 그는 당장이라도 경비병들을 부를 듯하다.~ */
  IF ~  CheckStatGT(Protagonist,13,DEX)
~ THEN REPLY #6721 /* ~그가 미처 끝내기 전에 그의 목을 부러트린다.~ */ DO ~Kill(Myself)
PlaySoundNotRanged("SPE_11")
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,14,DEX)
~ THEN REPLY #6722 /* ~그가 미처 끝내기 전에 그의 목을 부러트린다.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #6723 /* ~도망친다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #6724 /* ~당신은 순식간에 두 손으로 늙은 기술자의 목둘레를 감는다. 당신은 그의 목을 마치 나뭇가지처럼 부러트리고, 그는 당신 발 아래에서 멍한 눈으로 당신을 바라보며 죽는다. 당신은 그에게 본때를 보여주었다. 하지만 불행히도 강당 안의 모든 사람들이 그 장면을 지켜보았다. 경보가 울려 퍼진다.~ */
  IF ~~ THEN REPLY #6725 /* ~"좋소, 그럼."~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #6726 /* ~그는 민첩하게 당신의 지나치게 뻗은 팔을 피하고, 고함을 쳐서 경비병을 부른다.~ */
  IF ~~ THEN REPLY #6727 /* ~"염병할."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #7 ~  Global("Dream","GLOBAL",2)
~ THEN BEGIN 19 // from: 21.0
  SAY #6728 /* ~"꿈 제조기에는 정교하게 세공되고 면도날로 장식된 새장이 필요한데, 이는 꿈의 파괴적인 힘과 우리의 가슴과 상상력을 사로잡을 수 있는 능력을 모방하기 위해서요. 공성탑 안에서 내가 발주한 새장을 찾아오기 바라오."~ */
  IF ~~ THEN REPLY #6729 /* ~"어떻게 하면 그 곳에 들어갈 수 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #6749 /* ~"내가 당신을 위해 이런 아이템들을 가져다 줘야 하는 건지 나도 모르겠소."~ */ GOTO 13
  IF ~  PartyHasItem("DrmCage")
~ THEN REPLY #6865 /* ~"여기 가져왔소. 이제 내 꿈을 주시오."~ */ DO ~TakePartyItemNum("DrmCage",1)
SetGlobal("Dream","GLOBAL",3)
~ JOURNAL #68036 /* ~내가 면도날로 덮인 새장을 가져오자, 잰더는 내게 죽은 자의 잠을 흉내내기 위해 관에 쓰이는 베개를 가져오라고 말했다. ~ */ GOTO 12
  IF ~~ THEN REPLY #6866 /* ~"새장이라. 산문적이군. 좋소. 우선 내 질문에 대답해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6868 /* ~"면도날이 달린 새장. 곧 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #6751 /* ~"내가 보기에 당신은 재주가 뛰어난 사람이오. 방법을 찾아보시오."~ */
  IF ~~ THEN REPLY #6752 /* ~"좋소. 그럼 날 위해 다른 질문에 대답해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6753 /* ~"그러리다. 또 봅시다."~ */ EXIT
END

IF WEIGHT #8 ~  Global("Dream","GLOBAL",1)
~ THEN BEGIN 21 // from: 24.0 26.0 28.1 29.1 30.0
  SAY #6754 /* ~"꿈 제조기의 마지막 단계를 시작하기 위해 필요한 것은 당신 피에 적신 당신의 피부 한 조각이오. 이는 기계가 당신의 육체적 본질에 익숙해지도록 하기 위해서요. 또한 피부와 피는 반드시 당신이 부유할 꿈의 바다를 상징할 청록색 병에 담아 와야만 하오."~ */
  IF ~  PartyHasItem("DrmVial")
~ THEN REPLY #6755 /* ~"여기 가져왔소. 받으시오. 이제 내게 내 꿈을 보여주시오."~ */ DO ~TakePartyItemNum("DrmVial",1)
SetGlobal("Dream","GLOBAL",2)
~ JOURNAL #68037 /* ~나는 잰더와 그의... 내... 꿈 제조기를 위해 내 살과 피가 담긴 약병을 가져왔다. 다음에 그는 면도날로 뒤덮인 새장을 요구했다. ~ */ GOTO 19
  IF ~~ THEN REPLY #6756 /* ~"내가 당신을 위해 심부름을 해야 하는 건지 나도 모르겠소."~ */ GOTO 13
  IF ~~ THEN REPLY #6757 /* ~"살과 피? 최근 그건 충분하고 남을 만큼 주었소. 우선 내 질문에 답해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6758 /* ~"내 질문 한두 개에나 대답해주시오. 나는 꿈 제조기에는 관심이 없소."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 22
  IF ~~ THEN REPLY #6759 /* ~"살, 피, 병. 알았소. 곧 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.3 33.1
  SAY #6760 /* ~잰더는 배를 세게 얻어맞은 사람처럼 보인다... "관심이 없다고? 하지만... 우리 가족이 4대에 걸쳐 만들었는데... 내 증조부는 당신이 무척 열망하고 있는 듯했다고 했소... 그는 이 두루마리를 남겼소..."~ */
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #6761 /* ~"당신의 증조부? 뭐? 내게 당신이 나에 대해 아는 것을 말해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #6762 /* ~"아니오, 난 관심이 없소. 내 질문에나 대답해주시오."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,0,0)
~ GOTO 27
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #6763 /* ~"당신은 내 증조부 지노에게 와서 그에게 당신은 꿈을 꿀 수가 없다고 말했소. 당신은 다시 꿈을 꾸고 싶다고 말했소. 당신은 그에게 당신이 잃어버린 꿈을 회수할 수 있는 기계를 제작하는 대가로 막대한 액수의 돈을 제공했소. 당신은 몇 년 뒤에 돌아와 다시 얘기를 하겠다고 했으나 다시는 돌아오지 않았소."

당신은 기억이 하나 돌아오는 것을 느낄 수가 있다.
~ */
  IF ~~ THEN REPLY #6764 /* ~그것을 억누른다.~ */ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #6765 /* ~그것을 받아들인다.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #6766 /* ~그것을 받아들인다.~ */ DO ~AddexperienceParty(300)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #6767 /* ~당신은 의지의 힘으로 기억이 당신 머리를 채우는 것을 막는다. 

"기계 제작은 지노가 죽은 후에도 계속되었소. 내 할머니인 눌라는 밀교의 비법을 응용하여 연구를 하였소. 그녀는 약초와 모자이크 돌들을 이용하여 애스트럴계와 에테르계로부터 꿈의 일부를 소환하는 마법의 패턴을 창출하였소. 내 아저씨는 한 단계 더 나아가 기계를 제작하는 데 천상계와 마계의 도움을 빌렸소. 나는... 기계의 잠재력을 개방할 의식을 고안해 냈소... 그것이 성공하면 당신은 꿈을 되찾을 수가 있소."
~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6768 /* ~"좋소. 당신이 날 설득시켰소. 내 꿈을 찾기 위해 난 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6769 /* ~"그건 내가 지금 원하는 것이 아니오. 내 질문에나 대답해주시오."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6770 /* ~"흥미롭군. 이 일에 대해선 나중에 다시 얘기하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 23.2
  SAY #6772 /* ~젊은 기술자 지노 잰더의 기억의 그의 후손의 말들을 압도한다, 그리고 당신은 성급한 젊은 마법사가 자신이 고안한 주문을 뽐내던 일을 기억한다. 그는 말한다. "나는 그걸 '평화적 진압'이라고 부르오." 당신들 두 사람은 마법의 입자가 당신들 주위에서 부드럽게 자리잡는 것을 지켜본다, 그리고 당신은 가슴 속에서 큰 안도감을 느낀다. 당신은 말한다. "효과적이군. 당신이 이 꿈 제작자 만큼이나 일을 잘 할 수 있기를 기대하겠소."

날 잰더는 하던 말을 멈춘다: "지금 당신은 내 얘기를 듣고 있는 거요?"
~ */
  IF ~~ THEN REPLY #6773 /* ~"뭐? 물론이오. 그걸 다시 반복할 수 있소?"~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ GOTO 26
  IF ~~ THEN REPLY #6774 /* ~"아니오. 안녕히 계시오."~ */ DO ~GiveItemCreate("PacScrll",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #6775 /* ~그는 약간 화가 난 듯하나 참는다. "기계 제작은 지노가 죽은 후에도 계속되었소. 내 할머니인 눌라는 밀교의 비법을 응용하여 연구를 하였소. 그녀는 약초와 모자이크 돌들을 이용하여 애스트럴계와 에테르계로부터 꿈의 일부를 소환하는 마법의 패턴을 창출하였소. 내 아저씨는 한 단계 더 나아가 기계를 제작하는 데 천상계와 마계의 도움을 빌렸소. 나는... 기계의 잠재력을 개방할 의식을 고안해 냈소... 그것이 성공하면 당신은 꿈을 되찾을 수가 있소."~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6776 /* ~"좋소. 당신이 날 설득시켰소. 내 꿈을 찾기 위해 난 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6777 /* ~"Je n'en ai pas besoin pour le moment. R?onds juste ?d'autres questions."~ */ DO ~SetGlobal("Dream","GLOBAl",6)
~ GOTO 27
  IF ~~ THEN REPLY #6778 /* ~"흥미롭군. 이 일에 대해선 나중에 다시 얘기하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #9 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 4.0 5.0 6.1 12.0 19.3 20.0 21.2 22.1 24.1 26.1 28.2 29.2 30.1 31.0 32.0 33.2 34.0 35.1 36.0 38.0
  SAY #6779 /* ~집중을 하느라 그의 이미 주름진 이마에 주름이 더 생긴다. "무엇을 알고 싶소?"~ */
  IF ~  Global("Dream","GLOBAL",6)
~ THEN REPLY #6780 /* ~"당신은 전에 꿈 제조기에 대해 얘기한 적이 있소. 이제 그것에 대해 더 얘기해주시오."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6781 /* ~"당신이 대장장이 살인 사건에 대해 아는 바를 말해주시오."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
~ THEN REPLY #6782 /* ~"나는 주조소에 있는 톱니바퀴들을 수리해 달라는 요청을 받았소. 어떻게 해야 하는지 가르쳐 줄 수 있겠소?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6785 /* ~"당신은 누구요?"~ */ GOTO 33
  IF ~~ THEN REPLY #6787 /* ~"갓즈맨에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 35
  IF ~~ THEN REPLY #6788 /* ~"당신 동료들에 대해 얘기해주시오."~ */ GOTO 34
  IF ~~ THEN REPLY #6789 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 39
  IF ~  GlobalLT("Dream","GLOBAL",5)
~ THEN REPLY #8742 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
  IF ~  Global("Dream","GLOBAL",5)
~ THEN REPLY #66567 /* ~"지금은 아무런 용건도 없소. 안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 33.0
  SAY #6791 /* ~"그것은 기계인 동시에 의식이오. 그것은 정신의 상태이자 증기와 피로 움직이는 기계요. 그것은 그 안에 들어가는 자에게 꿈을 부여하오. 그건 당신을 위해 만들어졌고, 당신을 기다리고 있소. 그것을 완성할 준비가 되었소? 그것은 당신을 수십 년 동안 기다리고 있었소."~ */
  IF ~~ THEN REPLY #6792 /* ~"당신은 어떻게 그것이 날 위해 만들어졌다는 걸 아시오?"~ */ GOTO 29
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6793 /* ~"그렇소."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6795 /* ~"아니오. 그 일에 대해서는 나중에 얘기합시다. 날 위해 다른 질문들에 대해 답해주시오."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6796 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #6798 /* ~"왜냐하면 내 증조부인 지노 잰더가 당신이 발주한 기계를 찾으러 올 경우 자신의 후손들이 알아볼 수 있도록 당신 얼굴을 돌에 새겨 놓았기 때문이오. 그는 늘 당신이 돌아올 거라고 생각했소, 하지만 다른 이들은 그렇게 믿지 않았소. 우리 가족은 그 기계를 완성하겠다고 작심을 했기 때문에 그걸 완성시켰소... 그리고 이제 당신이 돌아왔소."~ */
  IF ~~ THEN REPLY #6799 /* ~"당신은 아직도 이 돌을 가지고 있소?"~ */ GOTO 30
  IF ~~ THEN REPLY #6801 /* ~"그럼 나에게는 분명히 그럴만한 이유가 있었을 것이오. 완성시키도록 합시다."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6802 /* ~"나는 관심이 없소. 다른 질문에나 대답해주시오."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #6803 /* ~"아니오. 나는 1년 전에 그것을 도난당했소. 나는 민첩하게 움직이는 그림자를 보았을 뿐이오. 내 집에서 없어진 물건은 그것뿐이었소. 나는 누가 그걸 가져갔는지 모르오, 하지만 난 그것의 생김새를 이미 기억해 두었소."~ */
  IF ~~ THEN REPLY #6804 /* ~"좋소. 꿈 제조기를 완성시키도록 합시다."~ */ DO ~SetGlobal("Dream","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #6805 /* ~"지금 나는 이 일에는 관심이 없소. 하지만 다른 것들에 대해 물어보고 싶소."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ GOTO 27
  IF ~~ THEN REPLY #6806 /* ~"지금 나는 꿈 제조기에는 관심이 없소. 나중이라면 모를까. 안녕히 계시오."~ */ DO ~SetGlobal("Dream","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 37.1 37.2
  SAY #6808 /* ~"가서 베다이-린과 얘기하시오. 그녀는 이 곳의 하찮은 일들을 맡고 있으니까. 그녀는 진정한 몽상가가 아니오. 그녀는 이 장소를 움직이는 것들에 관심을 기울이오. 그녀는 디자인을 하지 않소~ */
  IF ~~ THEN REPLY #6809 /* ~"좋소, 그러리다. 질문할 것들이 더 있소."~ */ GOTO 27
  IF ~~ THEN REPLY #6810 /* ~"좋소, 당장 그 일을 하리다."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.1 37.0
  SAY #6812 /* ~"나는 그 일에 대해 아는 것이 없소. 나는 여기서 내 일에 집중하고 있었소. 나는 노동자들이 하는 일에 대해서는 관심이 없소. 나는 내 일을 하고 그들은 그들의 일을 하니까." ~ */
  IF ~~ THEN REPLY #6816 /* ~"알겠소... 그럼 다른 질문에도 대답해주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6817 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 27.3 37.3
  SAY #6819 /* ~"나는 기술자 지노 잰더의 증손이자 기술자, 공상가, 창조자인 닐 잰더요. 그리고 나는 내 증조부가 남긴 작품을 완성했소. 바로 당신이 발주한 꿈 제조기 말이오! 이제 그것을 사용할 준비는 되었소?~ */
  IF ~~ THEN REPLY #6820 /* ~"꿈 제조기? 그게 뭐요?"~ */ GOTO 28
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6821 /* ~"아니오. 당신에게 할 다른 질문들이 있소."~ */ GOTO 22
  IF ~  GlobalGT("Dream","GLOBAL",0)
~ THEN REPLY #6823 /* ~"아니오. 당신에게 할 다른 질문들이 있소."~ */ GOTO 27
  IF ~~ THEN REPLY #6824 /* ~"아니오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.5 37.5 40.0
  SAY #6827 /* ~"흥. 그들에게는 진정한 영감이 없소. 그들은 창작에 대해서 얘기하고 자신들의 가능성에 대해 자랑하지만, 그들은 평범한 작품 이상의 것을 만들어 낼 수가 없소. 그들의 상상력은 빈약하고 제한되어 있을 뿐만 아니라, 세부 사항에 집착하고 있소. 내 생각에 진정한 공상가는 우선 장대한 설계를 한 후에 세부 사항에 신경을 쓰는 법이오. 세부 사항부터 시작하는 것은 먹고 사는 데만 관심이 있는 개미 수준의 빈곤한 상상력이오."~ */
  IF ~~ THEN REPLY #6829 /* ~"당신은 정말 자비롭군. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6830 /* ~"알겠소... 그 식견과 함께 난 그만 가야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.4 37.4
  SAY #6831 /* ~그는 한숨을 쉰 후 마음을 가다듬는다. "그건 긴 얘기요. 그럼 시작하겠소. 자, 모든 생명체는 뭔가를 원하오, 그렇지 않소? 그들은 만들고, 짓고, 부수고, 꿈꾸고, 싸우고, 배설하오... 그들이 이런 짓들을 하는 건 자신들이 지금 가지고 있는 것 이상의 뭔가를 원하기 때문이오. 가장 하찮은 미물조차도 자신을 향상시키기 위해 노력하고 있소. 어떤 자들은 원하는 바를 이룩하오. 또 어떤 자들은 중도에서 낙오하오."~ */
  IF ~~ THEN REPLY #6832 /* ~"계속하시오."~ */ GOTO 41
  IF ~~ THEN REPLY #6833 /* ~"관두시오. 대신 다른 질문들을 하고 싶소."~ */ GOTO 27
  IF ~~ THEN REPLY #6834 /* ~"관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 41.0
  SAY #6836 /* ~"간부 켈도는 저기 강단 위에 서 있소. 그와 얘기하시오. 아니면 그 자살 지향의 얼간이 산도즈를 찾아서 그와 얘기하시오. 날 더 귀찮게 할 일이 있소?" ~ */
  IF ~~ THEN REPLY #6837 /* ~"아직 아니오."~ */ GOTO 27
  IF ~~ THEN REPLY #6838 /* ~"그렇소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #10 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from: 39.1 40.1 41.1
  SAY #6839 /* ~덥수룩한 머리에 패션의 첨단을 달리는(단, 패션이 이미 50년 전에 죽었다는 전제 하에) 옷을 입은 남자가 보인다. 그의 옷은 거리의 부랑자나 입을 해진 넝마로 만들어진 듯하며, 그는 주위 사람들을 경멸하는 눈초리로 보고 있다. 그는 당신이 말을 걸기 전에는 당신을 흘깃 보려고도 하지 않았다. 당신이 말을 걸자 당신 얼굴을 조심스럽게 살핀 후 느리게 말한다. "내게서 뭘 원하시오?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6841 /* ~"당신이 대장장이 살인 사건에 대해 아는 바를 말해주시오."~ */ GOTO 32
  IF ~  Global("GearRepair","GLOBAL",2)
Dead("Bedai")
~ THEN REPLY #6842 /* ~"나는 주조소에 있는 톱니바퀴들을 수리해 달라는 요청을 받았소. 어떻게 해야 하는지 가르쳐 줄 수 있겠소?"~ */ GOTO 31
  IF ~  Global("GearRepair","GLOBAL",2)
!Dead("Bedai")
~ THEN REPLY #6843 /* ~"나는 주조소에 있는 톱니바퀴들을 수리해 달라는 요청을 받았소. 어떻게 해야 하는지 가르쳐 줄 수 있겠소?"~ */ GOTO 31
  IF ~  Global("Dream","GLOBAL",0)
~ THEN REPLY #6846 /* ~"당신은 누구요?"~ */ GOTO 33
  IF ~~ THEN REPLY #6847 /* ~"갓즈맨에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 35
  IF ~~ THEN REPLY #6849 /* ~"당신 동료들에 대해 얘기해주시오."~ */ GOTO 34
  IF ~~ THEN REPLY #6850 /* ~"당신은 여기서 어떤 일을 하오?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from:
  SAY #6852 /* ~그는 폭발한다: "불사란 인간의 상상력이 만들어 낸 최악의 저주요. 모든 얼간이들은 그걸 원하오, 하지만 그걸 제대로 얻은 자는 아무도 없소. 그건 어리석은 짓이오, 그리고 어리석은 자만이 그런 걸 받아들일 거요!" 그는 다시 냉정한 목소리로 돌아간다. "그리고, 난 아직 내 기계로 그걸 이룩할 방법을 찾지 못했소."~ */
  IF ~~ THEN REPLY #6853 /* ~"알겠소. 그럼 다른 질문에 대답해 주시오."~ */ GOTO 27
  IF ~~ THEN REPLY #6854 /* ~"알겠소. 하지만 그건 내게 도움이 되지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 27.6 37.6
  SAY #8743 /* ~"내가 무슨 일을 하느냐고? 나는 기술자 중의 기술자요. 나는 타나리 대장장이 카잔 아래서 공부를 했소. 그는 증오의 용광로에서 말을 단련하고, 절망의 물통에서 식힌 후, 그것을 어리석음을 학살하기 위해 보냈소. 그는 숙어의 요소들과 신랄한 말들을 가지고 끔찍할 정도로 강력한 무기를 만들어 냈소. 적들을 굴복시키고 다른 이들의 기이한 생각들을 파괴할 수 있는 무기들을. 나는 당신도 그가 남긴 업적을 보았으리라고 생각하오."~ */
  IF ~~ THEN REPLY #8756 /* ~"그래 당신은 여기서 사악한 무기들을 만드오?"~ */ GOTO 40
  IF ~~ THEN REPLY #8758 /* ~"물론 그랬을 거요. 다른 질문들도 좀 대답해주시오."~ */ GOTO 37
  IF ~~ THEN REPLY #8759 /* ~"그래, 틀림없이 그랬을 거요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8747 /* ~"전혀 그렇지 않소! 내 용광로는 증오로 만들어진 것이 아니라 이해로 만들어졌소. 나는 아컨 장인인 테라사피리아 에게도 수업을 받았소. 그는 부드러운 생각의 치유력 있는 감촉과 사악하고 광분하는 가슴조차 진정시킬 수 있는 생각들을 만들어 낸 달인이오. 그는 사랑과 헌신으로 자신의 의지를 표현했소. 모든 인간의 영혼에 선과 악이 공존하듯, 내 작품에는 그들로부터 받은 가르침이 융합되어 있소."~ */
  IF ~~ THEN REPLY #8761 /* ~"당신 동료들도 당신 만큼 훈련이 잘 되어 있소?"~ */ GOTO 34
  IF ~~ THEN REPLY #8762 /* ~흥미롭군! 다른 질문을 해도 괜찮겠소?"~ */ GOTO 37
  IF ~~ THEN REPLY #8764 /* ~"이 일에 대해서는 생각해봐야 할 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.0
  SAY #8748 /* ~"모든 결정, 행동, 반응... 이러한 것들은 모두 다른 것들을 창출하기 위한 토대가 되오. 그렇다면 우리의 현생 역시 자신들을 향상시키기 위한 위한 토대라는 것은 당연한 일이오. 그 최종 목표가 신의 경지가 아니라면 그 무엇이겠소? 나는 항상 그렇게 내 자신을 정당화시켜 왔소. 그리고 솔직히 난 지금 철학 논쟁을 벌일 기분은 아니오. 그러니 토론을 하고 싶다면 간부에게 가서 얘기하시오."~ */
  IF ~~ THEN REPLY #8765 /* ~"어디 가면 당간부를 만날 수가 있소?"~ */ GOTO 36
  IF ~~ THEN REPLY #8766 /* ~"알겠소. 괜찮다면 다른 질문에도 대답해 주시오."~ */ GOTO 37
  IF ~~ THEN REPLY #8767 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END
