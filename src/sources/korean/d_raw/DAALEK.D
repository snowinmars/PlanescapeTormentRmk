// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAALEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAALEK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33862 /* ~길고 흰 머리에 쭈글쭈글한 누런 피부를 지닌 노인이 보인다. 그는 나이에도 불구하고 꼿꼿이 서 있다. 그는 미소를 지으며 당신에게 가볍게 인사를 한다. ~ */
  IF ~~ THEN REPLY #33863 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #33864 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33865 /* ~"당신도 안녕하시오? 어떤 도움이 필요하시오?" 그는 당신 대답을 기다리면서 눈썹을 치켜 올린다.~ */
  IF ~~ THEN REPLY #33866 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #33867 /* ~"나는 주문에 관심이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #33868 /* ~"나는 당신이 어떤 물건들을 파는가에 관심이 있소."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33869 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33870 /* ~그는 눈살을 찌푸린다. "미안하지만 내가 파는 것은 마법 아이템이지 정보가 아니오. 정보가 필요하다면 다른 곳에 가야 할 거요."~ */
  IF ~~ THEN REPLY #33871 /* ~"나는 주문에 관심이 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #33872 /* ~"당신이 파는 물건들을 보여주시오."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33873 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33874 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #33877 /* ~마법 상인 앨렉이 보인다. "안녕하시오. 다시 만나 반갑소. 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #33878 /* ~"당신 상품들을 다시 봅시다."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33879 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.0
  SAY #33880 /* ~그는 고개를 끄덕이고 시장 안을 흘긋 둘러본다. "미안하지만 내가 파는 것은 마법 아이템뿐이오. 가서 신더와 얘기를 하시오. 그의 가게는 입구 쪽의 아궁이 근처에 있소."~ */
  IF ~~ THEN REPLY #33881 /* ~"당신이 파는 물건들을 보여주시오."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33882 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END
