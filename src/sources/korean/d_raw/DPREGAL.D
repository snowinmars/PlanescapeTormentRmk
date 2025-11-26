// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPREGAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPREGAL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Alley_Face_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52613 /* ~당신은 눈 앞에서 펼쳐지는 광경을 경외하는 마음으로 지켜본다. 평범한 벽돌벽처럼 보였던 것이 이제는 고동을 치며 움직이고 있다. 벽은 마치 반대편에서 보이지 않는 힘이 미는 것처럼 기묘한 탄력성을 가지고 앞으로 부풀어 나온다. 물결치는 덩어리의 움직임이 차츰 가라앉음에 따라 그 형태가 차츰 뚜렷해진다, 그리고 당신은 돌로 희화된 인간의 얼굴을 정면으로 마주보게 된다.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52645 /* ~"그게 뭐요?"~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ EXTERN ~DANNAH~ 256
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52646 /* ~기다리며 다음에 무슨 일이 일어나는지 지켜본다.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52647 /* ~얼굴을 무시한다. 떠난다.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #52614 /* ~갑자기 당신 주변에서 된바람이 불기 시작하더니 기괴한 탄식 소리가 대기를 가득 채운다. 밀려오는 바람은 한층 거세지며, 당신 귀에 다른 소리들도 들려 온다: 판자가 삐걱거리는 소리, 잎들이 스치는 소리, 그리고 돌과 돌이 서로 갈리는 소리. 잠시 후 개개의 소리의 불협화음은 막을 내리고, 하나의 명확한 소리로 융합된다. 당신은 그 목소리를 알아들을 수 있다. 부드럽게 말하는 목소리다. 하지만 모든 방향에서 동시에 들려 오는 것처럼 느껴진다. "당신? 당신일 수는 없다."~ */
  IF ~~ THEN REPLY #52648 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #52649 /* ~"뭐?"~ */ GOTO 2
  IF ~~ THEN REPLY #52650 /* ~"당신은 날 아시오?"~ */ GOTO 2
  IF ~~ THEN REPLY #52651 /* ~"당신은 날 다른 사람으로 착각한 모양이오. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3
  SAY #52615 /* ~당신 주변의 바람은 멎었으나 목소리는 계속 들린다. "당신은 다시 재생되었나? 나는 당신이 파괴되는 것을 보았다."~ */
  IF ~~ THEN REPLY #52652 /* ~"파괴되었다? 어디가?~ */ GOTO 6
  IF ~~ THEN REPLY #52653 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #52654 /* ~"당신은 어떤 존재요?"~ */ GOTO 4
  IF ~~ THEN REPLY #52655 /* ~"여기는 어디요?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.0 5.0
  SAY #52616 /* ~"나는 나다." 목소리는 당신 앞의 돌 얼굴 만큼이나 무표정하다.~ */
  IF ~~ THEN REPLY #52656 /* ~"당신은 어떤 존재요?"~ */ GOTO 4
  IF ~~ THEN REPLY #52657 /* ~"여기는 어디요?"~ */ GOTO 5
  IF ~~ THEN REPLY #52658 /* ~"당신은 내가 파괴되는 걸 보았다고 했소? 어디서?"~ */ GOTO 6
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 4 // from: 2.2 3.0 5.1
  SAY #52617 /* ~"나는 나다." 목소리는 당신 앞의 돌 얼굴 만큼이나 무표정하다.~ */
  IF ~~ THEN REPLY #52659 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #52660 /* ~"여기는 어디요?"~ */ GOTO 5
  IF ~~ THEN REPLY #52661 /* ~"당신은 내가 파괴되는 걸 보았다고 했소? 어디서?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3 3.1 4.1
  SAY #52618 /* ~"당신은 내 위에, 내 안에 서 있다. 돌, 모르타르, 공기... 모두가 나의 일부이다."~ */
  IF ~~ THEN REPLY #52662 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #52663 /* ~"당신은 어떤 존재요?"~ */ GOTO 4
  IF ~~ THEN REPLY #52664 /* ~"당신은 내가 파괴되는 걸 보았다고 했소? 어디서?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.2 4.2 5.2
  SAY #52619 /* ~"나는 당신이 여기 내 앞에서 파괴되는 것을 보았다. 나는 내 안에서 일어나는 모든 일들을 본다."~ */
  IF ~~ THEN REPLY #52665 /* ~"내게 무슨 일이 일어났는지 아오?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52620 /* ~"그림자를 드리우지 않는 것들... 그림자들이다. 그들은 당신 주위에서 나타났다. 그들은 당신을 갈가리 찢었다. 기억하지 못하는가?" 당신은 당신 주변의 소리들로 구성된 기묘한 목소리에 집중한다. 당신 정신의 가장 깊숙한 곳 어딘가에서 잠시 기억이 떠올랐다가 사라진다. 당신은 이 곳의 소리들이 왠지 낯이 익다는 생각을 한다.~ */
  IF ~~ THEN REPLY #52719 /* ~눈을 감고 기억해 내려고 시도한다. ~ */ DO ~StartCutSceneEx("0405cut8",FALSE)
~ EXIT
END

IF WEIGHT #2 ~  Global("Alley_Face_SC","GLOBAL",1)
Global("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #52621 /* ~"그래... 당신은 기억한다." 골목의 목소리가 당신 귀에서 울린다, 그것은 당신의 정신 속의 이미지들을 날려보내고 당신을 다시 현재로 불러온다. "파괴되었다. 내가 곧 그렇게 될 것처럼. 나는 분열을 더 이상 미룰 수 없다. 압력이 한층 강해지고 있다. 곧 돌들은 부서지고 떠다니는 자들은 날 수리하여 파괴할 것이다."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #52667 /* ~"이해할 수가 없소."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #52668 /* ~"당신은 죽어가고 있소?"~ */ GOTO 9
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52669 /* ~"떠다니는 자들?"~ */ EXTERN ~DANNAH~ 257
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #52622 /* ~"압력이 너무나도 크다. 너무나 많은 장소들이 안에 포개진 채로 있다. 충분한 공간이 없다. 분열해야만 한다."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52670 /* ~"분열?"~ */ EXTERN ~DANNAH~ 258
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52671 /* ~"분열?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #52623 /* ~목소리는 계속 말한다. "내가 분열하고 확장하도록 도우라. 그러면 새로운 틈이 생길 것이다. 당신은 그 틈을 이용하여 마계구로 갈 수가 있을 것이다."~ */
  IF ~  Global("Dabus_Trap","GLOBAL",0)
!Dead("ADabus")
~ THEN REPLY #52672 /* ~"분열하기 위해서는 무엇이 필요하오?"~ */ GOTO 11
  IF ~  Global("Dabus_Trap","GLOBAL",2)
!Dead("ADabus")
~ THEN REPLY #52673 /* ~"분열하기 위해서는 무엇이 필요하오?"~ */ GOTO 13
  IF ~  Dead("ADabus")
~ THEN REPLY #52674 /* ~"분열하기 위해서는 무엇이 필요하오?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52624 /* ~"떠다니는 자가 나를 수리하고 있다. 그것은 내가 분열하는 것을 막고 있다. 나는 그것이 수리한 곳들을 되돌려 놓고 있다. 하지만 그것은 계속 돌아와 새로이 수리를 한다. 떠다니는 자를 제거해야만 한다."~ */
  IF ~~ THEN REPLY #52675 /* ~"당신은 내가 골목에 있는 다버스를 *죽이기를* 원하오?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52625 /* ~"그를 제거하라. 그래야만 내가 분열할 수 있다."~ */
  IF ~~ THEN REPLY #52676 /* ~"알겠소. 당신을 위해 다버스를 *제거*하겠소."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",1)
~ JOURNAL #52683 /* ~나는 머뭇거리는 탄식의 골목이 유령이 나오는 황폐한 곳이 아니라는 것을 발견했다. 그것은 살아 있다. 그것은 내게 말을 걸었으며, 내가 파악한 바로는 그것은 현재 임신중이며 출산을 위해 내 도움이 필요한 것 같다. 현재 한 다버스가 골목을 지속적으로 수리함으로서 그것이 분열하는 것을 방해하고 있는 것 같다. 나는 다버스를 제거할 방법을 찾기로 약속했고, 그것은 대가로 마계구로 통하는 길을 열어주기로 했다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #52626 /* ~"떠다니는 자가 더 이상 나를 괴롭히지 않는다. 그것은 더 이상 수리를 하지 않는다. 더 이상 방해하지 않는다."~ */
  IF ~~ THEN REPLY #52687 /* ~"골목의 다버스 말이오? 그렇소, 나는 그에게 내가 발견한 죽은 다버스에 대해 얘기해주었고, 그러자 그는 그것을 찾아 떠났소." ~ */ DO ~AddexperienceParty(15000)
~ JOURNAL #52682 /* ~나는 머뭇거리는 탄식의 골목이 유령이 나오는 황폐한 곳이 아니라는 것을 발견했다. 그것은 살아 있다. 그것은 내게 말을 걸었으며, 내가 파악한 바로는 그것은 현재 임신중이며 출산을 위해 내 도움이 필요한 것 같다. 내가 그의  죽은 동족에 대해 알려준  다버스가 골목이 분열하는 것을 방해하는 수리를 하고 있었던 것 같다. 그가 조사를 하러 들어가자 골목은 같은 빌딩 안에 그를 가두었다. ~ */ GOTO 21
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #52627 /* ~"떠다니는 자는 파괴되었다. 그것은 더 이상 수리를 하지 않는다. 더 이상 방해하지 않는다."~ */
  IF ~~ THEN REPLY #52692 /* ~"골목의 다버스 말이오? 그렇소, 그는 사라졌소... 내가 그를 죽였소."~ */ DO ~AddexperienceParty(1500)
~ JOURNAL #52681 /* ~나는 머뭇거리는 탄식의 골목이 유령이 나오는 황폐한 곳이 아니라는 것을 발견했다. 그것은 살아 있다. 그것은 내게 말을 걸었으며, 내가 파악한 바로는 그것은 현재 임신중이며 출산을 위해 내 도움이 필요한 것 같다. 내가 죽인 다버스가 골목이 분열하는 것을 방해하는 수리를 하고 있었던 것 같다. ~ */ GOTO 18
END

IF WEIGHT #3 ~  Global("Alley_Face_SC","GLOBAL",1)
GlobalGT("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #52628 /* ~당신이 돌 얼굴에 다가가자 골목 주변의 소리들이 다시 당신 귀를 엄습한다, 그리고 목소리는 그것들을 통해 말한다. "당신이 돌아왔군."~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
GlobalLT("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52693 /* ~"다버스는 아직도 남아 있소... 나로서는 그를 제거할 방도가 없소."~ */ GOTO 16
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
Dead("ADabus")
~ THEN REPLY #52694 /* ~"나는 다버스를 죽였소. 그는 더 이상 방해하지 못할 거요."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
Global("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52695 /* ~"나는 다버스와 얘기를 했소. 나는 그에게 그의 죽은 동족에 대해 얘기해주었고 그는 조사하기 위해 떠났소."~ */ DO ~AddexperienceParty(11500)
~ JOURNAL #52680 /* ~나는 머뭇거리는 탄식의 골목이 살아 있을 뿐만 아니라 자신을 방어할 충분한 능력도 지녔다는 것을 알게 되었다. 나와 얘기한 다버스는 내가 죽은 다버스를 발견한 건물을 조사하러 그 안으로 들어간 것 같다. 다버스가 안으로 들어가자 골목은 건물의 출구를 없애버려 그 역시 가두었다. ~ */ GOTO 21
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52696 /* ~"나는 아직 다버스가 수리한 곳들을 복구시키지 못했소. 내가 무슨 일을 해야 하는지 다시 말해주시오."~ */ GOTO 22
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52697 /* ~"나는 한 곳의 수리한 자국을 원래 상태로 복구시켰소. 다른 곳들을 어떻게 찾아야 하는지 다시 말해주시오."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52698 /* ~"나는 한 곳의 수리한 자국을 원래 상태로 복구시켰소. 다른 곳들을 어떻게 찾아야 하는지 다시 말해주시오."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52699 /* ~"나는 당신 부탁대로 수리한 자국들을 원래 상태로 복구시켰소."~ */ GOTO 24
  IF ~~ THEN REPLY #52700 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #52629 /* ~"그것은 제거되어야 한다. 반드시 방법이 있을 것이다. 그것이 떠나게 만들어라. 시간이 없다. 곧 분열하든지 파괴되어야 한다. ~ */
  IF ~~ THEN REPLY #52701 /* ~"걱정하지 마시오, 방법을 강구하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52630 /* ~"떠다니는 자는 파괴되었다. 그것은 더 이상 수리를 하지 않는다. 더 이상 방해하지 않는다."~ */
  IF ~~ THEN REPLY #52702 /* ~"그렇소, 그는 더 이상 방해하지 못할 것이오... 이제 당신은 분열할 수 있소."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.0 15.1 17.0
  SAY #52631 /* ~골목의 목소리는 당신이 한 말을 숙고하는 듯 잠시 침묵한다. "떠다니는 자를 죽이지 말았어야 했다. 당신은 칼날 달린 자의 주목을 받게 될 것이다. 그녀는 고통을 가져오는 자다."~ */
  IF ~~ THEN REPLY #52703 /* ~"나는 그를 죽여야만 했소... 그것이 그가 수리하는 것을 멈추게 할 유일한 방법이었소."~ */ GOTO 19
  IF ~~ THEN REPLY #52704 /* ~"이미 저지른 일은 어쩔 수가 없소. 어쨌든 다버스는 사라졌고 이제 당신은 분열할 수가 있소."~ */ GOTO 19
  IF ~~ THEN REPLY #52705 /* ~"보시오, 당신이 날보고 그를 제거하라고 했소... 그래서 난 그를 처치했소. 이제 당신은 분열할 수가 있소, 그렇지 않소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Alley_1","GLOBALGood",-1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1 18.2 21.0
  SAY #52632 /* ~"아직도 분열할 수 없다. 너무 약하다. 떠다니는 자가 한 수리를 되돌릴 수 없다. 내가 분열하려면 그것이 변경한 것들이 원래 상태로 돌아가야 한다. 당신은 날 위해 떠다니는 자가 한 수리를 되돌려야 한다."~ */
  IF ~~ THEN REPLY #52706 /* ~"당신은 내가 다버스가 한 수리를 원래 상태로 돌려놓았으면 하오? 하지만 어떻게?"~ */ GOTO 20
  IF ~~ THEN REPLY #52707 /* ~"어떻게 내가 수리한 자국을 원래 상태로 복구시킬 수가 있소? 난 목수가 아니오."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #52633 /* ~" 떠다니는 자가 수리한 내 부분들을 찾아라. 변경한 것들을 원래 상태로 되돌려라. 정확하게 해야만 한다. 그렇게 해야만 내가 분열할 수 있다."~ */
  IF ~~ THEN REPLY #52708 /* ~"알겠소. 나는 수리한 곳들을 찾아 원애 상태로 돌려놓겠소. 아마 도구가 필요할 것 같소... 망치와 지렛대가 있으면 충분할 거요."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",2)
~ JOURNAL #52679 /* ~내가 다버스를 제거하기는 했으나, 그가 한 수리가 골목이 분열하는 것을 막고 있다. 나는 수리된 곳들을 찾아내 원래 상태로 되돌려야만 한다. 골목은 지금 출산하기 직전이기 때문에 몹시 허약하여 수리된 곳을 원상 복구시킬 힘이 없다. 내게는 도구가 필요할 것 같다... 망치와 쇠 지렛대만 있으면 충분할 것이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0 15.2
  SAY #52634 /* ~"그렇다. 떠다니는 자는 더 이상 수리를 하지 않는다. 그것은 이제 다른 떠다니는 자와 함께 있다. 나는 그것을 내 안에 가두었다. 그것은 내 안에 영원히 있게 될 것이다."~ */
  IF ~~ THEN REPLY #52709 /* ~"알겠소. 이제 그가 갇혔으니 당신은 방해받지 않고서 분열을 할 수가 있소, 그렇지 않소?~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 15.3
  SAY #52635 /* ~"두 군데다. 떠다니는 자가 변경한 것들을 원래 상태로 되돌려야만 한다. 내 스스로는 할 수가 없다. 분열을 위해 에너지를 보존해야만 한다."~ */
  IF ~~ THEN REPLY #52710 /* ~"알겠소. 나는 수리한 곳들을 찾아 원애 상태로 돌려놓겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.4 15.5
  SAY #52636 /* ~"두 군데다. 각각 서로의 서쪽과 동쪽에 있다."~ */
  IF ~~ THEN REPLY #52711 /* ~"매우 서술적이군. 도와주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.6
  SAY #52637 /* ~"그렇다. 모든 것이 정상이다. 감사한다." 다시 당신 주변에 바람이 불기 시작한다, 그것도 이번에는 아주 맹렬하게 불고 있다. 골목의 모든 곳에서 나오는 소리들의 음량은 한층 커진다, 때문에 목소리의 부드러운 속삭임은 그 소음에 파묻혀 들리지 않게 된다. "이제 당신은 가야한다. 분열이 시작된다. 길이 당신에게 열릴 것이다."~ */
  IF ~~ THEN REPLY #52712 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",3)
AddexperienceParty(16250)
AddJournalEntry(106724,QUEST_DONE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52638 /* ~당신 앞의 돌 얼굴은 다시 변화하기 시작한다. 당신이 지켜보고 있는 중에도 그 거대한 덩어리가 사방으로 움직이고 있다. 당신 눈 앞에서 벽 전체가 녹아버린다, 그러자 그 뒤로 좁은 통로가 나타난다. 발 아래의 땅이 갑자기 격렬하게 흔들리기 시작하며, 바람의 부드러운 한숨은 한층 그 강도를 더해, 보다 절박한, 마치 인간이 신음하는 듯한 소리로 변한다. 당신이 통로를 향해 달려갈 때, 당신 주변은 판자들이 부러지고 돌들이 격돌하는 소리로 기득 찬다. ~ */
  IF ~~ THEN REPLY #52723 /* ~떠난다.~ */ DO ~StartMovie("Alybirth")
~ JOURNAL #52678 /* ~나는 임신한 골목이 출산하는 것을 돕는 데 성공했다. 그것이 약속한 대로 새 골목의 탄생으로 인해 내가 벌통과 마계구를 오갈 수 있는 길이 만들어졌다. ~ */ EXIT
END
