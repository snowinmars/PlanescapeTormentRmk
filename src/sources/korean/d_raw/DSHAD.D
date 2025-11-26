// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHAD~

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #23915 /* ~"내게 말을 걸지 마. 라이몬과 얘기하라고." 위어랫은 당신 시선을 피한다.~ */
  IF ~~ THEN REPLY #23931 /* ~"알겠소."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #23309 /* ~"나는 내게 말을 걸지 말라고 분명히 말했어." 위어랫은 그래도 당신을 보려고 하지 않는다.~ */
  IF ~~ THEN REPLY #23933 /* ~"좋소."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY #23310 /* ~"당신은 이 곳 말고는 갈 데도 없어?" 이 위어랫의 목소리에는 아무런 감정도 담겨져 있지 않다. ~ */
  IF ~~ THEN REPLY #23934 /* ~"그런 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #23916 /* ~"당신이 뭐 거물이라도 된다는 거야? 라이몬이 용기를 내서 증원이라도 부르기 전에 어서 떠나라고." 이 위어랫은 이상할 정도로 무관심하다. ~ */
  IF ~~ THEN REPLY #23935 /* ~"만약 내가 당신을 위협하겠다면?"~ */ GOTO 4
  IF ~~ THEN REPLY #23936 /* ~"그럼 이만 실례하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #23917 /* ~그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #23937 /* ~그를 공격한다. ~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #23938 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Zap","GLOBAL",4)
~ THEN BEGIN 5 // from:
  SAY #23918 /* ~"젠장... 아무래도 당신은 죽어 줘야겠어..."~ */
  IF ~~ THEN REPLY #23939 /* ~"어디 한 번 해보시오."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NearbyDialog("DAnnah")
~ THEN BEGIN 6 // from:
  SAY #23919 /* ~그는 동료 위어랫을 죽인 후 안나를 정면으로 쳐다본다. "안나, 나야, 쉐듀스라고. 내가 널 내보내 주겠어. 난 네가 이처럼 갇혀 있는 모습은 차마 볼 수가 없어. 마을까지 무사히 도망치게 되면 사람들에게 안부나 전해주고, 그들에게 뭔가 불길한 일이 닥칠 거라고 알려줘... 지금은 정확히 어떤 것인지 말할 수는 없지만 네게는 말해주고 싶었어."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 160
END

IF ~~ THEN BEGIN 7 // from:
  SAY #23920 /* ~"그럼 좋소." 그는 라이몬의 시체로부터 열쇠를 꺼내 문을 연다. "당장 떠나라고." 그는 가볍게 인사를 하고 재빨리 그 장소를 떠난다. ~ */
  IF ~~ THEN REPLY #23434 /* ~"그러리다. 고맙소."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END

IF ~  !NearbyDialog("DAnnah")
~ THEN BEGIN 8 // from:
  SAY #23921 /* ~"당신은 내가 왜 그런 짓을 했는지 궁금한 모양이군. 나는 매장된 마을의 주민이였고 내 이름은 쉐듀스였소. 나는 위어랫이 되고 싶은 생각은 추호도 없었고, 이런 병에 걸렸다고 해서 인간을 배신할 생각도 없어. 나와, 당장." 그는 문을 연 후 재빨리 자리를 뜬다. ~ */
  IF ~~ THEN REPLY #23940 /* ~"고맙소, 쉐듀스. 안녕히 계시오."~ */ DO ~SetGlobal("Zap","GLOBAL",5)
SetDoorLocked("a1600d10",FALSE)
OpenDoor("A1600d10")
EscapeArea()
~ EXIT
END
