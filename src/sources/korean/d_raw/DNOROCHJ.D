// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNOROCHJ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNOROCHJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #46511 /* ~더러운 검은 법복을 입은 비쩍 마른 사내가 보인다. 그의 뻣뻣한 검은 머리카락은 그의 머리로부터 가시로 만든 왕관처럼 뻗어 나오고 있으며, 그의 문둥이처럼 흰 피부는 해골에 바짝 달라붙어 있다. 그는 눈살을 찌푸린 채 술을 마시면서 뭐라고 중얼거리고 있다.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46526 /* ~"안녕하시오."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46527 /* ~"노로치?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46528 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
Global("Norochj","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #46512 /* ~더러운 검은 법복을 입은 비쩍 마른 사내가 보인다. 그의 뻣뻣한 검은 머리카락은 그의 머리로부터 못으로 만든 왕관처럼 뻗어 나오고 있으며, 그의 문둥이처럼 흰 피부는 해골에 바짝 달라붙어 있다. 그는 눈살을 찌푸린 채 술을 마시면서 뭐라고 중얼거리고 있다.~ */
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
~ THEN REPLY #46529 /* ~"안녕하시오."~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46530 /* ~"노로치?"~ */ DO ~SetGlobal("Norochj","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #46531 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Norochj","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #46513 /* ~노로치가 보인다. 그는 가시처럼 뻣뻣한 머리카락을 가지고 자신의 얼굴의 한 부분을 긁고 있다. 당신은 그가 헤어 스타일을 바꾸면 나아 보일 거라는 생각을 떨칠 수가 없다. ~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46532 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46533 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46534 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46535 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46536 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46537 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46538 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46539 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46540 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62892 /* ~"나는 비-더스트맨을 찾아냈소. 그녀는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62893 /* ~"무슨 문제라도 있소?"~ */ GOTO 5
  IF ~  Global("Norochj_Ad","GLOBAL",1)
Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62894 /* ~"나는 밖에 있는 게시물을 보고 왔소."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62895 /* ~"에모릭이 내게 당신과 얘기하라고 했소, 노로치."~ */ GOTO 12
  IF ~~ THEN REPLY #62896 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 0.1 1.0 1.1
  SAY #46514 /* ~더스트맨은 당신을 올려다 보며 눈을 한 번 깜박인다, 그리고 당신을 위아래로 살펴본다. 그는 당신을 살펴보면서 뾰족한 가시처럼 딴 머리카락으로 자신을 가리킨다. "노로치. 참입자. 더스트맨. 경비병."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",0)
~ THEN REPLY #46545 /* ~"당신은 고민이 있는 것처럼 보이오... 노로치."~ */ GOTO 5
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46546 /* ~"나는 밖에 있는 게시물을 보고 왔소."~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46547 /* ~"에모릭이 내게 당신과 얘기하라고 했소."~ */ GOTO 12
  IF ~~ THEN REPLY #46548 /* ~"뭘 좀 물어봐도 괜찮겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #46549 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #46515 /* ~노로치는 고개를 저은 후 다시 자신의 술을 내려다본다. ~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46550 /* ~"무슨 문제라도 있소? 당신은 고민이 있는 것처럼 보이오."~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46551 /* ~"기다리시오. 에모릭은 내게 당신과 얘기하라고 했소."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46609 /* ~"나는 밖에 있는 게시물을 보고 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #46610 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.10 3.0 4.0 9.10 10.10 11.10
  SAY #46516 /* ~노로치는 얼굴을 만지면서 손가락으로 자신의 찌푸린 표정을 트레이스한다. "고민, 그렇소."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46553 /* ~"무슨 일이오?"~ */ GOTO 6
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46554 /* ~"에모릭이 내게 당신과 얘기하라고 했소."~ */ GOTO 12
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
Global("Norochj_Ad","GLOBAL",1)
~ THEN REPLY #46611 /* ~"나는 밖에 있는 게시물을 보고 왔소."~ */ GOTO 6
  IF ~~ THEN REPLY #46612 /* ~"아무래도 난 당신을 도울 수 있을 것 같지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.11 3.1 4.2 5.0 5.2
  SAY #46517 /* ~더스트맨은 당신을 위아래로 살펴본다. "고민 많소, 내겐. 당신 나 도울 수 있소. 영묘가 깨어났소. 죽은 자들이 걷고 그들의 잠 방해 받았소. 더스트맨도 불안해 하오. 무엇이 죽은 자들 잠 깨웠는지 알아내시오. 그럼 동전 주겠소."~ */
  IF ~~ THEN REPLY #46556 /* ~"좋소. 영묘는 어디 있소?"~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",1)
~ JOURNAL #17134 /* ~더스트맨이 모이는 바에서 만난 노로치라는 더스트맨은 내게 죽은 자가 걸어다니는 영묘에 대해여 얘기해주었다. 그는 내가 그 건을 조사하기를 바라고 있었다. 그는 영묘의 입구가 시체안치소 밖에 있는 더스트맨 기념비의 북서쪽에 있다고 말해주었다. 그는 또한  그 곳의 아치 입구에 가서 오른쪽 집게손가락으로 심장 위에 반원을 그리면 입구가 열릴 거라고 말해주었다. 만약 내가 영묘의 문제를 파악해 해결할 수 있다면, 노로치에게 돌아와 그 사실을 알릴 것이다. ~ */ GOTO 13
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46557 /* ~"글쎄, 내가 과연 그 문제에 대해 당신을 도울 수 있을지 모르겠소. 에모릭은 내게 다른 문제에 대해 당신과 이야기하라고 말했소."~ */ GOTO 12
  IF ~~ THEN REPLY #46558 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 12.0
  SAY #46518 /* ~노로치는 고개를 끄덕인다. "나는 그를 찾을 수 없소. 그 일은 중요한 일이오, 더스트맨에게."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46559 /* ~"걱정하지 마시오. 난 이미 그를 찾아냈소. 그는 다시는 그런 속임수를 쓰지 못할 것이오."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~다행히 나는 이미 회색 망토를 처치했다, 따라서 상금을 받아냈다. ~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46560 /* ~"걱정하지 마시오. 난 이미 그를 찾아냈소. 그는 다시는 그런 속임수를 쓰지 못할 것이오."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~다행히 나는 이미 회색 망토를 처치했다, 따라서 상금을 받아냈다. ~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46561 /* ~"걱정하지 마시오. 난 이미 그를 찾아냈소. 그는 다시는 그런 속임수를 쓰지 못할 것이오."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #39503 /* ~다행히 나는 이미 회색 망토를 처치했다, 따라서 상금을 받아냈다. ~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Dead("Ashman")
~ THEN REPLY #46562 /* ~"걱정하지 마시오. 난 이미 그를 찾아내서 그의 불쌍한 인생에 종지부를 찍어 주었소."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~운 좋게도 나는 이미 회색 외투를 죽여버렸기 때문에 그 자리에서 상금을 챙길 수 있었다.~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Dead("Ashman")
~ THEN REPLY #46563 /* ~"걱정하지 마시오. 난 이미 그를 찾아내서 그의 불쌍한 인생에 종지부를 찍어 주었소."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ JOURNAL #17090 /* ~운 좋게도 나는 이미 회색 외투를 죽여버렸기 때문에 그 자리에서 상금을 챙길 수 있었다.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Dead("Ashman")
~ THEN REPLY #62897 /* ~"걱정하지 마시오. 난 이미 그를 찾아내서 그의 불쌍한 인생에 종지부를 찍어 주었소."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
AddexperienceParty(750)
SetGlobal("Dustman_Initiation","GLOBAL",2)
~ GOTO 9
  IF ~  Dead("Mochai")
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62898 /* ~"걱정하지 마시오. 난 이미 그녀를 찾아내서 그녀의 불쌍한 인생에 종지부를 찍어 주었소."~ */ GOTO 15
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62899 /* ~"난 당신을 위해 놈을 찾아줄 수 있소."~ */ GOTO 8
  IF ~  !Dead("Ashman")
Global("Remove_Ash","GLOBAL",0)
~ THEN REPLY #62900 /* ~"난 당신을 위해 놈을 찾아줄 수 있소... 보수를 주겠다면."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Norochj_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #62901 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7 7.8
  SAY #46519 /* ~노로치는 다시 고개를 끄덕인다. "내 대신 수고하면 돈 주겠소. 가짜 더스트맨 찾으시오, 처리하시오, 그리고 돌아오시오. 노로치는 기다리겠소."~ */
  IF ~~ THEN REPLY #46568 /* ~"좋소. 나는 이 '비-더스트맨'이란 자를 찾아낸 후 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.2 2.5 2.8 7.2 7.5 9.2 9.5 9.8 10.2 10.5 10.8 11.2 11.5 11.8 15.2 15.5 16.2 16.5
  SAY #46520 /* ~당신 얘기를 듣자마자 노로치의 주름이 펴진다."고맙소. 그는 법복 속에 손을 넣어 작은 자루를 꺼내더니 그것을 당신에게 준다. "동전. 백 닢이오."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46569 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46570 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46571 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46572 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46573 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46574 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46575 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46576 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46577 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62902 /* ~"나는 비-더스트맨을 찾아냈소. 그녀는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62903 /* ~"무슨 다른 문제라도 있소?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #62904 /* ~"그런데 에모릭은 당신과 다른 문제에 대해 상의하라고 내게 말했소."~ */ GOTO 12
  IF ~~ THEN REPLY #62905 /* ~"고맙소. 도울 수가 있어서 기쁘오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 2.4 2.7 7.1 7.4 9.1 9.4 9.7 10.1 10.4 10.7 11.1 11.4 11.7 15.1 15.4 16.1 16.4
  SAY #46521 /* ~당신 얘기를 듣자마자 노로치의 주름이 펴진다."고맙소. 그는 법복 속에 손을 넣어 작은 자루를 꺼내더니 그것을 당신에게 준다. "동전. 백 닢의 두 배요."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46581 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46582 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46583 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46584 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46585 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46586 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46587 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46588 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
~ THEN REPLY #46589 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #62906 /* ~"나는 비-더스트맨을 찾아냈소. 그녀는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #62911 /* ~"무슨 다른 문제라도 있소?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #62912 /* ~"그런데 에모릭은 당신과 다른 문제에 대해 상의하라고 내게 말했소."~ */ EXIT
  IF ~~ THEN REPLY #62913 /* ~"고맙소. 도울 수가 있어서 기쁘오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.0 2.3 2.6 7.0 7.3 9.0 9.3 9.6 10.0 10.3 10.6 11.0 11.3 11.6 15.0 15.3 16.0 16.3
  SAY #46522 /* ~당신 얘기를 듣자마자 노로치의 주름이 펴진다."고맙소. 그는 법복 속에 손을 넣어 큰 자루를 꺼내더니 그것을 당신에게 준다. "동전. 백 닢의 세 배요. 그리고..." 그는 다시 법복 속에 손을 넣어 한 롤의 붕대를 꺼내더니 당신에게 던져 준다. "당신이 나보다 더 필요로 하는 같소, 이 붕대를."~ */
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #46593 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 11
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #46594 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(200)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 10
  IF ~  Global("Mausoleum_Quest","GLOBAL",2)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #46595 /* ~"나는 영묘에서 무슨 일이 일어났었는지를 알아냈소. 죽은 자들은 이제 다시 잠들었소 ."~ */ DO ~SetGlobal("Mausoleum_Quest","GLOBAL",3)
GivePartyGold(100)
AddexperienceParty(1000)
~ JOURNAL #17062 /* ~나는 노로치에게 돌아와 내가 영묘의 문제를 해결했다고 말했다. ~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46596 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46597 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #46598 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17063 /* ~회색 외투를 찾아서 처리한 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46599 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46600 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #46601 /* ~"나는 비-더스트맨을 찾아냈소. 그는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ JOURNAL #17064 /* ~회색 외투를 찾아서 죽인 나는 노로치에게 가서 상금을 챙겼다.  ~ */ GOTO 9
  IF ~  Dead("Mochai")
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
Global("Mochai_Norochj_Pickpocket","GLOBAL",0)
~ THEN REPLY #64430 /* ~"나는 비-더스트맨을 찾아냈소. 그녀는 이제 죽었으니 다시는 소매치기하지 못할 거요."~ */ GOTO 15
  IF ~  Global("Mausoleum_Quest","GLOBAL",0)
~ THEN REPLY #46602 /* ~"무슨 다른 문제라도 있소?"~ */ GOTO 5
  IF ~  Global("Dustman_Initiation","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #46603 /* ~"그런데 에모릭은 당신과 다른 문제에 대해 상의하라고 내게 말했소."~ */ GOTO 12
  IF ~~ THEN REPLY #46604 /* ~"고맙소. 도울 수가 있어서 기쁘오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.12 3.2 4.1 5.1 6.1 9.11 11.11
  SAY #46523 /* ~"에모릭이 당신을 내게..." 그는 당신을 잠시 살펴보더니 한숨을 쉬면서 자신을 가리킨다. "노로치는 더스트맨. 경비병. 더스트맨을 위해 일하고 그 권익을 보호하오. 더스트맨 *평판*도 보호하오." 그는 다시 한숨을 쉰다. "벌통에는 도둑 많소. 한 도둑이 더스트맨 법복 입고 있소, 하지만 더스트맨 아니오."~ */
  IF ~~ THEN REPLY #46605 /* ~"더스트맨으로 위장한 도둑이 있소?"~ */ DO ~SetGlobal("Dustman_Pickpocket","GLOBAL",1)
~ JOURNAL #17075 /* ~나는 에모릭이 시킨 대로 노로치라는 더스트맨과 얘기를 했다. 그는 더스트맨으로 위장한 도둑을 찾는 데 어려움을 겪고 있다. ~ */ GOTO 7
  IF ~~ THEN REPLY #46606 /* ~"난 당신을 도울 수가 없을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0
  SAY #46524 /* ~노로치는 고개를 끄덕인다. "더스트맨 기념관 옆의 영묘. 검은 기념비에서 북서쪽으로 가시오, 아치 앞에 서서 이 손가락으로 가슴 위에 반원 그리시오." 그는 자신의의 오른손 집게손가락을 움직인다. "그러면 영묘로 가오."~ */
  IF ~~ THEN REPLY #46607 /* ~"그럼 그 건에 대해 조사를 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #46525 /* ~노로치는 한숨을 쉬고 자신의 뾰족한 머리카락 한 올을 잡아당긴다. "더스트맨 영묘 안 들어가기로 서약했소. 죽은 자와 약속했소. 그럴 수 없소. 비 더스트맨만 들어갈 수 있소."~ */
  IF ~~ THEN REPLY #46608 /* ~"그럼 그 건에 대해 조사를 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.9 7.6 9.9 10.9 11.9
  SAY #61163 /* ~노로치는 잠시 아무 말도 없이 당신을 보며 눈을 깜박인다. "당신은 가짜 더스트맨 찾았소. *그*를 죽였소?""~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61164 /* ~"오, 그 사람 말이오? 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61166 /* ~"오, 그 사람 말이오? 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61167 /* ~"오, 그 사람 말이오? 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61168 /* ~"아, 그래, *그 남자* 말이오. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61170 /* ~"아, 그래, *그 남자* 말이오. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61171 /* ~"아, 그래, *그 남자* 말이오. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61173 /* ~"어, 아니오. 불타는 시체 바에 더스트맨이 아닌 어떤 *여자*가 있었소. 그래서 난..."~ */ DO ~SetGlobal("Mochai_Norochj_Pickpocket","GLOBAL",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.6
  SAY #61174 /* ~"가짜 더스트맨은 여자 아니오. 가짜 더스트맨은 남자요."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61175 /* ~"오, 그 사람 말이오? 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61179 /* ~"오, 그 사람 말이오? 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Global("Remove_Ash","GLOBAL",1)
Global("Dustman_Initiation","GLOBAL",1)
!Dead("Ashman")
~ THEN REPLY #61180 /* ~"오, 그 사람 말이오? 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,15,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61181 /* ~"아, 그래, *그 남자* 말이오. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(300)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61182 /* ~"아, 그래, *그 남자* 말이오. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(200)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,13,CHR)
Global("Dustman_Pickpocket","GLOBAL",1)
Dead("Ashman")
Global("Dustman_Initiation","GLOBAL",1)
~ THEN REPLY #61183 /* ~"아, 그래, *그 남자* 말이오. 그는 이 도시에서 다시는 소매치기를 하지 않을 거요."~ */ DO ~GivePartyGold(100)
SetGlobal("Dustman_Pickpocket","GLOBAL",2)
SetGlobal("Dustman_Initiation","GLOBAL",2)
AddexperienceParty(750)
~ GOTO 9
  IF ~~ THEN REPLY #61184 /* ~"아. 내 썰렁한 농담을 부디 너그러히 용서하시오. 만약 더스트맨으로 위장한... 이 *남자*를 만나게 되면 당신에게 알리도록 하겠소. 안녕히 계시오."~ */ EXIT
END
