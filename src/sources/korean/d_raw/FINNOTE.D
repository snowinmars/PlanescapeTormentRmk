// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FINNOTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~FINNOTE~

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #50376 /* ~이것은 고인이 된 언어학자 휜 앤들리의 연구 기록이다. 주된 내용은 우요어에 대한 그의 연구이다... 우요어는 당신이 12면체 퍼즐박스에서 본 글씨와 흡사하다. ~ */
  IF ~~ THEN REPLY #50377 /* ~그것들을 세심히 읽어 그것이 기억을 자극할 수 있는지 본다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ JOURNAL #50379 /* ~나는 언어학자 휜 앤들리의 원고를 살펴보았다, 그리고 내가 12면체의 퍼즐박스에 적힌 글이 쓰여진 언어를 이미 알고 있다는 사실을 발견했다. 이제 나는 그것을 읽을 수가 있다.~ */ GOTO 1
  IF ~~ THEN REPLY #50378 /* ~그것들을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50380 /* ~당신이 사어인 우요어에 대한 휜 앤들리의 연구 기록을 읽자, 그 언어에 대한 기억이 표면으로 떠오르기 시작하며 당신의 관자놀이가 욱신욱신 쑤시기 시작한다.

당신은 철자, 단어, 숙어를 차례로 기억해 낸다. 그리고 마침내 스파이어에서 불어오는 바람이 대 주조소의 유해한 스모그를 날려보내듯 당신 정신 속의 안개가 말끔히 가시고 당신은 그 언어를 다시 완벽하게 이해하게 된다. 이제 당신은 12면체의 내용을 읽을 수 있을 것이다. ~ */
  IF ~~ THEN REPLY #50381 /* ~원고를 치운다.~ */ EXIT
END

IF ~  !Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #50382 /* ~이것은 고인이 된 언어학자 휜 앤들리의 연구 기록이다. 주된 내용은 우요어에 대한 그의 연구이다.~ */
  IF ~~ THEN REPLY #50383 /* ~그것들을 치운다.~ */ EXIT
END
