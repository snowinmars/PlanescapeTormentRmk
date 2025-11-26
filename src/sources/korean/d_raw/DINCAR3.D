// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR3~

IF ~  Global("Good_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52688 /* ~"그가 깨어났소."~ */
  IF ~~ THEN DO ~SetGlobal("Good_Incarnation","GLOBAL",1)
~ EXTERN ~DINCAR1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63861 /* ~"두 사람 모두 좀 조용히 하시오! 논쟁은 나중으로 미루고 우선 그가 무사한지부터 확인합시다."~ */
  IF ~~ THEN REPLY #63862 /* ~"당신들은 모두 대체... 누구요?"~ */ EXTERN ~DINCAR1~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63863 /* ~"진정하시오. 그는 우리가 그러했던 것처럼 혼란스러워 하고 있을 뿐이오. 그가 정신을 가다듬을 시간을 주시오."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63864 /* ~"이 논쟁은 우리에게 아무런 득이 될 것이 없소! 그에게 여유를 좀 주시오, 그를 내버려 두시오."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 4
END

IF ~  Global("Good_Incarnation","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #63865 /* ~눈 앞의 남자는 당신을 닮았다, 그러나 그의 얼굴은... 왠지 더 온후하게 느껴진다. 당신이 다가가자 그는 가벼운 미소를 짓고 고개를 끄덕인다. "괜찮소?"~ */
  IF ~~ THEN REPLY #63866 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Good_Incarnation","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #63867 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 8.0
  SAY #63868 /* ~"우리가 이름을 지닌 적이 있기는 한 거요? 아니면 우리들 중 첫 번째만 이름을 지녔던 것이오?" 남자는 조용히 웃는다. "이 문제에 있어서 내가 당신 편이라는 것을 알기 바라오, 나도 여기 있는 다른 사람들과 마찬가지로 당신 정신 속에서 죽었소, 그리고 지금 이 허상만이 유일하게 남은 잔해요."~ */
  IF ~~ THEN REPLY #63869 /* ~"하지만 당신은 누구요?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #63870 /* ~"아..." 그의 얼굴에서 미소가 사라진다, 그리고 그는 우려하는 얼굴로 당신을 쳐다본다. "당신에게 있어서는 매우 혼란스런 일일 거요. 내가 설명해 주리다 - 나는 당신의 화신들 중 하나요. 한때 나는 소실되었으나 다시 지금 이 자리에 섰소."~ */
  IF ~~ THEN REPLY #63871 /* ~"어떻게 그런 일이 가능한 거요?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63872 /* ~"나도 모르겠소. 당신이 이 요새 안에서 만진 무엇인가가 당신 정신의 일부분들을 표면으로 떠오르게 했소." 그는 잠시 멈추고 생각을 한다. "다른 사람들 중 한 명이 그 경위에 대해서 알지도 모르오 - 하지만 나로서는 알 수가 없소."~ */
  IF ~~ THEN REPLY #63873 /* ~"만약 당신이 내 일부라면 내가 알아야 할 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63874 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~  Global("Good_Incarnation","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #63875 /* ~이 화신은 당신이 다가오자 미소를 지으며 입을 연다. 그의 목소리는 희미하게 메아리친다. "무슨 일이오?"~ */
  IF ~~ THEN REPLY #63876 /* ~"당신은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #63877 /* ~"만약 당신이 내 일부라면 내가 알아야 할 것들이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63878 /* ~화신을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.1 10.1 11.1 12.1 13.0 14.1 15.0 16.0 17.1 18.1 19.0 20.0 29.2
  SAY #63879 /* ~"질문하시오."~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63880 /* ~"이 곳을 떠나기 위해서 당신은 다시 내 일부가 되어야만 하오. 그렇게 하겠소?"~ */ GOTO 21
  IF ~  Global("Know_Traces","GLOBAL",1)
~ THEN REPLY #63881 /* ~"전에 당신은 우리가 죽을 때 정신에 흔적이 남는다고 했소. 그것이 당신들로 하여금 나타나게 한 것이오. 맞소?"~ */ GOTO 29
  IF ~~ THEN REPLY #63882 /* ~"나는 무수한 삶을 살았소. 그런데 왜 여기에는 세 화신들만 있는 것이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #63883 /* ~"당신은 왜 내가 불사신이 되고자 했는지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #63884 /* ~"당신 삶은 어떠하였소?"~ */ GOTO 17
  IF ~~ THEN REPLY #63885 /* ~"나는 동료들과 함께 이 요새로 왔소... 하지만 그들은 나로부터 격리되었소."~ */ GOTO 16
  IF ~~ THEN REPLY #63886 /* ~"어떻게 하면 이 곳을 떠날 수가 있소?"~ */ GOTO 20
  IF ~~ THEN REPLY #63887 /* ~"더 이상 질문할 것이 없소. 당신과는 나중에 다시 얘기하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #63888 /* ~"모르겠소. 아마도 우리는 어떤 경위로 당신 정신 속에 아직도 남아 있게 된 세 이미지인지도 모르오."~ */
  IF ~~ THEN REPLY #63889 /* ~"내 정신에 남아있는? 어떻게?"~ */ DO ~SetGlobal("Know_Traces","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #63890 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63891 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63892 /* ~"나도 정확히는 모르겠소, 하지만 우리가 죽은 후에도  이전의 성격의 흔적이 당신의 정신 속에 남게 되는 것 같소. 그리고 나는 우리가 당신으로 하여금 우리의 존재를 느끼게 만들 수 있다는 걸 아오."~ */
  IF ~~ THEN REPLY #63893 /* ~"어떻게?"~ */ GOTO 12
  IF ~~ THEN REPLY #63894 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63895 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 29.1
  SAY #63896 /* ~"예를 들어 당신이 스스로를 위험에 빠뜨리려고 하거나, 아니면 어떤 사실을 깨달으려고 할 때, 나는 당신 정신에 자극을 주어 당신을 바른 방향으로 유도할 수가 있었소."~ */
  IF ~~ THEN REPLY #63897 /* ~"그럼 *당신*이 내가 머리 뒤쪽에서 계속 느꼈던 뭔가가 기어가는 듯한 감각이오?"~ */ GOTO 13
  IF ~~ THEN REPLY #63898 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63899 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63900 /* ~"당신이 그것을 어떻게 느꼈는지는 나로서는 설명할 수가 없소, 하지만 아마 그럴지도 모르오."~ */
  IF ~~ THEN REPLY #63901 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63902 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63903 /* ~"아니, 모르오. 나는 공포 때문이었다고 생각하오. 아마 다른 두 사람 중 하나는 알고 있을지도 모르오, 하지만 나는 아니오."~ */
  IF ~~ THEN REPLY #63904 /* ~"왜 당신은 그것이 공포 때문이었다고 생각하시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #63905 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63906 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63907 /* ~남자는 가벼운 미소를 짓는다, 하지만 그로부터는 유머나 즐거움은 느껴지지 않고 오히려 슬픔만이 느껴질 뿐이다. "어떤 사람이 죽기를 원하겠소?" 그는 천천히 고개를 젓는다, "하지만 우리들 중 첫 번째만이 우리를 이런 상태로 만든 진정한 이유를 알고 있을 거요."~ */
  IF ~~ THEN REPLY #63908 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63909 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63910 /* ~"그렇다면 당신 친구들은 이미 죽었을 가능성이 높소." 남자는 고통스러워 하는 것 같다. "이 곳은 산 자를 증오하고 있소."~ */
  IF ~~ THEN REPLY #63911 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63912 /* ~"이 일에 대해서 생각해 봐야겠소. 당신과 다시 얘기하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY #63913 /* ~"내 삶은 사람들이 인생에서 기대하는 즐거움과 고통으로 충만한 길고도 조용한 삶이었소. 나는 한동안 지도 제작자로 일했고, 수년 간에 걸쳐 다원 우주를 여행하기도 했소."~ */
  IF ~~ THEN REPLY #63914 /* ~"당신은 어떻게 죽었소?"~ */ GOTO 18
  IF ~~ THEN REPLY #63915 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63916 /* ~"알겠소. 나중에 더 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #63917 /* ~"그러나 결국 바이토피아의 들판을 여행하던 중, 끔찍한 그림자들이 내가 자고 있을 때 내 목숨을 빼앗았소. 나는 그들의 날카로운 손톱이 내 몸을 찢는 것을 느끼면서 죽어갔소." ~ */
  IF ~~ THEN REPLY #63918 /* ~"그들은 우리들 대신 죽은 자들의 그림자요."~ */ GOTO 19
  IF ~~ THEN REPLY #63919 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63920 /* ~"알겠소. 나중에 더 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63921 /* ~남자는 고통스러워 하는 것 같다. "그래, 아오... 이제는 알고 있소. 이 후회의 장소에 있으면서 그들의 고통을 느끼지 않을 수는 없소."~ */
  IF ~~ THEN REPLY #63922 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63923 /* ~"알겠소. 나중에 더 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.6
  SAY #63924 /* ~"모르겠소 - 나는 이 곳에 와본 적이 없소. 아마 다른 두 사람 중 하나는 이 곳을 떠나는 방법을 알고 있을지도 모르오, 하지만 나는 아니오."~ */
  IF ~~ THEN REPLY #63925 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63926 /* ~"알겠소. 나중에 더 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.0
  SAY #63927 /* ~"나도 우리는 이런 식으로 존재해서는 결코 안 되며, 우리의 부자연스런 불사성은 이러한 상황에 의해 만들어지고 있다는 막연한 느낌을 가지고 있었소." 그는 고개를 끄덕인다. "그렇소, 나는 당신과 다시 하나가 되겠소"~ */
  IF ~~ THEN REPLY #63928 /* ~"당신은 자신이 사라지게 될 것이라는 사실을 아시오?"~ */ GOTO 22
  IF ~~ THEN REPLY #63929 /* ~"알겠소."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #63930 /* ~그는 고개를 끄덕인다. "그렇소. 알고 있소."~ */
  IF ~~ THEN REPLY #63931 /* ~"알겠소."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 36.0
  SAY #63932 /* ~"마지막으로 한 가지...이것만..." 화신은 잠시 멈추더니 당신의 얼굴을 살핀다. "내가 망각으로 돌아가기 전에 한 가지 알고 싶은 것이 있소."~ */
  IF ~~ THEN REPLY #63933 /* ~"내겐 이런 데 할애할 시간이 별로 없소. 무엇을 알고 싶으시오?"~ */ GOTO 24
  IF ~~ THEN REPLY #63934 /* ~"내겐 이럴 시간이 없소. 만약 당신이 진심으로 날 돕고자 한다면 내게 당신 자신을 내맡겨야만 하오."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63935 /* ~당신의 눈을 살피면서 그의 얼굴이 침울해진다. "비록 짧은 기간이기는 했지만 당신은 당신의 삶을 *살았소?* 종국에 가서... 그것은 가치가 있는 것이었소?"~ */
  IF ~~ THEN REPLY #63936 /* ~"아니오. 나는 끔찍한 곳에서 다시 태어났고 난 내가 살았다는 사실조차 후회하오."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63937 /* ~"그건 너무나도... 짧았소. 내가 체험한 건 얼마되지 않으나, 난 삶을 즐겼으며, 그것을 잊고 싶지 않소."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63938 /* ~"여행을 너무 많이 해 삶에 대해 평가할 기회조차 갖지 못했소. 모든 것이 해결되고 나면 한 번 돌이켜보게 될지도 모르겠소."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63939 /* ~"당신 질문은 중요하지 않소. 난 떠나야겠소."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63940 /* ~"이 삶은 나 자신과 다른 이들에게 고통만을 준 것 같소. 난 내 삶이 끝나기를 바라며, 차원들도 그때 가서야 평화를 되찾을 것이오."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 24.1 24.2 24.3 24.4
  SAY #63941 /* ~그는 고개를 끄덕인다. 잠시 그는 무슨 말을 하려는 것처럼 보인다,  그러나 그는 이내 쓰러지고, 삶이 그에게서 당신으로 유입된다. 그가 검은 돌바닥에 쓰러지자 당신은 후두부에 뭔가가 기어가는 듯한 묘한 감각을 느끼며 몸을 떤다, 그리고 당신은 화신이 더 이상 존재하지 않는다는 사실을 안다.~ */
  IF ~~ THEN REPLY #63942 /* ~"안녕히 가시오..."~ */ DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
SetGlobal("Absorb_Good_Incarnation","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63943 /* ~세 번째 화신은 조용히 얘기하나, 고통스러워 하고 있는 것처럼 들린다. "왜 당신은 그런 끔찍한 짓을 했소?"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 32
END

IF ~~ THEN BEGIN 27 // from:
  SAY #63944 /* ~세 번째 화신이 말을 가로막는다. "아마 그런 것에는 답이 없는지도 모르오. 아마 애당초 존재하지 않았을지도."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 73
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63945 /* ~세 번째 화신이 말을 가로막는다. "아마 그런 것에는 답이 없는지도 모르오. 아마 애당초 존재하지 않았을지도."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 74
END

IF ~~ THEN BEGIN 29 // from: 9.1
  SAY #63946 /* ~"나도 완전히 이해하고 있는 것은 아니나, 그런 것 같소. 그리고 우리는 우리의 존재를 미묘한 방법으로 알릴 수가 있소."~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #63947 /* ~"그럼 우리들 중 최초의 존재 - 모든 화신들 이전에 존재했던 그도 내 정신 어딘가에 아직도 묻혀 있을 가능성이 있는 거요?"~ */ DO ~AddexperienceParty(96000)
~ GOTO 30
  IF ~~ THEN REPLY #63948 /* ~"어떻게 말이오?"~ */ GOTO 12
  IF ~~ THEN REPLY #63949 /* ~"그 밖에도 알고 싶은 것이 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #63950 /* ~"알겠소. 나중에 더 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #63951 /* ~화신의 얼굴의 표정이 잠시 명멸한다, 하지만 그건 마치 유리창과도 같다, 그리고 갑자기 당신은 자신과 이야기하고 있는 사람이 누구인가를 깨닫는다.~ */
  IF ~~ THEN REPLY #63952 /* ~"*당신*이 바로 우리들 중 최초의 존재였군."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63953 /* ~화신의 눈이 고뇌의 빛으로 가득 찬다, 그리고 그는 당신으로부터 시선을 돌린다. "나는 당신이 무슨 생각을 하고 있는지 아오 - 하지만 당신 생각과는 사정이 다르오. 아마 당신은 우리들 중 첫 번째의 마음을 아는 것이 이 곳에서의 상황을 타개하는 데 도움이 되리라고 생각할 거요, 하지만 불행히도 그렇지 못하오."~ */
  IF ~~ THEN REPLY #63954 /* ~"하지만 왜 - 내게는 당신만이 대답할 수 있는 질문들이 너무나도 많소. 왜 우리는 불사신이 되었소? 왜?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #63955 /* ~"왜냐하면 우리가 (여기서) 죽으면, *확실하게* 죽기 때문이오..." 화산은 강철처럼 단호한 시선으로 당신을 쳐다본다. "저승은 우리에게 있어 낙원이 아닐 것이오. 만약 당신이 이 곳에 있는 다른 화신들과 얘기를 했다면, 그들이 살면서 저지른 죄악 따위는 내 죄에 비하면 새 발의 피에 불과하다는 사실을 알도록 하시오. 설령 다른 수천의 삶들이 없었더라도, 내 삶은 그 하나만으로도 마계에 떨어져 영겁을 보내기에 충분할 정도요."~ */
  IF ~~ THEN REPLY #63956 /* ~"하지만 당신은 훨씬 더 침착하고... 선한 것 같소."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63957 /* ~"나는 그렇게 되었소. 왜냐하면 내 경우..." 그의 목소리가 기묘하게 메아리치기 시작한다. "사람의 본성을 바꿀 수 있는 것은 **후회**요." 그는 한숨을 쉰다. "하지만 이미 너무 늦었소. 나는 영겁의 벌을 받을 운명에 처한 상태였소."~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #63958 /* ~"나눈 내 본성을 바꾸는 것만으로는 충분하지 않다는 것을 깨달았소. 내게는 시간이, 삶이 더 필요했소. 그래서 나는 회색 자매들 중 가장 위대한 자에게 가서 부탁을 했소, 내가 저지른 모든 잘못을 속죄하기에 충분할 만큼 오래 살 수 있게 해달라고 -  나를 불사신으로 만들어 달라고. ~ */
  IF ~~ THEN REPLY #63959 /* ~"그리고 래벌은 당신 부탁을 들어주었소. 하지만 그녀가 당신의 불사성을 시험하기 위해 당신을 죽였을 때 당신은 모든 것을 잊어버렸소. *모든 것을*."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #63960 /* ~그는 비탄에 잠긴 듯하다. "그리고 그 이래로 다원 우주는 죽어가고 있소. 그 죄는 너무나도 중대하며, 모든 것은 내 책임이오."~ */
  IF ~~ THEN REPLY #63961 /* ~"당신에 물어볼 것들이 너무나도 많소. 당신은 누구요? 당신의 삶은 어떠하였소? 누가-"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63962 /* ~화신은 고개를 저어 당신 질문을 중간에서 끊는다. "내가 당신과 하나가 되어 사라지게 되면, 당신은 당신이 원하는 답들을 얻게 될 것이오. 정리를 하고 이해를 하는데 시간이 걸리지는 모르지만 있기는 다 있을 거요." 그는 슬픈 미소를 짓는다. "삶을 말로 전달하기는 어렵소."~ */
  IF ~~ THEN REPLY #63963 /* ~"그럼 좋소... 우린 하나가 될 것이오. 준비는 됐소?"~ */ DO ~SetGlobal("Absorb_Real_Incarnation","GLOBAL",1)
~ GOTO 23
END
