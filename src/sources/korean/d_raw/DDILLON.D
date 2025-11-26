// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILLON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILLON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #7095 /* ~"경비병! 침입자가 여기 있소!~ */
  IF ~~ THEN REPLY #7096 /* ~완료.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #7097 /* ~"당신은 여기서 떠나야겠소. 경비병을 시켜 강제로 내보내기 전에 나가는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #7098 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",0)
Global("Alarm1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #7099 /* ~"내게 뭘 원하시오?"~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7100 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7101 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7102 /* ~"내게 당신 전임자에 대해 애기해주시오."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7103 /* ~"내게 당신 전임자에 대해 애기해주시오."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7104 /* ~"내게 당신 전임자에 대해 애기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #7105 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0
  SAY #7106 /* ~"미안하오. 하지만 감독은 당신이 용광로에서 너무 많은 시간을 보냈다고 말하고 있소. 미안하지만 다른 사람들이 용광로를 사용할 수 있도록 비켜 주어야겠소."~ */
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7107 /* ~"내게 당신 전임자에 대해 애기해주시오."~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7108 /* ~"내게 당신 전임자에 대해 애기해주시오."~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7109 /* ~"내게 당신 전임자에 대해 애기해주시오."~ */ GOTO 7
  IF ~~ THEN REPLY #7110 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1
  SAY #7111 /* ~"철광석을 원하시오? 좋소. 그럼 잘 쓰도록 하시오. 철광석도 제대로 다루어지기를 원하니까."~ */
  IF ~~ THEN REPLY #7112 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #7113 /* ~"뭐든 간에. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.0
  SAY #7114 /* ~"정말 이상한 일이었소! 사로스가 감옥에 갇힌 직후 틸돈이 그냥 사라져 버렸고. 아무런 말도 남기지 않고... 그냥 떠났소. 놈은 정말 더러운 개자식이었기 때문에 아무도 그가 떠난 걸 애석해 하지 않았소."~ */
  IF ~~ THEN REPLY #7115 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7116 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ GOTO 4
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7117 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1
  SAY #7118 /* ~"그가 체포되어 감옥에 갇힌 후, 우리는 그 자를 기억에서 지우려고 노력했소. 우리는 늘 그 얼간이를 싫어했소, 따라서 그가 없어진 건 우리에게 있어 큰 다행이오."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7119 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7120 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7121 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 3.2
  SAY #7122 /* ~"사로스가 투옥된 건 참으로 애석한 일이오. 대신 그 얼간이 틸돈이 없어지게 되었다고는 해도... 마치 악마와의 거래 같소. 사로스는 정말 좋은 청년이지만 틸돈은 정말 쓰레기지. 이제 틸돈은 없어졌소. 그 사실에 위안을 받아야 할 것 같소."~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7123 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7124 /* ~"나는 용광로를 사용해야 하오. 내게 철광석을 좀 줄 수 있겠소?"~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7125 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END
