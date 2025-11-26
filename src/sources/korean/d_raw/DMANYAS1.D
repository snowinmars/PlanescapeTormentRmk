// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANYAS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANYAS1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #10 /* Triggers after states #: 15 14 12 11 9 25 24 8 7 13 even though they appear after this state */
~  Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2955 /* ~당신은 수백의 목소리가 하나가 되어 당신의 정신에 직접 얘기하는 '소리'에 크게 놀란다. 거기에는 말과는 비교가 되지 않을 정도의 깊이와 설득력이 있다. "이 곳에 온 목적을 말하라, 양족 동물, 그리고 신속하게 진실만을 말하라. 너는 여럿이-모여-하나의 홀에 있다. 너는 우리의 자비없이는 여기서 나갈 수가 없다. 우리가 너의 마음을 읽고 너의 거짓말을 냄새 맡을 수 있다는 것을 알라."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #2956 /* ~"당신은 누구요?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38655 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38656 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38657 /* ~"당신은 누구요?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38658 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38659 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 2
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38660 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38661 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 4
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38662 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38663 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38664 /* ~허풍: "난 당신이 이걸 알고 싶어할 거라고 생각했소: 침묵의 왕은 공격하기에는 너무나도 강대하오. 죽은 자의 왕국에 가까이 가지 마시오, 시체들이 당신들을 파멸시킬 테니." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38665 /* ~"나는 당신을 만나러 왔소, 여럿이-모여-하나."~ */ GOTO 27
  IF ~~ THEN REPLY #38666 /* ~"나는 사고로 이 곳에 오게 되었소."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38667 /* ~"만약 당신이 내 마음을 읽을 수 있다면, 내가 당신에게 내 목적을 말할 필요는 없지 않소?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.4
  SAY #38668 /* ~"우리는 어두운 곳에서 지켜보는 눈들이다. 우리는 하나로 생각하는 여럿이다. 우리는 네 질문에 대답하지 않는다. 내가 우리 질문에 대답할 것이다. 인간들이 사는 밝은 회랑에서 이토록 멀리 떨어진 곳에서 너는 대체 무엇을 하고 있는가?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 188
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.5
  SAY #38669 /* ~"우리는 어두운 곳에서 지켜보는 눈들이다. 우리는 하나로 생각하는 여럿이다. 우리는 네 질문에 대답하지 않는다. 내가 우리 질문에 대답할 것이다. 인간들이 사는 밝은 회랑에서 이토록 멀리 떨어진 곳에서 너는 대체 무엇을 하고 있는가?"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 404
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.6
  SAY #38670 /* ~"우리는 어두운 곳에서 지켜보는 눈들이다. 우리는 하나로 생각하는 여럿이다. 우리는 네 질문에 대답하지 않는다. 내가 우리 질문에 대답할 것이다. 인간들이 사는 밝은 회랑에서 이토록 멀리 떨어진 곳에서 너는 대체 무엇을 하고 있는가?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 189
END

IF ~~ THEN BEGIN 4 // from: 0.3 0.7
  SAY #38671 /* ~"우리는 어두운 곳에서 지켜보는 눈들이다. 우리는 하나로 생각하는 여럿이다. 우리는 네 질문에 대답하지 않는다. 내가 우리 질문에 대답할 것이다. 대답하라, 그리고 우리가 너의 거짓말을 간파할 수 있다는 사실을 잊지 마라. 인간들이 사는 밝은 회랑에서 이토록 멀리 떨어진 곳에서 너는 대체 무엇을 하고 있는가?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38672 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38673 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38674 /* ~허풍: "난 당신이 이걸 알고 싶어할 거라고 생각했소: 침묵의 왕은 공격하기에는 너무나도 강대하오. 죽은 자의 왕국에 가까이 가지 마시오, 시체들이 당신들을 파멸시킬 테니." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38675 /* ~"나는 당신을 만나러 왔소, 여럿이-모여-하나."~ */ GOTO 27
  IF ~~ THEN REPLY #38676 /* ~"나는 사고로 이 곳에 오게 되었소."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38677 /* ~"만약 당신이 내 마음을 읽을 수 있다면, 내가 당신에게 내 목적을 말할 필요는 없지 않소?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 5 // from:
  SAY #38678 /* ~당신 머릿속의 목소리는 실제로는 아무런 소리도 나지 않음에도 불구하고 당신 귀를 멍멍하게 한다. "우리는 너와 함께 있는 자들에게 침묵하라고 명령한다. 너희는 지금 사고의 굴에 있다. 이 곳에서는 여럿이-모여-하나가 절대자다. 대답하라, 그리고 우리가 너의 거짓말을 간파할 수 있다는 사실을 잊지 마라. 어두운 터널 속에서 너는 대체 무엇을 하고 있는가?"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38679 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38680 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38681 /* ~허풍: "난 당신이 이걸 알고 싶어할 거라고 생각했소: 침묵의 왕은 공격하기에는 너무나도 강대하오. 죽은 자의 왕국에 가까이 가지 마시오, 시체들이 당신들을 파멸시킬 테니." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38682 /* ~"나는 당신을 만나러 왔소, 여럿이-모여-하나."~ */ GOTO 27
  IF ~~ THEN REPLY #38683 /* ~"나는 사고로 이 곳에 오게 되었소."~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38684 /* ~"만약 당신이 내 마음을 읽을 수 있다면, 내가 당신에게 내 목적을 말할 필요는 없지 않소?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 6 // from: 0.8 0.9 4.0 4.1 5.0 5.1 8.0 8.1
  SAY #38685 /* ~"죽은 자들은 죽게 될 것이다. 그들의 무력한 왕은 더 이상 우리에게 장애가 되지 못한다. 너는 우리에게 도움이 되었다. 정보의 대가로 우리는 네 정신 속의 장벽을 허물어 네게 네 자신을 드러내 보여주겠다. 진실과 대면할 각오를 하라."~ */
  IF ~~ THEN REPLY #38686 /* ~"기다리시오! 아직은 아니오!"~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~나는 여럿이 모여 하나에게 침묵의 왕이 아무런 힘도 없는 죽은 해골에 불과하다고 알려주었다. 그 쥐들은 이제 시길의 지하 묘지를 차지하게 될 것이다. ~ */ GOTO 16
  IF ~~ THEN REPLY #38687 /* ~"나는 이제 준비가 됐소."~ */ DO ~AddexperienceParty(7500)
SetGlobal("CR_Vic","GLOBAL",6)
~ JOURNAL #38208 /* ~나는 여럿이 모여 하나에게 침묵의 왕이 아무런 힘도 없는 죽은 해골에 불과하다고 알려주었다. 그 쥐들은 이제 시길의 지하 묘지를 차지하게 될 것이다. ~ */ GOTO 16
END

IF WEIGHT #1 /* Triggers after states #: 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #38690 /* ~"감히 여기 다시 나타났는가, 양족 동물 ? 너는 경솔하다. 각오를 해라."~ */
  IF ~~ THEN REPLY #38691 /* ~싸운다.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 13 even though they appear after this state */
~  GlobalGT("CR_Vic","GLOBAL",0)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 8 // from: 35.9 36.7 37.7 40.2
  SAY #38692 /* ~"네가 아는 것을 우리에게 말하라, 양족 동물."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38693 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38694 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 6
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38695 /* ~허풍: "침묵의 왕은 너무나도 강대하오. 죽은 자의 왕국에 가까이 가지 마시오, 아니면 시체들이 당신들을 파멸시킬 테니."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38696 /* ~"아직 아무런 정보도 얻지 못했소."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66547 /* ~"굴들이 난동을 일으켜 죽은 자의 왕국을 휩쓸었소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #5 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Ghoul_Attack","GLOBAL",1)
Global("Ghoul_Attack","GLOBAL",1)
GlobalGT("CR_Vic","GLOBAL",0)
!Global("CR_Vic","GLOBAL",2)
GlobalLT("CR_Vic","GLOBAL",5)
~ THEN BEGIN 9 // from: 8.4 24.4 25.4
  SAY #38697 /* ~"굴들은 내 위어랫 부하들조차 대적할 수 없을 정도로 강하다. 너의 임무는 실패하였다. 우리는 더 이상 네 도움이 필요없다. 당장 이 곳을 떠나라. 아니면 대가를 치르게 될 것이다."~ */
  IF ~~ THEN REPLY #38698 /* ~"날 그렇게 헌신짝처럼 버릴 거요?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #38699 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
AddexperienceParty(7500)
SetGlobal("Mao_warn","GLOBAL",1)
~ JOURNAL #38207 /* ~굴들은 죽은 자의 왕국을 휩쓸었고, 때문에 크래니움 랫들이 그 곳에 교두보를 확보하기는 어렵게 되었다. 그들은 나를 자신들의 소굴로부터 추방하고 만약 내가 돌아오면 비참한 최후를 맞이하게 될 것이라고 경고하였다. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 12.0 14.0 26.0
  SAY #38789 /* ~"그렇다. 우리가 우리의 힘을 침묵의 왕에게 낭비하지 않아도 된다면 우리는 너의 나약한 자아를 파괴하기에 충분한 여력이 있다. 가라. 돌아오지 말라."~ */
  IF ~~ THEN REPLY #38859 /* ~"아니오."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38860 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("CR_Vic","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #38790 /* ~"우리는 이미 네게 경고했다, 양족 동물. 영원한 경계선을 넘을 각오를 하라."~ */
  IF ~~ THEN REPLY #38861 /* ~"대화로 해결합시다!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38862 /* ~싸운다.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 25 24 13 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",5)
~ THEN BEGIN 12 // from:
  SAY #38791 /* ~"우리의 대리인이 네 심부름에 대해 말했다. 너는 침묵의 왕이 너무나도 강하다고 말하고 있다. 우리는 네 마음 속에서 거짓말을 발견할 수가 없다. 우리는 선물로서 네가 목숨을 부지한 채 사고의 굴에서 나갈 수 있게 해주겠다. 너는 나름대로 쓸모가 있었다."~ */
  IF ~~ THEN REPLY #38863 /* ~"날 그렇게 헌신짝처럼 버릴 거요?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~나는 여럿이 모여 하나에게 침묵의 왕이 그가 덤비기에는 너무 강대하다고 말했다. 크래니움 랫들의 정신적 집합체는 내 거짓말을 알아채지는 못했으나, 내가 다시 사고의 굴로 돌아오면 고통스런 죽음을 맞이할 거라고 경고했다. 그건 두고봐야 알 일이지. ~ */ GOTO 10
  IF ~~ THEN REPLY #38864 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38206 /* ~나는 여럿이 모여 하나에게 침묵의 왕이 그가 덤비기에는 너무 강대하다고 말했다. 크래니움 랫들의 정신적 집합체는 내 거짓말을 알아채지는 못했으나, 내가 다시 사고의 굴로 돌아오면 고통스런 죽음을 맞이할 거라고 경고했다. 그건 두고봐야 알 일이지. ~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("MAO_Warn","GLOBAL",0)
GlobalLT("MAO_Warn","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #38792 /* ~"우리는 이미 네게 경고했다, 양족 동물. 영원한 경계선을 넘을 각오를 하라."~ */
  IF ~~ THEN REPLY #38865 /* ~"대화로 해결합시다!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #38866 /* ~싸운다.~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 14 // from:
  SAY #38793 /* ~"우리의 대리인의 정신이 네 비밀에 대해 말해주고 있다. 이제 우리는 침묵의 왕의 진실을 안다. 우리는 이 정보에 대해 감사한다..." 당신 머릿속의 목소리는 한층 험악한 어조로 얘기를 계속한다. "...그래서 우리는 너에게 네가 죽인 우리 동포에 대한 보복을 하지 않도록 하겠다. 너는 당장 이 곳을 떠나야 한다. 그리고 사고의 굴로 절대로 돌아와서는 안 된다. 가라, 양족 동물. 너는 더 이상 필요가 없다."~ */
  IF ~~ THEN REPLY #38867 /* ~"날 그렇게 헌신짝처럼 버릴 거요? 내가 당신을 위해 그렇게 많은 공을 세웠는데도?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~나는 여럿이 모여 하나에게 침묵의 왕은 별 위협이 되지 못한다고 말했다. 하지만 내가 크래니움 랫을 한두 마리 죽였다고 해서 내 목숨을 살려주는 것 외에는 아무런 상도 주지 않았다. 쥐들, 난 놈들이 정말 싫다.~ */ GOTO 10
  IF ~~ THEN REPLY #38868 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38869 /* ~나는 여럿이 모여 하나에게 침묵의 왕은 별 위협이 되지 못한다고 말했다. 하지만 내가 크래니움 랫을 한두 마리 죽였다고 해서 내 목숨을 살려주는 것 외에는 아무런 상도 주지 않았다. 쥐들, 난 놈들이 정말 싫다.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 25 24 even though they appear after this state */
~  Global("Know_Mantuok","GLOBAL",1)
Global("CR_Vic","GLOBAL",4)
Global("RatWarren","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #38794 /* ~"우리의 대리인의 정신이 네 비밀에 대해 말해주고 있다. 이제 우리는 침묵의 왕의 진실을 안다. 너는 우리에게 도움이 되었다. 우리는 네 정신 속의 장벽을 허물어 네게 네 자신을 드러내 보여주겠다."~ */
  IF ~~ THEN REPLY #38875 /* ~"기다리시오! 아직은 아니오!"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
  IF ~~ THEN REPLY #38876 /* ~"나는 이제 준비가 됐소."~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.1 15.0 15.1 59.0
  SAY #38795 /* ~당신은 당신 머릿속을 짓누르는 압력이 한층 더 강해짐을 느낀다. 마치 수천 마리의 꿈틀리는 작은 생물들이 당신 정신 속의 벽을 미는 것 같다. 본능적으로 당신은 저항한다, 그러나 영겁처럼 생각되는 시간이 흐른 후에는 압력이 너무나도 강해져 검은 기억의 물결이 당신 정신의 방벽을 무너뜨리고 밀려나온다.~ */
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #67715 /* ~포기한다.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #67718 /* ~포기한다.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,2000)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #38796 /* ~당신은 모든 것이 사슬로 만들어진 도시에서 달리고 있다. 그 도시의 건물, 거리, 하수구, 그리고 배관은 모두 서로 연결된 금속 가닥들이다. 당신이 검은 은으로 빽빽하게 짜여진 거미줄 위를 딸랑딸랑 소리룰 내며 나아갈 동안에 당신 위의 핏빛 밤하늘은 사악하게 빛나고 있다. 당신은 어깨 너머로 뒤쪽을 흘긋 보며 추격자를 따돌리는 데 성공했기를 간절히 바란다. 다행히 아무 것도 보이지 않는다. 당신이 고개를 앞으로 돌리자...~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #38880 /* ~(계속한다)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 18
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #38881 /* ~(계속한다)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 20
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #38882 /* ~(계속한다)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 21
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #38797 /* ~...당신 앞에 머리부터 발가락 끝까지 사슬로 뒤덮인 생명체가 그 가면 아래서 미친 듯이 싱긋 웃으면서 조용히 서 있다. 그것의 내민 손으로부터는 사슬 하나가 뱀처럼 튀어나와 당신 발목을 감는다. 당신 왼쪽의 벽으로부터의 또 다른 일격은 당신 손목에 상처를 낸다. 당신은 공중에서 그것을 낚아채 능숙하게 고리 모양으로 만든 후, 던져서 당신 적의 목을 휘감는다. 당신이 사슬을 힘을 주어 잡아당기자 그 생물의 척추가 부서지는 소리가 들린다... 그러나 잠시 후 비슷한 괴물들이 떼를 지어 몰려와 당신에게 딸랑거리는 사슬들을 퍼붓는다. 당신은 몸부림쳐서 기억으로부터 벗어난다. ~ */
  IF ~~ THEN REPLY #38883 /* ~(계속한다)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0 21.0
  SAY #38798 /* ~"너는 원하는 답을 얻었다." 여럿이-모여-하나의 목소리는 힘을 너무 들인 탓인지 피로한 듯하다. "우리 사이의 거래는 끝났다. 우리는 더 이상 너와 상대할 필요가 없다. 만약 네가 이 곳에 다시 온다면 우리는 너를 파멸시킬 것이다."~ */
  IF ~~ THEN REPLY #38884 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #38799 /* ~...당신 앞에 머리부터 발가락 끝까지 사슬로 뒤덮인 생명체가 그 가면 아래서 미친 듯이 싱긋 웃으면서 조용히 서 있다. 그것의 내민 손으로부터는 사슬 하나가 뱀처럼 튀어나와 당신 발목을 감는다. 당신 왼쪽의 벽으로부터의 또 다른 일격은 당신 손목에 상처를 낸다. 당신은 몸을 비틀어 발에 감긴 사슬로부터 벗어난다, 그리고 다른 사슬을 피한다. 당신의 동작에는 일정한 패턴이 없으나 그 괴물이 계속해서 던지는 사슬들을 가볍게 회피한다. 당신은 기민한 동작으로 순식간에 괴물에게 접근해 그것의 두 눈을 당신의 양쪽 엄지 손가락으로 찔러 뇌까지 관통시킨다... 그리고 괴물의 동족들이 떼를 지어 몰려와 당신에게 딸랑거리는 사슬들을 퍼붓는다. 당신은 몸부림쳐서 기억으로부터 벗어난다. ~ */
  IF ~~ THEN REPLY #38886 /* ~(계속한다)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 17.2
  SAY #38800 /* ~...당신 앞에 머리부터 발가락 끝까지 사슬로 뒤덮인 생명체가 그 가면 아래서 미친 듯이 싱긋 웃으면서 조용히 서 있다. 그것의 내민 손으로부터는 사슬 하나가 튀어나와 당신의 목을 노린다. 당신은 물결치는 화염으로 그것을 융해시키고, 그 주인이 비명을 지르면서 불타고 녹도록 만든다. 당시는 그 광경을 잠시 바라본다, 그러나 그 때 당신 뒤에서 괴물의 동족들이 킥킥거리는 소리가 들린다. 그들은 딸랑거리는 사슬로 당신을 물샐틈없이 에워싼다, 그리고 사방이 어두워진다. 당신은 몸부림쳐서 기억으로부터 벗어난다. ~ */
  IF ~~ THEN REPLY #38887 /* ~(계속한다)~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 19
END

IF WEIGHT #11 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 22 // from:
  SAY #38801 /* ~수천 명이 동시에 말하는 듯한 목소리가 당신 머릿속에서 울려 퍼진다. 엄청난 분노와 그것을 가까스로 억누르고 있는 자제력이 마치 격류처럼 수면 아래서 요동치고 있는 곳 같다. "살인자. 이 곳에 온 목적을 말하라."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38890 /* ~"당신은 누구요?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38891 /* ~"당신은 누구요?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38892 /* ~"당신은 누구요?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38893 /* ~"당신은 누구요?"~ */ GOTO 56
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38894 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 53
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38895 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 54
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38896 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 55
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38897 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 57
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38898 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38899 /* ~"난 당신이 이 사실을 알고 싶어할 거라고 생각했소: 침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소." ~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #38900 /* ~"왜 나를 '살인자'라고 부르는 거요?"~ */ GOTO 60
  IF ~~ THEN REPLY #38901 /* ~"나는 이 곳에는 아무런 용건도 없소. 그렇지 않아도 떠나려던 참이었소."~ */ GOTO 28
END

IF WEIGHT #12 /* Triggers after states #: 25 24 even though they appear after this state */
~  GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 23 // from:
  SAY #38802 /* ~수천 명이 고통으로 신음하는 듯한 목소리가 당신 머릿속에서 울려 퍼진다. 목소리는 엄청난 분노를 가까스로 억누르고 있는 것처럼 들린다. "살인자... 우리의 영토를 떠나라. 우리는 더 이상 너와 싸우는 것을 원하지 않는다. 만약 우리를 위해 일을 해준다면 우리도 너를 도와줄 수 있다. 그러면 우리는 평화적으로 각자 갈 길을 갈 수 있을 것이다."~ */
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38902 /* ~"당신은 누구요?"~ */ GOTO 70
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #38903 /* ~"당신은 누구요?"~ */ GOTO 71
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38904 /* ~"당신은 누구요?"~ */ GOTO 72
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #38905 /* ~"당신은 누구요?"~ */ GOTO 73
  IF ~~ THEN REPLY #38906 /* ~"왜 나를 '살인자'라고 부르는 거요?"~ */ GOTO 35
  IF ~~ THEN REPLY #38907 /* ~"내가 무슨 일을 해주기를 원하오?"~ */ GOTO 35
  IF ~~ THEN REPLY #38908 /* ~"실은 난 당신들을 말살하러 왔소." ~ */ GOTO 75
  IF ~~ THEN REPLY #38909 /* ~"생각해 보겠소."~ */ GOTO 76
END

IF WEIGHT #3 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN BEGIN 24 // from: 35.7 36.5 37.5 40.0
  SAY #38803 /* ~"네가 아는 것을 말하라, 살인자."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38910 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38911 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38912 /* ~허풍: "침묵의 왕은 너무나도 강대하오. 죽은 자의 왕국에 가까이 가지 마시오, 아니면 시체들이 당신들을 파멸시킬 테니."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38913 /* ~"아직은 아무런 성과도 없소."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66548 /* ~"굴들이 난동을 일으켜 죽은 자의 왕국을 휩쓸었소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF WEIGHT #4 ~  GlobalGT("CR_Vic","GLOBAL",0)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN BEGIN 25 // from: 35.8 36.6 37.6 40.1
  SAY #38804 /* ~"네가 아는 것을 말하라, 학살자."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38914 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #38915 /* ~"침묵의 왕은 죽은 스켈레톤에 불과하오. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38916 /* ~허풍: "침묵의 왕은 너무나도 강대하오. 죽은 자의 왕국에 가까이 가지 마시오, 아니면 시체들이 당신들을 파멸시킬 테니."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
~ GOTO 26
  IF ~~ THEN REPLY #38917 /* ~"아직은 아무런 성과도 없소."~ */ GOTO 30
  IF ~  Global("Ghoul_Attack","GLOBAL",1)
~ THEN REPLY #66549 /* ~"굴들이 난동을 일으켜 죽은 자의 왕국을 휩쓸었소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",3)
~ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 0.10 4.2 5.2 8.2 24.2 25.2
  SAY #38805 /* ~"죽은 자의 왕은 언제든지 우리와 상대할 준비가 되어 있다?" 쥐들의 정신의 목소리는 잠시 대화를 중단한다. "너의 마음 속에서 거짓은 보이지 않는다. 감사의 표시로 우리는 널 산 채로 우리 굴의 지하에 던져 우리 아이들의 영원한 먹이로 삼으려던 생각은 버리도록 하겠다. 우리들의 영토를 떠나라, 그리고 다시는 돌아오지 말라."~ */
  IF ~~ THEN REPLY #38918 /* ~"날 그렇게 헌신짝처럼 버릴 거요?"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~나는 여럿이 모여 하나에게 침묵의 왕이 그가 덤비기에는 너무 강대하다고 말했다. 크래니움 랫들의 정신적 집합체는 내 거짓말을 알아채지는 못했으나, 내가 다시 사고의 굴로 돌아오면 고통스런 죽음을 맞이할 거라고 경고했다. 그건 두고봐야 알 일이지. ~ */ GOTO 10
  IF ~~ THEN REPLY #38919 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",1)
AddexperienceParty(7500)
~ JOURNAL #38870 /* ~나는 여럿이 모여 하나에게 침묵의 왕이 그가 덤비기에는 너무 강대하다고 말했다. 크래니움 랫들의 정신적 집합체는 내 거짓말을 알아채지는 못했으나, 내가 다시 사고의 굴로 돌아오면 고통스런 죽음을 맞이할 거라고 경고했다. 그건 두고봐야 알 일이지. ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 0.11 4.3 5.3
  SAY #38806 /* ~"너는 거짓말을 하고 있다.
우리는 너희 족속과 교류를 하지 않는다. 
그럴 필요도 그럴 생각도 없다.
우리는 네가 넝마주이들의 마을에서 절름발이 왕과 얘기하는 것을 보았다. 너는 첩자다. 너는 자객이다."
~ */
  IF ~~ THEN REPLY #38920 /* ~"그렇소. 난 언제나 가장 높은 가격을 부르는 사람 편이오."~ */ GOTO 32
  IF ~~ THEN REPLY #38921 /* ~"아니오."~ */ GOTO 45
END

IF ~~ THEN BEGIN 28 // from: 0.12 4.4 5.4 22.11 57.3 58.3
  SAY #38807 /* ~"여기는 여럿이-모여-하나의 영역이다.
너는 침입자다.
우리의 왕국은 비밀이다.
우리는 네 입을 막아야겠다."
~ */
  IF ~~ THEN REPLY #38922 /* ~"비밀은 지키겠소."~ */ GOTO 31
  IF ~~ THEN REPLY #38923 /* ~"어디 한 번 해보시오."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 0.13 4.5 5.5 45.0 46.2
  SAY #38808 /* ~"우리는 네 마음을 읽을 수가 있다, 양족 동물. 우리를 시험할 생각은 마라.~ */
  IF ~~ THEN REPLY #38924 /* ~"아니. 난 이름을 하나 생각하고 있소. 내게 그것이 무엇인지 말해 보시오." 생각한다: 파로드~ */ GOTO 47
  IF ~  Global("AR0302_Visited","GLOBAL",1)
~ THEN REPLY #38925 /* ~"아니. 난 이름을 하나 생각하고 있소. 내게 그것이 무엇인지 말해 보시오." 생각한다: 해수 및 질병 관리국~ */ GOTO 47
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38926 /* ~"아니. 난 이름을 하나 생각하고 있소. 내게 그것이 무엇인지 말해 보시오." 생각한다: 침묵의 왕~ */ GOTO 47
  IF ~~ THEN REPLY #38927 /* ~"아니. 난 이름을 하나 생각하고 있소. 내게 그것이 무엇인지 말해 보시오." 생각한다: 걸어다니는 시체~ */ GOTO 47
  IF ~~ THEN REPLY #64641 /* ~"아니. 난 어떤 이름을 생각하고 있소. 내게 그것이 무엇인지 말해보시오." 생각한다: 문지기 바~ */ GOTO 47
END

IF ~~ THEN BEGIN 30 // from: 8.3 24.3 25.3
  SAY #38809 /* ~"그럼 꺼져라. 네가 우리가 원하는 답을 가져올 때까지 너는 우리에게 아무런 필요도 없으며, 네 질문에 대답해주지도 않겠다."~ */
  IF ~~ THEN REPLY #38928 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0
  SAY #38810 /* ~"그렇다.
그렇게 하라."
~ */
  IF ~~ THEN REPLY #38929 /* ~"그게 무슨 뜻이오?"~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38930 /* ~"만약 당신이 날..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 51.0
  SAY #38811 /* ~정신 집합체는 이 정보를 소화하느라 잠시 대화를 멈춘다.
"설명하라."
~ */
  IF ~~ THEN REPLY #38931 /* ~"내 말은 우린 서로를 도울 수 있다는 뜻이오."~ */ GOTO 33
  IF ~~ THEN REPLY #38932 /* ~"당신은 내 말뜻을 알 거요. 내게는 당신에게 쓸모가 있는 기술이 있소. 당신에게는 날 도울 수 있는 힘이 있소."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #38812 /* ~"그러한 거래에는 대가가 따르는 법이다.
그러한 거래는 신뢰를 필요로 한다.
우리는 너를 믿지 않는다.
우리를 납득시켜 봐라, 양족 동물."
~ */
  IF ~~ THEN REPLY #38933 /* ~"어떻게 하면 당신을 납득시킬 수 있겠소?"~ */ GOTO 35
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38934 /* ~"납득시켜? 난 당신을 납득시킬 필요가 없소. 나를 신용하든지, 아니면 관두시오."~ */ GOTO 38
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38935 /* ~"당신들이 내게 대체 뭘 줄 수 있겠소?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38936 /* ~"당신들이 내게 대체 뭘 줄 수 있겠소?"~ */ GOTO 39
  IF ~~ THEN REPLY #38937 /* ~"내 제의는 없었던 일로 해주시오. 난 떠나겠소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4 35.4 36.2 37.3 39.1 41.0 51.1 56.3 73.4
  SAY #38813 /* ~"널 그냥 보내 준다? 그럴 수는 없다."~ */
  IF ~~ THEN REPLY #38938 /* ~"나는 지금 당장 당신들 모두를 죽일 수도 있소, 그리고 당신들은 날 멈출 수 없소. 난 죽을 수가 없으니까."~ */ GOTO 42
  IF ~~ THEN REPLY #38939 /* ~"어디 날 막아 보시지."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("CR_Vic","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.4 23.5 33.0 45.1 65.0 66.0 67.0 68.0
  SAY #38814 /* ~"네가 신뢰할 수 있는 자라는 것을 입증하라.
걸어다니는 시체들의 왕국으로 가라
침묵의 왕을 죽여라.
그를 죽여라.
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38941 /* ~허풍: "누구?"~ */ GOTO 36
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38942 /* ~"누구?"~ */ GOTO 36
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38943 /* ~"당신들이 내게 대체 뭘 줄 수 있겠소?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38944 /* ~"당신들이 내게 대체 뭘 줄 수 있겠소?"~ */ GOTO 39
  IF ~~ THEN REPLY #38945 /* ~"난 그렇게 생각하지 않소. 그만 떠나겠소."~ */ GOTO 34
  IF ~~ THEN REPLY #38946 /* ~"왜 당신이 직접 하지 않소?"~ */ GOTO 52
  IF ~~ THEN REPLY #38947 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38871 /* ~크래니움 랫들의 정신적 집합체인 여럿이 모여 하나는 내게 죽은 자의 왕국에 있는 침묵의 왕을 죽여달라고 부탁했다. 나는 그러기로 했다.  일을 마친 후에는 여럿이 모여 하나에게 돌아와 보고를 해야 한다. ~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64635 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64636 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64642 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1 48.0
  SAY #38815 /* ~"걸어다니는 시체들은 우리가 볼 수 없는 곳에서 사는 왕에 의해 지배되고 있다.
그들을 말살하기 위해서는 그를 죽여야만 한다..
그는 우리에게 있어 수수께끼다.
우리는 그를 본 적이 없다.
그는 죽어야만 한다.
~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38948 /* ~"당신들이 내게 대체 뭘 줄 수 있겠소?"~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38949 /* ~"당신들이 내게 대체 뭘 줄 수 있겠소?"~ */ GOTO 39
  IF ~~ THEN REPLY #38950 /* ~"난 그렇게 생각하지 않소. 그만 떠나겠소."~ */ GOTO 34
  IF ~~ THEN REPLY #38953 /* ~"왜 당신이 직접 하지 않소?"~ */ GOTO 52
  IF ~~ THEN REPLY #38954 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38872 /* ~크래니움 랫들의 정신적 집합체인 여럿이 모여 하나는 내게 죽은 자의 왕국에 있는 침묵의 왕을 죽여달라고 부탁했다. 나는 그러기로 했다.  일을 마친 후에는 여럿이 모여 하나에게 돌아와 보고를 해야 한다. ~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64637 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64638 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64670 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 37 // from: 33.2 35.2 36.0 38.0
  SAY #38816 /* ~"우리는 네게 제공할 수 있는 것들이 많다.
안전한 통행.
네 친구들의 목숨.
~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #38955 /* ~"고작 그 정도요? 그 이상의 것을 제시해야 할 거요."~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #38956 /* ~"좋소. 당신이 내게 줄 수 있는 것이 그거라면 그대로 받아들일 수밖에. 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #38957 /* ~"그거면 되겠소... 흥, 난 이 사람들이 어떻게 되는 관심도 없는데."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_MaO_1","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #38958 /* ~"미안하지만 받아들일 수 없소. 그만 떠나겠소."~ */ GOTO 34
  IF ~~ THEN REPLY #38959 /* ~"좋소. 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38873 /* ~크래니움 랫들의 정신적 집합체인 여럿이 모여 하나는 내게 죽은 자의 왕국에 있는 침묵의 왕을 죽여달라고 부탁했다. 나는 그러기로 했다.  일을 마친 후에는 여럿이 모여 하나에게 돌아와 보고를 해야 한다. ~ */ GOTO 40
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #64639 /* ~"나는 침묵의 왕의 비밀을 알고 있소."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64640 /* ~"나는 침묵의 왕의 비밀을 알고 있소."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64671 /* ~"나는 침묵의 왕의 비밀을 알고 있소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 38 // from: 33.1
  SAY #38817 /* ~"너는 신뢰할 수가 없다.
네 말이 사실이라면 너는 자신을 고용한 자를 배신하고 있는 것이다."
~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #38960 /* ~"그럴지도. 하지만 당신은 내 노고에 대한 대가로 내게 뭘 줄것인가에 대해 언급하지 않았소."~ */ GOTO 37
  IF ~  NumInParty(1)
~ THEN REPLY #38961 /* ~"그럴지도. 하지만 당신은 내 노고에 대한 대가로 내게 뭘 줄것인가에 대해 언급하지 않았소."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 33.3 35.3 36.1 38.1
  SAY #38818 /* ~"우리는 안전한 통행을 약속할 수 있다.
자유.
그 이상을 줄 수도 있다.
~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #38962 /* ~"그래, 아마 더. 계속하시오."~ */ GOTO 41
  IF ~~ THEN REPLY #38963 /* ~"미안하지만 받아들일 수 없소. 그만 떠나겠소."~ */ GOTO 34
  IF ~~ THEN REPLY #38964 /* ~"왜 당신이 직접 하지 않소?"~ */ GOTO 52
  IF ~~ THEN REPLY #38965 /* ~"좋소. 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38874 /* ~크래니움 랫들의 정신적 집합체인 여럿이 모여 하나는 내게 죽은 자의 왕국에 있는 침묵의 왕을 죽여달라고 부탁했다. 나는 그러기로 했다.  일을 마친 후에는 여럿이 모여 하나에게 돌아와 보고를 해야 한다. ~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 35.6 36.4 37.1 37.4 39.3 41.2 43.0 52.0
  SAY #38819 /* ~"우리의 명령을 듣기로 한 것은 현명한 판단이다.
죽은 자들의 왕국으로 가라.
그들의 조용한 지배자를 죽여라
그리고 나서 돌아오면 보수에 대해 얘기하도록 하겠다. 
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalLT("RatWarren","GLOBAL",5)
GlobalGT("RatWarren","GLOBAL",0)
~ THEN REPLY #38966 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
GlobalGT("RatWarren","GLOBAL",4)
~ THEN REPLY #64672 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 25
  IF ~  Global("Silent_King","GLOBAL",1)
Global("RatWarren","GLOBAL",0)
~ THEN REPLY #64673 /* ~"나는 전에 그 곳에 가본 적이 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #64674 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.0 37.2 39.0
  SAY #38820 /* ~"우리에게는 제공할 수 있는 것들이 이미 얘기한 것 이외에도 많다.
비밀.
부.
마법.
이 무덤의 사자들은 죽었을 때 많은 것을 남겼다.
~ */
  IF ~~ THEN REPLY #38967 /* ~"난 그렇게 생각하지 않소. 난 떠나겠소."~ */ GOTO 34
  IF ~~ THEN REPLY #38968 /* ~"왜 당신이 직접 하지 않소?"~ */ GOTO 52
  IF ~~ THEN REPLY #38969 /* ~"좋소. 내가 무슨 일을 해야 하오?"~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38970 /* ~크래니움 랫들의 정신적 집합체인 여럿이 모여 하나는 내게 죽은 자의 왕국에 있는 침묵의 왕을 죽여달라고 부탁했다. 나는 그러기로 했다.  일을 마친 후에는 여럿이 모여 하나에게 돌아와 보고를 해야 한다. ~ */ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 34.0 50.0
  SAY #38821 /* ~"너는 틀렸다. 네 목숨은 우리 손에 달려 있다.
우리가 널 일순에 죽일 수는 없을지도 모른다.
그러나 우리는 네가 죽여 달라고 비명을 지르도록 만들 수 있다.
우리는 너를 땅 속 깊은 곳에 생매장할 수 있다.
우리는 널 영원히 타오르는 불 속에 집어넣을 수도 있다. 
우리는 네가 사랑하는 모든 것들을 없앨 수 있다.
우리는 모든 곳에 존재한다.
너도 우리들 모두를 막을 수는 없다." 
~ */
  IF ~~ THEN REPLY #38971 /* ~"그렇다면 우린 서로 합의를 볼 수도 있을 것 같소."~ */ GOTO 43
  IF ~~ THEN REPLY #38972 /* ~"난 한 번 해볼 생각이오. 죽어라, 쥐새끼들아!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 74.1 76.0 78.1 79.0
  SAY #38822 /* ~"죽은 자들의 왕국으로 가라.
그들의 조용한 지배자를 죽여라
임무를 완수하면 여기로 돌아오라."
~ */
  IF ~~ THEN REPLY #38973 /* ~"받아들이겠소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~크래니움 랫들의 정신적 집합체인 여럿이 모여 하나는 내게 죽은 자의 왕국에 있는 침묵의 왕을 죽여달라고 부탁했다. 나는 그러기로 했다.  일을 마친 후에는 여럿이 모여 하나에게 돌아와 보고를 해야 한다. ~ */ GOTO 40
  IF ~~ THEN REPLY #38974 /* ~"왜 당신이 직접 하지 않소?"~ */ GOTO 52
  IF ~~ THEN REPLY #38975 /* ~"어림없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.2 48.1 52.1
  SAY #38823 /* ~"그럼 넌 죽을 것이다, 양족 동물."~ */
  IF ~~ THEN REPLY #38978 /* ~"날 죽이려고 시도해보시오."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 27.1
  SAY #38824 /* ~"거짓말!"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38979 /* ~"내 마음을 들여다봐서 내가 거짓말을 하는지 확인해보시오. 아니면 당신은 내 마음을 들여다볼 수가 없는 거요?"~ */ GOTO 29
  IF ~~ THEN REPLY #38980 /* ~"어떻게 하면 내가 거짓말을 하지 않는다는 걸 입증할 수 있겠소?"~ */ GOTO 35
  IF ~~ THEN REPLY #38981 /* ~"아니오."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #38825 /* ~"그렇다. 너는 우리들로부터 진실을 숨길 수가 없다. 우리는 네가 왜 이 곳에 왔는지 안다. 자신을 방어하라, 양족 동물, 너는 이제 곧 죽을 것이다."~ */
  IF ~~ THEN REPLY #38982 /* ~"기디리시오! 대화로 해결합시다!."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38983 /* ~"당신만 준비가 되면 난 언제든지 OK요..."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #38984 /* ~"내 마음을 들여다봐서 내가 거짓말을 하는지 확인해보시오. 아니면 당신은 내 마음을 들여다볼 수가 없는 거요?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 47 // from: 29.0 29.1 29.2 29.3 29.4
  SAY #38826 /* ~잠시 정적이 흐른다. 그리고: "침묵의 왕이 널 보냈다."~ */
  IF ~~ THEN REPLY #38985 /* ~"맞았소. 나는 당신으로부터 내 생각을 숨길 수 없는 모양이오."~ */ GOTO 48
  IF ~~ THEN REPLY #38986 /* ~"툴렸소."~ */ GOTO 49
  IF ~~ THEN REPLY #38987 /* ~"당신은 내 마음을 읽을 수가 없소. 왜 그런 거요?"~ */ GOTO 50
  IF ~  Global("Silent_King","GLOBAL",0)
~ THEN REPLY #38988 /* ~"침묵의 왕? 누구?"~ */ GOTO 49
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #38989 /* ~허풍: "침묵의 왕? 누구?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #38827 /* ~"우리가 말한 대로다, 양족 동물. 너의 정신의 벽이 높기는 하나 우리는 어떠한 장벽도 허물 수가 있다. 자: 우리는 네게 시킬 일이 있다."~ */
  IF ~~ THEN REPLY #38990 /* ~"뭐요?"~ */ GOTO 36
  IF ~~ THEN REPLY #38991 /* ~"어림없소."~ */ GOTO 44
END

IF ~~ THEN BEGIN 49 // from: 47.1 47.3 47.4
  SAY #38828 /* ~"너는 네 주인에 대해 아무 것도 모르는 척 하려고 하는가? 너를 죽이겠다, 양족 동물."~ */
  IF ~~ THEN REPLY #38992 /* ~"당신은 내 생각을 읽을 수가 없군."~ */ GOTO 50
  IF ~~ THEN REPLY #38993 /* ~"어디 해보시오."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.2 49.0
  SAY #38829 /* ~목소리는 공포에 질린 듯하다. "네 정신은 우리가 침입할 수 없을지도 모른다. 하지만 너도 다른 생물들처럼 죽을 수가 있다."~ */
  IF ~~ THEN REPLY #38994 /* ~"아니, 난 죽을 수가 없소. 난 당신들 모두를 죽일 수가 있으나 당신들은 날 저지할 수 없소."~ */ GOTO 42
  IF ~~ THEN REPLY #38995 /* ~"왜 내 마음을 읽지 못하는 거요?"~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #38830 /* ~"우리는 알지 못한다.
그래서 너는 위험한 존재이다.
위협/위험/자객... 탐지 불가.
~ */
  IF ~~ THEN REPLY #38996 /* ~"그렇다면 우린 서로 합의를 볼 수도 있을 것 같소."~ */ GOTO 32
  IF ~~ THEN REPLY #38997 /* ~"날 보내주면 당신들을 더 이상 괴롭히지 않겠소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 52 // from: 35.5 36.3 39.2 41.1 43.1
  SAY #38831 /* ~"죽은 자들은... 철저한 방전 태세를 취하고 있어 해치기 어렵다. 그들의 침묵의 왕은 수수께끼다. 우리는 그러한 수수께끼를 좋아하지 않는다. 우리는 의심의 여지 없이 성공할 수 있을 때 공격한다. 침묵의 왕은 우리로 하여금 의심하게 만든다."~ */
  IF ~~ THEN REPLY #38998 /* ~"받아들이겠소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",1)
~ JOURNAL #38977 /* ~크래니움 랫들의 정신적 집합체인 여럿이 모여 하나는 내게 죽은 자의 왕국에 있는 침묵의 왕을 죽여달라고 부탁했다. 나는 그러기로 했다.  일을 마친 후에는 여럿이 모여 하나에게 돌아와 보고를 해야 한다. ~ */ GOTO 40
  IF ~~ THEN REPLY #38999 /* ~"어림없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",2)
~ GOTO 44
END

IF ~~ THEN BEGIN 53 // from: 22.0 22.4
  SAY #38832 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다.
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 190
END

IF ~~ THEN BEGIN 54 // from: 22.1 22.5
  SAY #38833 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다.
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 405
END

IF ~~ THEN BEGIN 55 // from: 22.2 22.6
  SAY #38834 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다.
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 56 // from: 22.3
  SAY #38835 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다.
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39009 /* ~"나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39010 /* ~"나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39011 /* ~"왜 나를 '살인자'라고 부르는 거요?"~ */ GOTO 60
  IF ~~ THEN REPLY #39012 /* ~"나는 이 곳에는 아무런 용건도 없소. 그렇지 않아도 떠나려던 참이었소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 57 // from: 22.7
  SAY #38836 /* ~"너는 사고의 굴에 와 있다. 너는 여럿이-모여-하나의 영토 안에 있다. 너는 죽을 것이다, 살인자."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39013 /* ~"하지만 나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39014 /* ~"하지만 나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39015 /* ~"왜? 그리고 왜 나를 '살인자'라고 부르는 거요?"~ */ GOTO 60
  IF ~~ THEN REPLY #39017 /* ~"하지만 난 여기에 사고로 우연히 왔소."~ */ GOTO 28
END

IF ~~ THEN BEGIN 58 // from:
  SAY #38837 /* ~"조용하라! 우리는 흉터 있는 자와 얘기하고 있다. 
한 마디라도 더 하면 우리는 너를 말살하겠다. 너는 지금 사고의 굴 안에 있다... 그리고 너는 우리의 분노를 샀다. 네 목적을 말하라, 살인자."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39018 /* ~"나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 59
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39019 /* ~"나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 59
  IF ~~ THEN REPLY #39020 /* ~"왜 나를 '살인자'라고 부르는 거요?"~ */ GOTO 60
  IF ~~ THEN REPLY #39021 /* ~"나는 이 곳에는 아무런 용건도 없소. 난 여기에 사고로 우연히 왔소."~ */ GOTO 28
END

IF ~~ THEN BEGIN 59 // from: 22.8 22.9 24.0 24.1 56.0 56.1 57.0 57.1 58.0 58.1
  SAY #38838 /* ~"침묵의 왕은 죽었다? 너는 훌륭하게 해냈다, 살인자." 여럿이-모여-하나는 잠시 말을 멈춘다. "우리도 감사할 줄 모르는 파렴치한 자는 아니다."~ */
  IF ~~ THEN REPLY #39022 /* ~"무슨 뜻이오?"~ */ DO ~AddexperienceParty(7500)
~ GOTO 16
END

IF ~~ THEN BEGIN 60 // from: 22.10 56.2 57.2 58.2
  SAY #38839 /* ~"네게서는 거짓말의 악취가 물씬 풍긴다. 네가 우리 동포를 도살할 때 우리는 네 얼굴을 보았다. 우리가 정신의 일부가 소멸하는 괴로움을 느꼈다는 것을 알라. 불꽃 하나가 꺼질 때마다 불기 전체의 위력도 그만큼 감소한다는 사실을 알라. 너는 많은 우리 동포들을 죽였다. 이 사실을 부정하는가?"~ */
  IF ~~ THEN REPLY #39024 /* ~"물론이오."~ */ GOTO 62
  IF ~~ THEN REPLY #39025 /* ~"전혀 그렇지 않소."~ */ GOTO 61
  IF ~~ THEN REPLY #39026 /* ~"나는 그들이 당신들의 일부인지 몰랐소."~ */ GOTO 62
  IF ~~ THEN REPLY #39027 /* ~"그들이 날 먼저 공격했소."~ */ GOTO 62
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #38840 /* ~"좋다. 너는 네 죄를 인정했다.
너는 고통을 받을 것이다,
우리가 고통받았던 것처럼."
~ */
  IF ~~ THEN REPLY #39028 /* ~"어디 한 번 내게 고통을 주어 봐라, 이 벼룩에 물린 양탄자같은 얼간이들의 집합체야!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 60.2 60.3
  SAY #38841 /* ~"거짓말!.
우리가 고통받았던 것처럼 너도 고통을 받을 것이다."

~ */
  IF ~~ THEN REPLY #39029 /* ~"어디 한 번 내게 고통을 주어 봐라, 이 벼룩에 물린 양탄자같은 얼간이들의 집합체야!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39030 /* ~"나는 당신들의 자비를 구하오."~ */ GOTO 63
  IF ~~ THEN REPLY #39031 /* ~"내가 당신들에게 그 일에 대해 보상해 줄 수 있는 방법은 없겠소?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 63 // from: 62.1
  SAY #38842 /* ~"너는 자비를 얻지 못할 것이다, 살인자. 너는 네 죄값을 치러야만 한다."~ */
  IF ~~ THEN REPLY #39032 /* ~"어디 한 번 내게 고통을 주어 봐라, 이 벼룩에 물린 양탄자 같은얼간이들의 집합체야!"~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39033 /* ~"어떻게 하면 내가 그 일에 대해 당신들에게 보상을 할 수가 있겠소?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 62.2 63.1
  SAY #38843 /* ~"네가 무슨 쓸모가 있는가?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #39034 /* ~"나는 죽이기가 어렵소, 게다가 마법까지 알고 있소."~ */ GOTO 65
  IF ~~ THEN REPLY #39035 /* ~"나는 죽이기가 어렵소."~ */ GOTO 66
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #39036 /* ~"나는 은밀하게 행동하여 발견하기가 어렵소."~ */ GOTO 67
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #39037 /* ~"나는 죽이기가 어려울 뿐만 아니라 용맹한 전사요."~ */ GOTO 68
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #38844 /* ~"우리는 주문에 대해서는 별 관심이 없다. 마법은 별로 드문 것이 아니니까... 하지만..."~ */
  IF ~~ THEN REPLY #39038 /* ~"하지만?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 66 // from: 64.1
  SAY #38845 /* ~"이것은 우리에게 유용할지도 모른다... 그렇다..."~ */
  IF ~~ THEN REPLY #39039 /* ~"그래서?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 67 // from: 64.2
  SAY #38846 /* ~"이러한 능력들은 우리에게 유용할지도 모른다... 그렇다..."~ */
  IF ~~ THEN REPLY #39040 /* ~"그래서?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 68 // from: 64.3
  SAY #38847 /* ~"이러한 능력들은 우리에게 유용할지도 모른다... 그렇다..."~ */
  IF ~~ THEN REPLY #39041 /* ~"그래서?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 69 // from: 25.0 25.1 73.0 73.1
  SAY #38848 /* ~"침묵의 왕은 우리에게 위협이 되지 못하다고? 확실한가? 그의 시체는 보았는가?~ */
  IF ~~ THEN REPLY #39042 /* ~"그래서?"~ */ GOTO 77
END

IF ~~ THEN BEGIN 70 // from: 23.0
  SAY #38849 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다. 우리에게는 싸울 생각이 없다. 그러나 네가 싸움을 원한다면 우리도 싸울 것이다."

~ */
  IF ~~ THEN EXTERN ~DANNAH~ 192
END

IF ~~ THEN BEGIN 71 // from: 23.1
  SAY #38850 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다. 우리에게는 싸울 생각이 없다. 그러나 네가 싸움을 원한다면 우리도 싸울 것이다."
~ */
  IF ~~ THEN EXTERN ~DMORTE~ 406
END

IF ~~ THEN BEGIN 72 // from: 23.2
  SAY #38851 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다. 우리에게는 싸울 생각이 없다. 그러나 네가 싸움을 원한다면 우리도 싸울 것이다."
~ */
  IF ~~ THEN EXTERN ~DANNAH~ 193
END

IF ~~ THEN BEGIN 73 // from: 23.3
  SAY #38852 /* ~"우리는 이미 어두운 곳에서 만났다.
우리는 내가 우리 동족을 죽일 때 네 얼굴을 보았다. 여기 온 목적을 말하라, 살인자. 만약 네가 우리를 모두 죽이러 왔다면, 너는 성공하지 못할 것이다. 우리에게는 싸울 생각이 없다. 그러나 네가 싸움을 원한다면 우리도 싸울 것이다."
~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39043 /* ~"나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 69
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #39044 /* ~"나는 당신에게 침묵의 왕이 죽은 스켈레톤에 불과하다는 사실을 말해주러 왔소. 그에겐 아무런 힘도 없소."~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
~ GOTO 69
  IF ~~ THEN REPLY #39045 /* ~"왜 나를 '살인자'라고 부르는 거요?"~ */ GOTO 74
  IF ~~ THEN REPLY #39046 /* ~"실은 난 당신들을 말살하러 왔소." ~ */ GOTO 75
  IF ~~ THEN REPLY #39047 /* ~"나는 이 곳에는 아무런 용건도 없소. 그렇지 않아도 떠나려던 참이었소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 74 // from: 73.2
  SAY #38853 /* ~"양족 동물, 너는 이미 수많은 우리 동포를 학살했다. 우리는 우리들의 일부가 고통과 함께 사라지는 것을 느꼈다. 너는 사고의 굴에 고통을 가져왔으며, 너는 이에 대한 사죄를 해야만 한다. 하지 않겠다면 우리는 너를 말살할 것이다."~ */
  IF ~~ THEN REPLY #39048 /* ~"어림없소."~ */ GOTO 76
  IF ~~ THEN REPLY #39049 /* ~"난 무슨 일을 해야 하오?"~ */ GOTO 43
  IF ~~ THEN REPLY #39050 /* ~"나는 그들이 당신들의 동족인지 몰랐소."~ */ GOTO 79
END

IF ~~ THEN BEGIN 75 // from: 23.6 73.3 78.0
  SAY #38854 /* ~"너는 이미 충분하고도 남을 만큼 우리를 죽이지 않았는가, 영장류? 그만큼 죽이고도 아직 만족하지 못하는가? 너의 마음엔 반성의 기미가 보이지 않는다. 우리가 널 먼저 죽이겠다, 양족 동물."~ */
  IF ~~ THEN REPLY #39051 /* ~"난 당신들을 상대할 준비가 되어 있소."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from: 23.7 74.0 78.2 79.1
  SAY #38855 /* ~"네가 우리를 위해 이 일을 해주지 않겠다면 우리는 우리에게 남은 마지막 힘을 소진해서라도 다원 우주에서 너란 존재를 말살하겠다. 너는 네가 우리에게 가져다 준 고통에 대한 대가를 치러야만 한다."~ */
  IF ~~ THEN REPLY #39052 /* ~"내가 무슨 일을 해주기를 원하오?"~ */ GOTO 43
  IF ~~ THEN REPLY #39053 /* ~"당신들이 어떻게 나오나 보고 싶군."~ */ DO ~SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 77 // from: 69.0
  SAY #38857 /* ~"그럼 너는 더 이상 쓸모가 없다.
이제 너도 우리가 받은 것과 같은 고통을 받을 때가 왔다.
너의 덧없는 불꽃을 끌 때가 왔다.
너는 죽을 것이다, 인간.
너는 *고통스럽게* 죽을 것이다."
~ */
  IF ~~ THEN REPLY #39054 /* ~"감사의 표시란 게 고작 이 거요?"~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #39055 /* ~"어디 한 번 해보시오."~ */ DO ~AddexperienceParty(7500)
SetGlobal("MAO_Warn","GLOBAL",3)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39323 /* ~"네 동료들보고 조용히 하라고 해라. 너느 우리에게 많은 고통을 가져다 주었다, 그리고 우리는 그에 대한 사죄와 보상을 요구한다."~ */
  IF ~~ THEN REPLY #39056 /* ~"난 당신들을 말살하기 위해 왔소."~ */ GOTO 75
  IF ~~ THEN REPLY #39057 /* ~"내가 무슨 일을 해주기를 원하오?"~ */ GOTO 43
  IF ~~ THEN REPLY #39058 /* ~"그렇게 호락호락하게 당할 수는 없지."~ */ GOTO 76
END

IF ~~ THEN BEGIN 79 // from: 74.2
  SAY #56039 /* ~"이미 우리는 피해를 입었다. 단순한 사과로는 과거를 바꿀 수는 없다. 우리를 위해 이 일을 해주지 않겠다면 우리는 너를 말살하겠다. ~ */
  IF ~~ THEN REPLY #56040 /* ~"내가 무슨 일을 해야 하오?"~ */ GOTO 43
  IF ~~ THEN REPLY #56041 /* ~"하지 않겠소."~ */ GOTO 76
END
