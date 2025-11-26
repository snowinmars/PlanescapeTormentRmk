// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNEML.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNEML~

IF ~  Global("Nemelle","GLOBAL",0)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #35996 /* ~작은 세라믹 컵에 담긴 와인을 홀짝이고 있는 이 키가 크고 날씬한 여인은 누군가를 찾고 있는 듯하다. 그녀의 얼굴 생김새는 우아하게 이국적이며, 비록 긴 머리에 의해 부분적으로 가려져서 잘 보이지는 않으나 그 여자의 귀가 뾰족하다는 사실은 명백하다. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #35998 /* ~"안녕하시오."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #43924 /* ~"안녕하시오."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 2
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #43925 /* ~"안녕하시오."~ */ DO ~SetGlobal("Nemelle","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #43926 /* ~여자를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43927 /* ~여자는 돌아서서 당신을 마주본다. 그녀의 보라색 눈은 마치 흠 없는 자수정 조각처럼 반짝인다. 그녀의 목소리는 음악이다. 그녀가 말을 하자 백 개의 수정으로 만든 작은 종들이 희미하게 울리는 소리가 들린다. 각 단어는 당신 귀에서 머뭇거린다. 마치 당신 귀가 그 절묘함 음을 보내 주어야 하는 것을 애석해 하는 듯하다. "네멜은 흉터투성이 사람을 마주보기 위해 돌아섰어요, 음침한 이방인. 그녀는 당신이 그녀에게 뭘 원하는지 물었어요."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43928 /* ~"당신이 네멜이오? 난 당신이 이 유리병의 명령어를 알고 있다는 얘기를 들었소." ~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43929 /* ~"네멜? 당신 친구 앨윈이 당신을 찾고 있소."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~나는 네멜에게 그녀의 친구 앨윈이 그녀를 찾고 있다고 전해주었다. 그녀는 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다. ~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43930 /* ~"누군가를 찾고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #43931 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #43932 /* ~"실은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #43933 /* ~여자는 돌아서서 당신을 마주본다. 그녀의 보라색 눈은 마치 흠 없는 자수정 조각처럼 반짝인다. 그녀의 목소리는 음악이다. 그녀가 말을 하자 백 개의 수정으로 만든 작은 종들이 희미하게 울리는 소리가 들린다. 각 단어는 당신 귀에서 머뭇거린다. 마치 당신 귀가 그 절묘함 음을 보내 주어야 하는 것을 애석해 하는 듯하다. "네멜은 흉터투성이 사람을 마주보기 위해 돌아섰어요, 음침한 이방인. 그녀는 당신이 그녀에게 뭘 원하는지 물었어요."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 467
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY #43934 /* ~여자는 돌아서서 당신을 마주본다. 그녀의 보라색 눈은 마치 흠 없는 자수정 조각처럼 반짝인다. 그녀의 목소리는 음악이다. 그녀가 말을 하자 백 개의 수정으로 만든 작은 종들이 희미하게 울리는 소리가 들린다. 각 단어는 당신 귀에서 머뭇거린다. 마치 당신 귀가 그 절묘함 음을 보내 주어야 하는 것을 애석해 하는 듯하다. "네멜은 흉터투성이 사람을 마주보기 위해 돌아섰어요, 음침한 이방인. 그녀는 당신이 그녀에게 뭘 원하는지 물었어요."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 468
END

IF ~~ THEN BEGIN 4 // from: 1.0 17.0 18.0 19.0
  SAY #43935 /* ~여자는 유리병을 만지거나 살펴보려고는 하지 않고 단지 얘기만 한다. "네맬은 그것을 이방인으로부터 받아 손에서 돌려 보았어요. 그녀는 그와 비슷한 것을 본 적이 있다고 생각했나요? 아마... 그래요, 이제 그녀는 기억해요. 그녀는 유리병을 돌려주고 그의 귀에다가 속삭였어요..."~ */
  IF ~~ THEN REPLY #43936 /* ~"어..."~ */ DO ~SetGlobal("Seek_Word","GLOBAL",2)
DestroyPartyItem("Decant",FALSE)
GiveItemCreate("Decant2",Protagonist,1,0,0)
~ JOURNAL #39492 /* ~네멜이라는 이름의 신비한 여인은 내게 내가 발견한  마법의 유리병의 명령어를 가르쳐 주었다: "닐덴노사즈".~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43937 /* ~당신은 자신이 이제 -- '닐덴노사즈' - 라는 명령어를 안다는 사실을 깨닫는다. 하지만 그 여자는 결코 당신에게 속삭인 적이 없다. 다만 그랬다고 말했을 뿐이다. 그녀는 당신을 보며 눈을 깜박인다. "이제 이방인은 그녀가 그에게 해준 말에 만족하고 떠나겠어요?"~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
!Global("Aelwyn","GLOBAL",2)
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43938 /* ~"아직 아니오. 나는 앨윈을 찾았소."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~나는 네멜에게 그녀를 위해 그녀의 친구 앨윈을 찾았다고 말해주었다. 그녀는 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다. ~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
!Global("Nemelle","GLOBAL",3)
~ THEN REPLY #43939 /* ~"아직 아니오. 당신 친구 앨윈이 당신을 찾고 있소."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~나는 네멜에게 그녀의 친구 앨윈이 그녀를 찾고 있다고 전해주었다. 그녀는 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다. ~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43940 /* ~"아직 아니오. 누군가를 찾고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #43941 /* ~"아니오... 질문할 것들이 좀 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #43942 /* ~"그렇소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 5.1 15.0 17.1 18.1
  SAY #43943 /* ~네멜의 입술은 완벽한 미소를 짓는다. 그녀로부터 전염성이 있는 행복감이 발산되는데, 그것은 마치 감미로운 향기처럼 당신에게 달라 붙는다. "네멜은 그녀의 친구의 소식을 듣게 되어 몹시 기뻤어요. 앨윈은 가까운 곳에 있었나요?"~ */
  IF ~~ THEN REPLY #43944 /* ~"그는 이 구역의 반대편에 있는 또 하나의 카페에 있소."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43945 /* ~"네멜은 기쁜 소식을 가져다 준 데 대해 남자에게 감사했어요. 곧 그녀는 그녀의 가장 오랜 친구 앨윈을 만나러 갈 거예요. 하지만 지금 그녀는 이방인에게 상을 내릴 거예요..."~ */
  IF ~~ THEN REPLY #43946 /* ~"괜찮소... 내게는 보수가 필요없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #43947 /* ~그녀가 당신에게 상을 주기를 기다린다.~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #43948 /* ~네멜은 집게손가락을 자신의 입술에 갖다 대고 희미한 쉿 소리를 낸다. ~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #43949 /* ~"그녀는 이방인을 가까이 오라고 해서 그의 가슴에 손을 얹고 그의 볼의 창백하고 가죽 같은 피부에 키스를 할 거예요. 생명력이 그에게로 흘러들어가 활력을 불어 넣을 거예요... 이것이 그의 상이 되었어요."~ */
  IF ~~ THEN REPLY #43950 /* ~기다린다.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
AddexperienceParty(8000)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #43951 /* ~당신은 기다리다가 자신의 가슴과 볼이 약간 따끔거리는 것을 느낀다. 이 느낌은 전신으로 퍼진다, 그리고 당신은 자신이 더 강해지고 활력이 넘침을 느낀다.~ */
  IF ~~ THEN REPLY #43952 /* ~"고맙소. 질문할 것들이 좀 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #43953 /* ~"고맙소., 네멜. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.3 5.3 10.0 17.3 18.2
  SAY #43954 /* ~"네멜은 이방인의 질문에 귀를 기울였지만 아무런 대답도 할 수 없었어요. 그는 다른 곳에서 원하는 답을 얻어야 할 거예요."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67835 /* ~"좋소... 하지만 당신은 누군가를 찾고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #43955 /* ~"하지만... 난 아직 질문하지도 않았소..."~ */ GOTO 12
  IF ~~ THEN REPLY #43956 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #43957 /* ~네멜은 천천히 고개를 저으며 미소를 짓는다. 그녀의 빛나는 눈에는 당신 얼굴이 비치고 있다. "낭패하고 당혹하여 그는 마침내 포기했어요. 이 여자가 그에게 필요한 정보를 가지고 있지 않거나, 설령 갖고 있었더라도 그것을 공유하도록 설득될 수 없다는 것은 명백했어요."~ */
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #67830 /* ~"좋소... 하지만 당신은 누군가를 찾고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #43958 /* ~"뭐? 아니오... 당신에게 질문을 좀 합시다..."~ */ GOTO 13
  IF ~~ THEN REPLY #43959 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #43960 /* ~당신은 입을 열어 보지만 아무런 말도 나오지 않는다. 아무리 노력해도 당신은 그녀에게 질문을 할 수가 없다. 네멜은 슬프게 고개를 젓는다.~ */
  IF ~~ THEN REPLY #43961 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.2 5.2 11.0 12.0 17.2
  SAY #43962 /* ~"'그녀는 어디 있죠?' 네멜은 알고 싶었어요. 그녀의 친구 앨윈은 이미 여러 날 전에 여기서 그녀와 만날 예정이었어요." 그녀는 처량하게 한숨을 쉰다. 그녀 주변의 공기가 그녀의 슬픔 때문에 싸늘해진다. "그녀의 가장 친한 친구를 찾기 위해서 그녀는 얼마나 오랫동안 이 광활하고 낯선 도시에서 방황해야 하나요?"~ */
  IF ~~ THEN REPLY #43963 /* ~"나는 당신이 친구를 찾는 일을 도와줄 수 있소. 그녀는 어떻게 생겼소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nemelle_2","GLOBALGood",1)
SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~~ THEN REPLY #43964 /* ~"난 당신을 위해 그녀를 찾아줄 수 있소, 물론 대가를 지불하겠다면 말이지만."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nemelle_1","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #43965 /* ~"당신이 그녀를 찾기를 바라겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 16.0
  SAY #43966 /* ~네멜은 두 손을 꽉 쥐고 당신에게 고개를 숙인다. "그녀는 그녀 친구의 소식을 들으면 정말 기뻐할 거예요. 그녀는 친절한 이방인에게 그가 앨윈을 만나면 알아볼 수 있도록 그녀가 어떻게 생겼는지를 말해주었어요." 당신 정신 속에서 하나의 이미지가 형성된다 - 네멜과 닮았으나 황금색 눈과 진홍색의 머리를 지닌 여인이다.~ */
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43967 /* ~"실은 난 그 여자를 만났소."~ */ JOURNAL #39493 /* ~나는 내가 만난 신비한 여자 네멜에게 그녀를 위해 앨윈이라는 여자를 찾아주겠다고 제의했다. 그런데 난 이미 그녀가 어디 있는지 알고 있었다. 네멜은 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다. ~ */ GOTO 6
  IF ~~ THEN REPLY #43968 /* ~"그녀를 찾으면 돌아오리다. 안녕히 계시오."~ */ JOURNAL #39491 /* ~나는 내가 만난 신비한 여자 네멜에게 그녀를 위해 앨윈이라는 여자를 찾아주겠다고 제의했다. 내가 알기로 앨윈은 황금색 눈과 진홍색 머리칼을 지닌 키가 크고 아름다운 여인이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #43969 /* ~네멜은 눈을 내리깔고 천천히 말한다. "그녀는 그가 그러리라는 것을 알았어요, 하지만 그녀에게는 줄 것이 아무 것도 없어요. 그가 요구하는 대가가 무엇이든 그녀는 줄 수가 없어요."~ */
  IF ~~ THEN REPLY #43970 /* ~"그럼 이 일을 그냥 호의로 해주겠소."~ */ DO ~SetGlobal("Nemelle","GLOBAL",2)
~ GOTO 15
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43971 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43972 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 471
END

IF ~  Global("Nemelle","GLOBAL",1)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #43973 /* ~여자는 미소를 지으며 당신에게 인사한다. 그녀의 아름다움은 전에 그녀를 보았을 때에 비해 전혀 손색이 없다. "그녀는 이방인을 다시 만났어요. 그녀는 '왜 그가 내게 다시 왔을까?' 궁금해 했어요."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43974 /* ~"네멜... 난 당신이 이 유리병의 명령어를 알고 있다는 얘기를 들었소." ~ */ GOTO 4
  IF ~  Global("Aelwyn","GLOBAL",2)
!Dead("Aelwyn")
~ THEN REPLY #43975 /* ~"당신 친구 앨윈이 당신을 찾고 있소."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39490 /* ~나는 네멜에게 그녀의 친구 앨윈이 그녀를 찾고 있다고 전해주었다. 그녀는 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다. ~ */ GOTO 6
  IF ~  GlobalLT("Aelwyn","GLOBAL",2)
~ THEN REPLY #43976 /* ~"누군가를 찾고 있소?"~ */ GOTO 14
  IF ~~ THEN REPLY #43977 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 11
  IF ~~ THEN REPLY #43978 /* ~"실은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",2)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 18 // from:
  SAY #43979 /* ~여자는 미소를 지으며 당신에게 인사한다. 그녀의 아름다움은 전에 그녀를 보았을 때에 비해 전혀 손색이 없다. "그녀는 이방인이 다가오자 마음을 조였어요. '그가 앨윈을 찾았을까?' 그녀는 궁금해 했어요."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #43980 /* ~"난 당신이 이 유리병의 명령어를 알고 있다는 얘기를 들었소." ~ */ GOTO 4
  IF ~  GlobalGT("Aelwyn","GLOBAL",0)
!Dead("Aelwyn")
~ THEN REPLY #43981 /* ~"나는 앨윈을 찾았소. 그녀 역시 당신을 찾고 있었소."~ */ DO ~SetGlobal("Nemelle","GLOBAL",3)
SetGlobal("Aelwyn","GLOBAL",4)
~ JOURNAL #39494 /* ~나는 네멜에게 그녀를 위해 그녀의 친구 앨윈을 찾았다고 말해주었다. 그녀는 상으로 내게 마법의 키스를 해주었으며, 덕분에 내 최대 HP는 3 포인트 증가하였다. ~ */ GOTO 6
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43982 /* ~"나는 아직 그녀를 찾지 못했소. 물어볼 것들이 좀 있소..."~ */ GOTO 11
  IF ~  Global("Aelwyn","GLOBAL",0)
~ THEN REPLY #43983 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Nemelle","GLOBAL",3)
Global("Attack_Nemelle","AR0600",0)
~ THEN BEGIN 19 // from:
  SAY #43984 /* ~네멜은 두 손을 꽉 쥐고 당신에게 고개를 숙인다. 그녀가 마침내 고개를 쳐들고 당신을 향해 미소를 짓자 환희의 파동이 당신의 전신을 감싼다 - 그 효과는 어지러울 정도이다. "네멜은 이방인에게 다시 한 번 감사했어요. 그녀는 자신이 앨윈과 다시 만나게 돼 몹시 기쁘다는 것을 그가 알기를 바랐어요."~ */
  IF ~  PartyHasItem("Decant")
Global("Seek_Word","GLOBAL",1)
~ THEN REPLY #68508 /* ~"괜... 찮소. 나는... 당신이 유리병의 명령어를 알고 있다고 들었소."~ */ GOTO 4
  IF ~~ THEN REPLY #68510 /* ~"그런 것 같소. 안녕히 계시오, 네멜."~ */ EXIT
END

IF ~  Global("Attack_Nemelle","AR0600",1)
~ THEN BEGIN 20 // from:
  SAY #43986 /* ~여자는 자신의 보라색 눈을 순수한 증오로 불태우며 당신에게 으르렁댄다. 그녀는 마치 책을 읽듯이 말한다. "'어리석은 놈,' 그녀는 외쳤다. '감히 아사함의 딸을 그런 식으로 공격하다니! 너는 개다..." 그녀는 눈을 가늘게 뜨고 그를 노려본다. "...그리고 넌 개처럼 죽을 것이다!'" 그리고 나서 그녀는 와인을 한 모금 마시며 당신을 싸늘하게 쳐다본다.~ */
  IF ~~ THEN REPLY #43987 /* ~"허?"~ */ GOTO 21
  IF ~~ THEN REPLY #43988 /* ~그녀를 무시하고 계속 공격한다. ~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #43989 /* ~당신은 땅바닥에 쓰러져 고통으로 울부짖는다... 당신의 속이 뒤집히는 듯하다, 그리고 당신은 뜨거운 검은 피를 대량으로 토해내기 시작한다. 마침내 당신은 몸을 떨며 길바닥에 뻗는다, 그리고 마지막 남은 삶의 파편이 당신 몸으로부터 사라진다...~ */
  IF ~~ THEN REPLY #43990 /* ~어둠 속으로 빠져든다...~ */ DO ~Kill(Protagonist)
~ EXIT
END
