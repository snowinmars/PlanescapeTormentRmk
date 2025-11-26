// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTARIN~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33625 /* ~이 사람은 서로 상대방에게 고함을 지르면서 무기를 흔들어 대는 두 사내들 중 하나이다. 그들은 지금 당장이라도 서로의 목에 칼을 들이댈 것 같은 기세이다...~ */
  IF ~~ THEN REPLY #33636 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #33637 /* ~그들로부터 멀리 떨어진다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33626 /* ~상대방에게 욕설을 퍼붓느라 얼굴이 빨개진 사내는 당신을 마주보려고 화급하게 몸을 돌린다. "뭘 원하는 거요?! 내가 *바쁜* 게 보이자 않소?"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33638 /* ~"당신 여동생이 내게 당신들 두 사람이 싸우는 것을 말려 달라고 부탁했소." ~ */ GOTO 4
  IF ~~ THEN REPLY #33639 /* ~"나는 당신들 둘이 왜 싸우는지 궁금하오."~ */ GOTO 2
  IF ~~ THEN REPLY #33640 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33627 /* ~"당신이 상관할 바가 아냐, 얼간아. 꺼져!"~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33641 /* ~"당신 여동생이 내게 당신들 두 사람이 싸우는 것을 말려 달라고 부탁했소." ~ */ GOTO 4
  IF ~~ THEN REPLY #33643 /* ~"분쟁을 해결하기 위해 내가 할 수 있는 일은 없겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #33644 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33628 /* ~"아니, 그럴 순 없소! 이 염병할 후레자식은 내 동생을 걸레취급하고 있소, 그러니 놈은 그 대가를 치르게 될 거요! 당신이 상관할 바가 아니니 참견하지 마시오!" ~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33645 /* ~"당신 여동생이 내게 당신들 두 사람이 싸우는 것을 말려 달라고 부탁했소." ~ */ GOTO 4
  IF ~~ THEN REPLY #33646 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33629 /* ~사내는 갑자기 조용해진다. "엘리스가 당신에게 부탁을 했소? 나는 당신이 누군지 모르오, 하지만 당신이 대체 무슨 수로 우리들을 말리겠다는 거요?" ~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33647 /* ~"만약 필요하다면 당신들 두 사람을 두들겨 패서라도."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33648 /* ~"만약 필요하다면 당신들 두 사람을 두들겨 패서라도."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33650 /* ~"만약 필요하다면 당신들 두 사람을 두들겨 패서라도."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33652 /* ~"만약 필요하다면 당신들 두 사람을 두들겨 패서라도."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33654 /* ~"이것 보시오, 엘리스는 당신들 두 사람 중 그 어느 쪽이 다치는 것도 원하지 않소. 당신들 사이의 문제가 뭔지는 모르겠지만 그녀에게 걱정을 끼치지 않고 해결할 수는 없겠소?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33656 /* ~"이것 보시오, 엘리스는 당신들 두 사람 중 그 어느 쪽이 다치는 것도 원하지 않소. 당신들 사이의 문제가 뭔지는 모르겠지만 그녀에게 걱정을 끼치지 않고 해결할 수는 없겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33658 /* ~"나도 마찬가지요. 안녕히 계시오."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33630 /* ~"뭐, 당신 미쳤소? 당신 꼴을 보시오... 흉터투성이에 험악하게 생기긴 했지만 난 겁나지 않소! 주둥아리를 닥치고 꺼지시오!"~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33659 /* ~"이것 보시오, 엘리스는 당신들 두 사람 중 그 어느 쪽이 다치는 것도 원하지 않소. 당신들 사이의 문제가 뭔지는 모르겠지만 그녀에게 걱정을 끼치지 않고 해결할 수는 없겠소?"~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33660 /* ~"이것 보시오, 엘리스는 당신들 두 사람 중 그 어느 쪽이 다치는 것도 원하지 않소. 당신들 사이의 문제가 뭔지는 모르겠지만 그녀에게 걱정을 끼치지 않고 해결할 수는 없겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33661 /* ~"좋소... 안녕히 계시오."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33631 /* ~"당신 일이나 신경 쓰라고! 가서 똥 더미에나 머리를 박아, 얼간아!~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33662 /* ~"싸움을 멈추시오, 아니면 내가 두 사람 다 흠씬 두들겨 패줄 테니."~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33663 /* ~"싸움을 멈추시오, 아니면 내가 두 사람 다 흠씬 두들겨 패줄 테니."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33664 /* ~"싸움을 멈추시오, 아니면 내가 두 사람 다 흠씬 두들겨 패줄 테니."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33665 /* ~"싸움을 멈추시오, 아니면 내가 두 사람 다 흠씬 두들겨 패줄 테니."~ */ GOTO 5
  IF ~~ THEN REPLY #33666 /* ~"좋소... 안녕히 계시오."~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33632 /* ~사내는 잠시 당신을 훑어본다. "에... 나랑 이 친구가 문제를 해결할 더 좋은 방법이 있을 것 같소. 그 편이 엘리스가 기뻐할 거고..."~ */
  IF ~~ THEN REPLY #33667 /* ~"당신도 그렇게 생각한다니 반갑소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33633 /* ~사내는 잠시 이마를 찌푸린다, 그러나 이내 고개를 끄덕인다. "당신이 옳소... 나는 그녀의 권리를 보호하려고 했을 뿐이었소, 그러나 그럼에도 불구하고 내 자신이 그녀의 호소를 무시했소." 그는 한숨을 쉰다. "여기 이 친구와 다른 방법으로 해결을 보도록 노력해야겠소..."~ */
  IF ~~ THEN REPLY #33668 /* ~"당신도 그렇게 생각한다니 반갑소. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33634 /* ~엘리스의 오빠는 당신을 보자 반갑게 고개를 끄덕인다. "우리가 문제를 평화적으로 해결할 수 있게 도와줘 고맙소... 당신은 좋은 사람이오." ~ */
  IF ~~ THEN REPLY #33669 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END
