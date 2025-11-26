// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43405 /* ~"날 건드리지 마시오! 날 그냥 내버려 두시오!"~ */
  IF ~~ THEN REPLY #43406 /* ~"나는 그냥... 관두시오."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #43407 /* ~"그들이 당신을 잡았소? 안됐군."~ */
  IF ~~ THEN REPLY #43408 /* ~"안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
!Dead("Sandoz")
~ THEN BEGIN 2 // from:
  SAY #43409 /* ~"자비를 베풀어 주어 고맙소. 앞으로는 똑바로 살도록 하겠소."~ */
  IF ~~ THEN REPLY #43410 /* ~"좋소, 사로스. 내 질문에나 대답해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #43411 /* ~"뭐든 간에. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",3)
GlobalLT("G_Test2","GLOBAL",12)
~ THEN BEGIN 3 // from:
  SAY #43412 /* ~"어떤 것을 발견했소? 당신은 날 풀어 줄 거요?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43413 /* ~"틸돈은 당신이 그 송곳을 살인 현장에 가져다 놓았으며, 당신들 둘이 서로 논쟁을 벌였기 때문에 당신이 자기에게 누명을 씌우려 하고 있다고 말했소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43414 /* ~"틸돈은 당신과 베다이-린이 아나키스트이며, 아나키스트에 가입하라는 당신들 제의를 거절했기 때문에 당신이 자기에게 누명을 씌우려 하고 있다고 내게 말했소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43415 /* ~"나는 결론을 내리기에 충분한 증거를 확보했소."~ */ GOTO 18
  IF ~~ THEN REPLY #43416 /* ~"아니, 아직 아니오. 하지만 당신에게 할 다른 질문들이 있소."~ */ GOTO 15
  IF ~~ THEN REPLY #43417 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.2 8.0 10.2 11.0 13.0
  SAY #43418 /* ~"물론이오. 당신이 알고자 하는 거라면..."~ */
  IF ~~ THEN REPLY #43419 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43420 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 9
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43421 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #43422 /* ~"아나키스트에 대해 얘기해주시오."~ */ GOTO 10
  IF ~~ THEN REPLY #43423 /* ~"이 곳에 있는 다른 사람들에 대해 얘기해주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #43424 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43425 /* ~"어디 봅시다... 나는 주조소에서 내 누나 사롯사와 함께 자라났소. 내 아버지는 이 곳의 간부들 중 한 사람이오, 그래서 그는 당원들의 수를 늘리고 당파의 영향력을 증대시키려는 데 많은 시간을 보냈소. 내 누나 사롯사는 일종의 마녀이며, 그녀는 자신의 능력에 대해 잘 알고 있소. 그녀는 사람들을 변화시켜 그들이 자신들의 본질에 더 근접할 수 있도록 하는 방법을 알고 있소."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43426 /* ~"무슨 뜻이오?"~ */ GOTO 13
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43427 /* ~"무슨 뜻이오?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 13
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43428 /* ~"그 얘기는 이미 들었소. 내 다른 질문에나 대답해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #43429 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
Dead("Sandoz")
~ THEN BEGIN 6 // from:
  SAY #43430 /* ~"날 그냥 내버려 두시오. 내 아버지는 돌아가셨소."~ */
  IF ~~ THEN REPLY #43431 /* ~"질문할 것이 좀 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #43432 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #43433 /* ~"날 그냥 내버려 두라고 말했잖소!"~ */
  IF ~~ THEN REPLY #43434 /* ~"좋소, 좋아. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #43435 /* ~"나는 여기서 자랐소. 나는 주조소의 중심부에서 놀았고 막사 사이를 뛰어다녔소. 이 곳은 냄새가 나고 시끄러우며... 사람들도... 사람들... 하지만 내 집임에는 틀림없소."~ */
  IF ~~ THEN REPLY #43436 /* ~"감동적이군. 내 질문에나 대답해주시오..."~ */ GOTO 4
  IF ~~ THEN REPLY #43437 /* ~"고맙소, 사로스. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY #43438 /* ~"그들은 모두 죽었소. 내가 어렸을 때 같이 놀던 사람들은... 모두 그 폭발로 죽었소. 대 주조소는 전에는 내 집처럼 느껴졌으나 이제는 마음만 쓰라릴 뿐이오. 날 좀 그냥 내버려 둘 순 없겠소?~ */
  IF ~~ THEN REPLY #43439 /* ~"안됐군. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #43440 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY #43441 /* ~"그 일에 대해서는 별로 얘기하고 싶지 않소. 그들 덕분에 내 삶이 더 자극적이 될 수 있었지만 그들은 날 배신했소. 다른 모든 사람들이 그들을 노리고 있기 때문에 그들이 경계를 하는 것은 이해하오... 하지만 난 그들의 일원이 되고 싶었을 뿐이오."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",0)
~ THEN REPLY #43442 /* ~"그건 무정부주의의 본질에 어긋나는 거요, 사로스. 당신은 스스로 생각하고 행동할 수 있는 사람이 되어야 하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Saros_1","GLOBALLaw",-1)
AddexperienceParty(200)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",1)
~ THEN REPLY #43443 /* ~"그건 무정부주의의 본질에 어긋나는 거요, 사로스. 당신은 스스로 생각하고 행동할 수 있는 사람이 되어야 하오."~ */ GOTO 14
  IF ~~ THEN REPLY #43444 /* ~"당신은 아직 젊으니 극복할 수가 있을 거요. 날 위해 다른 질문들에 대해 답해주시오."~ */ GOTO 4
  IF ~~ THEN REPLY #43445 /* ~"이해하오. 당신은 극복할 수 있을 거요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.4
  SAY #43446 /* ~그는 어깨를 으쓱한다. "그들은 그냥 사람들이오."~ */
  IF ~~ THEN REPLY #43447 /* ~"참으로 협조적이군. 날 위해 몇 가지 질문에 더 대답해줄 수 있겠소?~ */ GOTO 4
  IF ~~ THEN REPLY #43448 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #43449 /* ~"그럼 그들의 일원이 되기 위해서는 그들의 일원이 되기를 원하지 말아야 하오?"~ */
  IF ~~ THEN REPLY #43450 /* ~"기본적으로 그렇소. 당신 자신이 됨으로서 당신은 단순한 졸 이상의 존재가 되는 것이오. 한 번 잘 생각해 보시오. 안녕히 계시오."~ */ JOURNAL #39515 /* ~나는 사로스에게 아니키스트가 되는 법을 말해주었다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1
  SAY #43451 /* ~"그녀는 사람을 보면 무엇을 더하고 무엇을 제해야 하는지 알 수 있소. 나는 그녀가 어떻게 그런 일을 할 수 있는지 모르오. 내 아버지는 늘 그것이 그녀가 다음 단계로 진화한 것과 관련이 있다고 했소. 그는 *그녀*가 갓즈맨으로 태어났다고 했소." ~ */
  IF ~~ THEN REPLY #43452 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 4
  IF ~~ THEN REPLY #43453 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #43454 /* ~"당신은 이미 그 얘기를 했소! 좀 독창적인 얘기를 할 순 없소? 대체 왜 같은 소리를 하고 또 하는 거요? 내게서 뭐 더 필요한 거라도 있소?~ */
  IF ~~ THEN REPLY #43455 /* ~"난 그렇게 생각하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 16.0 19.0 20.0 21.0 23.1 28.2 29.0
  SAY #43456 /* ~"무엇이 알고 싶으시오?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43457 /* ~"틸돈은 당신이 그 송곳을 살인 현장에 가져다 놓았으며, 당신들 둘이 서로 논쟁을 벌였기 때문에 당신이 그에게 누명을 씌우려 하고 있다고 말했소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43458 /* ~"틸돈은 당신과 베다이-린이 아나키스트이며, 아나키스트에 가입하라는 당신들 제의를 거절했기 때문에 당신이 자기에게 누명을 씌우려 하고 있다고 내게 말했소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43459 /* ~"나는 결론을 내리기에 충분한 증거를 확보했소."~ */ GOTO 18
  IF ~~ THEN REPLY #43460 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 19
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43461 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 20
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43462 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 21
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
~ THEN REPLY #43463 /* ~"아나키스트에 대해 얘기해주시오."~ */ GOTO 22
  IF ~~ THEN REPLY #43464 /* ~"이 곳에 있는 다른 사람들에 대해 얘기해주시오."~ */ GOTO 23
  IF ~~ THEN REPLY #43465 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.0 15.0
  SAY #43466 /* ~"그가 그렇게 말하는 건 당연하오! 그건 그가 범인이기 때문에 당신 관심을 딴 데로 돌리려는 거요! 나는 그가 그 사내를 죽이는 걸 봤소! 물론 우리는 의견이 일치하지는 않았지만 그렇다고 해서 내가 그가 죽기를 바라는 건 아니오. 그가 정말 머저리라고 해서 그가 체포되어야 한다는 것도 아니오. 그는 애빌돈을 죽인 죄로 체포되어야만 하오. 그에게 증거를 대라고 하시오!"~ */
  IF ~~ THEN REPLY #43468 /* ~"그럼 좋소. 그 밖에도 질문할 것들이 있소."~ */ JOURNAL #39514 /* ~사로스는 틸돈에게 누명을 씌웠다는 것을 부인하고 있다. 그는 틸돈이 살인죄로 체포돼야 한다고 말하고 있다. 마치 내가 누구를 고발해야할지도 모르는 것처럼 말이다. ~ */ GOTO 15
  IF ~~ THEN REPLY #43469 /* ~"그러리다. 안녕히 계시오."~ */ JOURNAL #39514 /* ~사로스는 틸돈에게 누명을 씌웠다는 것을 부인하고 있다. 그는 틸돈이 살인죄로 체포돼야 한다고 말하고 있다. 마치 내가 누구를 고발해야할지도 모르는 것처럼 말이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.1 15.1 22.0 22.1
  SAY #43470 /* ~사로스가 창백해진다. "그녀는 이 일과는 아무 상관이 없소. 내가 혼자 했소. 하지만 실제로 애빌돈을 톱니바퀴로 밀어 넣은 건 틸돈이오. 나는 그 곳에 송곳을 두어 모든 사람들이 그가 그 자리에 있었다는 사실을 알리려고 했소. 사람들이 내가 어리다고 내 말을 믿지 않을 것 같았기 때문이오. 나는 내가 송곳을 가져다 놓은 건은 인정하오. 하지만 그건 틸돈이 죄값을 치르게 하기 위해서였소."~ */
  IF ~~ THEN REPLY #43471 /* ~"그럼 켈도에게 이 사건을 어떻게 보고할 지에 대한 결론을 내리도록 하겠소."~ */ JOURNAL #39513 /* ~사로스는 자신이 송곳을 살인 현장에 가져다 놓았다는 것을 시인했으며, 그것을 공개할 각오가 되어있다. 그는 사람들이 사건과 틸돈의 관련을 조사하도록 하기 위해 그랬다고 주장한다. ~ */ GOTO 18
  IF ~~ THEN REPLY #43472 /* ~"왜? 무엇 때문에 내가 당신이 이런 일을 하는 것이 다른 범죄에 관한 일로 그에게 복수하기 위한 것이 아니라고 생각해야 하오?"~ */ JOURNAL #39513 /* ~사로스는 자신이 송곳을 살인 현장에 가져다 놓았다는 것을 시인했으며, 그것을 공개할 각오가 되어있다. 그는 사람들이 사건과 틸돈의 관련을 조사하도록 하기 위해 그랬다고 주장한다. ~ */ GOTO 27
  IF ~~ THEN REPLY #43473 /* ~"어디 두고 봅시다. 안녕히 계시오."~ */ JOURNAL #39513 /* ~사로스는 자신이 송곳을 살인 현장에 가져다 놓았다는 것을 시인했으며, 그것을 공개할 각오가 되어있다. 그는 사람들이 사건과 틸돈의 관련을 조사하도록 하기 위해 그랬다고 주장한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.2 15.2 17.0
  SAY #43474 /* ~"어떤 결정을 내렸소?" 그는 눈물을 간신히 참고 있는 듯하다."~ */
  IF ~~ THEN REPLY #43475 /* ~"내가 그에게 보고하고 나면 당신도 알게 될 거요."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #43476 /* ~"나는 무섭소. 나는 내가 살인자도 아닌데 당신이 날 범인으로 지목할까봐 두렵소!"~ */
  IF ~~ THEN REPLY #43477 /* ~"어디 두고 봅시다. 다른 질문들에 대답해주시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #43478 /* ~만약 당신이 유죄라면 그렇게 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #43479 /* ~"요즘 여기선 모든 것이 다 잘못 돌아가고 있는 것 같소... 그들은 그것인 인생의 또 다른 시험이라고 하지만 난 모르겠소..."~ */
  IF ~~ THEN REPLY #43480 /* ~"그럼 내 질문에 좀 대답해주시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #43481 /* ~"사정은 어디나 마찬가지요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY #43482 /* ~"나는 여기서 자랐소. 나는 주조소의 중심부에서 놀았고 막사 사이를 뛰어다녔소. 이 곳은 냄새가 나고 시끄러우며, 틸돈 같은 사람도 있소... 하지만 내 집임에는 틀림없소."~ */
  IF ~~ THEN REPLY #43483 /* ~"알겠소. 다른 질문들에 대답해주시오..."~ */ GOTO 15
  IF ~~ THEN REPLY #43484 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY #43485 /* ~"그들은... 어떤 사람들이 내게 와서 내가 자신들이 필요로 하는 사람이라고 했소... 내가 어느 곳이나 드나들 수 있고 내가 여기 있어도 아무도 의심하지 않으니까... 난 누가 죽을 거라고는 생각도 안 했소. 난 단지 그들의 눈과 귀 역할만 하면 된다고 생각했소. 하지만 바로 그 때 틸돈이 애빌돈을 톱니바퀴로 밀어 넣고 날 고자질 하겠다고 협박했소... 나는 나와 얘기한 사람들이 누군지도 모르오!"~ */
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #43486 /* ~"그래, 당신과 베다이-린이 틸돈에게 누명을 씌우려했소? 그는 당신이 그러려고 했다더군. 또한 그는 그녀도 연관되어 있다고 확신하고 있는 듯했소."~ */ GOTO 17
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43487 /* ~"그래, 당신과 베다이-린이 틸돈에게 누명을 씌우려했소? 그는 당신이 그러려고 했다더군. 또한 그는 그녀도 연관되어 있다고 확신하고 있는 듯했소."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
END

IF ~~ THEN BEGIN 23 // from: 15.7
  SAY #43488 /* ~"그들은 대장장이와 노동자들이오. 그들은 좋은 사람들이지만 너무 진지하고 *지루하오.* 그들도 좀 명랑하고 즐거워질 필요가 있소. 센세이트처럼 말이오."~ */
  IF ~~ THEN REPLY #43489 /* ~"당신은 센세이트를 좋아하오?"~ */ GOTO 28
  IF ~~ THEN REPLY #43490 /* ~"당신이 왜 그렇게 생각하는지 이해는 가오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #43491 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalLT("G_Test2","GLOBAL",4)
GlobalGT("G_Test2","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #43492 /* ~"그 불쌍한 대장장이... 난 그가 그렇게 죽었다는 게 믿어지지 않소..."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
~ THEN REPLY #43493 /* ~"사건 당시의 상황에 대해 짐작이라도 가시오? 혹은 무슨 단서라도?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #43494 /* ~"톱니바퀴에 그렇게 밀려 들어가는 건 참 끔찍한 일이오. 어쨌든 물어볼 것들이 좀 있소..."~ */ GOTO 26
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43495 /* ~"사건 당시의 상황에 대해 짐작이라도 가시오? 혹은 무슨 단서라도?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #64942 /* ~"그건 나도 마찬가지요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.2 26.0 26.1
  SAY #43496 /* ~"누가 당신에게 얘기를 한 거요? 감독? 그녀가 옳소. 나는 때때로 아무도 없을 때 이 곳에 오곤 하오." 그는 무슨 음모라도 꾸미듯 주변을 둘러보더니 당신 쪽을 향해 머리를 낮춘다. "나는 틸돈이 이 곳에서 몰래 나가는 걸 봤소. 내가 그게 그라는 걸 아는 건 그가 뭔가를 떨어뜨렸기 때문이오." 그는 나무 손잡이에 '틸돈'이라고 새겨진 송곳을 당신에게 건네준다. ~ */
  IF ~~ THEN REPLY #43497 /* ~"고맙소. 당신과 다시 얘기를 하러 돌아오겠소."~ */ JOURNAL #39512 /* ~사로스는 내게 틸돈의 이름이 새겨진 송곳을 주었다. 그는 자신이 그것을 살인이 일어난 밤에 피살체 근처에서 주었다고 했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 30.0 31.0 32.0 33.1 34.2 35.0 36.0 37.0
  SAY #43498 /* ~"뭐든지 물어보시오."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"사건 당시의 상황에 대해 짐작이라도 가시오? 혹은 무슨 단서라도?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"사건 당시의 상황에 대해 짐작이라도 가시오? 혹은 무슨 단서라도?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #43500 /* ~"당신 자신에 대해 얘기해주시오."~ */ GOTO 30
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43501 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 31
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43502 /* ~"대 주조소에 대해 얘기해주시오."~ */ GOTO 32
  IF ~~ THEN REPLY #43503 /* ~"이 곳에 있는 다른 사람들에 대해 얘기해주시오."~ */ GOTO 33
  IF ~~ THEN REPLY #43504 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #43505 /* ~"왜냐하면... 왜냐하면... 난 당신이 왜 그렇게 생각하는지 모르겠소. 하지만 약속하겠소... 가서 그에게 내가 한 말을 얘기하시오, 그리고 그 다음에 당신이 직접 판단을 하시오."~ */
  IF ~~ THEN REPLY #43506 /* ~"그러리다. 여길 떠나지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.0
  SAY #43507 /* ~"그들은 삶을 어떻게 살아야 하는지 알고 있소. 그들은 삶이란 무엇인지를 알고 있소. 이 곳 사람들과는 다르오. 이 곳 사람들은 우주에 무슨 고귀한 목적이라도 존재하는 것처럼 말하지만 나는 믿지 못하겠소. 내 누나는 삶은 단순한 감각으로 느낄 수 있는 것 이상의 것이라고 말하고 있으나, 나는 그녀가 어떻게 그걸 아는지 모르겠소. 그녀가 아는 모는 것도 감각을 통해서 알게 된 것들이 아니오? 난 그들이 왜 그런 얘길 꾸며 냈는지 모르겠소."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43508 /* ~"당신 누나는 누구요?"~ */ GOTO 29
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43509 /* ~"당신 누나는 누구요?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 29
  IF ~~ THEN REPLY #43510 /* ~"흠. 알겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #43511 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #43512 /* ~"사롯사? "그녀는 사람을 보면 무엇을 더하고 무엇을 제해야 하는지 알 수 있소. 나는 그녀가 어떻게 그런 일을 할 수 있는지 모르오. 내 아버지는 늘 그것이 그녀가 다음 단계로 진화한 것과 관련이 있다고 했소. 그는 *그녀*가 갓즈맨으로 태어났다고 했소." ~ */
  IF ~~ THEN REPLY #43513 /* ~"흥미롭군. 질문을 조금 더 합시다..."~ */ GOTO 15
  IF ~~ THEN REPLY #43514 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY #43515 /* ~"나? 나는 사로스요. 나는 여기서 자랐소. 대 주조소 안을 뛰어다니며 공구들을 가지고 놀곤 했소... 나는 이 곳 사람들을 모두 좋아하오, 틸돈만 제외하면. 그는 늘 내가 올바르게 자라지 못했으며 내 아버지가 나쁜 아버지라고 말하고 있소. 내가 아는건 틸돈이 내가 만난 모든 사람들 중 최악, 최저의 인간이라는 것뿐이오..."~ */
  IF ~~ THEN REPLY #43516 /* ~"동감이오. 질문할 것이 몇 가지 더 있소."~ */ GOTO 26
  IF ~~ THEN REPLY #43517 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #43518 /* ~"요즘 여기선 모든 것이 다 잘못 돌아가고 있는 것 같소... 그들은 그것인 인생의 또 다른 시험이라고 하지만 난 모르겠소..."~ */
  IF ~~ THEN REPLY #43519 /* ~"그럼 내 질문에 좀 대답해주시오..."~ */ GOTO 26
  IF ~~ THEN REPLY #43520 /* ~"사정은 어디나 마찬가지오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.4
  SAY #43521 /* ~"나는 여기서 자랐소. 나는 주조소의 중심부에서 놀았고 막사 사이를 뛰어다녔소. 이 곳은 냄새가 나고 시끄러우며, 틸돈 같은 사람도 있소... 하지만 내 집임에는 틀림없소."~ */
  IF ~~ THEN REPLY #43522 /* ~"알겠소. 다른 질문들에 대답해주시오..."~ */ GOTO 26
  IF ~~ THEN REPLY #43523 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.5
  SAY #43524 /* ~"그들은 대장장이와 노동자들이오. 그들은 좋은 사람들이지만 너무 진지하고 *지루하오.* 그들도 좀 명랑하고 즐거워질 필요가 있소. 센세이트처럼 말이오."~ */
  IF ~~ THEN REPLY #43525 /* ~"당신은 센세이트를 좋아하오?"~ */ GOTO 34
  IF ~~ THEN REPLY #43526 /* ~"당신이 왜 그렇게 생각하는지 이해는 가오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #43527 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #43528 /* ~"그들은 삶을 어떻게 살아야 하는지 알고 있소. 그들은 삶이란 무엇인지를 알고 있소. 이 곳 사람들과는 다르오. 이 곳 사람들은 우주에 무슨 고귀한 목적이라도 존재하는 것처럼 말하지만 나는 믿지 못하겠소. 내 누나는 삶은 단순한 감각으로 느낄 수 있는 것 이상의 것이라고 말하고 있으나, 나는 그녀가 어떻게 그걸 아는지 모르겠소. 그녀가 아는 모는 것도 감각을 통해서 알게 된 것들이 아니오? 난 그들이 왜 그런 얘길 꾸며 냈는지 모르겠소."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43529 /* ~"당신 누나는 누구요?"~ */ GOTO 35
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43530 /* ~"당신 누나는 누구요?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 35
  IF ~~ THEN REPLY #43531 /* ~흠... 알겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 26
  IF ~~ THEN REPLY #43532 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #43534 /* ~"사롯사? "그녀는 사람을 보면 무엇을 더하고 무엇을 제해야 하는지 알 수 있소. 나는 그녀가 어떻게 그런 일을 할 수 있는지 모르오. 내 아버지는 늘 그것이 그녀가 다음 단계로 진화한 것과 관련이 있다고 했소. 그는 *그녀*가 갓즈맨으로 태어났다고 했소." ~ */
  IF ~~ THEN REPLY #43535 /* ~"흥미롭군. 질문을 조금 더 합시다..."~ */ GOTO 26
  IF ~~ THEN REPLY #43536 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 36 // from:
  SAY #43537 /* ~"또 당신이군. 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #43538 /* ~"난 몇 가지 질문을 하고 싶었을 뿐이오..."~ */ GOTO 26
  IF ~~ THEN REPLY #43539 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from:
  SAY #43540 /* ~꺼칠꺼칠한 머리를 한 청년이 보인다. 그는 아직 소년 티를 완전히 벗지 못하고 있으며, 그리고 그의 눈으로부터 짐작하건대 그는 어떻게 하는 것이 어른다운 것인지 전혀 모르면서 어른답게 행동하려고 하는 것 같다. 다른 말로 하자면 그는 세상 물정을 모른다. "안녕하시오. 내게 무슨 도움이라도 필요하시오?"~ */
  IF ~~ THEN REPLY #43541 /* ~"날 위해 몇 가지 질문에 대답해주시오..."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #43542 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ EXIT
END
