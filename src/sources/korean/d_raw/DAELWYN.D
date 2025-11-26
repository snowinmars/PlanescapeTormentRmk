// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAELWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAELWYN~

IF ~  Global("Aelwyn","GLOBAL",0)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #43390 /* ~이 키가 크고 날씬한 여인은 와인이 담긴 컵을 내려보다가 때때로 고개를 들어 주변의 손님들과 통행인들을 훑어본다. 그녀의 얼굴 생김새는 우아하게 이국적이며, 그녀의 밝은 황금색 눈을 그녀가 주변을 둘러볼 때마다 빛을 받아 반짝인다. ~ */
  IF ~~ THEN REPLY #43391 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #56698 /* ~여자를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56699 /* ~그녀는 대답을 하기 전에 당신을 조심스럽게 살펴본다. 그녀는 당신 시선을 피하면서 천천히, 그리고 조심스럽게 말문을 연다. "나 앨윈도 당신에게 인사해요."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56700 /* ~"앨윈? 당신 친구 네멜이 당신을 찾고 있소."~ */ JOURNAL #56704 /* ~나는 앨윈을 찾아 그녀에게 네멜이 그녀를 기다리고 있다고 전했다. ~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56701 /* ~"누군가를 찾고 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #56702 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #56703 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0 26.0 27.0
  SAY #56705 /* ~그녀는 미소를 짓기 시작한다, 그러나 이내 입을 가리고 자기 술을 내려다본다. "나 앨윈은 네멜의 소식을 듣게 되어 몹시 기뻐요. 나 앨윈을 위해 그녀에게 이 장소에 대해 말해주실 수 있겠어요?"~ */
  IF ~~ THEN REPLY #56706 /* ~"좋소, 당신을 위해 그 일을 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~나는 네멜에게 돌아가 그녀에게 앨윈이 어디 있는지 전해주기로 했다. ~ */ GOTO 3
  IF ~~ THEN REPLY #56707 /* ~"나는 자선사업이나 하는 심부름꾼이 아니오. 그러니 대가를 준다면 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #56708 /* ~"생각해 보겠소. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #56709 /* ~"다음 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.0 14.0
  SAY #56711 /* ~그녀는 당신을 아주 잠시 쳐다보더니, 다시 눈을 내리깔고 자기 술을 내려다본다. 당신의 모든 감각이 따뜻하고 편안한 느낌 - 순수한 행복에 파묻힌다. "나 앨윈은 당신에게 감사해요."~ */
  IF ~~ THEN REPLY #56712 /* ~"천만의 말씀이오. 하지만 그녀의 인상착의에 대해 물어도 괜찮겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #56713 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #56714 /* ~앨윈은 천천히 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #56715 /* ~"그녀가 말하는 방식, 그녀의 말이 하는 일... 어떻게?"~ */ GOTO 5
  IF ~~ THEN REPLY #56716 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 30.0
  SAY #56717 /* ~"나 앨윈은 우리가 다른 세계에서 왔다고 밖에 말할 수가 없어요. 우리는 말, 생각, 그리고 심지어는 감정조차도 주변의 사물에 직접적인 영향을 미칠 수 없는 이 곳 사람들과는 달라요."~ */
  IF ~~ THEN REPLY #56718 /* ~"계속하시오..."~ */ GOTO 6
  IF ~~ THEN REPLY #56719 /* ~"나중에 더 자세히 들어야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #56720 /* ~"나 앨윈은 내 주변 사람들에게 지나친 영향을 끼치지 않으려고 노력해요. 하지만 네멜은 여기 온지 얼마되지 않아 그럴 수가 없어요. 만약 이 곳에 오래 머무르려면 그녀도 그 방법을 배워야만 해요."~ */
  IF ~~ THEN REPLY #56721 /* ~"하지만 왜?"~ */ GOTO 7
  IF ~~ THEN REPLY #56724 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #56722 /* ~"이유는 여러 가지가 있어요. 나 앨윈은 자신들의 현실을 나 앨윈에게 강제할 수 없는 사람들에게 내 현실을 강제하는 것은 옳지 않다고 생각해요."~ */
  IF ~~ THEN REPLY #56725 /* ~"당신이 단순히 말만 함으로서 할 수 없는 일이 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #56726 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #56727 /* ~그녀는 눈살을 찌푸린다. 당신의 위장 속에서 기묘한 불쾌감이 인다. "제발... 나 앨윈은 그것에 대해 더 이상 얘기하고 싶지 않아요."~ */
  IF ~~ THEN REPLY #56728 /* ~"하나만 물어보겠소..."~ */ GOTO 9
  IF ~~ THEN REPLY #56729 /* ~"좋소. 안녕히 계시오, 앨윈."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #56730 /* ~그녀는 당신을 똑바로 쳐다본다, 그러자 그녀의 황금빛 눈에 당신의 얼굴이 비친다. "그는 앨윈에게 그 일에 대해 더 이상 얘기하지 않을 거예요, 따라서 더 이상 그녀에게 더 이상 그런 식으로 얘기하지 못할 거예요." 당신은 자신이 그녀에게 더 이상 질문을 할 수 없게 되었다는 사실을 깨닫는다... 하려고 해도 말이 목에서 걸려 나오지 않는다.~ */
  IF ~~ THEN REPLY #56731 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY #56732 /* ~그녀는 고개를 끄덕인다. "나 앨윈은 이해해요. 당신은 센세이트인가요?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56733 /* ~"그렇소."~ */ GOTO 11
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56734 /* ~"아니오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #56735 /* ~그녀는 고개를 젓는다. "그렇다면 나 앨윈은 당신에게 보답을 할 방법이 없어요."~ */
  IF ~~ THEN REPLY #56736 /* ~"어쨌든 그일을 해주도록 하리다."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~나는 네멜에게 돌아가 그녀에게 앨윈이 어디 있는지 전해주기로 했다. ~ */ GOTO 3
  IF ~~ THEN REPLY #56737 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #56739 /* ~"나 앨윈이 당신에게 낯익지 않나요?"~ */
  IF ~~ THEN REPLY #56740 /* ~"아니. 그럴 이유라도 있소?~ */ GOTO 13
  IF ~~ THEN REPLY #56741 /* ~"아니오."~ */ GOTO 13
  IF ~~ THEN REPLY #56742 /* ~"그건 중요하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #56743 /* ~"나 앨윈이 생각했던 대로예요. 한 남자가 그의 정신을 잃었어요."~ */
  IF ~~ THEN REPLY #56744 /* ~"무슨 뜻이오? 당신은 내가 누군지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #56745 /* ~"그럴지도 모르겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #56746 /* ~"나 앨윈은 전에 당신을 만난 적이 있어요, 그리고 만약 당신이 나를 돕겠다면, 나도 그 만남에 대해 얘기해주겠어요."~ */
  IF ~~ THEN REPLY #56747 /* ~"그럼 하겠소."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",3)
~ JOURNAL #56710 /* ~나는 네멜에게 돌아가 그녀에게 앨윈이 어디 있는지 전해주기로 했다. ~ */ GOTO 3
  IF ~~ THEN REPLY #56748 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.2 2.2 26.2 39.1
  SAY #56750 /* ~여자는 고개를 젓는다. 그녀의 진홍색 머리가 빛을 받아 마치 바람에 흔들리는 불꽃처럼 보인다. "나 앨윈에게는 답이 없어요, 이방인. 다른 데서 찾아보는 것이 좋을 거예요."~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56751 /* ~"당신이 앨윈이라고 했소? 당신 친구 네멜이 당신을 찾고 있소."~ */ JOURNAL #56704 /* ~나는 앨윈을 찾아 그녀에게 네멜이 그녀를 기다리고 있다고 전했다. ~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56752 /* ~"누군가를 찾고 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #56753 /* ~"그럼 안녕히 계시오..."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.1 15.1 26.1
  SAY #56755 /* ~그녀는 생각에 잠겨 자신의 와인잔을 쳐다보며 고개를 끄덕인다. "그녀는 나 앨윈의 친구예요. 나 앨윈은 이 곳에서 그녀가 왜 아직 나 앨윈을 만나러 오지 않았는지 걱정하고 있어요."~ */
  IF ~~ THEN REPLY #56756 /* ~"난 당신이 당신 친구를 찾는 일을 도와줄 수가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Aelwyn_1","GLOBALGood",1)
SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~나는 내가 만난 앨윈이라는 여인을 위해 네멜이라는 여자를 찾아주기로 약속했다.~ */ GOTO 17
  IF ~~ THEN REPLY #56757 /* ~"난 당신을 위해 그녀를 찾아줄 수 있소, 물론 대가를 지불하겠다면 말이지만."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Aelwyn_1","GLOBALGood",-1)
~ GOTO 20
  IF ~~ THEN REPLY #56758 /* ~"당신이 그녀를 찾기를 바라겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #56760 /* ~"이 일을 해주시겠어요?" 그녀는 컵에서 눈을 떼고 미소를 지으며 당신을 본다. 그러자 갑자기 당신은 희망과 기쁨에 찬 감사의 느낌에 휩싸인다. 당신이 긴장하는 것을 보자 그녀는 다시 입을 가리고 눈을 돌린다... 그리고 느낌은 사라진다." 나 앨윈은 당신에게 감사해요."~ */
  IF ~~ THEN REPLY #56761 /* ~"그건... 뭐... 뭐였소?"~ */ GOTO 18
  IF ~~ THEN REPLY #56762 /* ~"물론이오. 그녀는 어떻게 생겼소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 25.0
  SAY #56763 /* ~"그게 뭐였지요, 친절한 이방인?" 그녀 아랫입술을 깨문다. "나 앨윈은 당신이 하는 것에 대해 알지 못해요."~ */
  IF ~~ THEN REPLY #56764 /* ~"알겠소. 네멜은 어떻게 생겼소?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0 25.1 27.1
  SAY #56765 /* ~"그녀는 나 앨윈처럼 생겼어요, 하지만 검은색 머리에 밝은 보라색 눈이에요."~ */
  IF ~~ THEN REPLY #56766 /* ~"그럼 그녀에게 당신이 여기서 기다린다고 전하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.1
  SAY #56767 /* ~그녀는 고개를 끄덕인다. "나 앨윈은 이해해요. 당신은 센세이트인가요?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56768 /* ~"그렇소."~ */ GOTO 21
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56769 /* ~"아니오."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #56770 /* ~그녀는 고개를 젓는다. "그렇다면 나 앨윈은 당신에게 보답을 할 방법이 없어요."~ */
  IF ~~ THEN REPLY #56771 /* ~"어쨌든 하도록 하겠소."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~나는 내가 만난 앨윈이라는 여인을 위해 네멜이라는 여자를 찾아주기로 약속했다.~ */ GOTO 25
  IF ~~ THEN REPLY #56772 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #56774 /* ~"나 앨윈이 당신에게 낯익지 않나요?"~ */
  IF ~~ THEN REPLY #56775 /* ~"아니. 그럴 이유라도 있소?~ */ GOTO 23
  IF ~~ THEN REPLY #56776 /* ~"아니오."~ */ GOTO 23
  IF ~~ THEN REPLY #56777 /* ~"그건 중요하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #56781 /* ~"나 앨윈이 생각했던 대로예요. 한 남자가 그의 정신을 잃었어요."~ */
  IF ~~ THEN REPLY #56779 /* ~"무슨 뜻이오? 당신은 내가 누군지 아시오?"~ */ GOTO 24
  IF ~~ THEN REPLY #56780 /* ~"그럴지도 모르겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #56782 /* ~"나 앨윈은 전에 당신을 만난 적이 있어요, 그리고 만약 당신이 나를 돕겠다면, 나도 그 만남에 대해 얘기해주겠어요."~ */
  IF ~~ THEN REPLY #56783 /* ~"그럼 하겠소."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",2)
~ JOURNAL #56759 /* ~나는 내가 만난 앨윈이라는 여인을 위해 네멜이라는 여자를 찾아주기로 약속했다.~ */ GOTO 25
  IF ~~ THEN REPLY #56784 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 24.0
  SAY #56786 /* ~"이 일을 해주시겠어요?" 그녀는 컵에서 눈을 떼고 미소를 지으며 당신을 본다. 그러자 갑자기 당신은 희망과 기쁨에 찬 감사의 느낌에 휩싸인다. 당신이 긴장하는 것을 보자 그녀는 다시 입을 가리고 눈을 돌린다... 그리고 느낌은 사라진다." 나 앨윈은 당신에게 감사해요."~ */
  IF ~~ THEN REPLY #56787 /* ~"그건... 뭐... 뭐였소?"~ */ GOTO 18
  IF ~~ THEN REPLY #56788 /* ~"물론이오. 그녀는 어떻게 생겼소?"~ */ GOTO 19
END

IF ~  Global("Aelwyn","GLOBAL",1)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 26 // from:
  SAY #56789 /* ~앨윈은 인사를 하려고 잠시 잔에서 눈을 떼고 당신을 쳐다본다. "나 앨윈은 이방인과 다시 만났어요. 뭘 원하시죠?"~ */
  IF ~  Global("Nemelle","GLOBAL",2)
!Dead("Nemelle")
~ THEN REPLY #56790 /* ~"당신 친구 네멜이 당신을 찾고 있소."~ */ JOURNAL #56704 /* ~나는 앨윈을 찾아 그녀에게 네멜이 그녀를 기다리고 있다고 전했다. ~ */ GOTO 2
  IF ~  GlobalLT("Nemelle","GLOBAL",2)
~ THEN REPLY #56791 /* ~"누군가를 찾고 있소?"~ */ GOTO 16
  IF ~~ THEN REPLY #56792 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #56793 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",2)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 27 // from:
  SAY #56795 /* ~앨윈은 인사를 하려고 잠시 잔에서 눈을 떼고 당신을 쳐다본다. "나 앨윈은 네멜의 소식을 애타게 기다려요. 그녀를 찾았나요, 이방인?"~ */
  IF ~  GlobalGT("Nemelle","GLOBAL",0)
!Dead("Nemelle")
~ THEN REPLY #56796 /* ~"그렇소. 그녀를 찾았소."~ */ JOURNAL #56799 /* ~나는 앨윈에게 내가 그녀를 위해 네멜을 찾아냈다고 말했다.~ */ GOTO 2
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56797 /* ~"아직 아니오. 그녀가 어떻게 생겼는지 다시 말해줄 수 있겠소?"~ */ GOTO 19
  IF ~  Global("Nemelle","GLOBAL",0)
~ THEN REPLY #56798 /* ~"아직 아니오. 그녀를 찾으면 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",3)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 28 // from:
  SAY #56800 /* ~앨윈은 인사를 하려고 잠시 잔에서 눈을 떼고 당신을 쳐다본다. "나 앨윈은 네멜이 도착하기를 기다려요. 그녀에게 메시지는 전했나요?"~ */
  IF ~~ THEN REPLY #56801 /* ~"아직 아니오. 다시 그녀를 찾아서 그녀에게 당신이 여기 있다고 전하겠소."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",4)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 29 // from:
  SAY #56802 /* ~네멜은 두 손을 꽉 쥐고 당신에게 고개를 숙여 감사한다, 그리고 그녀의 황금빛 눈에서는 기쁨의 눈물이 흘러내린다. 당신의 눈에서도 눈물이 나기 시작할 때, 그녀는 눈물을 닦아 내고 미소짓는다. 그러자 당신의 전신은 강렬한 즐거움으로 휩싸인다. "앨윈은 이방인에게 감사했어요! 그녀는 그녀의 가장 친구 네멜과 다시 만났어요!"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56803 /* ~"천만의 말씀이오."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
~ GOTO 30
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #56804 /* ~"천만의 말씀이오."~ */ GOTO 31
  IF ~  Global("Evil_Aelwyn_1","GLOBAL",1)
~ THEN REPLY #56805 /* ~"물론이오. 이제 우리의 이전의 만남에 대해 얘기해주시오."~ */ DO ~SetGlobal("PC_Was_Sensate","GLOBAL",1)
SetGlobal("Aelwyn","GLOBAL",5)
~ JOURNAL #56812 /* ~엘윈이라는 여인은 내가 과거에 감각의 공동체의 일원, 즉 센세이트였으며, 아마 지금도 그럴 것이라고 말해 주었다. ~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #56806 /* ~그녀는 고개를 끄덕인다, 그리고 다시 눈을 아래로 내리깐다. 그러자 그녀의 미소가 불러왔던 느낌은 사라지면서 즐거운 기억으로 남는다.~ */
  IF ~~ THEN REPLY #56807 /* ~"어떻게 네멜과 당신은 내 감각과 감정에 영향을 미칠 수가 있는 것이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #56808 /* ~"그만 가보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #56809 /* ~그녀는 고개를 끄덕인다, 그리고 다시 눈을 아래로 내리깐다. 그러자 그녀의 미소가 불러왔던 느낌은 사라지면서 즐거운 기억으로 남는다. "나 앨윈은 당신에게 해줄 얘기가 있어요, 이방인."~ */
  IF ~~ THEN REPLY #56810 /* ~"그렇소? 계속하시오..."~ */ DO ~SetGlobal("Aelwyn","GLOBAL",5)
SetGlobal("PC_Was_Sensate","GLOBAL",1)
~ JOURNAL #56812 /* ~엘윈이라는 여인은 내가 과거에 감각의 공동체의 일원, 즉 센세이트였으며, 아마 지금도 그럴 것이라고 말해 주었다. ~ */ GOTO 32
  IF ~~ THEN REPLY #56811 /* ~"다음 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.2 31.0
  SAY #56813 /* ~"나 앨윈이 당신을 부를 때 쓴 '이방인'이란 이름은 적절하지 못해요. 당신과 나 앨윈은 전에 만난 적이 있어요... 시 공회당에서. 그것도 당신이 센세이트가 아니었다면 들어갈 수 없었을 곳에서. 당신이 기억을 하든 안 하든, 그 사이 당신이 감각의 공동체를 배신하지 않았다면 당신은 아직도 센세이트예요..."~ */
  IF ~~ THEN REPLY #56814 /* ~"알겠소... 더 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #56815 /* ~"나머지는 다음 기회에 듣겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0 39.0
  SAY #56816 /* ~그녀는 고개를 끄덕인다. "당신과 나 앨윈은 두 번 만났어요. 첫 번째 만남은 최소한 두 세기 이상 전의 일이고, 두 번째는 보다 최근의 일이에요. 아마 오십 년도 되지 않았을 거예요."~ */
  IF ~~ THEN REPLY #56817 /* ~"그건 상당히 오래 전 일이군..."~ */ GOTO 34
  IF ~~ THEN REPLY #56818 /* ~"나머지는 다음 기회에 듣겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #56819 /* ~그녀는 다시 고개를 끄덕인다. "앨윈의 동족들은 매우 수명이 길어요." 그녀는 불행하게 한숨을 쉰다, 그러자 당신을 오한이 엄습한다. "그 때 당신은 지금과는 다른 사람이었어요... 덜 험상궂고, 흉터도 많지 않았어요. 다원 우주의 모든 것을 체험하려고 열심이었죠. 그 때 당신은 나 앨윈에게 구애했고, 우리는 서로 애인이 될 뻔했어요 - 하지만 바로 그 때 당신이 사라졌어요."~ */
  IF ~~ THEN REPLY #56820 /* ~"내가 어디로 사라졌소?"~ */ GOTO 35
  IF ~~ THEN REPLY #56821 /* ~"나머지는 다음 기회에 듣겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #56822 /* ~"나 앨윈은 당신이 죽었다는... 살해당했다는 얘기를 들었어요." 그녀는 잠시 당신 눈을 호기심에 찬 표정으로 들여다본다. "그 이후로는 단 한 차례만 만났어요."~ */
  IF ~~ THEN REPLY #56823 /* ~"그때 난 당신을 기억했었소?"~ */ GOTO 36
  IF ~~ THEN REPLY #56824 /* ~"나머지는 다음 기회에 듣겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #56825 /* ~"아뇨." 그녀는 슬프게 고개를 젓는다, 그리고 자신의 목을 만진다. "당신은 기억하지 못했어요. 당신은 나를 죽이려고 달려들었어요. 나 앨윈이 당신을 속일 수 없다, 나 앨윈은 당신을 붙잡아 죽이지 못할 거라고 고함을 지르면서..."~ */
  IF ~~ THEN REPLY #56826 /* ~"무슨 일이 일어났소?"~ */ GOTO 37
  IF ~~ THEN REPLY #56827 /* ~"나머지는 다음 기회에 듣겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #56828 /* ~"우리는 시 공회당의 북쪽 탑들 중 한 곳의 7층에서 만났었어요. 당신이 날 목 졸라 죽이기 전에 나 앨윈은 내 능력을 사용해 당신이 창 밖으로 투신 자살하도록 만들었어요. 나 앨윈이 당신 시체를 찾으려고 내려갔을 때 당신은 이미 사라지고 없었어요..."~ */
  IF ~~ THEN REPLY #56829 /* ~"당신이 *뭘* 했다고?"~ */ GOTO 38
  IF ~~ THEN REPLY #56830 /* ~"알겠소..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #56831 /* ~"이것이 나 앨윈이 당신에게 들려줄 이야기의 전부예요. 우리는 남이 아니었으나 이제는 남남이 되었어요. 안녕히 가세요, 이방인, 그리고 당신이 가는 길에 행운이 있기를."~ */
  IF ~~ THEN REPLY #56832 /* ~"고맙소, 앨윈. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Aelwyn","GLOBAL",5)
Global("Attack_Aelwyn","AR0600",0)
~ THEN BEGIN 39 // from:
  SAY #56833 /* ~앨윈은 인사를 하려고 잠시 잔에서 눈을 떼고 당신을 쳐다본다. "나 앨윈은 이방인과 다시 만났어요. 반가워요?"~ */
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #56834 /* ~"우리가 과거에 어떻게 다시 만났는지 얘기해주시오, 앨윈."~ */ GOTO 33
  IF ~~ THEN REPLY #56835 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #56836 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Attack_Aelwyn","AR0600",1)
~ THEN BEGIN 40 // from:
  SAY #56837 /* ~여자는 자신의 황금색 눈을 순수한 증오로 불태우며 당신에게 으르렁댄다. "어리석은 놈! 감히 아사함의 딸을 그런 식으로 공격하다니! 너는 개다..." 그녀는 눈을 가늘게 뜨고 그를 노려본다. "...그리고 넌 개처럼 죽을 것이다!'" 그리고 나서 그녀는 와인을 한 모금 마시며 당신을 싸늘하게 쳐다본다.~ */
  IF ~~ THEN REPLY #56838 /* ~"허?"~ */ GOTO 41
  IF ~~ THEN REPLY #56839 /* ~그녀를 무시하고 계속 공격한다. ~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #56840 /* ~당신은 땅바닥에 쓰러져 고통으로 울부짖는다... 당신의 속이 뒤집히는 듯하다, 그리고 당신은 뜨거운 검은 피를 대량으로 토해내기 시작한다. 마침내 당신은 몸을 떨며 길바닥에 뻗는다, 그리고 마지막 남은 삶의 파편이 당신 몸으로부터 사라진다...~ */
  IF ~~ THEN REPLY #56841 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END
