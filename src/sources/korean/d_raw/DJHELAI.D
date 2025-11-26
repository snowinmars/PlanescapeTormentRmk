// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJHELAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJHELAI~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #21487 /* ~때묻은 옷을 입은 여윈 사내가 보인다. 그의 코는 매부리코이며, 이마에는 뭉뚝한 뿔이 두 개 나 있다. 그는 비틀거리면서 뭐라고 중얼거리고 있다... 그로부터는 소금물, 구토, 그리고 싸구려 와인 냄새가 난다. ~ */
  IF ~~ THEN REPLY #21488 /* ~"안녕하시오."~ */ GOTO 1
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22653 /* ~"당신이 젤라이요? 그렇다면 크래독이 당신이 시장으로 돌아와 주기를 바라고 있소.~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22654 /* ~그냥 지나간다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22655 /* ~"에?" 사내는 멍한 눈으로 당신을 본다. "뭐요? 뭐?"~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #22656 /* ~"당신이 젤라이요? 그렇다면 크래독이 당신이 시장으로 돌아와 주기를 바라고 있소.~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 2
  IF ~~ THEN REPLY #22657 /* ~"그럼 관두시오. 귀찮게 해서 미안하오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #22658 /* ~"크래-독?" 사내는 눈을 크게 뜬다. "아, 크래독, 내 보스 말이군... 가서 그에게 이 말을 전하라고: "엿이나 먹어... 그리고 넌 가장 더러운 똥개야! 난 더 이상 널 위해 일하지 않을 거야!" 그는 당신을 손가락으로 찌른다. "그렇게 전해!"~ */
  IF ~~ THEN REPLY #22659 /* ~"그에게 얘기하리다... 멀리서. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #22660 /* ~"어... 그에게 얘기하리다. 안녕히 계시오, 젤라이."~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalLT("Craddock_Quest","GLOBAL",3)
~ THEN BEGIN 3 // from:
  SAY #22661 /* ~젤라이가 보인다. 그는 아직도 비틀거리며 혼자서 중얼거리고 있다... 그로부터는 소금물, 구토, 그리고 싸구려 와인 냄새가 난다.~ */
  IF ~~ THEN REPLY #22662 /* ~그를 인사 불성인 채로 내버려 둔다.~ */ EXIT
END

IF ~  GlobalGT("Jhelai","GLOBAL",0)
GlobalGT("Craddock_Quest","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #22663 /* ~젤라이가 보인다. 일전에 만났을 때보다는 술이 깬 것 같다. ~ */
  IF ~  GlobalGT("Lawful_Craddock_1","GLOBAL",0)
~ THEN REPLY #22664 /* ~"이것 보시오, 젤라이, 그래독은 화가 무척 났소. 그는 당신을 다시 보게 되면 죽이겠다고 위협했소."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22672 /* ~나는 젤라이에게로 돌아와 크래독에 대하여 경고했다. 그건 내가 할 수 있는 최소한의 일이었다. 젤라이는 자신이 했던 말에 대해 후회하는 듯 했으며 나에게 고맙다고 했다. 불쌍한 사람 같으니.~ */ GOTO 5
  IF ~  GlobalGT("Chaotic_Craddock_1","GLOBAL",0)
~ THEN REPLY #22667 /* ~"이것 보시오, 젤라이, 난 크래독에게 내가 당신 대신 일하겠다고 했소. 당신 일자리는 아직 멀쩡하오, 하지만 앞으로는 조심하시오."~ */ DO ~SetGlobal("Good_Jhelai_1","GLOBAL",1)
~ JOURNAL #22673 /* ~나는 젤라이에게로 돌아와 내가 그를 대신해 일을 했으며, 그는 아직 일자리를 잃지 않았다고 말했다. 젤라이는 자신이 했던 말에 대해 후회하는 듯 했으며 일자리를 잃지 않게 해준 데 대해 고마움을 표시했다. ~ */ GOTO 6
  IF ~~ THEN REPLY #22668 /* ~그를 그냥 지나친다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #22665 /* ~젤라이는 투덜거린다. "난 정말 멍청이였소... 난 가볍게 한 잔만 하려고 술집에 들어갔는데 깨어나 보니..." 그는 이를 간다. "경고해 주어 고맙소..."~ */
  IF ~~ THEN REPLY #22666 /* ~"부디 조심하시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #22646 /* ~젤라이는 투덜거린다. "난 정말 멍청이였소... 난 가볍게 한 잔만 하려고 술집에 들어갔는데 깨어나 보니..." 그는 이를 간다. "말을 잘 해주어 고맙소... 정말이오."~ */
  IF ~~ THEN REPLY #22670 /* ~"제발 다음 번에는 조심하도록 하시오. 안녕히 계시오."~ */ EXIT
END
