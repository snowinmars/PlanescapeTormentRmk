// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBLACKR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBLACKR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2823 /* ~이 사내는 어찌나 빠른 속도로 움직이는지 한 순간도 한 곳에 완전히 머무르지 않는 것처럼 느껴진다. 그의 흐릿한 윤곽 속에서도 그의 눈은 이글거리며, 그 안에 담긴 광기가 당신 가슴을 찌른다. "당신." 그의 목소리는 마치 싸늘한 바람과도 같다. "당신 소속을 말하시오. 당신은 선이나 악의 편이오?"~ */
  IF ~~ THEN REPLY #3749 /* ~"나는 나보다 더 불행한 사람을 돕는 것이 옳다고 생각하오. 난 선을 선택하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3750 /* ~"선의 이념은 약자들은 위한 것이오. 나는 악을 선택하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3751 /* ~"어느 쪽도 아니오. 극단은 위험하오."~ */ GOTO 6
  IF ~~ THEN REPLY #3752 /* ~"당신은 누구요?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #3363 /* ~타락자 윌리엄이란 자가 있소. 그는 사악하며 교활한 자요. 그는 다크앨리 쉬브의 리더요. 그를 이 골목 안에서 찾아 죽이시오, 그러면 당신은 선에 기여하게 될 것이오. 실패하면 악이 창궐할 것이오. 거절하면 내가 당신을 죽이겠소."~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3753 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("RWill")
~ THEN REPLY #3754 /* ~"하지 않겠소. 나는 타인을 암살하지 않소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3755 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3756 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37838 /* ~"타락자 윌리엄은 이미 죽었소. 나는 그와 크리스톨 양쪽 모두를 죽였소."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #37839 /* ~"타락자 윌리엄은 이미 죽었소."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_RW","GLOBAL",3)
~ GOTO 13
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #3728 /* ~"나는 흑장미요. 나는 사냥꾼이자 기아요. 나는 천벌이오. 당신의 소속을 밝히시오."~ */
  IF ~~ THEN REPLY #3757 /* ~"나는 나보다 더 불행한 사람을 돕는 것이 옳다고 생각하오. 난 선을 선택하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_BR_1","GLOBALGood",1)
~ GOTO 1
  IF ~~ THEN REPLY #3758 /* ~"선의 이념은 약자들은 위한 것이오. 나는 악을 선택하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BR_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #3759 /* ~"어느 쪽도 아니오. 극단은 위험하오."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 1.0 5.0 7.0 7.1 7.2 7.3 13.1 15.1
  SAY #3730 /* ~"당신을 기다리겠소. 자, 가시오."~ */
  IF ~~ THEN REPLY #3760 /* ~"우선 질문할 것들이 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #3762 /* ~"떠나도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #3731 /* ~"대답은 없소. 행동만이 있을 뿐이오. 가시오."
~ */
  IF ~~ THEN REPLY #3763 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #3732 /* ~"크리스톨이란 여자가 있소. 그녀는 레이저 앤젤스의 리더요. 그녀는 이 골목을 '밝은' 곳으로 만들이 선이 어떠한 일을 이룩할 수 있는지를 보여주려고 하고 있소. 그녀를 죽이고 돌아오면 상을 주겠소. 그러나 실패하면 당신이 죽을 때까지 내가 당신을 사냥하겠소."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3764 /* ~"하겠소."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
~ THEN REPLY #3765 /* ~"나느 그렇게 생각하지 않소."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3766 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3767 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37841 /* ~"그녀와 썩은 윌리엄은 이미 죽었소."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #37843 /* ~"그녀는 이미 죽었소."~ */ DO ~AddexperienceParty(1500)
SetGlobal("BR_Krys","GLOBAL",3)
~ GOTO 15
END

IF ~~ THEN BEGIN 6 // from: 0.2 2.2
  SAY #3733 /* ~그의 눈은 이글거린다, 그러나 이내 부드러운 빛을 띤다. 그의 목소리는 뭔가를 발산하는 것처럼 들린다. "중립자. 동류. 당신은 균형에 대해 아오. 날 도와주시오. 나는 극단을 제거하오." ~ */
  IF ~~ THEN REPLY #3768 /* ~"내가 뭘 하면 되겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #3769 /* ~"나는 당신을 돕고 싶지 않소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #3734 /* ~"나는 레이저 앤젤스와 다크앨리 쉬브를 사냥하고 있소. 그들 중 하나를 선택해 그 지도자를 제거하시오."~ */
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3770 /* ~"레이저 앤젤을 처리하겠소."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3771 /* ~"나는 다크앨리 쉬브를 처리하겠소."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  !Dead("Krystall")
Dead("Rwill")
~ THEN REPLY #3772 /* ~"다크앨리 쉬브의 두목인 타락자 윌리엄은 이미 죽었소. 난 크리스톨을 죽이겠소."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Krystall")
!Dead("Rwill")
~ THEN REPLY #3773 /* ~"레이저 앤젤스의 리더인 크리스톨은 이미 죽었소. 나는 타락자 윌리엄을 죽이겠소."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3774 /* ~"그들은 둘 다 이미 죽었소."~ */ GOTO 9
  IF ~~ THEN REPLY #3775 /* ~"나는 당신을 돕고 싶지 않소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.5 11.0 13.0 14.0 15.0
  SAY #3735 /* ~그의 이글거리는 눈이 실처럼 가늘어진다, 그리고 그는 당신에게 속삭이듯 말한다. "그렇다면 당신은 적이오." 눈에 잘 보이지도 않는 빠른 동작으로 그는 당신을 공격한다!~ */
  IF ~~ THEN REPLY #3776 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3777 /* ~도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.4 5.4 7.4 11.2 14.2
  SAY #3736 /* ~"이제 우리는 우리의 철학을 수립할 것이오. 무력 대결로. 승자가 진실을 위한 우리의 항쟁에서의 진정한 승리자가 될 것이오."~ */
  IF ~~ THEN REPLY #3778 /* ~"그러리다, 하지만 난 죽을 수가 없소. 결국 당신은 패배할 것이오."~ */ DO ~AddexperienceParty(1500)
~ GOTO 10
  IF ~~ THEN REPLY #3779 /* ~"실은 당신은 미쳤소, 그렇지 않소?"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3780 /* ~싸운다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #3737 /* ~그의 눈이 휘둥그레진다. "당신은 영원이오. 따라서 당신의 진실도 영원이오. 나는 당신에게 경의를 표하오. 당신을 만난 건 내 영광이오. 부디 안녕히 가시오." ~ */
  IF ~~ THEN REPLY #3781 /* ~"안녕히 계시오."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("BR_RW","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #3738 /* ~"타락자 윌리엄은 죽였소?"~ */
  IF ~  !Dead("RWill")
~ THEN REPLY #3782 /* ~"아직 아니오.그리고 앞으로도 할 생각이 없소."~ */ GOTO 8
  IF ~  !Dead("Rwill")
~ THEN REPLY #3783 /* ~"아니오, 노력 중이오."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3784 /* ~"그렇소."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  Dead("Rwill")
!Dead("Krystall")
~ THEN REPLY #3785 /* ~"그렇소."~ */ DO ~SetGlobal("BR_RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.1 14.1
  SAY #3745 /* ~"더 빨리 일을 처리하시오. 자, 가시오. 당신을 기다리고 있겠소." 그는 팔짱을 낀다. ~ */
  IF ~~ THEN REPLY #3786 /* ~"그럼 좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 11.3
  SAY #3746 /* ~"당신의 다음 임무는 레이저 앤젤스의 리더인 크리스톨을 죽이는 것이오. 균형이 그녀의 죽음을 요구하고 있소.~ */
  IF ~~ THEN REPLY #3787 /* ~"나는 하지 않겠소."~ */ GOTO 8
  IF ~~ THEN REPLY #3788 /* ~"곧 돌아오리다."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",2)
~ GOTO 3
END

IF ~  Global("BR_Krys","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #3747 /* ~"크리스톨은 죽였소?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3790 /* ~"아직 아니오.그리고 앞으로도 할 생각이 없소."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3791 /* ~"아니오, 노력 중이오."~ */ GOTO 12
  IF ~  Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3792 /* ~"그렇소."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 9
  IF ~  !Dead("Rwill")
Dead("Krystall")
~ THEN REPLY #3793 /* ~"그렇소."~ */ DO ~SetGlobal("BR_Krys","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 5.5 14.3
  SAY #3748 /* ~"당신의 다음 임무는 다크앨리 쉬브의 리더인 타락자 윌리엄을 죽이는 것이오. 균형이 당신이 이 일을 해낼 것을 요구하고 있소."~ */
  IF ~~ THEN REPLY #3794 /* ~"나는 하지 않겠소."~ */ GOTO 8
  IF ~~ THEN REPLY #3795 /* ~"곧 돌아오리다."~ */ DO ~SetGlobal("BR_RW","GLOBAL",2)
~ GOTO 3
END
