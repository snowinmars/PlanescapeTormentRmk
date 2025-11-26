// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKRYS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1800 /* ~침착하고 냉정한 생긴 여인이 보인다. 그녀는 매우 단호한 표정을 짓고 있다. 그녀의 목소리는 낮으며 확고하다. "나는 여기 있는 레이저 앤젤스의 리더인 크리스톨이오. 당신은 우리 영토에 와 있소. 내게 무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #3818 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #3819 /* ~"레이저 앤젤에 대해 얘기해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #3820 /* ~"이 골목에 대해 얘기해주시오."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3821 /* ~"나는 파로드를 찾고 있소."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3822 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3823 /* ~"흑장미는 당신의 죽음을 원하오. 난 당신을 죽이러 왔소."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Global("RW","GLOBAL",2)
~ THEN REPLY #3824 /* ~"타락자 윌리엄은 당신의 죽음을 원하오. 난 당신을 죽이러 왔소."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3825 /* ~"아무 것도 아니오."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0
  SAY #2812 /* ~그녀는 어깨를 으쓱한다. "나는 레이저 앤젤의 리더요. 당신이 알아야 할 건 그것 뿐이오. 나는 레이저 앤젤스의 설립자이며, 그들은 명령을 따르오. 자, 내게 무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #3826 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 1
  IF ~~ THEN REPLY #3827 /* ~"레이저 앤젤에 대해 얘기해주시오."~ */ GOTO 2
  IF ~~ THEN REPLY #3828 /* ~"이 골목에 대해 얘기해주시오."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3829 /* ~"나는 파로드를 찾고 있소."~ */ GOTO 4
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3830 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 5
  IF ~  Global("BR_Krys","GLOBAL",1)
~ THEN REPLY #3831 /* ~"흑장미는 당신의 죽음을 원하오. 난 당신을 죽이러 왔소."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3832 /* ~"아무 것도 아니오."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #2813 /* ~"우리는 우리보다 더 큰 세력을 지닌 집단에게 넝마주이 광장 부근의 쓰레기 굴을 빼앗겨 이 곳으로 오게 되었소. 공교롭게도 우리는 골목의 반대편에 자리를 잡고 있는 다크앨리 쉬브와 같은 시점에 이 곳에 도착했소. 놈들은 흉악한 깡패들의 집단이오." 그녀는 여기서 말을 잠시 멈춘다. "우리도 깡패요, 하지만 우리는 가급적 살생은 하지 않으려고 하오. 우리는 먹고 살 수단이 필요하고, 현 상황에서는 통행료를 받는 것이 가장 현실적인 방법이오."~ */
  IF ~~ THEN REPLY #3833 /* ~"보람있는 일 같소."~ */ GOTO 7
  IF ~~ THEN REPLY #3834 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2
  SAY #2814 /* ~어떤 미치광이 마법사가 이 곳이 잿더미로 변하면 더 보기 좋을 것 같다고 생각하고는 불을 질렀소. 그 이후 이 곳은 범죄자와 깡패들의 온상이 되었소."~ */
  IF ~~ THEN REPLY #3835 /* ~"당신도 포함해서요?"~ */ GOTO 8
  IF ~~ THEN REPLY #3836 /* ~"알겠소. 이만 실례하겠소. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.3 5.0
  SAY #2815 /* ~그녀는 침을 뱉는다. "웜헤어 말이오? 놈이라면 넝마주이 광장 근처에서 찾을 수가 있을 거요. 그 곳에 가서 물어보시오. 하지만 사람들의 이목을 끌게 될 거요."~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3837 /* ~"이 부근에서 혹시 일지를 보지 못했소?"~ */ GOTO 5
  IF ~~ THEN REPLY #3839 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.4 4.0
  SAY #2817 /* ~"일지? 책? 여기서? 이 골목에서? 흥! 미안하지만 여기서는 타는 물건은 남김없이 땔감으로 사용되오."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3841 /* ~"좋소. 혹시 어디 가면 파로드란 사람을 만날 수 있는지 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #3843 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.7 1.6 2.1 3.1 4.1 5.1 7.0 8.0
  SAY #2818 /* ~"당신이 떠나기 전에 부탁할 것이 하나 있소. 이 비좁은 지역은 우리와 다크앨리 쉬브가 공존하기에는 너무 좁소. 우리는 인간다운 마음을 가지고 있으나, 그들에게는 증오뿐이오. 그들의 두목인 타락자 윌리엄을 죽여 주시오, 그러면 당신에게는 평생토록 통행료를 받지 않겠소. 만약 당신이 이 골목을 자주 지난다면 큰 돈을 절약하게 되는 셈이오."~ */
  IF ~~ THEN REPLY #3844 /* ~"당신 그룹에 대해 얘기해주시오."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~나는 위험한 모서리의 골목에 있는 레이저 앤젤의 리더 크리스톨로부터 그녀의 주된 라이벌인 썩은 윌리엄을 제거해 달라는 부탁을 받았다. 이 일을 해주는 대가로 나는 앞으로 골목을 무료로 통과할 권리를 약속 받았다.~ */ GOTO 11
  IF ~~ THEN REPLY #3845 /* ~"좋은 조건인 것 같소. 거래 성립이오."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ JOURNAL #31879 /* ~나는 위험한 모서리의 골목에 있는 레이저 앤젤의 리더 크리스톨로부터 그녀의 주된 라이벌인 썩은 윌리엄을 제거해 달라는 부탁을 받았다. 이 일을 해주는 대가로 나는 앞으로 골목을 무료로 통과할 권리를 약속 받았다.~ */ GOTO 9
  IF ~~ THEN REPLY #3846 /* ~"나는 살인자가 아니오."~ */ DO ~SetGlobal("Krystall","GLOBAL",1)
~ JOURNAL #31879 /* ~나는 위험한 모서리의 골목에 있는 레이저 앤젤의 리더 크리스톨로부터 그녀의 주된 라이벌인 썩은 윌리엄을 제거해 달라는 부탁을 받았다. 이 일을 해주는 대가로 나는 앞으로 골목을 무료로 통과할 권리를 약속 받았다.~ */ GOTO 10
  IF ~  Dead("RWill")
~ THEN REPLY #37811 /* ~"그는 이미 죽었소."~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 7 // from: 2.0
  SAY #2819 /* ~"그렇지가 않소. 우리에게는 달리 다른 방법이 없소. 우리는 벌통 주민들이오. 내가 받은 얼마되지 않은 교육도 날 여기서 벗어날 수 있도록 해주지는 못할 거요. 아무도 벌통 주민을 원하지 않소, 그래서 우리가 완전히 무시당하지 않도록 나름대로의 행동을 취하는 거요."~ */
  IF ~~ THEN REPLY #3847 /* ~"뭐든 간에. 그럼 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #2820 /* ~"그렇소. 하지만 우리가 다크앨리 쉬브를 제거하고 이 골목을 차지한다면, 우리는 당분간은 별 걱정 없이 지낼 수 있을 거요." ~ */
  IF ~~ THEN REPLY #3848 /* ~"그럴지도. 안녕히 계시오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 6.1 10.1 11.0 12.0 14.0
  SAY #2821 /* ~"당신이 성공했다는 소식을 고대하고 있겠소. 일을 마치면 돌아와 내게 알려 주시오, 알겠소? 행운을 빌겠소."~ */
  IF ~~ THEN REPLY #3851 /* ~"안녕히 계시오."~ */ JOURNAL #3853 /* ~나는 썩은 윌리엄을 죽이기로 합의했다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #2822 /* ~"그렇지 않을 수도 있소. 그것은 광견 한 마리와 그의 똥개들을 죽이는 일과, 골목을 통과할 때마다 통행료는 내는 것 중에서 택일하는 것이오. 선택은 당신이 하시오."~ */
  IF ~~ THEN REPLY #3854 /* ~"관두시오. 난 하지 않겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #3855 /* ~"그럼 하겠소."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #3369 /* ~"우리는 방랑자들이오. 우리는 타의에 의해 이주를 거듭해야만 했소. 우리는 타락자 윌리엄과 다크앨리 쉬브가 이 곳에 정착한 것과 같은 시기에 이 곳에 자리를 잡았소, 그리고 우리는 지금 생존을 위해 싸우고 있소. 우리는 단지 약간의 통행료를 받을 뿐이오, 하지만 그들은 사람들을 죽이고 있소. 우리는 기본적으로 선량한 사람들이오. 반면 그들은 사악한 자가 이끄는 악인들이오."~ */
  IF ~~ THEN REPLY #3856 /* ~"그를 죽이겠소."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3857 /* ~"그가 나하고는 더 어울릴 것 같소.안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #3858 /* ~"나는 이 일을 하지 않겠소."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.2
  SAY #3801 /* ~"그래도 나는 당신이 내게 말을 걸 때마다 계속 부탁할 거요. 이 일은 누군가 반드시 해야만 하오."~ */
  IF ~~ THEN REPLY #3859 /* ~"그렇다면 해야겠군."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #3860 /* ~"그래도 나는 하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Krystall","GLOBAL",0)
GlobalLT("Krystall","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #3802 /* ~"타락자 윌리엄을 제거하는 일에 무슨 성과라도 올렸소?"~ */
  IF ~  Global("Krystall","GLOBAL",1)
~ THEN REPLY #7729 /* ~"난 당신에게 하지 않겠다고 분명히 말했소!"~ */ GOTO 14
  IF ~  !Dead("Rwill")
~ THEN REPLY #9345 /* ~"아직 아니오."~ */ GOTO 15
  IF ~  Dead("Rwill")
~ THEN REPLY #34415 /* ~"그렇소. 놈은 죽었소. 다시는 그나 그의 그룹 때문에 걱정할 필요가 없소." ~ */ DO ~SetGlobal("Krystall","GLOBAL",3)
SetGlobal("Paid_RA","AR0301",2)
AddexperienceParty(1500)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #3803 /* ~"그리고 나는 당신이 승낙할 때까지 계속 부탁하겠다고 이미 말했소."~ */
  IF ~~ THEN REPLY #34416 /* ~"만약 당신들이 날 더 이상 귀찮게 하지 않을 거라면 난 하겠소."~ */ DO ~SetGlobal("Krystall","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #34417 /* ~"그래도 나는 하지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #3804 /* ~"그럼 왜 내게 말을 거는 거요? 이 일은 누군가 반드시 해야만 하는 일이오!" 그녀는 당신에게 등을 돌린다. ~ */
  IF ~~ THEN REPLY #34418 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.3 13.2
  SAY #3805 /* ~"해냈소? 타락자 윌리엄은 죽었소? 고맙소, 여행자, 그리고 당신은 위험한 모서리의 골목을 지날 때 다시는 통행료를 낼 필요가 없소. 헌데 부탁할 것이 딱 한 가지 더 있소."~ */
  IF ~~ THEN REPLY #34419 /* ~"관두시오."~ */ GOTO 17
  IF ~~ THEN REPLY #34420 /* ~"뭐요?"~ */ GOTO 17
  IF ~~ THEN REPLY #34421 /* ~"내가 얻을 건 뭐요?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #3806 /* ~"'흑장미'란 이름의 위험한 외톨이 살인광이 있소. 그는 내 부하들을 습격하고 있소. 그의 만행을 저지해 주시오."~ */
  IF ~~ THEN REPLY #34422 /* ~"하겠소."~ */ GOTO 19
  IF ~~ THEN REPLY #34423 /* ~"내가 얻을 건 뭐요?"~ */ GOTO 18
  IF ~~ THEN REPLY #34424 /* ~"관심없소. 안녕히 계시오."~ */ GOTO 20
  IF ~  Dead("BlackR")
~ THEN REPLY #37814 /* ~"그 역시 죽었소."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1
  SAY #3807 /* ~"돈. 현금. 그것도 적지 않은 액수요. 관심이 있소?"~ */
  IF ~~ THEN REPLY #34425 /* ~"그렇소."~ */ GOTO 19
  IF ~~ THEN REPLY #34426 /* ~"아니오."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #3808 /* ~"그럼 가서 그 미치광이 흑장미를 찾은 다음 저 세상으로 보내시오. 그를 죽인 후에 돌아오면 내가 보수를 주겠소."~ */
  IF ~~ THEN REPLY #34427 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #34428 /* ~크리스탈이 죽이고자 하지 않는 사람이 과연 있을까? 이제 나는 흑장미라는 자칭 정의의 사자를 찾아서 그 역시 제거해야만 한다. 그녀는 이 일의 대가로 돈과 우정을 약속했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2 18.1
  SAY #3809 /* ~그녀는 미소짓는다. "내가 당신이 승낙할 때까지 계속 귀찮게 할 것이라는 건 당신도 알고 있을 것이오. 그럼 나중에 또 봅시다."~ */
  IF ~~ THEN REPLY #34429 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #3810 /* ~"이 골목에서 흑장미를 찾아내서 없앴소?"~ */
  IF ~  !Dead("BlackR")
~ THEN REPLY #34430 /* ~"아직 아니오."~ */ GOTO 24
  IF ~  Dead("BlackR")
~ THEN REPLY #34431 /* ~"그렇소. 더 이상 놈에 대해 걱정할 필요는 없소."~ */ DO ~SetGlobal("Krystall","GLOBAL",4)
AddexperienceParty(1500)
GivePartyGold(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 17.3 21.1
  SAY #3812 /* ~그녀는 당신에게 헝겊으로 기운 묵직한 지갑을 건네준다. "레이저 앤젤스를 대표해서 당신에게 감사하겠소. 당신이 떠나도 우리는 늘 당신을 친구로 기억할 것이오."~ */
  IF ~~ THEN REPLY #34432 /* ~"물론이오. 안녕히 계시오."~ */ JOURNAL #34433 /* ~나는 흑장미를 제거한 대가로 동전이 든 주머니를 받았다. 적잖은 액수였다. ~ */ EXIT
END

IF ~  Global("Krystall","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #3814 /* ~"안녕하시오, 친구. 당신에게 사의를 표하오. 이 골목이 비록 초라하긴 하지만 당신 집처럼 생각해 주기 바라오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #34434 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #3816 /* ~"제발 해주시오. 그는 내 부하들을 말살하고 있소."~ */
  IF ~~ THEN REPLY #34435 /* ~"노력 중이오. 안녕히 계시오."~ */ EXIT
END
