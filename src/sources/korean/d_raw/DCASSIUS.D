// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCASSIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCASSIUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50718 /* ~엄청나게 살이 찐 남자가 보인다. 그의 전신은 피하지방으로 겹겹이 둘러싸여 있다. 그의 시선은 천천히 당신에게로 향한다, 그리고 마침내 그것이 당신에게 닿자 당신은 형언하기 힘든 위기감을 느낀다. "나는 그 칼의 진정한 본질을 지니고 있소. 당신이 그 곳에서 보고 있는 것은 텅 빈 껍질에 불과하오. 칼을 얻으려면 나와 싸워야만 하오."~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #50719 /* ~"당신은 누구요?"~ */ GOTO 1
  IF ~  Global("Trias_Sword","GLOBAL",1)
HasItem("Bandage",Myself)
~ THEN REPLY #59402 /* ~"나는 칼을 가지러 왔소."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59407 /* ~"나는 이미 당신으로부터 붕대를 훔쳤소. 만약 내가 훔치기로 작정을 한다면 당신이 내가 칼을 훔치는 것을 막을 수 있으리라고 생각하오?~ */ GOTO 19
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #59635 /* ~그의 굵은 목소리는 여러 층의 피하 지방을 거쳐서 나오는 듯하다. "나는 캇시우스요. 나는 어떤 죽은 어비스의 군주의 최고의 무기였소, 그리도 그의 후계자들은 아직도 날 원하고 있소. 나는 혼돈의 차원들의 최고 기밀이자 이 칼의 수호자요."~ */
  IF ~~ THEN REPLY #59670 /* ~"당신은 *무기*였소?"~ */ GOTO 3
  IF ~~ THEN REPLY #59671 /* ~"당신은 별로 위험해 보이지 않소..."~ */ GOTO 3
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59673 /* ~"나는 칼을 가지러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #59674 /* ~"알겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 1.2 1.3 3.1 3.2 4.0 4.2 5.0 5.2 6.0 6.1 7.1
  SAY #59637 /* ~그의 목소리는 마치 깊은 동굴 속에서 나오는 듯하다. "이 칼은 커스트의 감옥에 에너지를 공급하오. 그것을 제거하면 모든 죄수들이 풀려 날 것이오. 나는 그런 일이 일어나는 것을 방지하는 책무를 맡고 있소. 당신은 칼을 원하오."~ */
  IF ~~ THEN REPLY #59705 /* ~"그렇소."~ */ GOTO 9
  IF ~~ THEN REPLY #59706 /* ~"아니오."~ */ GOTO 8
  IF ~~ THEN REPLY #59707 /* ~"나는 정말로 떠나고자 했을 뿐이오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1
  SAY #59639 /* ~"내 주인의 뜻에 의해 만들어진 나는 한때 어비스에서 가장 효과적인 무기였소. 나는 상대방이 가장 두려워하는 형태를 취할 수가 있소. 나는 인간을 수명을 초 단위로 센 것보다 많은 수의 내 죽은 주군의 적들을 죽였소. 내 못난 동생인 제키엘은 아직도 어비스의 심연에서 적들을 죽이고 있소." ~ */
  IF ~~ THEN REPLY #59710 /* ~"왜 떠났소?"~ */ GOTO 4
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59711 /* ~"좋소. 난 칼을 가지러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #59712 /* ~"좋소. 난 떠나려던 참이었소."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59641 /* ~"내가 임무를 수행하기 위해 자리를 비웠을 때, 내 주군은 어비스의 중심부로 가라앉았소. 내가 암살을 마치고 돌아오자, 그는 없었고 그의 후계자들이 날 차지하겠다고 짖어댔소. 그들 중 그 누구도 날 길들일 수 없었기 때문에 나는 그 곳을 떠났소~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59715 /* ~"나는 칼을 가지러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #59717 /* ~"당신은 날 죽일 수가 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #59719 /* ~"알겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #59643 /* ~그는 당신을 유심히 살핀다. 잠시 후 그가 선언을 한다. "그럴 수 있소, 하지만 어려운 싸움이 될 것이오. 당신은 내가 당신을 죽이길 원하오?"~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59722 /* ~"나는 정말 칼을 가지러 왔을 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #59724 /* ~"어디 한 번 시험해보시오."~ */ GOTO 6
  IF ~~ THEN REPLY #59726 /* ~"아니오. 실은 떠나려던 참이오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #59644 /* ~"내게 당신이 칼을 가지러 왔다고 하시오, 그럼 내가 당신을 죽이겠소."~ */
  IF ~~ THEN REPLY #59729 /* ~"나는 칼을 가지러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #59730 /* ~"관두시오. 난 떠나겠소."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #59645 /* ~캇시우스의 목소리는 그의 뚱뚱한 흉부로부터 늘어져 나온다. "당신은 칼을 원하시오?"~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59733 /* ~"먼저 당신 자신에 대해 얘기해주시오."~ */ GOTO 1
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59734 /* ~"그렇소."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59735 /* ~"나는 이미 당신으로부터 붕대를 훔쳤소. 만약 내가 훔치기로 작정을 한다면 당신이 내가 칼을 훔치는 것을 막을 수 있으리라고 생각하오?~ */ GOTO 19
  IF ~~ THEN REPLY #12012 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1 2.2 9.3 10.3 11.3 12.3
  SAY #59646 /* ~"만약 당신이 칼의 진정한 본질을 원한다면 내게로 돌아와 결투를 해야 하오. 어떤 경우에든 나와의 결투를 피할 수는 없소."~ */
  IF ~~ THEN REPLY #59736 /* ~"좋소. 안녕히 계시오."~ */ JOURNAL #59745 /* ~역겨울 정도로 살찐 사나이가 칼을 걸고서 내게 도전을 했다. 그는 칼의 핵이 그의 안에 있기 때문에 만약 내가 그것을 원한다면 자신과 대결해야 한다고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #59648 /* ~"그럼 룰은 다음과 같소. 당신은 다음 세 가지 옵션 중 하나를 선택해야 하오: 힘, 재치, 또는 속도. 어느 것을 선택하든, 실패하면 내가 당신을 죽일 것이오."~ */
  IF ~~ THEN REPLY #59746 /* ~"힘을 선택하겠소."~ */ GOTO 10
  IF ~~ THEN REPLY #59747 /* ~"재치를 선택하겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #59748 /* ~"속도를 선택하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #59749 /* ~"관두시오. 나중에 다시 오겠소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1 12.1
  SAY #59649 /* ~"그렇다면 싸웁시다. 만약 당신이 이기면 내 시체에서 칼을 가져가도 좋소. 만약 당신이 지면 나는 당신 뼈로 만찬을 즐길 것이오."~ */
  IF ~~ THEN REPLY #59751 /* ~"알겠소."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ JOURNAL #59737 /* ~나는 칼을 얻기 위해 힘으로 대결하기로 했다. 캇시우스는 강하며 만약 내가 실패하면 내 뼈로 만찬을 즐기겠다고 위협하고 있다. ~ */ EXIT
  IF ~~ THEN REPLY #59752 /* ~"그렇다면 재치를 선택하겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #59753 /* ~"그렇다면 속도를 선택하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #59754 /* ~"그렇다면 관두겠소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 12.2
  SAY #59651 /* ~"그럼 나는 당신에게 세 가지 수수께끼를 내겠소. 만약 틀리면, 나는 당신을 죽이고 당신의 뼈로 피리를 만들어, 당신의 영혼에게 고통의 노래를 영원히 들려줄 것이오."~ */
  IF ~~ THEN REPLY #59757 /* ~"알겠소. 수수께끼를 내시오."~ */ JOURNAL #59738 /* ~나는 캇시우스와 세 개의 수수께끼를 가지고 재치를 겨루려 하고 있다. 만약 이기면 나는 칼을 얻을 것이다. 하지만 실패하면 그는 내 해골과 혼령으로 악기를 만들겠다고 위협하고 있다.~ */ GOTO 14
  IF ~~ THEN REPLY #59761 /* ~"그렇다면 힘을 선택하겠소."~ */ GOTO 10
  IF ~~ THEN REPLY #59762 /* ~"그렇다면 속도를 선택하겠소."~ */ GOTO 12
  IF ~~ THEN REPLY #59764 /* ~"그렇다면 관두겠소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.2 10.2 11.2
  SAY #59653 /* ~"그렇다면 당신은 내 몸에서 붕대를 한 롤 훔쳐 내야만 하오. 만약 성공을 하면 내게 다시 말을 거시오. 그러면 칼을 감춘 장소에서 꺼내 주겠소. 하지만 만약 실패하면 나는 어비스의 화염이 자비롭게 느껴질 정도의 고통을 당신에게 주겠소. 시작하겠소?"~ */
  IF ~~ THEN REPLY #59765 /* ~"알겠소."~ */ JOURNAL #59739 /* ~나는 칼의 수호자인 캇시우스와 속도 대결을 벌이려 하고 있다. 만약 내가 그의 뚱뚱한 몸으로부터 붕대 한 롤을 잡아뺏은 후 그에게 말을 걸면 그는 내게 칼을 줄 것이다. 그는 내가 실패하면 날 죽이겠다고 위협하고 있다. ~ */ GOTO 13
  IF ~~ THEN REPLY #59766 /* ~"그렇다면 힘을 선택하겠소."~ */ GOTO 10
  IF ~~ THEN REPLY #59767 /* ~"그렇다면 재치를 선택하겠소."~ */ GOTO 11
  IF ~~ THEN REPLY #59768 /* ~"그렇다면 관두겠소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #59655 /* ~"그럼 그것을 치우시오. 아니면 나는 당신이 칼을 다른 방법으로 찾으려 한다고 생각하겠소."~ */
  IF ~~ THEN REPLY #59769 /* ~"좋소, 어디 봅시다. ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY #59657 /* ~"그럼 고전적인 문제로 시작하리다: 새벽에는 네 발로, 정오에는 두 발로, 그리고 황혼에는 세 발로 걷는 것은 무엇이오?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #59770 /* ~당신은 답을 안다: "인간이오. 태어난 직후에는 네 발로 기며, 젊은 시절에는 두 발로 걷고, 그리고 늙어서는 지팡이에 몸을 기대오."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #59771 /* ~"인간?"~ */ GOTO 16
  IF ~~ THEN REPLY #59772 /* ~"상처 입은 쇠똥구리?"~ */ GOTO 15
  IF ~~ THEN REPLY #59773 /* ~"곰?"~ */ GOTO 15
  IF ~~ THEN REPLY #59774 /* ~"변신 능력을 지닌 타나리?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.3 14.4 16.1 16.2 16.4 17.2 17.3 17.4
  SAY #59659 /* ~"틀렸소. 당신은 격심한 고통을 받으며 죽어갈 것이오."~ */
  IF ~~ THEN REPLY #59775 /* ~"기다리시오!"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59776 /* ~싸운다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 14.1
  SAY #59661 /* ~"맞았소. 두 번째 수수께끼요: 나는 신음을 하나 내 입 밖으로는 아무 말도 나가지 않소. 나는 비어 있을지도 모르나 가득 찬 건 아니오. 나는 무엇이오?"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #59777 /* ~당신은 답을 안다: "당신은 배고픔이오?"~ */ GOTO 17
  IF ~~ THEN REPLY #59778 /* ~"유령?"~ */ GOTO 15
  IF ~~ THEN REPLY #59779 /* ~"혀가 없는 죄수?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #59780 /* ~"배고픔?"~ */ GOTO 17
  IF ~~ THEN REPLY #59781 /* ~"달"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.3
  SAY #59662 /* ~"맞았소. 세 번째 수수께끼요: 날기만 하지 가만히 서 있을 수는 없는 것은? 만지는 모든 것을 삼키나, 아무 것도 먹지 않는 것은? 절대로 빌릴 수는 없지만 늘 낭비되는 것은? 쓰기만 하고 벌 수는 없는 것은?" ~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #59782 /* ~당신은 답을 안다: "답은 시간이오."~ */ JOURNAL #59740 /* ~나는 커스트의 감옥에서 칼을 지키고 있는 캇시우스를 재치 대결에서 물리쳤다. 그의 문제들은 놀랄 정도로 쉬웠다. ~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #59783 /* ~"시간이오?"~ */ JOURNAL #59740 /* ~나는 커스트의 감옥에서 칼을 지키고 있는 캇시우스를 재치 대결에서 물리쳤다. 그의 문제들은 놀랄 정도로 쉬웠다. ~ */ GOTO 18
  IF ~~ THEN REPLY #59784 /* ~"불이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #59785 /* ~"힘이오?"~ */ GOTO 15
  IF ~~ THEN REPLY #59786 /* ~"마법이오?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #59663 /* ~"당신이 이겼소. 당신의 용모 때문에 나는 당신의 재치가 그 흉터투성이 외관과 마찬가지일 거라고 생각했었소. 나는 내 책무를 다하지 못했소, 그리고 나는 칼을 당신에게 주겠소. 나는 이 장소를 떠나야만 하오."~ */
  IF ~~ THEN REPLY #59787 /* ~"고맙소."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2 7.2
  SAY #59665 /* ~"당신의 용모 때문에 나는 당신 솜씨를 꿰뚫어 보지 못했소. 당신은 내가 저지하기에는 너무나도 교활한 도둑이오. 이것이 열쇠요. 이제 너는 내 수치를 감추기 위해 이 장소를 떠나야만 하오."~ */
  IF ~~ THEN REPLY #59788 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ JOURNAL #59741 /* ~나는 커스트의 감옥에서 칼을 지키고 있는 캇시우스를 속도 대결에서 물리쳤다. 그는 놀랄 정도로 느렸다. ~ */ EXIT
END
