// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL1~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10418 /* ~이 신출내기인 듯한 억세게 생긴 청년은 당신을 잠시 보더니 불쑥 소리를 지른다! "너! 난 너에 대해 이미 알고 있다! 너를 체포하겠다! 아니. 넌 사형이다!" 그는 무기를 들고 당신에게 휘두를 준비를 한다. ~ */
  IF ~~ THEN REPLY #10419 /* ~그를 공격한다. ~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10420 /* ~도망친다.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10421 /* ~열여덟 살을 가까스로 넘은 듯한 청년이 보인다. 그의 얼굴에는 긴장한 빛이 감돈다. "도움이 필요하오?"~ */
  IF ~~ THEN REPLY #10422 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10423 /* ~"나는 어떤 일지를 찾고 있소. 혹시 최근에 그런 것을 본 적이 있소?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10424 /* ~"나는 파로드란 이름의 수집자를 찾고 있소. 혹시 그가 어디 있는지 아시오?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10425 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #10427 /* ~"여기 있는 당신 친구들은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #10428 /* ~"어쨌든 이 장소에 대해서 무슨 이야기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #10429 /* ~"뭘 하고 있는 거요?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10430 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10431 /* ~"또 당신이오? 뭘 원하오?" 그는 초조하고 불안한 듯하다.~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10432 /* ~"당신이 기다리고 있는 살인자가 나타났소?"~ */ GOTO 8
  IF ~~ THEN REPLY #10433 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10434 /* ~"나는 어떤 일지를 찾고 있소. 혹시 최근에 그런 것을 본 적이 있소?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10435 /* ~"나는 파로드란 이름의 수집자를 찾고 있소. 혹시 그가 어디 있는지 아시오?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10436 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #10437 /* ~"여기 있는 당신 친구들은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #10438 /* ~"어쨌든 이 장소에 대해서 무슨 이야기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #10439 /* ~"뭘 하고 있는 거요?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10440 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 10.1
  SAY #10441 /* ~"나는 칼렙으로 머시킬러요. 나는 타너와 일시돈과 함께 내 첫 번째 범죄자를 잡으러 왔소."~ */
  IF ~~ THEN REPLY #10442 /* ~"머시킬러에 대해 내게 어떤 얘기를 해줄 수 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #10443 /* ~"알겠소. 다른 질문을 하고 싶소."~ */ GOTO 10
  IF ~~ THEN REPLY #10444 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 10.2
  SAY #10445 /* ~"일지? 미안하지만 본 적이 없소. 난 아직 여기 온지 얼마되지 않아 주변 상황을 잘 모르오. 만약 발견하게 되면 당신에게 알려 주겠소." 그는 바 안을 둘러본다. ~ */
  IF ~~ THEN REPLY #10446 /* ~"뭘 하고 있는 거요?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10447 /* ~"고맙소. 그 사이 내 질문에 좀 대답해 줄 수 있지 않겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #10448 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 2.5 10.5
  SAY #10449 /* ~"그들은 내가 임무에 실패하지 않도록 날 감독하러 온 사람들이오. 나이가 많은 쪽이 터너요. 일시돈이 내가 실수하지 않도록 감독하고, 내게 도움이 필요할 때 날 보조해줄 사람이오." 그는 소리를 내며 침을 삼킨다. "난 내가 실패하지 않기만 바랄 뿐이오."~ */
  IF ~~ THEN REPLY #10450 /* ~"당신은 틀림없이 잘 해낼 거요. 날 위해 몇 가지 질문에 대답해주겠소?~ */ GOTO 10
  IF ~~ THEN REPLY #10451 /* ~"당신에게 행운이 따르기를. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.6 10.6
  SAY #10452 /* ~"이 곳 말이오? 여기는 불타는 시체요. 내 생각으로는 입구에 있는 사람을 따서 명명한 것 같소. 여기는 범죄자들과 불한당들의 소굴이오. 하지만... 결코 만만히 볼 수 없는 자들도 있소. 그들 중 일부는 저기 있는 마족들이오. 나는 그들을 별로 상대하고 싶지 않소. 그들의 시선은 내 영혼 깊숙한 곳을 노려보고 있는 것만 같소."~ */
  IF ~~ THEN REPLY #10453 /* ~"이해하오. 내 다른 질문에도 대답해줄 수 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #10454 /* ~"그건 그렇소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.7 4.0 10.7
  SAY #10455 /* ~"신참 머시킬러로서 나는 한 범죄자에게 정의의 심판을 내려, 내가 현장에서 일할 능력이 있다는 것을 입증해야 하오. 나는 어떤 살인범을 잡기로 결심했소. 그래서 우리는 탐문 수사를 한 끝에 그가 이 곳에 나타날 것이라는 정보를 입수했소. 하지만 아직 그를 만나지는 못했소. 솔직히 난 지금 좀 불안하오. 미안하지만 나는 여기 있는 사람들을 다시 잘 살펴봐야겠소." 그는 목을 길게 빼고 바 안을 둘러본다.~ */
  IF ~~ THEN REPLY #10456 /* ~"몇 가지 질문에만 더 대답해주면 당신을 더 이상 귀찮게 하지 않겠소."~ */ GOTO 10
  IF ~~ THEN REPLY #10457 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 10.0
  SAY #10458 /* ~"아니, 아직 아니오. 하지만 타너는 범죄자가 결국에는 이 곳에 나타날 것이라고 했소. 그래서 우리는 지금 대기 전술을 쓰고 있는 거요."~ */
  IF ~~ THEN REPLY #10459 /* ~"좋소. 다른 질문들도 좀 대답해주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #10460 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0
  SAY #10461 /* ~"글쎄, 그들... 미안하오, *나* -- 이제 나는 그 말을 하는 데 익숙해져야만 하오! 나는 정의가 존재하는 모든 것들 중 가장 중요한 것이라고 믿소. 나는 정의가 없으면 이 세상에는 아무런 의미가 없고, 세상에 의미가 없다면 우리들 모두 그냥 가서 죽어버리는 게 낫다고 생각하오. 나는 자살하기 싫소, 그래서 정의가 우리가 존재하는 의미라는 결론을 내렸소. 만약 더 알고 싶다면 나 외의 다른 두 사람이나 우리 당파의 신병 모집 담당자와 얘기하시오. 그들은 당신 귀에 못이 박히도록 얘길 해줄 거요!"~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10462 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #10463 /* ~"그러리다. 우선 내 질문에 좀 대답해주겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #10464 /* ~"좋소. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1 4.1 5.0 6.0 7.0 8.0 9.1 11.0 12.0
  SAY #10465 /* ~"뭘 알고 싶으시오?"~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10466 /* ~"당신이 기다리고 있는 살인자가 나타났소?"~ */ GOTO 8
  IF ~~ THEN REPLY #10467 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10468 /* ~"나는 어떤 일지를 찾고 있소. 혹시 최근에 그런 것을 본 적이 있소?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10469 /* ~"나는 파로드란 이름의 수집자를 찾고 있소. 혹시 그가 어디 있는지 아시오?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10470 /* ~"베일로에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #10471 /* ~"여기 있는 당신 친구들은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #10472 /* ~"어쨌든 이 장소에 대해서 무슨 이야기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #10473 /* ~"뭘 하고 있는 거요?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10474 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.2 2.3 10.3
  SAY #10475 /* ~"그에 대해서는 들은 적이 없소. 그는 범죄자요? 아마 나중에 그도 처리하는 게 좋을 것 같군... 조언해 주어 고맙소, 시민."~ */
  IF ~~ THEN REPLY #10476 /* ~"난 그를 산 채로 찾아야 하오. 내 다른 질문에도 대답해줄 수 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #10477 /* ~"천만의 말씀이오. 만약 당신이 그를 잡으면 그를 죽이기 전에 내게 알려주시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.3 2.4 9.0 10.4
  SAY #10478 /* ~"베일로? 내가 알기로 그는 과거의 머시킬러들 중 한 사람이오. 나도 언젠가는 그처럼 되고 싶소. 내가 듣기로 그는 거의 신과 같은 존재였다고 하오!"~ */
  IF ~~ THEN REPLY #10479 /* ~"물론 당신에게 격려가 되는 사람이겠지. 내 질문에 더 대답해줄 수 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #10480 /* ~"알겠소. 고맙소."~ */ EXIT
END
